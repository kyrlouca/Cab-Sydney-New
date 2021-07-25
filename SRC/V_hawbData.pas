unit V_hawbData;
// calcHawbCharge needs, Hawb/HawbItem info, Tariff, relieve

interface

uses
  System.SysUtils, System.Classes, System.math, System.Variants, Data.DB, MemDS, DBAccess, IBC, vcl.wwdatsrc, G_kyriacosTypes, G_KyrSQL,
  COdeSiteLogging, G_DebugUnit, vcl.Dialogs;

type

  TV_HawbDataDML = class(TDataModule)
    SenderInvoiceSQL: TIBCQuery;
    SenderInvoiceSQLCURRENCY: TStringField;
    SenderInvoiceSQLFK_HAWB_ID: TStringField;
    SenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_NUMBER: TStringField;
    SenderInvoiceSQLINVOICE_AMOUNT: TFloatField;
    SenderInvoiceSQLFREIGHT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLINSURANCE_AMOUNT: TFloatField;
    SenderInvoiceSQLOTHER_CHARGES_AMOUNT: TFloatField;
    SenderInvoiceSQLTOTAL_AMOUNT: TFloatField;
    SenderInvoiceSQLEXCHANGE_RATE: TFloatField;
    SenderInvoiceSQLFACTOR: TFloatField;
    SenderInvoiceSQLFREIGHT_CYP_AMOUNT: TFloatField;
    SenderInvoiceSQLCUSTOMS_VALUE: TFloatField;
    SenderInvoiceSQLFK_MAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLIS_VALID: TStringField;
    SenderInvoiceSQLNUMBER_OF_HAWB_ITEMS: TIntegerField;
    SenderInvoiceSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_RATE: TFloatField;
    SenderInvoiceSQLFACTOR_NUMERIC: TFloatField;
    HawbSRC: TIBCDataSource;
    HawbItemSQL: TIBCQuery;
    HawbItemSQLDESCRIPTION: TStringField;
    HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbItemSQLWEIGHT_NET: TFloatField;
    HawbItemSQLSERIAL_NUMBER: TIntegerField;
    HawbItemSQLFK_HAWB_SERIAL: TIntegerField;
    HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbItemSRC: TIBCDataSource;
    CountrySQL: TIBCQuery;
    CountrySQLCODE: TStringField;
    CountrySQLNAME: TStringField;
    CountrySQLNUMBER: TIntegerField;
    CountrySQLEU_MEMBER: TStringField;
    CountrySQLFREIGHT05: TIntegerField;
    CountrySQLFREIGHT6: TIntegerField;
    CountrySQLFK_CURRENCY_CODE: TStringField;
    CountrySQLGREEK_NAME: TStringField;
    CountrySQLXML_COUNTRY: TStringField;
    HawbCommentSQL: TIBCQuery;
    HawbCommentSQLUSER_ID: TStringField;
    HawbCommentSQLTHE_TIMESTAMP: TDateTimeField;
    HawbCommentSQLTHE_COMMENTS: TStringField;
    HawbCommentSQLSERIAL_NUMBER: TIntegerField;
    HawbCommentSQLFK_HAWB_SERIAL: TIntegerField;
    HawbSQL: TIBCQuery;
    SenderInvoiceSRC: TIBCDataSource;
    ExchangeRateSQL: TIBCQuery;
    ExchangeRateSQLFK_CURRENCY_CODE: TStringField;
    ExchangeRateSQLRATE: TFloatField;
    MakeSQL: TIBCQuery;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    HawbWriteTrans: TIBCTransaction;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLINVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    HawbSQLHIGH_VALUE: TStringField;
    HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    HawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    HawbSQLDATE_INVOICED: TDateField;
    HawbSQLSENT_TO_HEAD: TStringField;
    HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbSQLFK_CLEARANCE_TYPE: TStringField;
    HawbSQLORIGIN_STATION: TStringField;
    HawbSQLEC2_NUMBER_DATE: TStringField;
    HawbSQLSENDERS_INV_NO: TStringField;
    HawbSQLNUMBER_OF_PARCELS: TIntegerField;
    HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    HawbSQLDISTRICT: TStringField;
    HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER2_CHARGE_CODE: TStringField;
    HawbSQLTOTAL_DUTIES: TFloatField;
    HawbSQLCLEARANCE_WAITING_CODE: TStringField;
    HawbSQLCLEARANCE_WAITING_REASON: TStringField;
    HawbSQLDATE_CLEARED: TDateField;
    HawbSQLDATE_REGISTERED: TDateField;
    HawbSQLFACTOR: TFloatField;
    HawbSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbSQLCHARGE_TRL: TFloatField;
    HawbSQLCHARGE_VAT: TFloatField;
    HawbSQLCHARGE_EXCISE: TFloatField;
    HawbSQLCHARGE_IMPORT: TFloatField;
    HawbSQLINVOICABLE: TStringField;
    HawbSQLTOTAL_CHARGES: TFloatField;
    HawbSQLCUSTOMER_NAME: TStringField;
    HawbSQLEDE_COMMENTS: TStringField;
    HawbSQLFK_MAWB_ID: TStringField;
    HawbSQLSIGNATORY_NAME: TStringField;
    HawbSQLXML_HOUSE_ID: TStringField;
    HawbSQLSENDER_NAME: TStringField;
    HawbSQLSENDER_ADDRESS_1: TStringField;
    HawbSQLSENDER_ADDRESS_2: TStringField;
    HawbSQLSENDER_ADDRESS_3: TStringField;
    HawbSQLIS_PRIVATE: TStringField;
    HawbSQLDELIVERY_ORDER_ID: TStringField;
    HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER4_CHARGE: TStringField;
    HawbSQLIS_PAID: TStringField;
    HawbSQLPARTIAL_FLAG: TStringField;
    HawbSQLPARTIAL_WEIGHT: TFloatField;
    HawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    HawbSQLPARTIAL_MAWB_ID: TStringField;
    HawbSQLPARTIAL_PIECES: TIntegerField;
    HawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLSTATUS_C: TStringField;
    HawbSQLIS_MEDIUM: TStringField;
    HawbSQLMEDIUM_VAT_RATE: TFloatField;
    HawbSQLIS_CHARGED_DELIVERY: TStringField;
    HawbSQLIS_VALID: TStringField;
    HawbSQLIS_PREPAID: TStringField;
    HawbSQLOTHER5_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_DUTY_RELIEVE: TStringField;
    HawbChargeCustomsSQL: TIBCQuery;
    HawbChargeCustomsSQLSERIAL_NUMBER: TIntegerField;
    HawbChargeCustomsSQLFK_HAWB: TIntegerField;
    HawbChargeCustomsSQLFK_TARIFF_LINE: TIntegerField;
    HawbChargeCustomsSQLFK_HAWB_ITEM: TIntegerField;
    HawbChargeCustomsSQLCUSTOMS_VALUE: TFloatField;
    HawbChargeCustomsSQLTARIFF_CODE: TStringField;
    HawbChargeCustomsSQLTARIFF_CHARGING_METHOD: TStringField;
    HawbChargeCustomsSQLTARIFF_UNIT: TStringField;
    HawbChargeCustomsSQLTARIFF_UNIT_INCREMENT: TIntegerField;
    HawbChargeCustomsSQLTARIFF_UNIT_RATE: TFloatField;
    HawbChargeCustomsSQLTARIFF_UNITS_NOT_CHARGED: TIntegerField;
    HawbChargeCustomsSQLDUTY_TYPE: TStringField;
    HawbChargeCustomsSQLTARIFF_RELIEVED_RATE: TFloatField;
    HawbChargeCustomsSQLAMOUNT_NET: TFloatField;
    HawbChargeCustomsSQLVAT_CODE: TStringField;
    HawbChargeCustomsSQLVAT_RATE: TFloatField;
    HawbChargeCustomsSQLQUANTITY: TIntegerField;
    HawbChargeCustomsSQLWEIGHT: TFloatField;
    HawbChargeCustomsSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbChargeCustomsSRC: TIBCDataSource;
    HawbChargeDhlSQL: TIBCQuery;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField15: TFloatField;
    StringField10: TStringField;
    IntegerField5: TIntegerField;
    StringField11: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    FloatField17: TFloatField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField12: TStringField;
    FloatField21: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    HawbChargeDhlSRC: TIBCDataSource;
    HawbChargeDhlSQLFK_TARIFF_USAGE: TStringField;
    HawbChargeCustomsSQLFK_TARIFF_USAGE: TStringField;
    HawbChargeDhlSQLDESCRIPTION: TStringField;
    HawbChargeCustomsSQLDESCRIPTION: TStringField;
    OriginCountrySQL: TIBCQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    IntegerField12: TIntegerField;
    StringField15: TStringField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    HawbItemSQLDUTY_TYPE: TStringField;
    HawbItemSQLFK_TARIFF_CODE: TStringField;
    HawbItemSQLCUSTOMS_VALUE: TFloatField;
    GridOriginCountrySQL: TIBCQuery;
    StringField19: TStringField;
    StringField20: TStringField;
    IntegerField15: TIntegerField;
    StringField21: TStringField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbItemSQLINVOICE_LINE: TIntegerField;
    HawbItemSQLUNIT: TStringField;
    HawbSQLFK_DELIVERY_TERM: TStringField;
    HawbCommentSRC: TIBCDataSource;
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY: TStringField;
    HawbSQLCUSTOMER_VAT_ID: TStringField;
    HawbSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField;
    HawbSQLIS_LOW: TStringField;
    HawbSQLPOSOSTOSIS: TStringField;
    MawbSQL: TIBCQuery;
    MawbSQLMAWB_ID: TStringField;
    MawbSRC: TIBCDataSource;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    HawbSQLDESTINATION_STATION: TStringField;
    HawbSQLIS_OVERRIDE_MEDIUM: TStringField;
    HawbSQLIS_FROM_BUCKET: TStringField;
    HawbSQLBUCKET_REFERENCE_NUMBER: TStringField;
    HawbSQLWEIGHT_GROSS: TFloatField;
    HawbSQLPROCEDURE_CODE: TStringField;
    HawbSQLIOSS: TStringField;
    HawbSQLDUTY_BILLING_ACCOUNT: TStringField;
    TokensSRC: TIBCDataSource;
    TokensSQL: TIBCQuery;
    TokensSQLHAWB_SERIAL: TIntegerField;
    TokensSQLPENDING_MESSAGEID: TStringField;
    TokensSQLPENDING_SERIAL: TIntegerField;
    TokensSQLSENT_MESSAGEID: TStringField;
    TokensSQLSENT_SERIAL: TIntegerField;
    TokensSQLFAILED_SERIAL: TIntegerField;
    TokensSQLFAILED_MESSAGEID: TStringField;
    TokensSQLFAILED_REASON: TStringField;
    HawbItemSQLWEIGHT_GROSS: TFloatField;
    FailedLineSQL: TIBCQuery;
    FailedLineSRC: TIBCDataSource;
    FailedLineSQLSERIAL_NUMBER: TIntegerField;
    FailedLineSQLERROR_CODE: TStringField;
    FailedLineSQLERROR_MESSAGE: TStringField;
    FailedLineSQLERROR_PROPERTY_NAME: TStringField;
    HawbSQLIS_LOCKED: TStringField;
    HawbSQLFILE_NAME: TStringField;
    HawbItemSQLNET_QUANTITY: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure HawbChargeCustomsSQLTARIFF_UNIT_RATEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure HawbSQLBeforeEdit(DataSet: TDataSet);
    procedure SenderInvoiceSQLBeforeEdit(DataSet: TDataSet);
    procedure HawbCommentSQLAfterPost(DataSet: TDataSet);
    procedure HawbCommentSQLBeforeEdit(DataSet: TDataSet);
    procedure HawbCommentSQLNewRecord(DataSet: TDataSet);
    procedure HawbSQLBeforeInsert(DataSet: TDataSet);
    procedure HawbSQLNewRecord(DataSet: TDataSet);
    procedure HawbSRCDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }

  public
    { Public declarations }
    cn: TIBCConnection;
  end;

var
  V_HawbDataDML: TV_HawbDataDML;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_ClairDML, V_hawb, MainFFF;

{$R *.dfm}

procedure TV_HawbDataDML.DataModuleCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
  end;

procedure TV_HawbDataDML.HawbChargeCustomsSQLTARIFF_UNIT_RATEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  var
    floatVal: double;

  begin

    if VarisNull(Sender.Value) then
      floatVal := 0
    else
      floatVal := Sender.Value;

    if Sender.DataSet.FieldByName('TARIFF_CHARGING_METHOD').AsString = 'VA' then
    begin
      Text := Format('%5.2f%%', [floatVal])
    end
    else
    begin
      Text := Format('%5.2f', [floatVal])
    end;

  end;

procedure TV_HawbDataDML.HawbCommentSQLAfterPost(DataSet: TDataSet);
  begin
    DataSet.FieldByName('The_Comments').ReadOnly := True;

  end;

procedure TV_HawbDataDML.HawbCommentSQLBeforeEdit(DataSet: TDataSet);
  begin
    DataSet.FieldByName('The_Comments').ReadOnly := True;

  end;

procedure TV_HawbDataDML.HawbCommentSQLNewRecord(DataSet: TDataSet);
  begin
    DataSet.FieldByName('THE_TIMESTAMP').Value := NOW;
    DataSet.FieldByName('USER_ID').Value := MainFFF.Global_UserID;
    DataSet.FieldByName('THE_COMMENTS').ReadOnly := False;

  end;

procedure TV_HawbDataDML.HawbSQLBeforeEdit(DataSet: TDataSet);
  begin
    If (HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString > '0') then
    begin
      MessageDlg('Can NOT Modify Invoiced Data ', mtInformation, [mbOk], 0);
      abort;
    end
    else If ((HawbSQL.FieldByName('FK_CLEARING_STATE').AsString > '0')) then
    begin
      MessageDlg('Can NOT Modify READY Data ', mtInformation, [mbOk], 0);
      abort;
    end;

    //two locks required, one on activate and on before edit
    //Lock is set onactivate, private is set here

//


    HawbSQL.FieldByName('hab_id').ReadOnly := True;

  end;

procedure TV_HawbDataDML.HawbSQLBeforeInsert(DataSet: TDataSet);
  begin
    DataSet.FieldByName('hab_id').ReadOnly := False;

  end;

procedure TV_HawbDataDML.HawbSQLNewRecord(DataSet: TDataSet);
  var
    qr: TksQuery;
    inco: String;
  begin
    try
      qr := TksQuery.Create(cn, 'select code from delivery_term order by Order_number');
      qr.Open;
      inco := qr.FieldByName('code').AsString;
      DataSet.FieldByName('fk_delivery_term').Value := inco;
      qr.Close;

    finally
      qr.Free;
    end;
    DataSet.FieldByName('DATE_REGISTERED').Value := NOW;

  end;

procedure TV_HawbDataDML.HawbSRCDataChange(Sender: TObject; Field: TField);
  begin
    if (Field = nil) then
    begin
      V_hawbFRM.SpecialHawbSerial := HawbSQL.FieldByName('serial_number').AsInteger;
    end;
  end;

procedure TV_HawbDataDML.SenderInvoiceSQLBeforeEdit(DataSet: TDataSet);
  Var
    HawbDS: TIBCQuery;
  begin
    HawbDS := V_HawbDataDML.HawbSQL;

    If (HawbDS.FieldByName('FK_INVOICE_STATUS').AsString > '0') then
    begin
      MessageDlg('Can NOT Modify Invoiced Data ', mtInformation, [mbOk], 0);
      abort;
    end
    else If ((HawbDS.FieldByName('FK_CLEARING_STATE').AsString > '0')) then
    begin
      MessageDlg('Can NOT Modify CLEARED Data ', mtInformation, [mbOk], 0);
      abort;
    end;

  end;

END.
