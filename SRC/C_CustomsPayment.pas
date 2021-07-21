unit C_CustomsPayment;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdotdot, Wwdbcomb,
  wwdbdatetimepicker;
type
  TBatchInfo = record
        SumInv:double;
        SumCol:double;
        CountInv:integer;
  end;

  TC_CustomsPaymentFRM = class(TForm)
    Titlelbl: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    DoSQL: TIBCSQL;
    MakeSQL: TIBCQuery;
    IBCSQL1: TIBCSQL;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    AmountLBL: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ChequeFLD: TwwDBEdit;
    CollectionScanSRC: TIBCDataSource;
    CollectionScanSQL: TIBCQuery;
    CollectionScanSQLSERIAL_NUMBER: TIntegerField;
    CollectionScanSQLINVOICE_NUMBER: TStringField;
    CollectionScanSQLHAWB: TStringField;
    CollectionScanSQLCONSIGNEE: TStringField;
    CollectionScanSQLINVOICE_AMOUNT: TFloatField;
    CollectionScanSQLUSER_TIME: TDateTimeField;
    CollectionScanSQLSTATUS: TStringField;
    CollectionScanSQLFK_COLLECTION_BATCH: TIntegerField;
    CollectionScanSQLUSER_ID: TStringField;
    CollectionScanSQLUSER_STATION: TStringField;
    CollectionScanSQLIS_VALID: TStringField;
    CollectionScanSQLINVOICE_TYPE: TStringField;
    CollectionScanSQLFK_ACCOUNTING_BATCH: TIntegerField;
    CollectionScanSQLCOLLECTED_AMOUNT: TFloatField;
    CollectionScanSQLPAYMENT_METHOD: TStringField;
    AmountReceivedFLD: TwwDBEdit;
    AmountRecLbl: TLabel;
    TablexSQL: TIBCQuery;
    CommentsFLD: TwwDBEdit;
    PaymentDateFLD: TwwDBDateTimePicker;
    IBCSQL2: TIBCSQL;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    TablexSQLSERIAL_NUMBER: TIntegerField;
    TablexSQLUSER_ID: TStringField;
    TablexSQLSTATUS: TStringField;
    TablexSQLAMOUNT: TFloatField;
    TablexSQLCOMMENTS: TStringField;
    TablexSQLCHEQUE_NUMBER: TStringField;
    TablexSQLDATE_PAYMENT: TDateField;
    TablexSQLUSER_TIMESTAMP: TDateTimeField;
    procedure CancelBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TableSQLBeforePost(DataSet: TDataSet);
    procedure DeleteInvBTNClick(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure TablexSQLNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
        procedure InsertRecord;
        procedure EditRecord;
        procedure CloseCollection;

        Function CalcTotals(Const BatchSerial:integer):TBatchInfo;

  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_Action:String;
    IN_Serial:Integer;
    IN_Title:String;
  end;

var
  C_CustomsPaymentFRM: TC_CustomsPaymentFRM;

implementation

uses U_ClairDML;


{$R *.DFM}

procedure TC_CustomsPaymentFRM.EditRecord;
var status:string;
begin
with tablexSql do begin
        close;
        if not prepared then prepare;
        ParambyName('SerialNumber').value:=IN_Serial;
        open;
        {
        Status:=TablexSQL.FieldbYName('STATUS').AsString;
        if (status<>'A') and (not tablexSQL.IsEmpty) then begin
                Edit;
                AcceptBTN.Enabled:=true;
        end else begin
                AcceptBTN.Enabled:=false;

        end;
         }
end;
end;

procedure TC_CustomsPaymentFRM.InsertRecord;
begin
with tablexSql do begin
        close;
        open;
        insert;

          AcceptBTN.Enabled:=true;

        If ChequeFLD.CanFocus then
                ChequeFLD.SetFocus;

end;

end;


procedure TC_CustomsPaymentFRM.CancelBTNClick(Sender: TObject);
begin
        if (TablexSQL.State in [dsInsert,dsEdit]) then
                TablexSQL.cancel;
        TablexSQL.close;
        ModalResult:=mrCancel;
        close;

end;

procedure TC_CustomsPaymentFRM.FormActivate(Sender: TObject);
Var
Serial:Integer;
begin

tablexSQL.Close;
CollectionScanSQL.Close;

If IN_Action='INSERT' then begin
        TitleLBl.Caption:='Make Customs Payment';
        AcceptBTN.Caption:='Accept';

//        DeleteInvBtn.Enabled:=false;

//        AmountLBL.Visible:=false;
//        TablESQL.fieldbyName('AMOUNT_TOTAL_RECEIVED').Required:=false;
        TablexSQL.Open;
        InsertRecord;
        ChequeFLD.SetFocus;
end else If IN_Action='EDIT' then begin
        TitleLBl.Caption:='Edit Custom Payment';
        AcceptBTN.Caption:='Accept';

        TablexSQL.Close;
        TablexSQL.ParamByName('serial').Value:=IN_Serial;
        TablexSQL.Open;

//        CollectionScanSQL.Open;

//        TablESQL.fieldbyName('AMOUNT_TOTAL_RECEIVED').Required:=false;
//        EditRecord;
        ChequeFLD.SetFocus;

end else begin
        ShowMessage('error');
end;

If TablexSQL.IsEmpty then begin
        ShowMessage('Empty Table');
        exit;
end;

end;

procedure TC_CustomsPaymentFRM.TablexSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('user_timestamp').Value:=now;
end;

procedure TC_CustomsPaymentFRM.CloseCollection;
var
SQLString:String;
BatchSerial:Integer;
AmountReceived:Double;
Status:string;
batchInfo:TBatchInfo;
begin

AmountReceived:=TablexSQL.fieldbyName('Amount_total_RECEIVED').AsFloat;
BatchSerial:=TablexSQL.fieldbyName('serial_number').AsInteger;
Status:=TablexSQL.fieldbyName('Status').AsString;


If Trim(Status)='C' then begin
        ShowMessaGe('Batch Already Closed');
                abort;
end else If Trim(Status)='A' then begin
        ShowMessaGe('Batch cannot be Submited, it was Approved');
                abort;
end;


IF TablexSQL.fieldbyName('AMOUNT_TOTAL_RECEIVED').value<=0.1 Then begin
                ShowMessage('Enter Amount Received');
                self.AmountReceivedFLD.setfocus;
                abort;
end;

batchInfo:=CalcTotals(batchserial);

IF abs(TablexSQL.fieldbyName('AMOUNT_TOTAL_RECEIVED').value - TablexSQL.fieldbyName('AMOUNT_TOTAL_collected').value ) >=0.01 Then begin
                ShowMessage('Amount Received Incorrect');
                self.AmountReceivedFLD.setfocus;
                abort;
end;


If BatchInfo.CountInv=0 then begin
                ShowMessage('Scan Invoices before closing');
                abort;
end;



        TablexSQL.fieldbyName('STATUS').value:='C';
        TablexSQL.Post;
        close;

end;

Function TC_CustomsPaymentFRM.CalcTotals(Const BatchSerial:integer):TBatchInfo;
Var
        SQLString:string;
begin
SQLString:='select Sum(invoice_amount)as SumInv,Sum(collected_amount)as SumCol,count(*)as CountInv from collection_scan cs '
                +' where cs.fk_collection_batch = :batchSerial';
          With MakeSQL do begin
                Close;
                ReadONly:=True;
                SQL.Clear;
                SQl.Add( SQLString);
                ParamByName('BatchSerial').value:=BatchSerial;
                if not prepared then prepare;
                Open;
                Result.CountInv:=FIeldByName('CountInv').AsInteger;
                Result.SumInv:=FIeldByName('SumInv').AsFloat;
                Result.SumCol:=FIeldByName('SumCol').AsFloat;
               //         ShowMessage(intToStr(countInv)+'  '+FloatToStr(SumInv));
                close;
          end;


End;

procedure TC_CustomsPaymentFRM.TableSQLBeforePost(DataSet: TDataSet);
Var
        BatchInfo:TBatchInfo;
        BatchSerial:integer;
begin
        BatchSerial:=Dataset.fieldbyName('serial_number').AsInteger;

        batchInfo:=CalcTotals(batchserial);
        Dataset.fieldbyName('AMOUNT_TOTAL_INVOICED').value:=BatchInfo.SumInv;
        Dataset.fieldbyName('AMOUNT_TOTAL_COLLECTED').value:=BatchInfo.SumCol;
        Dataset.fieldbyName('COUNT_COLLECTION_SCAN').value:=BatchInfo.CountInv;
end;

procedure TC_CustomsPaymentFRM.DeleteInvBTNClick(Sender: TObject);
var
        UserId:String;
        UserStation:String;
        Status:string;
        AccSerial:Integer;

Begin
Status:=TablexSQL.FieldbYName('STATUS').AsString;
AccSerial:=CollectionScanSQL.FieldbYName('FK_ACCOUNTING_BATCH').AsInteger;
If AccSerial>0 then begin
        ShowMessage('Included in Accounting Batch');
        abort;
end;

        if (Status='L') and (not CollectionScanSQL.IsEmpty )then begin
                CollectionScanSQL.Delete;
        end;

        If TablexSQL.State=dsEdit then begin// force a post to run post event for the totals;
                TablexSQL.Post;
                TablexSQL.Edit;
        end;

{
UserId:=TableSQL.FieldbYName('USER_ID').AsString;
UserStation:=TableSQL.FieldbYName('USER_STATION').AsString;
If (UserId=Mainform.Global_UserID) and (UserStation=Mainform.Global_station) then begin
        if (Status='L') and (not CollectionScanSQL.IsEmpty )then begin
                CollectionScanSQL.Delete;
        end;
end else begin
        ShowMessage('Batch Created by Another User/Station');
end;
}
end;

procedure TC_CustomsPaymentFRM.AcceptBTNClick(Sender: TObject);
begin
if IN_Action='INSERT' then begin

        If TablexSql.state in [dsInsert] then begin
                TablexSQL.post;
        end;
        ModalResult:=mrOK;
        close;

end else if IN_Action='EDIT' then begin
        If TablexSql.state in [dsEdit] then begin
                TablexSQL.post;
        end;
        close;

end else if IN_Action='CLOSE' then begin
        CloseCollection;
end ELSE begin
        showMessage('error');
end;

end;

END.
