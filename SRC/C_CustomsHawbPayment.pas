unit C_CustomsHawbPayment;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, wwdbdatetimepicker,
  Wwdotdot, Wwdbcomb;
type
  TC_CustomsHawbPaymentFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    PaymentDateFLD: TwwDBDateTimePicker;
    CustFLD: TwwDBEdit;
    AmountFLD: TwwDBEdit;
    KeyIdFLD: TwwDBEdit;
    HawbFLD: TwwDBEdit;
    MakeSQL: TIBCQuery;
    TypeFLD: TwwDBComboBox;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLXML_ID: TStringField;
    TableSQLAMOUNT_CUSTOMS: TFloatField;
    TableSQLAMOUNT_DHL: TFloatField;
    TableSQLHAWB_SERIAL: TIntegerField;
    TableSQLHAWB_ID: TStringField;
    TableSQLFK_CUSTOMS_SERIAL: TIntegerField;
    TableSQLCUSTOMER_NAME: TStringField;
    TableSQLDATE_CLEARED: TDateField;
    TableSQLHAWB_TYPE: TStringField;
    TableSQLMAWB_ID: TStringField;
    TableSQLFFHAWB_TYPE: TStringField;
    TableSQLFFMAWB_ID: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure TableSQLBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    DefaultType:String;
  public
    { Public declarations }

    InAction:String;
    InSerialNumber:integer;
    InMasterSerial:integer;
  end;

var
  C_CustomsHawbPaymentFRM: TC_CustomsHawbPaymentFRM;

implementation

uses  U_ClairDML;


{$R *.DFM}

procedure TC_CustomsHawbPaymentFRM.FormActivate(Sender: TObject);
begin


     With MakeSQL do
     begin
        Close;
        MakeSQL.SQL.Clear;
        MakeSQL.SQL.Text :='select hawb_type from customs_hawb_type order by ORDER_Number ';
        if not prepared then prepare;
        Open;
        first;
        DefaultType:=MakeSQL.fieldbyName('hawb_TYPE').AsString;
        While ( NOT MakeSQL.Eof)do begin
                TypeFLD.Items.add(MakeSQL.fieldbyName('hawb_TYPE').AsString);
                MakeSQL.Next;
       end;
        close;
     end;




//     NameFLD.SetFocus;
     If InAction='INSERT' then begin
        TableSQL.close;
        TableSQL.Open;
        TableSQL.Insert;
        TableSQL.FieldByName('fk_CUSTOMS_SERIAL').value:= InMasterSerial;
        TableSQL.FieldByName('HAWB_TYPE').Value:= DefaultTYpe;
        TableSQL.FieldByName('DATE_CLEARED').AsDateTime:=NOW;

     end else If InAction='DISPLAY' then begin
        With TableSQL do begin
                Close;
                TableSQL.ParambyName('SErialNumber').Value:= InSerialNumber;
                Open;
        end;
  
     end;


end;

procedure TC_CustomsHawbPaymentFRM.BitBtn2Click(Sender: TObject);
begin
if tableSQL.State in [dsinsert,dsEdit] then begin
        tableSQL.Cancel;
end;
close;

end;

procedure TC_CustomsHawbPaymentFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TC_CustomsHawbPaymentFRM.TableSRCStateChange(Sender: TObject);
begin


with TableSQL do
begin
     If State<>dsInsert then
     begin
         KeyIDFLD.Enabled:=false;
//       FieldByName('id').ReadOnly:=true;
     end
     else
     begin
         KeyIDFLD.Enabled:=true;
//       FieldByName('id').ReadOnly:=false;
     end;
end;//with

end;

procedure TC_CustomsHawbPaymentFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
   if keyIDFLD.CanFocus then begin
        keyIDFLD.SetFocus;
   end;


end;

procedure TC_CustomsHawbPaymentFRM.BitBtn1Click(Sender: TObject);
begin
if tableSQL.State in [dsinsert,dsEdit] then begin
        tableSQL.Post;
end;
close;

End;

procedure TC_CustomsHawbPaymentFRM.TableSQLBeforePost(DataSet: TDataSet);
begin
Dataset.FieldbyName('Hawb_type').Value := Trim(Dataset.FieldbyName('Hawb_type').AsString);
if ( Trim(Dataset.FieldbyName('Hawb_type').AsString) = '') then begin
 Dataset.FieldbyName('Hawb_type').Value :='';
 ShowMessage('Enter hawb type');
 abort;
end;


end;

End.
