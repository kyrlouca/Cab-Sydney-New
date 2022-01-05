unit C_CustomsHawbMediumPayments;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, wwdbdatetimepicker,
  Wwdotdot, Wwdbcomb, vcl.wwbutton, RzLabel, RzDBLbl, RzPanel;

type
  TC_CustomsHawbMediumPaymentsFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    MediumHawbSRC: TDataSource;
    Panel5: TPanel;
    MediumHawbSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    AddBtn: TBitBtn;
    BitBtn2: TBitBtn;
    MakeSQL: TIBCQuery;
    MediumHawbSQLNAME: TStringField;
    MediumHawbSQLSERIAL_NUMBER: TIntegerField;
    MediumHawbSQLHAB_ID: TStringField;
    MediumHawbSQLPROCEDURE_CODE: TStringField;
    MediumHawbSQLXML_HOUSE_ID: TStringField;
    MediumHawbSQLFK_CLEARING_STATE: TStringField;
    MediumHawbSQLWEIGHT_GROSS: TFloatField;
    MediumHawbSQLVATAMOUNT: TFloatField;
    MawbSQL: TIBCQuery;
    MawbSQLTDID_MEDIUM: TStringField;
    MawbSQLMAWB_ID: TStringField;
    MawbSRC: TDataSource;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MediumHawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    CustomPaymentHawbSQL: TIBCQuery;
    CustomPaymentHawbSQLSERIAL_NUMBER: TIntegerField;
    CustomPaymentHawbSQLXML_ID: TStringField;
    CustomPaymentHawbSQLAMOUNT_CUSTOMS: TFloatField;
    CustomPaymentHawbSQLAMOUNT_DHL: TFloatField;
    CustomPaymentHawbSQLHAWB_SERIAL: TIntegerField;
    CustomPaymentHawbSQLHAWB_ID: TStringField;
    CustomPaymentHawbSQLFK_CUSTOMS_SERIAL: TIntegerField;
    CustomPaymentHawbSQLCUSTOMER_NAME: TStringField;
    CustomPaymentHawbSQLDATE_CLEARED: TDateField;
    CustomPaymentHawbSQLHAWB_TYPE: TStringField;
    CustomPaymentHawbSQLMAWB_ID: TStringField;
    CustomPaymentHawbSQLFFHAWB_TYPE: TStringField;
    CustomPaymentHawbSQLFFMAWB_ID: TStringField;
    CustomePaymentHawbSRC: TIBCDataSource;
    MediumHawbSQLDATE_CLEARED: TDateField;
    MediumHawbSQLPAYMENTSERIAL: TIntegerField;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    SearchTariffBTN: TSpeedButton;
    Label11: TLabel;
    XmlIdFLD: TwwDBEdit;
    HawbGRD: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    SumOfChargesSQL: TIBCQuery;
    SumOfChargesSRC: TDataSource;
    SumOfChargesSQLVATAMOUNT: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure MediumHawbSQLBeforePost(DataSet: TDataSet);
    procedure SearchTariffBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure HawbGRDUpdateFooter(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
    DefaultType: String;
    procedure AddHawbs;
  public
    { Public declarations }

    InAction: String;
    InSerialNumber: integer;
    InMasterSerial: integer;
  end;

var
  C_CustomsHawbMediumPaymentsFRM: TC_CustomsHawbMediumPaymentsFRM;

implementation

uses U_ClairDML, G_KyrSQL;

{$R *.DFM}

procedure TC_CustomsHawbMediumPaymentsFRM.AddHawbs;
  begin
    MediumHawbSQL.DisableControls;
    while (not MediumHawbSQL.Eof) do
    begin

      if (MediumHawbSQL.FieldByName('PaymentSerial').AsInteger > 0) OR (MediumHawbSQL.FieldByName('xml_house_id').AsString = '') then
      begin
        MediumHawbSQL.Next;
        Continue;
      end;

      try

        with CustomPaymentHawbSQL do
        begin
          CustomPaymentHawbSQL.close;
          CustomPaymentHawbSQL.Open;
          if not prepared then
            prepare;
          CustomPaymentHawbSQL.Insert;

          FieldByName('Amount_Customs').value := MediumHawbSQL.FieldByName('VATamount').AsFloat;
          FieldByName('Hawb_Serial').value := MediumHawbSQL.FieldByName('serial_number').AsInteger;
          FieldByName('Hawb_Id').value := MediumHawbSQL.FieldByName('hab_id').AsString;
          FieldByName('Hawb_Type').value := 'MV';
          FieldByName('Mawb_Id').value := MawbSQL.FieldByName('mawb_id').AsString;
          FieldByName('Xml_Id').value := MediumHawbSQL.FieldByName('xml_house_id').AsString;
          FieldByName('Customer_name').value := MediumHawbSQL.FieldByName('name').AsString;
          var
          dateCleared := MediumHawbSQL.FieldByName('Date_cleared').AsDateTime;
          if dateCleared > EncodeDate(2010, 1, 1) then
          begin
            FieldByName('Date_cleared').value := MediumHawbSQL.FieldByName('Date_cleared').AsDateTime;
          end;

          FieldByName('FK_CUstoms_Serial').value := InMasterSerial;
          Post;

        end;
      except
        ShowMessage('Duplicate XmliD:' + CustomPaymentHawbSQL.FieldByName('xml_house_id').AsString);

      end;

      MediumHawbSQL.Next;
    end;
    MediumHawbSQL.first;
    MediumHawbSQL.EnableControls;
    Close;
  end;

procedure TC_CustomsHawbMediumPaymentsFRM.AddBtnClick(Sender: TObject);
  begin
    AddHawbs();
  end;

procedure TC_CustomsHawbMediumPaymentsFRM.BitBtn2Click(Sender: TObject);
  begin
    close;
  end;

procedure TC_CustomsHawbMediumPaymentsFRM.FormActivate(Sender: TObject);
  begin
    AddBtn.Enabled := false;
    MawbSQL.close;
    MawbSQL.ParamByName('tdid').value := 'SHOWCLOSE';
    MawbSQL.Open;
    MediumHawbSQL.Open;

    With MakeSQL do
    begin
      close;
      MakeSQL.SQL.Clear;
      MakeSQL.SQL.Text := 'select hawb_type from customs_hawb_type order by ORDER_Number ';
      if not prepared then prepare;
      Open;
      first;
      DefaultType := MakeSQL.FieldByName('hawb_TYPE').AsString;
      close;
    end;

    if XmlIdFLD.CanFocus then
    begin
      XmlIdFLD.SetFocus;
    end;

  end;

procedure TC_CustomsHawbMediumPaymentsFRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
  end;

procedure TC_CustomsHawbMediumPaymentsFRM.TableSQLBeforeEdit(DataSet: TDataSet);
  begin
    // Dataset.FieldByName('Serial_number').ReadOnly:=true;
  end;

procedure TC_CustomsHawbMediumPaymentsFRM.HawbGRDUpdateFooter(Sender: TObject);
  begin
    SumOfChargesSQL.close;
    SumOfChargesSQL.ParamByName('mawbSerial').value := MawbSQL.FieldByName('Reference_number').AsInteger;
    SumOfChargesSQL.Open;
    var vatVal: double := SumOfChargesSQL.FieldByName('VatAmount').AsFloat;
    HawbGRD.ColumnByName('VatAmount').FooterValue := FloatToStrF(vatVal, ffCurrency, 10, 2);

  end;

procedure TC_CustomsHawbMediumPaymentsFRM.SearchTariffBTNClick(Sender: TObject);

  begin

    // var sqlStr: string := 'select ma.tdid_medium, ma.mawb_id from mawb ma where ma.tdid_medium = :tdid';
    // var qr: TksQuery := TksQuery.Create(cn, sqlStr);
    if (Trim(XmlIdFLD.Text) = '') then
    begin
      exit;
    end;

    MawbSQL.close;
    MawbSQL.ParamByName('tdid').value := XmlIdFLD.Text;
    MawbSQL.Open;
    if (MediumHawbSQL.RecordCount > 0) then
    begin
      AddBtn.Enabled := true;
    end
    else
    begin
      AddBtn.Enabled := false;
    end;





    // MediumHawbSQL.close;
    // MediumHawbSQL.ParamByName('MawbSerial').value := MawbSQL.fieldbyName('REFERENCE_NUMBER').AsInteger;
    // MediumHawbSQL.Open;

  end;

procedure TC_CustomsHawbMediumPaymentsFRM.MediumHawbSQLBeforePost(DataSet: TDataSet);
  begin
    DataSet.FieldByName('Hawb_type').value := Trim(DataSet.FieldByName('Hawb_type').AsString);
    if (Trim(DataSet.FieldByName('Hawb_type').AsString) = '') then
    begin
      DataSet.FieldByName('Hawb_type').value := '';
      ShowMessage('Enter hawb type');
      abort;
    end;

  end;

End.
