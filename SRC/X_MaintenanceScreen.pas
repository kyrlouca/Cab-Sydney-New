unit X_MaintenanceScreen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
  DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, DBGrids, wwdbdatetimepicker, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, pptypes, ppviewr, wwdblook, Wwdotdot, Wwdbcomb,
  ppDesignLayer, ppParameter, vcl.wwrcdpnl, vcl.Wwrcdvw, RzButton, RzLabel, RzDBLbl;

type
  TX_maintenanceScreenFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    HawbsSQL: TIBCQuery;
    HawbsSQLHAB_ID: TStringField;
    HawbsSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbsSQLFK_CLEARING_STATE: TStringField;
    HawbsSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbsSQLCLEARANCE_WAITING_CODE: TStringField;
    HawbsPIP: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    HawbsSQLCUSTOMS_VALUE: TFloatField;
    HawbsSQLWEIGHT: TFloatField;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ClearanceWaitingCodeLookupSQL: TIBCQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    HawbsSQLCUSTOMER_NAME: TStringField;
    HawbsSQLFK_MAWB_ID: TStringField;
    HawbsSQLMAWBSERIAL: TIntegerField;
    HawbsSQLFLIGHT_NUMBER: TStringField;
    HawbsSQLCW_CLEARANCE_CODE: TStringField;
    HawbsSQLFDAYS: TIntegerField;
    HawbsSRC: TIBCDataSource;
    HawbsSQLDATE_REGISTERED: TDateField;
    HawbsSQLDAYSPASSED2: TIntegerField;
    HawbsSQLDESCRIPTION: TStringField;
    PrintRBtn: TBitBtn;
    BitBtn1: TRzBitBtn;
    DelBucketBtn: TRzButton;
    StopLoadBTN: TRzButton;
    procedure FormCreate(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DelBucketBtnClick(Sender: TObject);
    procedure StopLoadBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
  public
    { Public declarations }
    procedure DeleteUnusedBuckets();
  end;

var
  X_maintenanceScreenFRM: TX_maintenanceScreenFRM;

implementation

uses U_ClairDML, G_generalProcs, G_KyrSQL;

{$R *.DFM}

procedure TX_maintenanceScreenFRM.BitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TX_maintenanceScreenFRM.PrintRBtnClick(Sender: TObject);
  var
    ToDate, FromDate: TDate;
  Const
    qt = '''';
  begin

    // FromDate := FromDateFLD.Date;

    with HawbsSQL do
    begin
      // Try
      // FromDate:=FromDateFLD.Date
      // except
      // FromDate:=Now;
      // end;
      //
      // Try
      // ToDate:=TODateFLD.Date
      // except
      // TODate:=Now;
      // end;
      //
      // Close;
      // DeleteWhere;
      //

    end;
  end;

procedure TX_maintenanceScreenFRM.StopLoadBTNClick(Sender: TObject);
  begin
    var sqlInsert: string := 'insert into SYSTEM_PARAMETERS (PARAMETER_ID, INT_1) values (:PARAMETER_ID, :INT_1)';
    ksExecSQLVar(cn, sqlInsert, ['Z00',100]);
  end;

procedure TX_maintenanceScreenFRM.DelBucketBtnClick(Sender: TObject);
  begin
    DeleteUnusedBuckets();
  end;

procedure TX_maintenanceScreenFRM.DeleteUnusedBuckets();
  // Delete unused buckets. When the Mawb flight arrives, we transfer the buckets but some may be left because
  // somebody might have worked on the hawb and cleared it.the bucket was not transferred if there was a cleared hawb
  begin
    var count: integer := 0;
    var sqlBuckets: string := 'select * from hawb ha where ha.fk_mawb_refer_number=1000000';
    var qrBuckets: TksQuery := TksQuery.Create(cn, sqlBuckets);

    var sqlHawb: String :=
           'select ha.serial_number,ha.fk_clearing_state,ha.fk_invoice_status from hawb ha where ha.fk_mawb_refer_number<>1000000 and ha.bucket_reference_number = :bucket';
    var qrHawb: TksQuery := TksQuery.Create(cn, sqlHawb);

    try
      qrBuckets.Open;

      while not qrBuckets.eof do
      begin
        var bucketRef: string := qrBuckets.FieldByName('BUCKET_REFERENCE_NUMBER').AsString;
        var
        isBucketClear := qrBuckets.FieldByName('FK_CLEARING_STATE').AsString = '1';

        qrHawb.close;
        qrHawb.ParamByName('bucket').value := bucketRef;
        qrHawb.Open;
        if qrHawb.IsEmpty then
        begin
          // Do Not delete when there is no Hawb yet
        end
        else
        begin

          if not isBucketClear then
          begin
            // if hawb exists and the bucket is not cleared then Delete the Bucket
            ksExecSQLVar(cn, 'delete from hawb ha where ha.BUCKET_REFERENCE_NUMBER = :bucket and ha.fk_mawb_refer_number=1000000 ', [bucketRef]);
            inc(count);
          end
          else
          begin
            // if the bucket is clear, we may still delete it.
            // Delete the bucket even if is clear if there is a hawb which is cleared or invoiced
            var isClear: boolean := qrHawb.FieldByName('FK_CLEARING_STATE').AsString = '1';
            var isInvoiced: boolean := qrHawb.FieldByName('FK_INVOICE_STATUS').AsString = '1';
            if (isClear Or isInvoiced) then
            begin
              ksExecSQLVar(cn, 'delete from hawb ha where ha.BUCKET_REFERENCE_NUMBER = :bucket and ha.fk_mawb_refer_number=1000000 ', [bucketRef]);
              inc(count);

            end;

          end;
        end;

        qrBuckets.Next;
      end;

    finally
      qrBuckets.Free;
      qrHawb.Free;
    end;
    ShowMessage('Finished. Buckets Deleted : ' + count.ToString);
  end;

procedure TX_maintenanceScreenFRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;

  end;

end.
