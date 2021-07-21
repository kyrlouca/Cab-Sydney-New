unit B_TransferBuckets;

interface

uses IBC, System.SysUtils;

Type
  TTransferBuckets = Class(TObject)
  published
    constructor Create(DbConnection: TIBCConnection; mawbSerial: integer); overload;
  public
    { public fields }
    { public methods }

    Function ProcessOne(): integer;
    procedure TransferBucketHawbs();

    procedure TransferOneBucketHawb(bucketSerial: integer; origin: string);

    Function SendToPendingLow(hawbSerial: integer; origin: string): boolean;

  protected
    { protected fields }
    { protected methods }
  private
    FMawbSerial: integer;
    Fcn: TIBCConnection;

    { private fields }
    { private methods }
  end;

implementation

uses U_ClairDML, G_KyrSQL;

constructor TTransferBuckets.Create(DbConnection: TIBCConnection; mawbSerial: integer);
  begin
    inherited Create;
    FMawbSerial := mawbSerial;
    Fcn := DbConnection;
  end;

Function TTransferBuckets.ProcessOne(): integer;
  begin
    Inc(FMawbSerial);
    result := FMawbSerial;
  end;

procedure TTransferBuckets.TransferBucketHawbs();
  begin
    // NUM_OF_PIECES_ARRIVED
    // NUMBER_OF_PARCELS

    // select the Manifested Hawbs with corresponding  Bucket hawbs with the same hawb Id
    // The bucket means hawbs which have a fk_mawb_reference = 1000 000
    // avoid  selecting manifested  Mawb with serial =(1000 000) because this is the bucket
    var sqlStr: string := 'select bucket.serial_number as bucketSerial, ha.serial_number as hawbSerial, bucket.hab_id ' +
           ' from hawb ha join hawb bucket on ha.hab_id = bucket.hab_id  where  ha.fk_mawb_refer_number <>1000000 and ha.fk_mawb_refer_number = :mawbSerial ' +
           ' and bucket.fk_mawb_refer_number=1000000';

    var qr: TIBCQuery := TksQuery.Create(Fcn, sqlStr);
    Try
      qr.ParamByName('MawbSerial').Value := FMawbSerial;
      qr.open;
      while (not qr.Eof) do
      begin
        var bucketSerial: integer := qr.FieldByName('bucketSerial').AsInteger;
        TransferOneBucketHawb(bucketSerial, 'TRANSFER');

        qr.Next;
      end;

    Finally
      qr.Free;
    End;

    // ShowMessage('hello');
  end;

procedure TTransferBuckets.TransferOneBucketHawb(bucketSerial: integer; origin: string);
  begin
    // it will  move a bucket hawb to a hawb on a manifested Mawb
    // if a  manifested hawb exists, delete it first (when manually tranferring butckets that are not in the Mawb)
    //
    // Then  changes the bucket's fk_mawb_ref_number to the manisfested mawb
    // NUM_OF_PIECES_ARRIVED
    // It also creates an entry in the LOW_PENDING table for Medium hawbs that are complete

    var sqlBucket: string := 'select  bucket.serial_number, bucket.hab_id from hawb bucket where bucket.serial_number= :bucketSerial and bucket.fk_mawb_refer_number= 1000000';
    var
    sqlExisting := 'select   serial_number, hab_id,NUM_OF_PIECES_ARRIVED from hawb ha  where ha.hab_id=:hawbId and ha.fk_mawb_refer_number= :mawbSerial;';
    var qrBucket: TksQuery := TksQuery.Create(Fcn, sqlBucket);
    var qrExisting: TksQuery := TksQuery.Create(Fcn, sqlExisting);
    Try
      qrBucket.ParamByName('bucketSerial').Value := bucketSerial;
      qrBucket.open;
      var hawbId: string := qrBucket.FieldByName('hab_id').AsString;

      qrExisting.ParamByName('hawbId').Value := hawbId;
      qrExisting.ParamByName('mawbSerial').Value := FMawbSerial;
      qrExisting.open;

      if (not qrExisting.IsEmpty) then
      begin
        var existingSerial: integer := qrExisting.FieldByName('serial_number').AsInteger;
        var existingPieces: integer := qrExisting.FieldByName('NUM_OF_PIECES_ARRIVED').AsInteger;
        var sqlDelete: string := 'delete from  hawb  where serial_number = :hawbSerial';
        ksExecSQLVar(Fcn, sqlDelete, [existingSerial]);
        var sqlUpdate: string :=   'update hawb ha set ha.fk_mawb_refer_number = :mawbSerial,NUM_OF_PIECES_ARRIVED = :piecesArrived, ha.is_from_bucket= :isBucket where ha.serial_number = :bucketSerial';
        ksExecSQLVar(Fcn, sqlUpdate, [FMawbSerial, existingPieces, 'N', bucketSerial]);

      end else begin
        var sqlUpdate: string :=   'update hawb ha set ha.fk_mawb_refer_number = :mawbSerial, ha.is_from_bucket= :isBucket where ha.serial_number = :bucketSerial';
        ksExecSQLVar(Fcn, sqlUpdate, [FMawbSerial,'N', bucketSerial]);

      end;


      SendToPendingLow(bucketSerial, origin);

    Finally
      qrBucket.Free;
      qrExisting.Free;
    End;

    // ShowMessage('hello');
  end;

Function TTransferBuckets.SendToPendingLow(hawbSerial: integer; origin: string): boolean;
  begin
    result := false;
    var sqlClear: string := 'select ha.serial_number from hawb ha where ha.fk_clearance_instruction = :med and ha.fk_clearing_state=:clear and ha.serial_number= :hawbSerial';
    var IsClear: boolean := ksCountRecVarSQL(Fcn, sqlClear, ['MED', '1', hawbSerial]) > 0;
    if (not IsClear) then
      exit;

    var sqlPending: string := 'select low.serial_number from low_pending low where low.hawb_serial_number = :hawbSerial';
    var
    isInPending := ksCountRecVarSQL(Fcn, sqlPending, [hawbSerial]) > 0;

    var sqlSend: string := 'select send.serial_number , send.* from low_send  send where send.hawb_serial_number = :hawbSerial';
    var
    isSend := ksCountRecVarSQL(Fcn, sqlSend, [hawbSerial]) > 0;

    if isInPending or isSend then
      exit;

    var sqlLow: string := 'INSERT INTO LOW_PENDING (SERIAL_NUMBER, HAWB_SERIAL_NUMBER, DATE_CREATED, ORIGIN) ' +
           ' VALUES (:SERIAL_NUMBER, :HAWB_SERIAL_NUMBER, :DATE_CREATED, :ORIGIN)';
    var serial: integer := ksGenerateSerial(Fcn, 'GEN_LOW_PENDING_ID');
    ksExecSQLVar(Fcn, sqlLow, [serial, hawbSerial, Now, origin]);
    result := true;

  end;


//
//

END.
