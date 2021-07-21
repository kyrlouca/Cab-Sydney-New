unit V_MawbData;

interface

uses
  System.SysUtils, System.Classes, DBAccess, IBC, Data.DB, MemDS,Vcl.Dialogs,
  vcl.wwdatsrc;

type
  TV_MawbDataDML = class(TDataModule)
    MawbSQL: TIBCQuery;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    HawbSQL: TIBCQuery;
    MawbSRC: TIBCDataSource;
    MawbSelectSQL: TIBCQuery;
    MawbSelectSRC: TIBCDataSource;
    MawbSelectSQLREFERENCE_NUMBER: TIntegerField;
    MawbSelectSQLMAWB_ID: TStringField;
    MawbSelectSQLDATE_ARRIVED: TDateField;
    HawbSRC: TIBCDataSource;
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
    HawbSQLFK_DELIVERY_TERM: TStringField;
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
    HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    MawbSQLREFERENCE_YEAR: TSmallintField;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLDATE_ARRIVED: TDateField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLFK_PORT_IMPORTATION: TIntegerField;
    MawbSQLSIGNATORY_NAME: TStringField;
    MawbSQLFORM_DATE: TDateField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLPASSED: TStringField;
    MawbSQLROTATION_NUMBER: TIntegerField;
    MawbSQLROTATION_YEAR: TSmallintField;
    MawbSQLFK_PORT_CLEARING: TIntegerField;
    MawbSQLGOODS_NUMBER: TIntegerField;
    MawbSQLGOODS_DESCRIPTION: TStringField;
    MawbSQLCBOOK_NUMBER: TStringField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField;
    MawbSQLSTORAGE_EXPENSES: TFloatField;
    MawbSQLDELIVERY_EXPENSES: TFloatField;
    MawbSQLAMOUNT_NOT_INVOICED: TFloatField;
    MawbSQLAMOUNT_INVOICED: TFloatField;
    MawbSQLDATE_PASSED: TDateField;
    MawbSQLGOODS_WEIGHT: TIntegerField;
    MawbSQLHAWBS_CLEARED_FIRST_TIME: TIntegerField;
    MawbSQLHAWBS_IN_MAWB: TIntegerField;
    MawbSQLDOCS_NUMBER: TIntegerField;
    MawbSQLDOCS_WEIGHT: TFloatField;
    MawbSQLHIGH_VALUE_NUMBER: TIntegerField;
    MawbSQLHIGH_VALUE_WEIGHT: TFloatField;
    MawbSQLMEDIUM_VALUE_NUMBER: TIntegerField;
    MawbSQLMEDIUM_VALUE_WEIGHT: TFloatField;
    MawbSQLLOW_VALUE_NUMBER: TIntegerField;
    MawbSQLLOW_VALUE_WEIGHT: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE_TYPE: TStringField;
    MawbSQLXML_CONSOLIDATED_ID: TStringField;
    MawbSQLROTATION_2: TStringField;
    MawbSQLHMSD: TStringField;
    MawbSQLLOW_VALUE_TDID: TStringField;
    MawbSQLSTATUSC_NUMBER: TIntegerField;
    MawbSQLSTATUSC_WEIGHT: TIntegerField;
    MawbSQLTDID_NEW: TStringField;
    MawbSQLF63: TStringField;
    MawbSQLSTATUSC: TStringField;
    MawbSQLTDID_MEDIUM: TStringField;
    HawbMediumValueSRC: TIBCDataSource;
    HawbMediumValueSQL: TIBCQuery;
    HawbMediumValueSQLHAB_ID: TStringField;
    HawbMediumValueSQLSERIAL_NUMBER: TIntegerField;
    HawbMediumValueSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbMediumValueSQLFK_CLEARING_STATE: TStringField;
    HawbMediumValueSQLFK_INVOICE_STATUS: TStringField;
    HawbMediumValueSQLIS_MEDIUM: TStringField;
    HawbMediumValueSQLDESCRIPTION: TStringField;
    HawbMediumValueSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbMediumValueSQLMEDIUM_VAT_RATE: TFloatField;
    HawbMediumValueSQLFK_CUSTOMER_CODE_1: TIntegerField;
    HawbMediumValueSQLCUSTOMER_NAME: TStringField;
    HawbMediumValueSQLWEIGHT: TFloatField;
    HawbMediumValueSQLEXCHANGE_RATE: TFloatField;
    HawbMediumValueSQLINVOICE_AMOUNT: TFloatField;
    HawbMediumValueSQLCURRENCY: TStringField;
    HawbMediumValueSQLCUSTOMS_VALUE: TFloatField;
    PartialHawbSQL: TIBCQuery;
    PartialHawbSRC: TIBCDataSource;
    HawbSQLExpanded: TStringField;
    HawbChargeSQL: TIBCQuery;
    HawbChargeSRC: TIBCDataSource;
    HawbChargeSQLSERIAL_NUMBER: TIntegerField;
    HawbChargeSQLFK_HAWB: TIntegerField;
    HawbChargeSQLFK_TARIFF_USAGE: TStringField;
    HawbChargeSQLFK_HAWB_ITEM: TIntegerField;
    HawbChargeSQLFK_TARIFF_LINE: TIntegerField;
    HawbChargeSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbChargeSQLCUSTOMS_VALUE: TFloatField;
    HawbChargeSQLQUANTITY: TIntegerField;
    HawbChargeSQLWEIGHT: TFloatField;
    HawbChargeSQLTARIFF_CODE: TStringField;
    HawbChargeSQLTARIFF_CHARGING_METHOD: TStringField;
    HawbChargeSQLTARIFF_UNIT: TStringField;
    HawbChargeSQLTARIFF_UNIT_INCREMENT: TIntegerField;
    HawbChargeSQLTARIFF_UNIT_RATE: TFloatField;
    HawbChargeSQLTARIFF_UNITS_NOT_CHARGED: TIntegerField;
    HawbChargeSQLDUTY_TYPE: TStringField;
    HawbChargeSQLTARIFF_RELIEVED_RATE: TFloatField;
    HawbChargeSQLVAT_CODE: TStringField;
    HawbChargeSQLVAT_RATE: TFloatField;
    HawbChargeSQLAMOUNT_RELIEVED: TFloatField;
    HawbChargeSQLAMOUNT_NET: TFloatField;
    HawbSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbSQLSENDERCUSTOMVALUE: TFloatField;
    HawbSQLCURRENCY: TStringField;
    HawbLowListSQL: TIBCQuery;
    HawbLowListSRC: TIBCDataSource;
    HawbLowListSQLSERIAL_NUMBER: TIntegerField;
    HawbLowListSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbLowListSQLHAB_ID: TStringField;
    HawbLowListSQLXML_HOUSE_ID: TStringField;
    HawbLowListSQLDESCRIPTION: TStringField;
    HawbLowListSQLCUSTOMER_NAME: TStringField;
    HawbLowListSQLWEIGHT: TFloatField;
    HawbLowListSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbLowListSQLCURRENCY: TStringField;
    HawbLowListSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbLowListSQLFK_INVOICE_STATUS: TStringField;
    PartialHawbSQLSERIAL_NUMBER: TIntegerField;
    PartialHawbSQLFK_HAWB_SERIAL_ORIGINAL: TIntegerField;
    PartialHawbSQLFK_HAWB_ID_ORIGINAL: TStringField;
    PartialHawbSQLFK_MAWB_SERIAL_ORIGINAL: TIntegerField;
    PartialHawbSQLPARTIAL_PIECES: TIntegerField;
    PartialHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    PartialHawbSQLPARTIAL_WEIGHT: TFloatField;
    PartialHawbSQLDESCRIPTION: TStringField;
    PartialHawbSQLMAWBIDORIGINAL: TStringField;
    PartialHawbSQLFK_MAWB_SERIAL_ARRIVED: TIntegerField;
    HawbSQLIS_LOW: TStringField;
    HawbLowListSQLIS_LOW: TStringField;
    HawbSQLPOSOSTOSIS: TStringField;
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY: TStringField;
    MawbSQLINVOICED: TStringField;
    MawbSQLDHL_EQUIPMENT_ID: TStringField;
    MawbSQLSENT_TO_HEAD: TStringField;
    HawbIm4SQL: TIBCQuery;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField6: TFloatField;
    StringField13: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    HawbIm4SRC: TIBCDataSource;
    HawbDiffSQL: TIBCQuery;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    IntegerField9: TIntegerField;
    FloatField12: TFloatField;
    StringField27: TStringField;
    IntegerField10: TIntegerField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    HawbDiffSRC: TIBCDataSource;
    HawbDiffSQLMEDIUM_VAT_RATE: TFloatField;
    HawbDiffSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbDiffSQLEXCHANGE_RATE: TFloatField;
    HawbIm4SQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbDiffSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbSQLIS_OVERRIDE_MEDIUM: TStringField;
    HawbSQLCOMPANY_OR_PERSON: TStringField;
    HawbStatusSQL: TIBCQuery;
    HawbStatusSRC: TIBCDataSource;
    HawbStatusSQLHAB_ID: TStringField;
    HawbStatusSQLSERIAL_NUMBER: TIntegerField;
    HawbStatusSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbStatusSQLFK_INVOICE_STATUS: TStringField;
    HawbStatusSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbStatusSQLDESCRIPTION: TStringField;
    HawbStatusSQLCLEARANCE_WAITING_CODE: TStringField;
    HawbSQLINVOICE_AMOUNT_CYP: TFloatField;
    BucketPendingSQL: TIBCQuery;
    BucketPendingSRC: TIBCDataSource;
    BucketPendingSQLSERIAL_NUMBER: TIntegerField;
    BucketPendingSQLHAB_ID: TStringField;
    BucketPendingSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    BucketPendingSQLFK_CUSTOMER_CODE: TIntegerField;
    BucketPendingSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    BucketPendingSQLDESCRIPTION: TStringField;
    BucketPendingSQLWEIGHT: TFloatField;
    BucketPendingSQLFK_CLEARING_STATE: TStringField;
    BucketPendingSQLFK_INVOICE_STATUS: TStringField;
    BucketPendingSQLFK_CURRENCY: TStringField;
    BucketPendingSQLEXCHANGE_RATE: TFloatField;
    BucketPendingSQLINVOICE_TOTAL: TFloatField;
    BucketPendingSQLFREIGHT_AMOUNT: TFloatField;
    BucketPendingSQLFK_OTHER_CHARGE_CODE: TStringField;
    BucketPendingSQLOTHER_CHARGE_AMOUNT: TFloatField;
    BucketPendingSQLOTHER_CHARGE_PAID: TStringField;
    BucketPendingSQLSTAMPS_AMOUNT: TFloatField;
    BucketPendingSQLEXPS_NON_INVOICABLE: TFloatField;
    BucketPendingSQLCUSTOMS_VALUE: TFloatField;
    BucketPendingSQLINVOICE_SERIAL: TIntegerField;
    BucketPendingSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    BucketPendingSQLCOURIER_INVOICE_VALUE: TFloatField;
    BucketPendingSQLHIGH_VALUE: TStringField;
    BucketPendingSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    BucketPendingSQLEDE_STORAGE_EXPENSES: TFloatField;
    BucketPendingSQLEDE_DELIVERY_EXPENSES: TFloatField;
    BucketPendingSQLDATE_INVOICED: TDateField;
    BucketPendingSQLSENT_TO_HEAD: TStringField;
    BucketPendingSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    BucketPendingSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    BucketPendingSQLFK_CLEARANCE_TYPE: TStringField;
    BucketPendingSQLFK_DELIVERY_TERM: TStringField;
    BucketPendingSQLORIGIN_STATION: TStringField;
    BucketPendingSQLEC2_NUMBER_DATE: TStringField;
    BucketPendingSQLSENDERS_INV_NO: TStringField;
    BucketPendingSQLNUMBER_OF_PARCELS: TIntegerField;
    BucketPendingSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    BucketPendingSQLDISTRICT: TStringField;
    BucketPendingSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    BucketPendingSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    BucketPendingSQLFK_OTHER2_CHARGE_CODE: TStringField;
    BucketPendingSQLPOSOSTOSIS: TStringField;
    BucketPendingSQLTOTAL_DUTIES: TFloatField;
    BucketPendingSQLCLEARANCE_WAITING_CODE: TStringField;
    BucketPendingSQLCLEARANCE_WAITING_REASON: TStringField;
    BucketPendingSQLDATE_CLEARED: TDateField;
    BucketPendingSQLDATE_REGISTERED: TDateField;
    BucketPendingSQLFACTOR: TFloatField;
    BucketPendingSQLFK_COUNTRY_ORIGIN: TIntegerField;
    BucketPendingSQLCHARGE_TRL: TFloatField;
    BucketPendingSQLCHARGE_VAT: TFloatField;
    BucketPendingSQLCHARGE_EXCISE: TFloatField;
    BucketPendingSQLCHARGE_IMPORT: TFloatField;
    BucketPendingSQLINVOICABLE: TStringField;
    BucketPendingSQLTOTAL_CHARGES: TFloatField;
    BucketPendingSQLCUSTOMER_NAME: TStringField;
    BucketPendingSQLEDE_COMMENTS: TStringField;
    BucketPendingSQLFK_MAWB_ID: TStringField;
    BucketPendingSQLSIGNATORY_NAME: TStringField;
    BucketPendingSQLXML_HOUSE_ID: TStringField;
    BucketPendingSQLSENDER_NAME: TStringField;
    BucketPendingSQLSENDER_ADDRESS_1: TStringField;
    BucketPendingSQLSENDER_ADDRESS_2: TStringField;
    BucketPendingSQLSENDER_ADDRESS_3: TStringField;
    BucketPendingSQLIS_PRIVATE: TStringField;
    BucketPendingSQLDELIVERY_ORDER_ID: TStringField;
    BucketPendingSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    BucketPendingSQLFK_OTHER4_CHARGE: TStringField;
    BucketPendingSQLIS_PAID: TStringField;
    BucketPendingSQLPARTIAL_FLAG: TStringField;
    BucketPendingSQLPARTIAL_WEIGHT: TFloatField;
    BucketPendingSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    BucketPendingSQLPARTIAL_MAWB_ID: TStringField;
    BucketPendingSQLPARTIAL_PIECES: TIntegerField;
    BucketPendingSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    BucketPendingSQLSTATUS_C: TStringField;
    BucketPendingSQLIS_MEDIUM: TStringField;
    BucketPendingSQLMEDIUM_VAT_RATE: TFloatField;
    BucketPendingSQLIS_CHARGED_DELIVERY: TStringField;
    BucketPendingSQLIS_VALID: TStringField;
    BucketPendingSQLIS_PREPAID: TStringField;
    BucketPendingSQLOTHER5_CHARGE_AMOUNT: TFloatField;
    BucketPendingSQLFK_DUTY_RELIEVE: TStringField;
    BucketPendingSQLSENDER_POST_CODE: TStringField;
    BucketPendingSQLSENDER_CITY: TStringField;
    BucketPendingSQLSENDER_COUNTRY: TStringField;
    BucketPendingSQLCUSTOMER_VAT_ID: TStringField;
    BucketPendingSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField;
    BucketPendingSQLIS_LOW: TStringField;
    BucketPendingSQLDESTINATION_STATION: TStringField;
    BucketPendingSQLIS_OVERRIDE_MEDIUM: TStringField;
    BucketPendingSQLIS_FROM_BUCKET: TStringField;
    BucketPendingSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    BucketPendingSQLINVOICE_AMOUNT_CYP: TFloatField;
    BucketPendingSQLSENDERCUSTOMVALUE: TFloatField;
    BucketPendingSQLCURRENCY: TStringField;
    BucketPendingSQLCOMPANY_OR_PERSON: TStringField;
    HawbSQLPENDING_SERIAL: TIntegerField;
    HawbSQLSENT_SERIAL: TIntegerField;
    HawbSQLFAILED_SERIAL: TIntegerField;
    HawbSQLWEIGHT_GROSS: TFloatField;
    HawbSQLPROCEDURE_CODE: TStringField;
    HawbSQLIS_LOCKED: TStringField;
    procedure MawbSQLBeforePost(DataSet: TDataSet);
    procedure MawbSQLNewRecord(DataSet: TDataSet);
    procedure MawbSRCStateChange(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
  end;

var
  V_MawbDataDML: TV_MawbDataDML;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_ClairDML, G_KyrSQL;

{$R *.dfm}

procedure TV_MawbDataDML.DataModuleCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

procedure TV_MawbDataDML.MawbSQLBeforePost(DataSet: TDataSet);
Var
 IsPassed:Boolean;
 TheDate:TDate;
begin
// do not allow pass the mawb(no generation of invoices) if
// conditions not met


     IsPassed:=Dataset.FieldByName('PASSED').AsString='Y';
     If IsPassed then
     begin
          If (DataSet.FieldByName('DATE_ARRIVED').IsNull) then
          begin;
              MessageDlg('Enter Date Arrived', mtError,   [mbOK], 0);
              abort;
          end;


          If (DataSet.FieldByName('DATE_PASSED').IsNull) then
          begin;
              MessageDlg('Enter Date Passed', mtError,   [mbOK], 0);
              abort;
          end;
     end;


     If not Dataset.FieldByName('DATE_ARRIVED').IsNull then begin
      TheDate:=Int(Dataset.FieldByName('DATE_ARRIVED').AsDateTime);// to remove the time
      Dataset.fieldbyName('DATE_ARRIVED').value:=TheDate;
     end;

     If not Dataset.FieldByName('FORM_DATE').IsNull then begin
      TheDate:=Int(Dataset.FieldByName('FORM_DATE').AsDateTime);
      Dataset.fieldbyName('FORM_DATE').value:=TheDate;
     end;

     If not Dataset.FieldByName('DATE_PASSED').IsNull then begin
       TheDate:=Int(Dataset.FieldByName('DATE_PASSED').AsDateTime);
       Dataset.fieldbyName('DATE_PASSED').value:=TheDate;
     end;
end;

procedure TV_MawbDataDML.MawbSQLNewRecord(DataSet: TDataSet);
Var
   CurrentDate: TDate;
   TheYear,TheMonth,TheDay :word;
   qr:TksQUery;
begin
CurrentDate:=Now;
DecodeDate(CurrentDate,TheYear,TheMonth,TheDay);

     Dataset.fieldbyname('SENT_TO_HEAD').asString:='N';//useless
     Dataset.fieldbyname('ROTATION_YEAR').asinteger:=TheYear;
     Dataset.fieldbyname('Reference_year').asinteger:=TheYear;

     qr:=TksQuery.Create(cn,'select code from port order by IS_Default_port Desc');
     try
      qr.Open;
      Dataset.fieldbyname('FK_PORT_IMPORTATION').asinteger:= qr.FieldByName('code').AsInteger;
      qr.Close;
     finally
       qr.Free;
     end;

//     Dataset.fieldbyname('Signatory_Name').asstring:= SN_LoginFRM.FindUserSQL.fieldbyname('User_Name').AsString;
//ToDo add signatory
     qr:=TksQuery.Create(cn,'select code from port order by IS_Default_Station Desc');
     try
      qr.Open;
      Dataset.fieldbyname('FK_PORT_Clearing').asinteger:= qr.FieldByName('code').AsInteger;
      qr.Close;
     finally
       qr.Free;
     end;

     Dataset.fieldbyname('Passed').asstring:='N';
     Dataset.fieldbyname('GOODS_DESCRIPTION').asString:='Bags';
     Dataset.fieldbyname('INVOICED').VALUE:='N';

end;

procedure TV_MawbDataDML.MawbSRCStateChange(Sender: TObject);
Var
  Dataset: TIBCQuery;
begin
  Dataset:=MawbSQL;
  if Dataset.State in [dsInsert] then
      Dataset.FieldByName('MAWB_ID').ReadOnly:=false
  else
     Dataset.FieldByName('MAWB_ID').ReadOnly:=true;

end;

end.
