unit H_MawbData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, ExtCtrls, StdCtrls, Buttons, wwDialog,
  wwrcdvw, printers, Db,  DBAccess, IBC, MemDS, IBCError,
    Mask, wwdbedit, Wwdatsrc;

type
  TH_MawbDataDML = class(TDataModule)
    FlightTBL: TIBCTable;
    FlightTBLFLIGHT_NUMBER: TStringField;
    FlightTBLCOMPANY: TStringField;
    FlightTBLDESTINATION: TStringField;
    CountryTBL: TIBCTable;
    CountryTBLNUMBER: TIntegerField;
    CountryTBLCODE: TStringField;
    CountryTBLNAME: TStringField;
    CountryTBLEU_MEMBER: TStringField;
    CountryTBLFREIGHT05: TIntegerField;
    CountryTBLFREIGHT6: TIntegerField;
    CountryTBLFK_CURRENCY_CODE: TStringField;
    CountryTBLGREEK_NAME: TStringField;
    PortTBL: TIBCTable;
    PortTBLCODE: TIntegerField;
    PortTBLDESCRIPTION: TStringField;
    PortTBLGREEK_DESCR: TStringField;
    PortTBLSHORT_GREEK_DESCR: TStringField;
    SystemParametersTBL: TIBCTable;
    SystemParametersTBLPARAMETER_ID: TStringField;
    SystemParametersTBLINT_1: TIntegerField;
    SystemParametersTBLINT_2: TIntegerField;
    SystemParametersTBLSTR_1: TStringField;
    SystemParametersTBLSTR_2: TStringField;
    UpdateSQL1: TIBCUpdateSQL;
    OvertimeRatesTBL: TIBCTable;
    OvertimeRatesTBLCODE: TStringField;
    OvertimeRatesTBLRATE: TFloatField;
    OvertimeRatesTBLDESCRIPTION: TStringField;
    PrintHawbItemSQL: TIBCQuery;
    PrintHawbItemSQLSERIAL_NUMBER: TIntegerField;
    PrintHawbItemSQLFK_HAWB_SERIAL: TIntegerField;
    PrintHawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField;
    PrintHawbItemSQLDESCRIPTION: TStringField;
    PrintHawbItemSQLFK_RELIEF_CODE: TStringField;
    PrintHawbItemSQLFK_IMPORT_TYPE: TStringField;
    PrintHawbItemSQLINVOICE_VALUE: TFloatField;
    PrintHawbItemSQLDUTY_TYPE: TStringField;
    PrintHawbItemSQLTARIFF_DESCRIPTION: TStringField;
    PrintHawbItemSQLNET_QUANTITY: TIntegerField;
    PrintHawbItemSQLIMPORT_DUTY_RATE: TFloatField;
    PrintHawbItemSQLRELIEVED_IMPORT_DUTY: TFloatField;
    PrintHawbItemSQLEXCISE_DUTY_RATE: TFloatField;
    PrintHawbItemSQLEXCISE_RELIEVED: TFloatField;
    PrintHawbItemSQLTRL_RATE: TFloatField;
    PrintHawbItemSQLTRL_RELEIVED: TFloatField;
    PrintHawbItemSQLVAT_RATE: TFloatField;
    PrintHawbItemSQLVAT_RELEIVED: TFloatField;
    PrintHawbItemSQLCURRENCY_RATE: TFloatField;
    PrintHawbItemSQLCURRENCY: TStringField;
    PrintHawbItemSQLFK_MAWB: TIntegerField;
    PrintHawbItemSQLFK_VAT_CODE: TIntegerField;
    PrintHawbItemSQLFK_TARIFF_C_CODE: TStringField;
    PrintHawbItemSQLFK_TARIFF_CODE: TStringField;
    PrintHawbItemSQLIMPORT_DUTY_RATE_UNIT: TStringField;
    PrintHawbItemSQLIMPORT_DUTY_RATE_QUANT: TFloatField;
    PrintHawbItemSQLIMPORT_DUTY_RATE_BASE: TFloatField;
    PrintHawbItemSQLDUTY_IMPORT_PAY: TIntegerField;
    PrintHawbItemSQLDUTY_TRL_PAY: TIntegerField;
    PrintHawbItemSQLDUTY_EXCISE_PAY: TIntegerField;
    PrintHawbItemSQLDUTY_VAT_PAY: TIntegerField;
    PrintHawbItemSQLDUTY_IMPORT_TOTAL: TIntegerField;
    PrintHawbItemSQLDUTY_EXCISE_TOTAL: TIntegerField;
    PrintHawbItemSQLDUTY_TRL_TOTAL: TIntegerField;
    PrintHawbItemSQLDUTY_VAT_TOTAL: TIntegerField;
    PrintHawbItemSQLTOTAL_VALUE_FOR_VAT: TFloatField;
    PrintHawbItemSQLDUTY_TOTAL_CHARGES: TIntegerField;
    PrintHawbItemSQLFK_EXCISE_CODE: TStringField;
    PrintHawbItemSQLEURO1: TStringField;
    PrintHawbItemSQLEURO2: TStringField;
    PrintHawbItemSQLPOSOSTOSIS: TStringField;
    PrintHawbItemSQLEURO_PENDING: TStringField;
    PrintHawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField;
    PrintHawbItemSQLMULTI_ITEMS_INVOICE: TStringField;
    PrintHawbItemSQLINVOICE_LINE: TIntegerField;
    PrinterTBL: TIBCTable;
    PrinterTBLREPORT_ID: TStringField;
    PrinterTBLREPORT_NAME: TStringField;
    PrinterTBLPRINTER_NAME: TStringField;
    UpdateHawbClearAllSQL: TIBCQuery;
    SearchHawbByIDSQL: TIBCQuery;
    SearchHawbByIDSQLHAB_ID: TStringField;
    SearchHawbByIDSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    SearchHawbByIDSQLFK_CLEARING_STATE: TStringField;
    SearchHawbByIDSQLFK_INVOICE_STATUS: TStringField;
    SearchHawbByIDSQLDESCRIPTION: TStringField;
    SearchHawbByIDSQLFK_CUSTOMER_CODE: TIntegerField;
    SearchHawbByIDSQLWEIGHT: TFloatField;
    SearchHawbByIDSQLFK_CURRENCY: TStringField;
    SearchHawbByIDSQLEXCHANGE_RATE: TFloatField;
    SearchHawbByIDSQLFREIGHT_AMOUNT: TFloatField;
    SearchHawbByIDSQLFK_OTHER_CHARGE_CODE: TStringField;
    SearchHawbByIDSQLOTHER_CHARGE_AMOUNT: TFloatField;
    SearchHawbByIDSQLOTHER_CHARGE_PAID: TStringField;
    SearchHawbByIDSQLSTAMPS_AMOUNT: TFloatField;
    SearchHawbByIDSQLEXPS_NON_INVOICABLE: TFloatField;
    SearchHawbByIDSQLSERIAL_NUMBER: TIntegerField;
    SearchHawbByIDSQLINVOICE_SERIAL: TIntegerField;
    SearchHawbByIDSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    SearchHawbByIDSQLCOURIER_INVOICE_VALUE: TFloatField;
    SearchHawbByIDSQLHIGH_VALUE: TStringField;
    SearchHawbByIDSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    SearchHawbByIDSQLEDE_STORAGE_EXPENSES: TFloatField;
    SearchHawbByIDSQLEDE_DELIVERY_EXPENSES: TFloatField;
    SearchHawbByIDSQLDATE_INVOICED: TDateTimeField;
    SearchHawbByIDSQLSENT_TO_HEAD: TStringField;
    SearchHawbByIDSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    SearchHawbByIDSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    SearchHawbByIDSQLFK_CLEARANCE_TYPE: TStringField;
    SearchHawbByIDSQLFK_DELIVERY_TERM: TStringField;
    SearchHawbByIDSQLORIGIN_STATION: TStringField;
    SearchHawbByIDSQLEC2_NUMBER_DATE: TStringField;
    SearchHawbByIDSQLSENDERS_INV_NO: TStringField;
    SearchHawbByIDSQLNUMBER_OF_PARCELS: TIntegerField;
    SearchHawbByIDSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    SearchHawbByIDSQLDISTRICT: TStringField;
    SearchHawbByIDSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    SearchHawbByIDSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    SearchHawbByIDSQLFK_OTHER2_CHARGE_CODE: TStringField;
    SearchHawbByIDSQLPOSOSTOSIS: TStringField;
    SearchHawbByIDSQLTOTAL_DUTIES: TFloatField;
    SearchHawbByIDSQLCLEARANCE_WAITING_CODE: TStringField;
    SearchHawbByIDSQLCLEARANCE_WAITING_REASON: TStringField;
    SearchHawbByIDSQLDATE_CLEARED: TDateTimeField;
    SearchHawbByIDSQLDATE_REGISTERED: TDateTimeField;
    SearchHawbByIDSQLFACTOR: TFloatField;
    SearchHawbByIDSQLFK_COUNTRY_ORIGIN: TIntegerField;
    SearchHawbByIDSQLINVOICABLE: TStringField;
    SearchHawbByIDSQLTOTAL_CHARGES: TFloatField;
    SearchHawbByIDSQLCUSTOMER_NAME: TStringField;
    SearchHawbByIDSQLEDE_COMMENTS: TStringField;
    SearchHawbByIDSQLFK_MAWB_ID: TStringField;
    SearchHawbByIDSQLSIGNATORY_NAME: TStringField;
    FindPrinterSQL: TIBCQuery;
    FindPrinterSQLREPORT_ID: TStringField;
    FindPrinterSQLREPORT_NAME: TStringField;
    FindPrinterSQLPRINTER_NAME: TStringField;
    SearchHawbByIDSQLINVOICE_TOTAL: TFloatField;
    SearchHawbByIDSQLCHARGE_TRL: TFloatField;
    SearchHawbByIDSQLCHARGE_VAT: TFloatField;
    SearchHawbByIDSQLCHARGE_EXCISE: TFloatField;
    SearchHawbByIDSQLCHARGE_IMPORT: TFloatField;
    SearchHawbByIDSQLCUSTOMS_VALUE: TFloatField;
    PrintHawbItemSQLCUSTOMS_VALUE: TFloatField;
    PrintHawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    EmailSQL: TIBCQuery;
    StringField85: TStringField;
    StringField86: TStringField;
    StringField87: TStringField;
    StringField88: TStringField;
    StringField89: TStringField;
    StringField90: TStringField;
    StringField91: TStringField;
    IntegerField23: TIntegerField;
    StringField92: TStringField;
    StringField93: TStringField;
    StringField94: TStringField;
    ClearHawbSQL: TIBCQuery;
    FindHawbByNumberSQL: TIBCQuery;
    FindHawbByNumberSQLHAB_ID: TStringField;
    FindHawbByNumberSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    FindHawbByNumberSQLFK_CLEARING_STATE: TStringField;
    FindHawbByNumberSQLFK_INVOICE_STATUS: TStringField;
    FindHawbByNumberSQLDESCRIPTION: TStringField;
    FindHawbByNumberSQLFK_CUSTOMER_CODE: TIntegerField;
    FindHawbByNumberSQLWEIGHT: TFloatField;
    FindHawbByNumberSQLFK_CURRENCY: TStringField;
    FindHawbByNumberSQLEXCHANGE_RATE: TFloatField;
    FindHawbByNumberSQLINVOICE_TOTAL: TFloatField;
    FindHawbByNumberSQLFREIGHT_AMOUNT: TFloatField;
    FindHawbByNumberSQLFK_OTHER_CHARGE_CODE: TStringField;
    FindHawbByNumberSQLOTHER_CHARGE_AMOUNT: TFloatField;
    FindHawbByNumberSQLOTHER_CHARGE_PAID: TStringField;
    FindHawbByNumberSQLSTAMPS_AMOUNT: TFloatField;
    FindHawbByNumberSQLEXPS_NON_INVOICABLE: TFloatField;
    FindHawbByNumberSQLSERIAL_NUMBER: TIntegerField;
    FindHawbByNumberSQLCUSTOMS_VALUE: TFloatField;
    FindHawbByNumberSQLINVOICE_SERIAL: TIntegerField;
    FindHawbByNumberSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    FindHawbByNumberSQLCOURIER_INVOICE_VALUE: TFloatField;
    FindHawbByNumberSQLHIGH_VALUE: TStringField;
    FindHawbByNumberSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    FindHawbByNumberSQLEDE_STORAGE_EXPENSES: TFloatField;
    FindHawbByNumberSQLEDE_DELIVERY_EXPENSES: TFloatField;
    FindHawbByNumberSQLDATE_INVOICED: TDateTimeField;
    FindHawbByNumberSQLSENT_TO_HEAD: TStringField;
    FindHawbByNumberSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    FindHawbByNumberSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    FindHawbByNumberSQLFK_CLEARANCE_TYPE: TStringField;
    FindHawbByNumberSQLFK_DELIVERY_TERM: TStringField;
    FindHawbByNumberSQLORIGIN_STATION: TStringField;
    FindHawbByNumberSQLEC2_NUMBER_DATE: TStringField;
    FindHawbByNumberSQLSENDERS_INV_NO: TStringField;
    FindHawbByNumberSQLNUMBER_OF_PARCELS: TIntegerField;
    FindHawbByNumberSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    FindHawbByNumberSQLDISTRICT: TStringField;
    FindHawbByNumberSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    FindHawbByNumberSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    FindHawbByNumberSQLFK_OTHER2_CHARGE_CODE: TStringField;
    FindHawbByNumberSQLPOSOSTOSIS: TStringField;
    FindHawbByNumberSQLTOTAL_DUTIES: TFloatField;
    FindHawbByNumberSQLCLEARANCE_WAITING_CODE: TStringField;
    FindHawbByNumberSQLCLEARANCE_WAITING_REASON: TStringField;
    FindHawbByNumberSQLDATE_CLEARED: TDateTimeField;
    FindHawbByNumberSQLDATE_REGISTERED: TDateTimeField;
    FindHawbByNumberSQLFACTOR: TFloatField;
    FindHawbByNumberSQLFK_COUNTRY_ORIGIN: TIntegerField;
    FindHawbByNumberSQLCHARGE_TRL: TFloatField;
    FindHawbByNumberSQLCHARGE_VAT: TFloatField;
    FindHawbByNumberSQLCHARGE_EXCISE: TFloatField;
    FindHawbByNumberSQLCHARGE_IMPORT: TFloatField;
    FindHawbByNumberSQLINVOICABLE: TStringField;
    FindHawbByNumberSQLTOTAL_CHARGES: TFloatField;
    FindHawbByNumberSQLCUSTOMER_NAME: TStringField;
    FindHawbByNumberSQLEDE_COMMENTS: TStringField;
    FindHawbByNumberSQLFK_MAWB_ID: TStringField;
    FindHawbByNumberSQLSIGNATORY_NAME: TStringField;
    FindHawbByNumberSQLXML_HOUSE_ID: TStringField;
    FindHawbByNumberSQLSENDER_NAME: TStringField;
    FindHawbByNumberSQLSENDER_ADDRESS_1: TStringField;
    FindHawbByNumberSQLSENDER_ADDRESS_2: TStringField;
    FindHawbByNumberSQLSENDER_ADDRESS_3: TStringField;
    FindHawbByNumberSQLIS_PRIVATE: TStringField;
    FindHawbByNumberSQLDELIVERY_ORDER_ID: TStringField;
    FindHawbByNumberSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    FindHawbByNumberSQLFK_OTHER4_CHARGE: TStringField;
    FindHawbByNumberSQLIS_PAID: TStringField;
    FindHawbByNumberSQLPARTIAL_FLAG: TStringField;
    FindHawbByNumberSQLPARTIAL_WEIGHT: TFloatField;
    FindHawbByNumberSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    FindHawbByNumberSQLPARTIAL_MAWB_ID: TStringField;
    FindHawbByNumberSQLPARTIAL_PIECES: TIntegerField;
    FindHawbByNumberSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    DeleteOneCDS: TIBCSQL;
    DeleteOneTRans: TIBCTransaction;
    HawbLowDeletedCDS: TIBCQuery;
    HawbLowDeletedCDSHAB_ID: TStringField;
    HawbLowDeletedCDSSERIAL_NUMBER: TIntegerField;
    HawbLowDeletedCDSFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbLowDeletedCDSFK_MAWB_ID: TStringField;
    HawbLowDeletedCDSFK_CURRENCY: TStringField;
    HawbLowDeletedCDSFK_COUNTRY_ORIGIN: TIntegerField;
    HawbLowDeletedCDSDATE_REGISTERED: TDateTimeField;
    HawbLowDeletedCDSCUSTOMER_NAME: TStringField;
    HawbLowDeletedCDSDESCRIPTION: TStringField;
    HawbLowDeletedCDSWEIGHT: TFloatField;
    HawbLowDeletedCDSTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbLowDeletedCDSNUMBER_OF_PARCELS: TIntegerField;
    HawbLowDeletedCDSDISTRICT: TStringField;
    HawbLowDeletedCDSTOTAL_CHARGES: TFloatField;
    HawbLowDeletedCDSNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbLowDeletedCDSFK_CUSTOMER_CODE: TIntegerField;
    UpdateTRans: TIBCTransaction;
    UnclearHawbSQE: TIBCSQL;
    CountHawbItemsSQL: TIBCQuery;
    CountHawbItemsSQLCOUNTITEMS: TIntegerField;
    SelectHawbStatusC_SQL: TIBCQuery;
    SelectHawbStatusC_SQLSERIAL_NUMBER: TIntegerField;
    SelectHawbStatusC_SQLHAB_ID: TStringField;
    HawbStatusC_CDS: TIBCQuery;
    HawbStatusC_CDSHAB_ID: TStringField;
    HawbStatusC_CDSSERIAL_NUMBER: TIntegerField;
    HawbStatusC_CDSFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbStatusC_CDSFK_MAWB_ID: TStringField;
    HawbStatusC_CDSFK_CURRENCY: TStringField;
    HawbStatusC_CDSFK_COUNTRY_ORIGIN: TIntegerField;
    HawbStatusC_CDSDATE_REGISTERED: TDateTimeField;
    HawbStatusC_CDSCUSTOMER_NAME: TStringField;
    HawbStatusC_CDSDESCRIPTION: TStringField;
    HawbStatusC_CDSWEIGHT: TFloatField;
    HawbStatusC_CDSTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbStatusC_CDSNUMBER_OF_PARCELS: TIntegerField;
    HawbStatusC_CDSDISTRICT: TStringField;
    HawbStatusC_CDSTOTAL_CHARGES: TFloatField;
    HawbStatusC_CDSNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbStatusC_CDSFK_CUSTOMER_CODE: TIntegerField;
    procedure PrintHawbSQLBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  H_MawbDataDML: TH_MawbDataDML;

implementation

uses  U_ClairDML;

{$R *.DFM}



procedure TH_MawbDataDML.PrintHawbSQLBeforePost(DataSet: TDataSet);
begin
DataSet.FieldBYName('fk_sec_mawb_refer_number').Value:=1;
//H_HawbDataDML.MawbRSQL.FieldByname('reference_number').AsInteger;
end;









end.
