unit V_hawbItem4;
// HawbItem (REcord) must be given as input to this form whether to edit or to insert

interface

uses
  Windows, Messages, SysUtils, System.Variants, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbcomb, StdCtrls, Buttons, Mask, wwdbedit, wwdblook, ExtCtrls, G_kyriacosTypes, G_KyrSQL,
  Data.DB, MemDS, DBAccess, IBC, vcl.wwspeedbutton, vcl.wwdbnavigator,
  vcl.wwclearpanel, vcl.wwbutton, vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  vcl.DBCtrls, vcl.wwcheckbox, V_HawbData, RzButton, RzPanel, V_MawbHawb;

type
  TV_hawbItemFRM4 = class(TForm)
    Panel1: TrzPanel;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    HawbItemSrC: TIBCDataSource;
    wwButton1: TwwButton;
    TariffSQL: TIBCQuery;
    TariffSQLTARIFF_CODE: TStringField;
    TariffSQLFK_VAT_CODE: TStringField;
    TariffSQLDESCRIPTION: TStringField;
    TariffSQLACTIVE: TStringField;
    TariffSQLUSER_KEYWORD: TStringField;
    TariffSRC: TIBCDataSource;
    HawbChargeSQL: TIBCQuery;
    HawbChargeSRC: TIBCDataSource;
    ChargesGRD: TwwDBGrid;
    HawbChargeSQLSERIAL_NUMBER: TIntegerField;
    HawbChargeSQLFK_TARIFF_LINE: TIntegerField;
    HawbChargeSQLCUSTOMS_VALUE: TFloatField;
    HawbChargeSQLTARIFF_CODE: TStringField;
    HawbChargeSQLTARIFF_UNIT: TStringField;
    HawbChargeSQLTARIFF_UNIT_INCREMENT: TIntegerField;
    HawbChargeSQLTARIFF_UNIT_RATE: TFloatField;
    HawbChargeSQLDUTY_TYPE: TStringField;
    HawbChargeSQLTARIFF_RELIEVED_RATE: TFloatField;
    HawbChargeSQLAMOUNT_NET: TFloatField;
    HawbChargeSQLVAT_CODE: TStringField;
    HawbChargeSQLVAT_RATE: TFloatField;
    HawbChargeSQLQUANTITY: TIntegerField;
    MakeSQL: TIBCQuery;
    HawbChargeSQLFK_HAWB: TIntegerField;
    HawbChargeSQLFK_HAWB_ITEM: TIntegerField;
    HawbChargeSQLTARIFF_CHARGING_METHOD: TStringField;
    HawbChargeSQLTARIFF_UNITS_NOT_CHARGED: TIntegerField;
    HawbChargeSQLWEIGHT: TFloatField;
    HawbChargeSQLDESCRIPTION: TStringField;
    HawbChargeSQLAMOUNT_RELIEVED: TFloatField;
    TariffSQLFK_TARIFF_USAGE: TStringField;
    TariffSQLVAT_APPLIES: TStringField;
    HiCertificateSQL: TIBCQuery;
    HiCertificateSQLC_CODE: TStringField;
    HiCertificateSQLC_NUMBER: TStringField;
    HiCertificateSQLC_VALUE: TStringField;
    HiCertificateSQLSERIAL_NUMBER: TIntegerField;
    HiCertificateSQLFK_HAWB_ITEM: TIntegerField;
    HiCertificateSRC: TIBCDataSource;
    HawbItemSQL: TIBCQuery;
    HawbItemSQLSERIAL_NUMBER: TIntegerField;
    HawbItemSQLFK_HAWB_SERIAL: TIntegerField;
    HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbItemSQLDESCRIPTION: TStringField;
    HawbItemSQLFK_RELIEF_CODE: TStringField;
    HawbItemSQLFK_IMPORT_TYPE: TStringField;
    HawbItemSQLINVOICE_VALUE: TFloatField;
    HawbItemSQLDUTY_TYPE: TStringField;
    HawbItemSQLTARIFF_DESCRIPTION: TStringField;
    HawbItemSQLNET_QUANTITY: TIntegerField;
    HawbItemSQLIMPORT_DUTY_RATE: TFloatField;
    HawbItemSQLRELIEVED_IMPORT_DUTY: TFloatField;
    HawbItemSQLEXCISE_DUTY_RATE: TFloatField;
    HawbItemSQLEXCISE_RELIEVED: TFloatField;
    HawbItemSQLTRL_RATE: TFloatField;
    HawbItemSQLTRL_RELEIVED: TFloatField;
    HawbItemSQLVAT_RATE: TFloatField;
    HawbItemSQLVAT_RELEIVED: TFloatField;
    HawbItemSQLCUSTOMS_VALUE: TFloatField;
    HawbItemSQLCURRENCY_RATE: TFloatField;
    HawbItemSQLCURRENCY: TStringField;
    HawbItemSQLFK_MAWB: TIntegerField;
    HawbItemSQLFK_VAT_CODE: TIntegerField;
    HawbItemSQLFK_TARIFF_C_CODE: TStringField;
    HawbItemSQLFK_TARIFF_CODE: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_UNIT: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_QUANT: TFloatField;
    HawbItemSQLIMPORT_DUTY_RATE_BASE: TFloatField;
    HawbItemSQLDUTY_IMPORT_PAY: TFloatField;
    HawbItemSQLDUTY_TRL_PAY: TFloatField;
    HawbItemSQLDUTY_EXCISE_PAY: TFloatField;
    HawbItemSQLDUTY_VAT_PAY: TFloatField;
    HawbItemSQLDUTY_IMPORT_TOTAL: TFloatField;
    HawbItemSQLDUTY_EXCISE_TOTAL: TFloatField;
    HawbItemSQLDUTY_TRL_TOTAL: TFloatField;
    HawbItemSQLDUTY_VAT_TOTAL: TFloatField;
    HawbItemSQLTOTAL_VALUE_FOR_VAT: TFloatField;
    HawbItemSQLDUTY_TOTAL_CHARGES: TFloatField;
    HawbItemSQLFK_EXCISE_CODE: TStringField;
    HawbItemSQLEURO1: TStringField;
    HawbItemSQLEURO2: TStringField;
    HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField;
    HawbItemSQLMULTI_ITEMS_INVOICE: TStringField;
    HawbItemSQLINVOICE_LINE: TIntegerField;
    HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbItemSQLWEIGHT_NET: TFloatField;
    HawbItemSQLUNIT: TStringField;
    HawbItemSQLFACTOR_NUMERIC: TFloatField;
    HawbItemSQLCURRENCYINV: TStringField;
    HawbItemSQLPOSOSTOSIS: TStringField;
    HawbItemSQLEURO_PENDING: TStringField;
    TitlePNL: TrzPanel;
    Panel8: TrzPanel;
    Label10: TLabel;
    Label11: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    ButtonsPNL: TrzPanel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    SaveTariffBTN: TBitBtn;
    Panel11: TrzPanel;
    BitBtn1: TBitBtn;
    TaxesBTN: TBitBtn;
    HawbItemSQLVAT_CODE: TStringField;
    HawbItemSQLBUCKET_TARIFF: TStringField;
    UpperPanelPNL: TrzPanel;
    TariffDetailsGroup: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label62: TLabel;
    SpeedButton2: TSpeedButton;
    Label12: TLabel;
    TariffCodeDescFLD: TwwDBEdit;
    SelectTariffFLD: TwwDBEdit;
    TariffCodeFLD: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    DescriptionGroup: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    TariffDescriptionFLD: TwwDBEdit;
    CivilFLD: TwwDBComboBox;
    OriginFLD: TwwDBComboBox;
    ItemDetailsGroup: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label28: TLabel;
    NetFLD: TwwDBEdit;
    InvoiceValueFLD: TwwDBEdit;
    FactorFLD: TwwDBEdit;
    FCurrencyFLD: TwwDBEdit;
    GrossWeightFLD: TwwDBEdit;
    CustomsValueFLD: TwwDBEdit;
    MUnitFLD: TwwDBComboBox;
    CertificateGroup: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label34: TLabel;
    wwDBGrid1: TwwDBGrid;
    CCodeFLD: TwwDBEdit;
    CNumberFLD: TwwDBEdit;
    CValueFLD: TwwDBEdit;
    AddCert1BTN: TRzBitBtn;
    DelCert1BTN: TRzBitBtn;
    Label13: TLabel;
    NetWeightFLD: TwwDBEdit;
    HawbItemSQLWEIGHT_GROSS: TFloatField;
    HawbItemSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure TaxesBTNClick(Sender: TObject);
    procedure HawbItemSrCDataChange(Sender: TObject; Field: TField);
    procedure HawbItemSQLCalcFields(DataSet: TDataSet);
    procedure HawbChargeSQLTARIFF_UNIT_RATEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ChargesGRDDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwButton1Click(Sender: TObject);
    procedure ChargesGRDUpdateFooter(Sender: TObject);
    procedure AddCert1BTNClick(Sender: TObject);
    procedure DelCert1BTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SelectTariffFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TariffCodeFLDChange(Sender: TObject);
    procedure InvoiceValueFLDExit(Sender: TObject);
  private
    { Private declarations }
    IsBucket: Boolean;
    MawbId: String;
    cn: TIBCCOnnection;

    procedure ViewTaxes;
    procedure SelectTariff;

    Function CalculateChargesSum(Const HawbItemSerial: integer): Double;
    procedure UpdateFooter();
    procedure BucketSettings();

  public
    { Public declarations }
    IN_HawbItem: ThdHawbItemRecord;
    IN_ACTION: String;
    procedure OpenHawbItem(Const hawbItem: ThdHawbItemRecord);

    Function InsertHawbItem(HiR: ThdHawbItemRecord): integer;
    // Function PopulateThdHawbItemREcord(HawbItemDS:TDataset):ThdHawbItemREcord;
    // procedure CreateHawbItemCharges(Const HawbItemSerial:Integer);

  end;

var
  V_hawbItemFRM4: TV_hawbItemFRM4;

implementation

{$R *.DFM}

uses MainFFF, S_selectTariffV1, U_ClairDML, G_DebugUnit, G_generalProcs, M_tariffLine, B_TariffFunctions;

procedure TV_hawbItemFRM4.AcceptBTNClick(Sender: TObject);
  begin
    If HawbItemSQL.State in [dsEdit, dsInsert] then
      HawbItemSQL.Post;
    close;
  end;

// procedure TV_hawbItemFRM4.AddCertBTNClick(Sender: TObject);
procedure TV_hawbItemFRM4.AddCert1BTNClick(Sender: TObject);

  Var
    mCode, MNumber, Mvalue: String;
  begin
    mCode := Trim(CCodeFLD.Text);
    MNumber := Trim(CNumberFLD.Text);
    Mvalue := Trim(CValueFLD.Text);
    if ((mCode = '') or (MNumber = '') or (Mvalue = '')) then
    begin
      if (CCodeFLD.CanFocus) then CCodeFLD.SetFocus;
      ShowMessage('Fill all values');
      abort;
    end;
    HiCertificateSQL.Insert;
    HiCertificateSQL.FieldByName('C_Code').value := mCode;
    HiCertificateSQL.FieldByName('C_Number').value := MNumber;
    HiCertificateSQL.FieldByName('C_Value').value := Mvalue;
    HiCertificateSQL.Post;
    CCodeFLD.Text := '';
    CNumberFLD.Text := '';
    CValueFLD.Text := '';
    if (CCodeFLD.CanFocus) then CCodeFLD.SetFocus;

  end;

procedure TV_hawbItemFRM4.BitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TV_hawbItemFRM4.FormActivate(Sender: TObject);
  var
    fld: TwwDBEdit;
    len: integer;
  begin
    SelectTariffFLD.Clear;

    var
    sqlbucket := 'SELECT ma.reference_number, ma.mawb_id,ma.is_bucket ' + 'FROM mawb  ma ' + 'join hawb ha on ma.reference_number=ha.fk_mawb_refer_number ' +
         'join hawb_item hi on hi.fk_hawb_serial =ha.serial_number ' + 'WHERE hi.serial_number = :ItemSerial ';
    var qr: TIBCQuery := TksQuery.Create(cn, sqlbucket);
    try
      qr.ParamByName('itemSerial').value := IN_HawbItem.HawbItemSerial;
      qr.Open;
      self.IsBucket := qr.FieldByName('IS_BUCKET').AsString = 'Y';
      self.MawbId := qr.FieldByName('MAWB_ID').AsString;
      qr.close;
    finally
      qr.Free;
    end;

    self.BucketSettings();

    if IN_ACTION = 'EDIT' then
    begin
      OpenHawbItem(IN_HawbItem);

      fld := TariffCodeFLD;
      if (fld.Text = '') then
      begin
        SelectTariffFLD.Color := clRed;
        SelectTariffFLD.SetFocus;
      end
      else
      begin
        SelectTariffFLD.Color := clWindow;
        If TariffDescriptionFLD.CanFocus then
          TariffDescriptionFLD.SetFocus;
        TariffDescriptionFLD.SelStart := Length(TariffDescriptionFLD.Text)

      end;

      UpdateFooter();
    end;

    ksOpenTables([TariffSQL, HawbChargeSQL, HiCertificateSQL]);

  end;

procedure TV_hawbItemFRM4.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
    ksfillComboF1(cn, CivilFLD, 'import_type', 'code', 'description');
    ksfillComboF1(cn, MUnitFLD, 'UNIT_MEASURE', 'unit', 'unit');
    ksfillComboF1(cn, OriginFLD, 'COUNTRY', 'Number', 'Name');

  end;

procedure TV_hawbItemFRM4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin

    if (Key = VK_RETURN) and (ssCtrl in Shift) then
    begin
      AcceptBTN.Click;
    end;

    if Key = VK_ESCAPE then
    begin
      // ShowMessage('esc');
      Key := 0;
      abort;
    end;
  end;

procedure TV_hawbItemFRM4.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if Key = VK_ESCAPE then
    begin
      ShowMessage('esc');
      Key := 0;
      abort;
    end;
  end;

procedure TV_hawbItemFRM4.HawbChargeSQLTARIFF_UNIT_RATEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  var
    floatVal: Double;

  begin
    if VarIsNull(Sender.value) then
      floatVal := 0
    else
      floatVal := Sender.value;

    if Sender.DataSet.FieldByName('TARIFF_CHARGING_METHOD').AsString = 'VA' then
    begin
      Text := Format('%5.2f%%', [floatVal]);
    end
    else
    begin
      Text := Format('%5.2f', [floatVal]);
    end;

  end;

procedure TV_hawbItemFRM4.HawbItemSQLCalcFields(DataSet: TDataSet);
  begin

    // Dataset.FieldByName('CustomsValueCalc').Value:=1;
    // Dataset.FieldByName('SenderFactor').Value:=1;
    // Dataset.FieldByName('SenderCurrency').Value:='FFF';

    DataSet.FieldByName('CustomsValueCalc').value := DataSet.FieldByName('pre_Discount_amount').AsFloat * DataSet.FieldByName('factor_numeric').AsFloat;
  end;

procedure TV_hawbItemFRM4.HawbItemSrCDataChange(Sender: TObject; Field: TField);
  {
    Var
    Total:double;
    ItemSerial:Integer;
  }
  begin
    {
      itemSerial:= HawbItemSQL.FieldByName('Serial_number').AsInteger;
      if ItemSerial>0 then begin
      total:=CalculateChargesSum(ItemSerial);
      TotalFLD.Text:=Format('%7.2f',[total]);
      end;
    }
  end;

procedure TV_hawbItemFRM4.OpenHawbItem(Const hawbItem: ThdHawbItemRecord);
  Var
    qr: TksQuery;
    IsClear, IsInvoice: Boolean;
  begin
    try
      qr := TksQuery.Create(cn, 'select ha.fk_clearing_state,ha.fk_invoice_status,hab_id from hawb ha where ha.serial_number = :hawbSerial');
      qr.ParamByName('hawbSerial').value := hawbItem.HawbSerial;
      qr.Open;
      // showMessage(qr.fieldbyName('hab_id').AsString);
      IsInvoice := qr.FieldByName('FK_INVOICE_STATUS').AsString > '0';
      IsClear := qr.FieldByName('FK_CLearing_state').AsString > '0';
      qr.close;
    finally
      qr.Free;

    end;

    HawbItemSQL.close;
    HawbItemSQL.ReadOnly := IsClear oR IsInvoice;
    HawbItemSQL.ParamByName('ItemSerial').value := hawbItem.HawbItemSerial;
    HawbItemSQL.Open;
  end;

procedure TV_hawbItemFRM4.SelectTariffFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  var
    ln: integer;
    tariffCode: string;
    HawbItemSerial: integer;
  begin
    ln := Length(SelectTariffFLD.Text);
    if ln = 0 then
    begin
      SelectTariffFLD.UsePictureMask := false;
      SelectTariffFLD.Color := $00BBFBFB;
    end
    else if ln = 1 then
    begin
      if Key in [48 .. 57] then
      begin
        SelectTariffFLD.Color := clCream;
        SelectTariffFLD.UsePictureMask := true;
        SelectTariffFLD.Picture.PictureMask := '####  ## ## ##';
        SelectTariffFLD.Picture.AutoFill := true;
        SelectTariffFLD.Picture.AllowInvalidExit := true;
      end;
    end;

    if Key = VK_RETURN then
    begin
      SelectTariff;
      tariffCode := HawbItemSQL.FieldByName('fk_tariff_code').AsString;
      HawbItemSerial := HawbItemSQL.FieldByName('serial_number').AsInteger;
      V_MawbHawbDML.InsertCertificates(tariffCode, HawbItemSerial);
      HiCertificateSQL.Refresh;

      if TariffDescriptionFLD.CanFocus then
        TariffDescriptionFLD.SetFocus;
      ViewTaxes;
    end;

  end;

procedure TV_hawbItemFRM4.SpeedButton1Click(Sender: TObject);
  var
    tariffCode: string;
    HawbItemSerial: integer;
  begin
    SelectTariff();
    if TariffDescriptionFLD.CanFocus then TariffDescriptionFLD.SetFocus;
    TariffDescriptionFLD.SelStart := Length(TariffDescriptionFLD.Text);
    tariffCode := HawbItemSQL.FieldByName('fk_tariff_code').AsString;
    HawbItemSerial := HawbItemSQL.FieldByName('serial_number').AsInteger;
    V_MawbHawbDML.InsertCertificates(tariffCode, HawbItemSerial);
    HiCertificateSQL.Refresh;
  end;

procedure TV_hawbItemFRM4.SelectTariff;
  Var
    AName: String;
    SelectedTariffCode: String;
    SelectedTariffSerial: integer;
    TariffCodeNumber: integer;
    HawbItemSerial: integer;

  begin
    AName := Trim(SelectTariffFLD.Text);
    // check if the user entered a keyword or a Tariff code (both are strings but code is number like
    TariffCodeNumber := StrToIntDef(Copy(AName, 1, 2), 0);

    S_SelectTariffV1FRM.In_ForSelection := 'Y';

    var
    isMedium := HawbItemSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString.Trim = 'MED';
    S_SelectTariffV1FRM.IN_IsMEdium :=IsMedium;
    S_SelectTariffV1FRM.IN_TariffUsage := 'TRF';
      S_SelectTariffV1FRM.IN_ShowFilter := false;
    S_SelectTariffV1FRM.in_Value := AName;

    S_SelectTariffV1FRM.ShowModal;

    SelectedTariffCode := S_SelectTariffV1FRM.OutSelectedTariffCode;

    if SelectedTariffCode = '' then
    begin
      exit;
    end;

    If not(HawbItemSQL.State in [dsEdit]) then
      HawbItemSQL.Edit;
    HawbItemSQL.FieldByName('fk_tariff_code').AsString := SelectedTariffCode;


    HawbItemSQL.Post;
    HawbItemSerial := HawbItemSQL.FieldByName('serial_number').AsInteger;

    V_MawbHawbDML.CreateHawbItemCharges(HawbItemSerial);

  end;

procedure TV_hawbItemFRM4.SpeedButton2Click(Sender: TObject);
  var
    SelectedTariffCode: String;
  begin
    SelectedTariffCode := HawbItemSQL.FieldByName('fk_tariff_code').AsString;

    S_SelectTariffV1FRM.In_SelectBy := 'BY_TARIFF_CODE';
    S_SelectTariffV1FRM.In_ForSelection := 'N';
    S_SelectTariffV1FRM.IN_TariffUsage := 'TRF';
    S_SelectTariffV1FRM.in_Value := SelectedTariffCode;
    S_SelectTariffV1FRM.ShowModal;

  end;

procedure TV_hawbItemFRM4.TaxesBTNClick(Sender: TObject);
  begin
    ViewTaxes();
  end;

procedure TV_hawbItemFRM4.ViewTaxes;
  var
    HawbItemSerial: integer;
    HawbSerial: integer;
    sum: Double;

  begin
    var isInvoiced :boolean := (v_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString > '0');
    var isCleared :boolean := (v_hawbDataDML.HawbSQL.FieldByName('FK_CLEARING_STATE').AsString > '0');

    if (isInvoiced or isCleared) then
    begin
      exit;
    end;

    if HawbItemSQL.State in [dsInsert, dsEdit] then
      HawbItemSQL.Post;
    HawbItemSerial := HawbItemSQL.FieldByName('serial_number').AsInteger;
    HawbSerial := HawbItemSQL.FieldByName('FK_Hawb_serial').AsInteger;
//    V_MawbHawbDML.UpdateFactor(HawbSerial);
//
//    V_MawbHawbDML.CreateHawbItemCharges(HawbItemSerial);
//    V_MawbHawbDML.CalcHawbItemVat(HawbItemSerial);



    if (Not isInvoiced) and (Not isCleared )then
    begin

      // ***** RecreateAllCharges();
      var
      tariffsObj := HawbTariffsObject.Create(cn, HawbSerial);
      try
        tariffsObj.RecreateHawbAllCharges();
      finally

        tariffsObj.free;
      end;

    end;


    HawbChargeSQL.Refresh;
    HawbItemSQL.Refresh;
    UpdateFooter();

  end;

procedure TV_hawbItemFRM4.wwButton1Click(Sender: TObject);
  var
    hawbItem: integer;
  begin
    ksOpenTables([HawbChargeSQL]);
  end;

procedure TV_hawbItemFRM4.TariffCodeFLDChange(Sender: TObject);
  var
    fld: TwwDBEdit;
  begin
    fld := (TariffCodeFLD);
    if (fld.Text = '') and (fld.DataSource.State <> dsInsert) then
      SelectTariffFLD.Color := clRed
    else
      SelectTariffFLD.Color := clWindow;

  end;

procedure TV_hawbItemFRM4.DelCert1BTNClick(Sender: TObject);
  begin
    HiCertificateSQL.Delete;
  end;

Function TV_hawbItemFRM4.InsertHawbItem(HiR: ThdHawbItemRecord): integer;
  begin

    with HawbItemSQL do
    begin
      close;
      Open;
      If HawbItemSQL.State in [dsInsert, dsEdit] then
        HawbItemSQL.Post;
      Insert;
      FieldByName('FK_HAWB_SERIAL').value := HiR.HawbSerial;
      FieldByName('FK_SENDER_INVOICE_SERIAL').value := HiR.SenderInvoice;
      FieldByName('PRE_DISCOUNT_AMOUNT').value := HiR.PreDiscountAmount;
      FieldByName('customs_value').value := 0;

      FieldByName('description').value := HiR.Description;
      FieldByName('NET_QUANTITY').value := HiR.Quantity;
      FieldByName('WEIGHT_NET').value := HiR.Weight;
      FieldByName('WEIGHT_GROSS').value := HiR.WeightGross;
      FieldByName('FK_COUNTRY_ORIGIN').value := HiR.Origin;
      // FieldByName('IMPORT_DUTY_RATE_UNIT').Value:=hir.UnitMeasure;
      FieldByName('UNIT').value := HiR.UnitMeasure;
      FieldByName('FK_tARIFF_CODE').value := HiR.tariffCode;

      FieldByName('POSOSTOSIs').value := 'N';
      FieldByName('EURO_PENDING').value := 'N';
      Post;
      result := FieldByName('serial_number').AsInteger;

    end;

  End;

procedure TV_hawbItemFRM4.InvoiceValueFLDExit(Sender: TObject);
  begin
    if InvoiceValueFLD.Modified then
      ViewTaxes();

  end;

Function TV_hawbItemFRM4.CalculateChargesSum(Const HawbItemSerial: integer): Double;
  var
    qr: TksQuery;
  begin

    if HawbItemSerial < 1 then
    begin
      result := 0;
      exit;
    end;

    try

      qr := TksQuery.Create(cn, 'select sum(amount_net) as Total from hawb_charge where fk_hawb_item= :Serial');
      with qr do
      begin
        ParamByName('Serial').value := HawbItemSerial;
        Open;
        result := FieldByName('Total').AsFloat;
        close;
      end;

    finally
      qr.Free;
    end;
  end;

procedure TV_hawbItemFRM4.CancelBTNClick(Sender: TObject);
  begin
    If HawbItemSQL.State in [dsEdit, dsInsert] then
      HawbItemSQL.Cancel;
    close;

  end;

procedure TV_hawbItemFRM4.ChargesGRDDblClick(Sender: TObject);
  var
    form: TM_tariffLineFRM;
    TariffLineSerial: integer;
  begin

    TariffLineSerial := HawbChargeSQL.FieldByName('fk_tariff_line').AsInteger;
    if TariffLineSerial < 1 then
      exit;

    try
      form := TM_tariffLineFRM.Create(nil); // you can use nil if you Free it in here
      form.IN_ACTION := 'DISPLAY';
      form.IN_SerialNumber := TariffLineSerial;
      form.ShowModal;

    finally
      // form.Release; // generally better than Free for a Form
      form.Free; // generally better than Free for a Form
    end;

  end;

procedure TV_hawbItemFRM4.UpdateFooter();
  var
    sum: Double;
  begin
    sum := CalculateChargesSum(HawbItemSQL.FieldByName('serial_number').AsInteger);
    ChargesGRD.ColumnByName('AMOUNT_NET').FooterValue := Format('%5.2f', [sum]);

  end;

procedure TV_hawbItemFRM4.ChargesGRDUpdateFooter(Sender: TObject);
  begin
    UpdateFooter;
  end;

procedure TV_hawbItemFRM4.BucketSettings();
  begin
    if IsBucket then
    begin
      TitlePNL.Color := clYellow;
      TitlePNL.Caption := 'Bucket House Item';
    end
    else
    begin
      TitlePNL.Color := $00DFEFFF;
      TitlePNL.Caption := 'House Item';
    end;

  end;

end.
