unit C_CustomsHawbPayment;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
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
    FindCustomHawbSQL: TIBCQuery;
    FindCustomHawbSQLSERIAL_NUMBER: TIntegerField;
    FindCustomHawbSQLXML_ID: TStringField;
    FindCustomHawbSQLAMOUNT_CUSTOMS: TFloatField;
    FindCustomHawbSQLAMOUNT_DHL: TFloatField;
    FindCustomHawbSQLHAWB_SERIAL: TIntegerField;
    FindCustomHawbSQLHAWB_ID: TStringField;
    FindCustomHawbSQLFK_CUSTOMS_SERIAL: TIntegerField;
    FindCustomHawbSQLCUSTOMER_NAME: TStringField;
    FindCustomHawbSQLPAYMENTSERIAL: TIntegerField;
    FindCustomHawbSQLCHEQUE_NUMBER: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure TableSQLBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    DefaultType: String;
  public
    { Public declarations }

    InAction: String;
    InSerialNumber: integer;
    InMasterSerial: integer;
  end;

var
  C_CustomsHawbPaymentFRM: TC_CustomsHawbPaymentFRM;

implementation

uses U_ClairDML;

{$R *.DFM}

procedure TC_CustomsHawbPaymentFRM.FormActivate(Sender: TObject);
  begin

    With MakeSQL do
    begin
      Close;
      MakeSQL.SQL.Clear;
      MakeSQL.SQL.Text := 'select hawb_type from customs_hawb_type order by ORDER_Number ';
      if not prepared then prepare;
      Open;
      first;
      DefaultType := MakeSQL.fieldbyName('hawb_TYPE').AsString;
      While (NOT MakeSQL.Eof) do
      begin
        TypeFLD.Items.add(MakeSQL.fieldbyName('hawb_TYPE').AsString);
        MakeSQL.Next;
      end;
      Close;
    end;

    // NameFLD.SetFocus;
    If InAction = 'INSERT' then
    begin
      TableSQL.Close;
      TableSQL.Open;
      TableSQL.Insert;
      TableSQL.fieldbyName('fk_CUSTOMS_SERIAL').value := InMasterSerial;
      TableSQL.fieldbyName('HAWB_TYPE').value := DefaultType;
      TableSQL.fieldbyName('DATE_CLEARED').AsDateTime := NOW;

    end
    else If InAction = 'DISPLAY' then
    begin
      With TableSQL do
      begin
        Close;
        TableSQL.ParambyName('SErialNumber').value := InSerialNumber;
        Open;
      end;

    end;

  end;

procedure TC_CustomsHawbPaymentFRM.BitBtn2Click(Sender: TObject);
  begin
    if TableSQL.State in [dsinsert, dsEdit] then
    begin
      TableSQL.Cancel;
    end;
    Close;

  end;

procedure TC_CustomsHawbPaymentFRM.TableSQLBeforeEdit(DataSet: TDataSet);
  begin
    // Dataset.FieldByName('Serial_number').ReadOnly:=true;
  end;

procedure TC_CustomsHawbPaymentFRM.TableSRCStateChange(Sender: TObject);
  begin

    with TableSQL do
    begin
      If State <> dsinsert then
      begin
        KeyIdFLD.Enabled := false;
        // FieldByName('id').ReadOnly:=true;
      end
      else
      begin
        KeyIdFLD.Enabled := true;
        // FieldByName('id').ReadOnly:=false;
      end;
    end; // with

  end;

procedure TC_CustomsHawbPaymentFRM.TableSQLAfterInsert(DataSet: TDataSet);
  begin
    if KeyIdFLD.CanFocus then
    begin
      KeyIdFLD.SetFocus;
    end;

  end;

procedure TC_CustomsHawbPaymentFRM.BitBtn1Click(Sender: TObject);
  begin

    FindCustomHawbSQL.Close;
    FindCustomHawbSQL.ParambyName('xmlId').value := tablesql.FieldByName('XML_ID').asstring;
    FindCustomHawbSQL.open;
    if (FindCustomHawbSQL.RecordCount > 0) then
    begin
      ShowMessage('Xml id already exists. Cheque:' + FindCustomHawbSQL.fieldbyName('cheque_number').AsString);
      TableSQL.Cancel;
      exit;
    end;

    if TableSQL.State in [dsinsert, dsEdit] then
    begin
      TableSQL.Post;
    end;
    Close;

  End;

procedure TC_CustomsHawbPaymentFRM.TableSQLBeforePost(DataSet: TDataSet);
  begin
    DataSet.fieldbyName('Hawb_type').value := Trim(DataSet.fieldbyName('Hawb_type').AsString);
    if (Trim(DataSet.fieldbyName('Hawb_type').AsString) = '') then
    begin
      DataSet.fieldbyName('Hawb_type').value := '';
      ShowMessage('Enter hawb type');
      abort;
    end;

  end;

End.
