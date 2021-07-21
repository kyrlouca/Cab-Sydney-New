unit P_SingleEDENew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,  DBAccess, IBC, MemDS, IBCError, Wwdatsrc, ppComm, ppRelatv, ppCache, ppDB,
  ppDBPipe, ppDBBDE, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl,
  ppStrtch, ppRegion, ppBands, StdCtrls, ppVar,  Mask, wwdbedit,
  ppSubRpt,ppTypes, ppDesignLayer, ppParameter, VirtualTable,G_OtherProcs;

type
  TP_singelEdeNewFRM = class(TForm)
    HawbSQL: TIBCQuery;
    CountINvoiceSQL: TIBCQuery;
    MawbSQL: TIBCQuery;
    MawbSQLREFERENCE_YEAR: TSmallintField;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLDATE_ARRIVED: TDateTimeField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLFK_PORT_IMPORTATION: TIntegerField;
    MawbSQLSIGNATORY_NAME: TStringField;
    MawbSQLFORM_DATE: TDateTimeField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLPASSED: TStringField;
    MawbSQLROTATION_NUMBER: TIntegerField;
    MawbSQLROTATION_YEAR: TSmallintField;
    MawbSQLFK_PORT_CLEARING: TIntegerField;
    MawbSQLGOODS_NUMBER: TIntegerField;
    MawbSQLGOODS_DESCRIPTION: TStringField;
    MawbSQLCBOOK_NUMBER: TStringField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLINVOICED: TStringField;
    MawbSQLSENT_TO_HEAD: TStringField;
    MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField;
    MawbSQLSTORAGE_EXPENSES: TFloatField;
    MawbSQLDELIVERY_EXPENSES: TFloatField;
    MawbSQLAMOUNT_NOT_INVOICED: TFloatField;
    MawbSQLAMOUNT_INVOICED: TFloatField;
    MawbSQLDATE_PASSED: TDateTimeField;
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
    HawbPiP: TppBDEPipeline;
    MawbPIP: TppBDEPipeline;
    SingleEdeRPT: TppReport;
    CustomerSQL: TIBCQuery;
    CustomerSQLNAME: TStringField;
    CustomerSQLADDRESS1: TStringField;
    CustomerSQLADDRESS2: TStringField;
    CustomerSQLADDRESS3: TStringField;
    CustomerSQLVAT_ID: TStringField;
    CustomerSQLCOMPANY_ID: TStringField;
    CustomerSQLRECEIPIENT_ID: TStringField;
    CustomerSQLOTHER_ID: TStringField;
    CustomerSQLTEL_NO1: TStringField;
    CustomerSQLTEL_NO2: TStringField;
    CustomerSQLFAX1: TStringField;
    CustomerSQLFAX2: TStringField;
    CustomerSQLFK_DISTRICT_CODE: TStringField;
    CustomerSQLCOMMENTS: TStringField;
    CustomerSQLAUTHORIZATION_NUMBER: TStringField;
    CustomerSQLQUARANTEE_NUMBER: TStringField;
    CustomerSQLIMPORTER: TStringField;
    CustomerSQLEXPORTER: TStringField;
    CustomerSQLRESELLER: TStringField;
    CustomerSQLCUSTOM_DEALER_NUMBER: TStringField;
    CustomerSQLFK_OCCUPATION_CODE: TStringField;
    CustomerSQLFK_CUSTOMER_CATEGORY_CODE: TStringField;
    CustomerSQLAUTHORITY_TO_AGENT: TStringField;
    CustomerSQLCOMPANY_OR_PERSON: TStringField;
    CustomerSQLCODE: TIntegerField;
    CustomerSQLACCOUNT_NUMBER: TIntegerField;
    CustomerPIP: TppBDEPipeline;
    ClearanceTypePIP: TppBDEPipeline;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Import1RGN: TppRegion;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    Area1_1FLD: TppDBText;
    CountryOriginSQL: TIBCQuery;
    CountryMadeInSQL: TIBCQuery;
    CountrySentSQL: TIBCQuery;
    ppDBText8: TppDBText;
    Button1: TButton;
    ClearingPortSQL: TIBCQuery;
    ClearingPortSQLDESCRIPTION: TStringField;
    ClearingPortSQLGREEK_DESCR: TStringField;
    ClearingPortSQLSHORT_GREEK_DESCR: TStringField;
    ClearingPortSQLCODE: TIntegerField;
    ClearingPortPIP: TppBDEPipeline;
    Area54_1FLD: TppDBText;
    Area54_2FLD: TppSystemVariable;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    SenderInvoiceSQL: TIBCQuery;
    SenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_NUMBER: TStringField;
    SenderInvoiceSQLFK_HAWB_ID: TStringField;
    SenderInvoiceSQLINVOICE_AMOUNT: TFloatField;
    SenderInvoiceSQLFREIGHT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLINSURANCE_AMOUNT: TFloatField;
    SenderInvoiceSQLOTHER_CHARGES_AMOUNT: TFloatField;
    SenderInvoiceSQLTOTAL_AMOUNT: TFloatField;
    SenderInvoiceSQLCURRENCY: TStringField;
    SenderInvoiceSQLEXCHANGE_RATE: TFloatField;
    SenderInvoiceSQLFACTOR: TFloatField;
    SenderInvoiceSQLFREIGHT_CYP_AMOUNT: TFloatField;
    SenderInvoiceSQLFK_MAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLIS_VALID: TStringField;
    SenderInvoiceSQLNUMBER_OF_HAWB_ITEMS: TIntegerField;
    SenderInvoiceSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_RATE: TFloatField;
    SenderInvoicePIP: TppBDEPipeline;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppRegion2: TppRegion;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    PortTBL: TIBCTable;
    PortTBLDESCRIPTION: TStringField;
    PortTBLGREEK_DESCR: TStringField;
    PortTBLSHORT_GREEK_DESCR: TStringField;
    PortTBLCODE: TIntegerField;
    MawbSQLPlaceUnload: TStringField;
    MawbSQLPortClearing: TStringField;
    CountryTBL: TIBCTable;
    CountryTBLNUMBER: TIntegerField;
    CountryTBLCODE: TStringField;
    CountryTBLNAME: TStringField;
    CountryTBLEU_MEMBER: TStringField;
    CountryTBLFREIGHT05: TIntegerField;
    CountryTBLFREIGHT6: TIntegerField;
    CountryTBLFK_CURRENCY_CODE: TStringField;
    CountryTBLGREEK_NAME: TStringField;
    MawbSQLCountryConsignee: TStringField;
    ppDBText45: TppDBText;
    ImportCountryConsigneeFLD: TppDBText;
    ExportCountryCOnsigneeFLD: TppDBText;
    ppLabel15: TppLabel;
    ppDBText47: TppDBText;
    ppLabel16: TppLabel;
    ppDBText48: TppDBText;
    ppLabel17: TppLabel;
    ppDBText49: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    SenderInvoiceSQLCUSTOMS_VALUE: TFloatField;
    HawbSerialFLD: TMaskEdit;
    MeasurementUnitSQL: TIBCQuery;
    MeasurementUnitPIP: TppDBPipeline;
    MeasurementUnitSRC: TIBCDataSource;
    SenderInvoiceSQLFACTOR_NUMERIC: TFloatField;
    SenderInvoiceSQLCURRENCY_CODE: TStringField;
    SenderInvoiceSQLSICOUNTRYCODE: TIntegerField;
    ppDBText123: TppDBText;
    ppRegion10: TppRegion;
    ppDBText9: TppDBText;
    ppDBText32: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppVariable1: TppVariable;
    ppDBText37: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLabel14: TppLabel;
    ppLabel88: TppLabel;
    HawbItemPIP: TppDBPipeline;
    HawbItemSQL: TIBCQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    FloatField1: TFloatField;
    StringField22: TStringField;
    StringField23: TStringField;
    IntegerField4: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    StringField24: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    IntegerField7: TIntegerField;
    StringField33: TStringField;
    IntegerField8: TIntegerField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    CountINvoiceSQLCOUNTINVOICE: TIntegerField;
    CountINvoiceSQLFK_HAWB_SERIAL: TIntegerField;
    CountItemsSQL: TIBCQuery;
    CountItemsSQLCOUNTITEMS: TIntegerField;
    CountItemsSQLFK_HAWB_SERIAL: TIntegerField;
    CountItemsPIP: TppDBPipeline;
    CountItemsSRC: TIBCDataSource;
    CountItemsSQLIMPORTTOTAL: TFloatField;
    CountItemsSQLVATTOTAL: TFloatField;
    CountItemsSQLEXCISETOTAL: TFloatField;
    CountItemsSQLTRLTOTAL: TFloatField;
    CountItemsSQLIMPORTRELIEVED: TFloatField;
    CountItemsSQLTRLRELIEVED: TFloatField;
    CountItemsSQLEXCISERELIEVED: TFloatField;
    CountItemsSQLVATRELIEVED: TFloatField;
    CustomerSQLEMAIL_TO_NOTIFY: TStringField;
    CustomerSQLMOBILE_TO_NOTIFY: TStringField;
    CustomerSQLIS_NOTIFY_MOBILE: TStringField;
    CustomerSQLIS_NOTIFY_EMAIL: TStringField;
    CustomerSQLIS_RECEIVE_NOTIFICATION: TStringField;
    CustomerSQLAUTHORITY_TO_DHL: TStringField;
    CustomerSQLIS_CREDIT: TStringField;
    CustomerSQLADDRESS_POST_CODE: TStringField;
    CustomerSQLADDRESS_CITY: TStringField;
    CustomerSQLADDRESS_COUNTRY: TStringField;
    HawbSRC: TIBCDataSource;
    HawbItemSRC: TIBCDataSource;
    MawbSRC: TIBCDataSource;
    CustomerSRC: TIBCDataSource;
    ClearanceTypeSRC: TIBCDataSource;
    ClearingPortSRC: TIBCDataSource;
    SenderInvoiceSRC: TIBCDataSource;
    ppDBText15: TppDBText;
    MeasurementUnitSQLSERIAL_NUMBER: TIntegerField;
    MeasurementUnitSQLUNIT: TStringField;
    MeasurementUnitSQLDESCRIPTION: TStringField;
    MeasurementUnitSQLORDER_NUMBER: TFloatField;
    MeasurementUnitSQLXML_CODE: TStringField;
    ClearanceInstructionSQL: TIBCQuery;
    ClearanceInstructionSQLCODE: TStringField;
    ClearanceInstructionSQLDESCRIPTION: TStringField;
    ClearanceInstructionSQLFK_TARIFF_GROUP: TStringField;
    ClearanceInstructionSQLIS_VAT_APPLY: TStringField;
    ClearanceInstructionSQLORDER_NUMBER: TIntegerField;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
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
    HawbSQLPOSOSTOSIS: TStringField;
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
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY: TStringField;
    HawbSQLCUSTOMER_VAT_ID: TStringField;
    HawbSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField;
    DHLDataRGN: TppRegion;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    HawbChargeSQL: TIBCQuery;
    HawbChargeSRC: TIBCDataSource;
    HawbChargePIP: TppDBPipeline;
    ppDBText17: TppDBText;
    ppDBText33: TppDBText;
    RelievedFLD: TppVariable;
    C_DescFLD: TppVariable;
    HawbChargeSQLTARIFF_GREEK: TStringField;
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
    TotalChargesvv: TppVariable;
    cc_isRelief: TppLabel;
    Area40_2FLD: TppDBText;
    Area40_4FLD: TppDBText;
    ppLabel9: TppLabel;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText23: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppRegion1: TppRegion;
    ppDBText24: TppDBText;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppDBText25: TppDBText;
    ppLabel11: TppLabel;
    ppDBText27: TppDBText;
    ppLabel12: TppLabel;
    ppDBText28: TppDBText;
    ppLabel7: TppLabel;
    HawbChargeVATSQL: TIBCQuery;
    StringField1: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField2: TStringField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    IntegerField13: TIntegerField;
    FloatField28: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField14: TIntegerField;
    FloatField29: TFloatField;
    IntegerField15: TIntegerField;
    StringField6: TStringField;
    FloatField30: TFloatField;
    StringField7: TStringField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    HawbChargeVATSRC: TIBCDataSource;
    HawbChargeVATPip: TppDBPipeline;
    ppVariable2: TppVariable;
    CountryOriginFLD: TppVariable;
    HawbItemSQLVAT_CODE: TStringField;
    HawbItemSQLUNIT: TStringField;
    IBCConnection1: TIBCConnection;
    VirtualHawbCharge: TVirtualTable;
    VirtualHawbChargeDesc1: TStringField;
    VirtualHawbChargeDesc2: TStringField;
    VirtualHawbChargeTariff_rate: TFloatField;
    VirtualHawbChargecustoms_value: TFloatField;
    VirtualHawbChargerelieved_flag: TStringField;
    VirtualHawbChargeCharge: TFloatField;
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ImportPayCodeFLDCalc(Sender: TObject; var Value: Variant);
    procedure DeliveryPayCodeFLDCalc(Sender: TObject; var Value: Variant);
    procedure OtherChargePayCodeFLDCalc(Sender: TObject;
      var Value: Variant);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand1BeforeGenerate(Sender: TObject);
    procedure ExportCountryCOnsigneeFLDPrint(Sender: TObject);
    procedure ppDBText119GetText(Sender: TObject; var Text: String);
    procedure ppDBText120GetText(Sender: TObject; var Text: String);
    procedure ppDBText122GetText(Sender: TObject; var Text: String);
    procedure ppLabel74GetText(Sender: TObject; var Text: String);
    procedure ppLabel77GetText(Sender: TObject; var Text: String);
    procedure ppLabel79GetText(Sender: TObject; var Text: String);
    procedure FactorFLDCalc(Sender: TObject; var Value: Variant);
    procedure ppDBText203GetText(Sender: TObject; var Text: String);
    procedure ppVariable22Calc(Sender: TObject; var Value: Variant);
    procedure ppLabel82Print(Sender: TObject);
    procedure ppLabel84Print(Sender: TObject);
    procedure ppLabel86Print(Sender: TObject);
    procedure ppLabel87Print(Sender: TObject);
    procedure OtherCustomsValueFLDPrint(Sender: TObject);
    procedure TestMultiRPTBeforePrint(Sender: TObject);
    procedure MultiExportRGNPrint(Sender: TObject);
    procedure ImportDutyTotalFLDFormat(Sender: TObject; DisplayFormat: String;
      DataType: TppDataType; Value: Variant; var Text: String);
    procedure ImpRelFldFormat(Sender: TObject; DisplayFormat: String;
      DataType: TppDataType; Value: Variant; var Text: String);
    procedure RelievedFLDCalc(Sender: TObject; var Value: Variant);
    procedure C_DescFLDCalc(Sender: TObject; var Value: Variant);
    procedure ppDBText33GetText(Sender: TObject; var Text: string);
    procedure TotalChargesvvCalc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure CountryOriginFLDCalc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    cn:TIBCConnection;
    function FindDutyPayType(RelievedValue:double):String;
    procedure PrintOne(HawbSerial:Integer);
  public
    { Public declarations }
//    IsImport:Boolean;
//    IsExport:Boolean;
//    IsMultiInvoice:Boolean;
    In_HawbSErial:Integer;
    IN_printErSettings:TopPrinterSettings;
    IN_OnPrinter:Boolean;
//    InAction:String;
    Procedure PrintEDe;
  end;


var
  P_singelEdeNewFRM: TP_singelEdeNewFRM;

implementation

uses U_ClairDML, G_KyrSQL;

{$R *.DFM}





procedure TP_singelEdeNewFRM.PrintOne(HawbSerial:Integer);
begin
HawbSQL.Close;
HawbSQL.ParamByName('HawbSerial').AsInteger:=HawbSerial;
HawbSQL.Open;
ksOpenTables([MawbSQL,SenderInvoiceSQL,HawbItemSQL,HawbChargeSQL,HawbChargeVATSQL,CountItemsSQL,CustomerSQL,ClearanceInstructionSQL,MeasurementUnitSQL]) ;

G_OtherProcs.setPrinter(SingleEdeRPT,IN_OnPrinter,IN_PrinterSettings);

SingleEdeRPT.Print;

End;




procedure TP_singelEdeNewFRM.RelievedFLDCalc(Sender: TObject; var Value: Variant);
Var
 IsRelief:Boolean;
begin
    value:='P';
    isRelief:=HawbChargeSQL.FieldByName('amount_relieved').AsFloat >0;
    if isRelief then
      value:='Y';
end;

procedure TP_singelEdeNewFRM.PrintEde;
begin

  PrintOne(In_HawbSErial);
end;


procedure TP_singelEdeNewFRM.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
Var
   TotalCharges :DOuble;
begin
  value:=HawbChargeVAtSQL.FieldByName('amount_net').AsFloat+HawbChargeVATSQL.FieldByName('AMOUNT_RELIEVED').asfloat;
end;

procedure TP_singelEdeNewFRM.ImportPayCodeFLDCalc(Sender: TObject;
  var Value: Variant);
begin

Value:= FindDutyPayType(HawbItemSQL.fieldByName('Relieved_Import_duty').AsFLoat);
end;

Function TP_singelEdeNewFRM.FindDutyPayType(RelievedValue:double):String;
begin


End;



procedure TP_singelEdeNewFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

procedure TP_singelEdeNewFRM.CountryOriginFLDCalc(Sender: TObject; var Value: Variant);
var
  qr:TksQuery;
begin
  value:='';
  qr:=TksQuery.Create(cn,'select name,greek_name from country where number= :cNumber');
  try
    qr.ParamByName('cNumber').Value:=hawbSQL.FieldByName('fk_country_origin').AsInteger;
    qr.Open;
    value:=qr.FieldByName('name').AsString;
    qr.Close;
  finally
     qr.Free;
  end;

end;

procedure TP_singelEdeNewFRM.C_DescFLDCalc(Sender: TObject; var Value: Variant);
VAR
  Duty:String;
  OnHawb:Boolean;
begin
{
2.120         EURO 1907 Import
D.052    trl  EURO 1907
2.200     vat  EUR 2104
4.161 (apothikieftika)
8.136   (Storage)
5        excise
}
  Duty:=HawbChargeSQL.FieldByName('duty_type').AsString;
  OnHawb:=HawbChargeSQL.FieldByName('fk_hawb_item').AsInteger=0;
  if OnHawb then begin
    value:=HawbChargeSQL.FieldByName('Tariff_GREEK').AsString;
    exit;
  end;

   if duty='IMP' then begin
    value:= '2.120    EUR 1907';
   end else if duty ='EXC' then begin
    value:='5';
   end else if duty= 'VAT' then begin
    value:= '2.200    EUR 2104';
   end;
end;

procedure TP_singelEdeNewFRM.DeliveryPayCodeFLDCalc(Sender: TObject;
  var Value: Variant);
begin
VALUE:='P';
end;

procedure TP_singelEdeNewFRM.OtherChargePayCodeFLDCalc(Sender: TObject;
  var Value: Variant);
begin
If (Trim(hawbSQL.FieldByName('FK_OTHER_CHARGE_CODE').AsSTring)='' )then begin
   TppVariable(Sender).Visible:=False;
end else begin
   TppVariable(Sender).Visible:=True;
   TppVariable(Sender).Value:='P';
end;

end;

procedure TP_singelEdeNewFRM.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
Var
   TheEuro:String;
   IsGeneral,IsPending:Boolean;
begin
{
     TheEuro:=HawbItemSQL.FieldByName('EURO1').AsString;
     IsGeneral:=(HawbItemSQL.FieldByName('DUTY_TYPE').AsString='G');
     IsPending:=(HawbItemSQL.FieldByName('EURO_PENDING').AsString='Y');
     value:='';

     If (IsGeneral and IsPending) then
        Value:='Ζητώ προτιμ. μεταχ. Σχετική Μαρτυρία θα προσκομιστεί. Υπογρ:';

     If( (not IsGeneral) and (not IsPending)) then
        Value:='Ζητώ προτιμ. μεταχ. Αρ. EUR1:'+TheEuro+' .Υπογρ:';

}

end;

procedure TP_singelEdeNewFRM.ppDetailBand1BeforeGenerate(Sender: TObject);
Var
        CountInvoice:Integer;
begin
//   IsExport:=(trim(ClearanceInstructionSQL.FieldByName('CODE').AsString)='EX');
//   IsImport:=(trim(ClearanceInstructionSQL.FieldByName('CODE').AsString)='IM4');
   CountInvoiceSQL.CLose;
   CountInvoiceSQL.OPen;
   CountInvoice:=CountInvoiceSQL.FieldbyName('CountInvoice').AsINteger;
//   IsMultiInvoice:= (CountInvoice>1);

end;

procedure TP_singelEdeNewFRM.ExportCountryCOnsigneeFLDPrint(Sender: TObject);
begin
//(sender as TppDBText).Visible:=IsExport;
end;

procedure TP_singelEdeNewFRM.ppDBText119GetText(Sender: TObject;
  var Text: String);
begin
{
If text='F' then begin
text:='';
end else if text='P' then begin
text:='Π'
end else begin
text:='Γ';
end;
}
end;

procedure TP_singelEdeNewFRM.ppDBText120GetText(Sender: TObject;
  var Text: String);
begin
if Text='0' then begin
        text:='';
end;
End;

procedure TP_singelEdeNewFRM.ppDBText122GetText(Sender: TObject;
  var Text: String);
begin
{
If Text='Y' then begin
        text:='ΝΑΙ';
end else begin
        text:='ΟΧΙ';
end;
}
End;

procedure TP_singelEdeNewFRM.ppLabel74GetText(Sender: TObject;
  var Text: String);
begin
//Text:=M_MainFormFRM.GlobalClearingAgent;

end;

procedure TP_singelEdeNewFRM.ppLabel77GetText(Sender: TObject;
  var Text: String);
begin
//IF(EDEHItems.MeasUnAbb = '', 'KG', EDEHItems.MeasUnAbb)
Text:= HawbItemSQL.FieldByName('IMPORT_DUTY_RATE_UNIT').AsString;
If text='' then
        Text:= 'KG';
end;

procedure TP_singelEdeNewFRM.ppLabel79GetText(Sender: TObject;
  var Text: String);
begin
{
text:='';
With HawbItemSQL do begin
        If (FieldByName('DUTY_TYPE').AsString='G') AND  (FieldByName('EURO_PENDING').AsString='Y') then begin
                text:='Ζητώ προτιμ. μεταχ. Σχετική μαρτυρία θα προσκομισθεί. Υπογρ:.'
        end;

        If (FieldByName('DUTY_TYPE').AsString='P') AND  (FieldByName('EURO_PENDING').AsString='N') then begin
                text:='Ζητώ προτιμ. μεταχ. Αρ. EUR1 : '+FieldByName('EURO1').AsString;
        end;

end;
}
end;

procedure TP_singelEdeNewFRM.FactorFLDCalc(Sender: TObject;
  var Value: Variant);
vAR
        F1,F2:Double;
begin

With HawbItemSQL do begin
        f1:=FieldByName('CUSTOMS_VALUE').AsFloat;
        f2:=FieldByName('INVOICE_VALUE').Asfloat;
        try
                Value:=F1/f2;
        except
                Value:=0.0;
        end;
end;
End;

procedure TP_singelEdeNewFRM.ppDBText203GetText(Sender: TObject;
  var Text: String);
begin
If text='' then
        text:='2';
end;

procedure TP_singelEdeNewFRM.ppDBText33GetText(Sender: TObject; var Text: string);
var
  onHawb:Boolean;
begin
  OnHawb:=HawbChargeSQL.FieldByName('fk_hawb_item').AsInteger=0;
  if onHawb then
    text:='';

end;

procedure TP_singelEdeNewFRM.ppVariable22Calc(Sender: TObject;
  var Value: Variant);
begin
Value:=Value+1;
end;

procedure TP_singelEdeNewFRM.ppLabel82Print(Sender: TObject);
begin
//TppLabel(Sender).Caption :=M_MainFormFRM.GlobalClearingAgent;
end;

procedure TP_singelEdeNewFRM.ppLabel84Print(Sender: TObject);
begin
{
If CustomerSQL.FieldByName('Authority_to_Agent').asString>'' then
  TppLabel(Sender).Caption:= M_MainFormFRM.GlobalAgentLicense+'/'+CUstomerSQL.FieldByName('Authority_To_Agent').asString
else
    TppLabel(Sender).Caption:= M_MainFormFRM.GlobalAgentLicense;
}
end;

procedure TP_singelEdeNewFRM.ppLabel86Print(Sender: TObject);
begin
 {
        IF( CustomerSQL.FieldbyName('COMPANY_OR_PERSON').AsString = 'C') then
                TppLabel(Sender).Caption:= 'Αρ. Εταιρ.:'
        else
                TppLabel(Sender).Caption:= 'Αρ. Ταυτ.:';

}
end;

procedure TP_singelEdeNewFRM.ppLabel87Print(Sender: TObject);
begin
TppLabel(Sender).caption:=CustomerSQL.FieldbyName('COMPANY_ID').AsString;

end;

procedure TP_singelEdeNewFRM.OtherCustomsValueFLDPrint(Sender: TObject);
begin
If (Trim(hawbSQL.FieldByName('FK_OTHER_CHARGE_CODE').AsSTring)='' )then begin
   TppVariable(Sender).Visible:=False;
end else begin
   TppVariable(Sender).Visible:=True;
end;
End;

procedure TP_singelEdeNewFRM.TestMultiRPTBeforePrint(Sender: TObject);
begin
//   IsExport:=(trim(ClearanceInstructionSQL.FieldByName('CODE').AsString)='EX4');
//   IsImport:=(trim(ClearanceInstructionSQL.FieldByName('CODE').AsString)='IM4');
//   IsMultiInvoice:=(trim(ClearanceTypeSQL.FieldByName('CODE').AsString)='IM4');

end;

procedure TP_singelEdeNewFRM.TotalChargesvvCalc(Sender: TObject; var Value: Variant);
var
  qr:TksQuery;
  str:string;
  charge:Double;
  relieved:double;
begin
  str:= 'select sum(amount_NET) as C_Charged, SUM(ha.amount_relieved)as C_relieved FROm hawb_charge  HA '
      +' WHERE  HA.fk_tariff_usage<>''DHL''  and ha.fk_hawb= :hawbSerial ';
  try
    qr:=TksQuery.Create(cn,str);
    qr.ParamByName('hawbSerial').Value:=hawbSQL.FieldByName('serial_number').AsInteger;
    qr.Open;

    charge:=qr.FieldByName('c_charged').AsFloat;
    relieved:=qr.FieldByName('c_relieved').AsFloat;
    qr.Close;
  finally
    qr.Free;
  end;

  cc_isRelief.Caption:='P';
  if relieved>0 then
    cc_isRelief.Caption:='Y';

  value:=charge+relieved;
end;

procedure TP_singelEdeNewFRM.MultiExportRGNPrint(Sender: TObject);
begin
{
If IsExport then begin
        TppRegion(Sender).Visible:=true;
end else begin
        TppRegion(Sender).Visible:=False;

end;
}
end;



procedure TP_singelEdeNewFRM.ImportDutyTotalFLDFormat(Sender: TObject;
  DisplayFormat: String; DataType: TppDataType; Value: Variant;
  var Text: String);
Var
        Val:double;
begin
If Datatype= dtdouble then begin
        Val:=Round(Value);
        TExt:=FormatFloat('0.00',Val);
end else begin
        Text:='0.00';
end;
End;

procedure TP_singelEdeNewFRM.ImpRelFldFormat(Sender: TObject;
  DisplayFormat: String; DataType: TppDataType; Value: Variant;
  var Text: String);
Var
        ReleivedVal:Double;
        THeSubCode:String;
        IsNoDuty:Boolean;
        IsRelieved:boolean;
        Code:String;
begin
Code:= ClearanceInstructionSQL.FieldByName('code').AsSTring;
IsNoDuty:=(code<>'IM4');

If Datatype= dtdouble then begin
        ReleivedVal:=Value;
end else begin
        ReleivedVal:=0;
end;
IsRelieved:= (ReleivedVal>0);

If IsNoDuty then
   Value:='Y'
else if IsRelieved then
     Value:='A'
else
    Value:='P';

Text:=value;


End;

END.



