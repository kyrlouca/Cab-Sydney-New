unit P_MultiEDE;
//If absolutely necessary i have done some work in TestFormFRM for the footer total values

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,  DBAccess, IBC, MemDS, IBCError,  Wwdatsrc, ppComm, ppRelatv, ppCache, ppDB,
  ppDBPipe, ppDBBDE, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl,
  ppStrtch, ppRegion, ppBands, StdCtrls, ppVar, Mask, wwdbedit,
  ppSubRpt,ppTypes, ppParameter, ppDesignLayer,G_OtherProcs;

type
  TP_MultiEdeFRM = class(TForm)
    HawbSQL: TIBCQuery;
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
    ClearanceTypeSQL: TIBCQuery;
    ClearanceTypePIP: TppBDEPipeline;
    CountryOriginSQL: TIBCQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    CountryMadeInSQL: TIBCQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    CountrySentSQL: TIBCQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    Button1: TButton;
    ClearingPortSQL: TIBCQuery;
    ClearingPortSQLDESCRIPTION: TStringField;
    ClearingPortSQLGREEK_DESCR: TStringField;
    ClearingPortSQLSHORT_GREEK_DESCR: TStringField;
    ClearingPortSQLCODE: TIntegerField;
    ClearingPortPIP: TppBDEPipeline;
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
    SenderInvoiceSQLCUSTOMS_VALUE: TFloatField;
    HawbSerialFLD: TMaskEdit;
    SenderInvoiceSQLFACTOR_NUMERIC: TFloatField;
    SenderInvoiceSQLCURRENCY_CODE: TStringField;
    SenderInvoiceSQLSICOUNTRYCODE: TIntegerField;
    CustPIP: TppDBPipeline;
    HawbItemPIP: TppDBPipeline;
    TestMultiRPT: TppReport;
    ppDetailBand8: TppDetailBand;
    ppFooterBand8: TppFooterBand;
    ppDBText278: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    DetailRepkkk: TppSubReport;
    GroupTrfDRT: TppChildReport;
    ppHeaderBand5: TppHeaderBand;
    ppSystemVariable5: TppSystemVariable;
    ppLabel117: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText279: TppDBText;
    ppDBText280: TppDBText;
    ppDBText281: TppDBText;
    ppDBText282: TppDBText;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppDBText283: TppDBText;
    ppDBText284: TppDBText;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppDBText285: TppDBText;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    RankFLD: TppVariable;
    ppDBText286: TppDBText;
    ppFooterBand9: TppFooterBand;
    ppRegion11: TppRegion;
    ppDBText209: TppDBText;
    ppDBText210: TppDBText;
    ppDBText211: TppDBText;
    ppDBText212: TppDBText;
    ppLabel91: TppLabel;
    ppDBText213: TppDBText;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppDBText214: TppDBText;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    ppDBText217: TppDBText;
    ppDBText218: TppDBText;
    ppDBText219: TppDBText;
    ppDBText220: TppDBText;
    ppDBText221: TppDBText;
    ppDBText222: TppDBText;
    ppLabel95: TppLabel;
    ppDBText225: TppDBText;
    ppDBText226: TppDBText;
    ppLabel96: TppLabel;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppLabel105: TppLabel;
    ppDBText255: TppDBText;
    ppLabel106: TppLabel;
    ppDBText256: TppDBText;
    ppDBText257: TppDBText;
    Onelbl: TppLabel;
    ppRegion15: TppRegion;
    ppDBText271: TppDBText;
    ppDBText272: TppDBText;
    ppDBText273: TppDBText;
    ppVariable30: TppVariable;
    ppDBText275: TppDBText;
    ppDBText276: TppDBText;
    ppLabel126: TppLabel;
    ppDBText277: TppDBText;
    MultiExportRGN: TppRegion;
    ppDBText287: TppDBText;
    ppDBText288: TppDBText;
    ppDBText289: TppDBText;
    ppDBText290: TppDBText;
    ppLabel128: TppLabel;
    ppDBText291: TppDBText;
    ppRegion17: TppRegion;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel134: TppLabel;
    ppDBText292: TppDBText;
    HawbItemSQL: TIBCQuery;
    ppLabel127: TppLabel;
    ppRegion12: TppRegion;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppDBText239: TppDBText;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppDBText240: TppDBText;
    ppVariable23: TppVariable;
    ppVariable26: TppVariable;
    ppVariable27: TppVariable;
    ppLabel104: TppLabel;
    ppLabel107: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppDBText224: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ImportDutyTotalFLD: TppDBText;
    ppDBText228: TppDBText;
    ppDBText229: TppDBText;
    ImpRelFld: TppDBText;
    ppDBText227: TppDBText;
    ppDBText231: TppDBText;
    ppDBText232: TppDBText;
    ppDBText230: TppDBText;
    ppDBText233: TppDBText;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    SR1: TppRegion;
    I_Custom1: TppLabel;
    I_Rate1: TppLabel;
    I_Value1: TppLabel;
    I_P1: TppLabel;
    E_Custom1: TppLabel;
    E_rate1: TppLabel;
    E_Value1: TppLabel;
    E_P1: TppLabel;
    T_custom1: TppLabel;
    T_rate1: TppLabel;
    T_Value1: TppLabel;
    T_P1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    Sr2: TppRegion;
    I_Custom2: TppLabel;
    i_Rate2: TppLabel;
    I_Value2: TppLabel;
    I_P2: TppLabel;
    E_custom2: TppLabel;
    E_rate2: TppLabel;
    E_Value2: TppLabel;
    E_p2: TppLabel;
    T_custom2: TppLabel;
    T_rate2: TppLabel;
    T_Value2: TppLabel;
    T_p2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    Sr3: TppRegion;
    i_custom3: TppLabel;
    I_Rate3: TppLabel;
    I_Value3: TppLabel;
    I_P3: TppLabel;
    E_Custom3: TppLabel;
    E_Rate3: TppLabel;
    E_value3: TppLabel;
    E_p3: TppLabel;
    T_custom3: TppLabel;
    T_rate3: TppLabel;
    T_value3: TppLabel;
    T_P3: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    V_custom1: TppLabel;
    V_rate1: TppLabel;
    V_value1: TppLabel;
    V_p1: TppLabel;
    ppLabel15: TppLabel;
    V_CUstom2: TppLabel;
    V_rate2: TppLabel;
    V_Value2: TppLabel;
    V_p2: TppLabel;
    ppLabel16: TppLabel;
    V_Custom3: TppLabel;
    V_rate3: TppLabel;
    V_value3: TppLabel;
    v_p3: TppLabel;
    HawbItemSecondSQL: TIBCQuery;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    FloatField26: TFloatField;
    StringField37: TStringField;
    StringField38: TStringField;
    IntegerField12: TIntegerField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    StringField39: TStringField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    IntegerField15: TIntegerField;
    StringField48: TStringField;
    IntegerField16: TIntegerField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    HawbItemSecondSRC: TIBCDataSource;
    HawbItemSecondPIP: TppDBPipeline;
    ppRegion1: TppRegion;
    Sum_I: TppLabel;
    ppLabel18: TppLabel;
    Sum_E: TppLabel;
    ppLabel22: TppLabel;
    Sum_T: TppLabel;
    ppLabel26: TppLabel;
    Sum_V: TppLabel;
    ppLabel31: TppLabel;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppDBCalc1: TppDBCalc;
    ExciseTotalFLD: TppVariable;
    ImportTotalFLD: TppVariable;
    VATTotalFLD: TppVariable;
    TRLTotalFLD: TppVariable;
    ppLabel27: TppLabel;
    ppLabel34: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    SumTaxes2: TppVariable;
    SumTaxes1: TppVariable;
    SumTaxes3: TppVariable;
    HawbSRC: TIBCDataSource;
    HawbItemSRC: TIBCDataSource;
    MawbSRC: TIBCDataSource;
    CustomerSRC: TIBCDataSource;
    ClearanceTypeSRC: TIBCDataSource;
    ClearingPortSRC: TIBCDataSource;
    SenderInvoiceSRC: TIBCDataSource;
    ClearanceTypeSQLCODE: TStringField;
    ClearanceTypeSQLDESCRIPTION: TStringField;
    ClearanceTypeSQLFK_TARIFF_GROUP: TStringField;
    ClearanceTypeSQLIS_VAT_APPLY: TStringField;
    ClearanceTypeSQLORDER_NUMBER: TIntegerField;
    TotalDutiesSQL: TIBCQuery;
    TotalDutiesSQLFK_HAWB: TIntegerField;
    TotalDutiesSQLDUTY_TYPE: TStringField;
    TotalDutiesSQLC_CHARGED: TFloatField;
    TotalDutiesSQLC_RELIEVED: TFloatField;
    TotalDutiesSQLC_TOTAL: TFloatField;
    TotalDutiesSQLC_CUSTOMSVAL: TFloatField;
    TotalDutiesSRC: TIBCDataSource;
    TotalDutiesPIP: TppDBPipeline;
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
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
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
    ppDBText3: TppDBText;
    ppLabel8: TppLabel;
    TRFGroupPP: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    RelievedFLD: TppVariable;
    C_DescFLD: TppVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    GroupTRFDutiesSQL: TIBCQuery;
    GroupTRFDutiesSRC: TIBCDataSource;
    GroupTRFDutiesPIP: TppDBPipeline;
    ppParameter1: TppParameter;
    GroupTRFDutiesSQLFK_TARIFF_USAGE: TStringField;
    GroupTRFDutiesSQLFK_HAWB: TIntegerField;
    GroupTRFDutiesSQLDUTY_TYPE: TStringField;
    GroupTRFDutiesSQLTARIFF_CODE: TStringField;
    GroupTRFDutiesSQLORDER_NUMBER: TIntegerField;
    GroupTRFDutiesSQLC_CHARGED: TFloatField;
    GroupTRFDutiesSQLC_RELIEVED: TFloatField;
    GroupTRFDutiesSQLC_TOTAL: TFloatField;
    GroupTRFDutiesSQLC_CUSTOMSVAL: TFloatField;
    ppDBCalc2: TppDBCalc;
    GrTotalFLD: TppDBCalc;
    ppVariable4: TppVariable;
    HawbItemSQLSERIAL_NUMBER: TIntegerField;
    HawbItemSQLFK_HAWB_SERIAL: TIntegerField;
    HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField;
    HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbItemSQLFK_TARIFF_CODE: TStringField;
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
    HawbItemSQLVAT_CODE: TStringField;
    HawbItemSQLVAT_RATE: TFloatField;
    HawbItemSQLVAT_RELEIVED: TFloatField;
    HawbItemSQLCUSTOMS_VALUE: TFloatField;
    HawbItemSQLCURRENCY_RATE: TFloatField;
    HawbItemSQLCURRENCY: TStringField;
    HawbItemSQLFK_MAWB: TIntegerField;
    HawbItemSQLFK_VAT_CODE: TIntegerField;
    HawbItemSQLFK_TARIFF_C_CODE: TStringField;
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
    HawbItemSQLPOSOSTOSIS: TStringField;
    HawbItemSQLEURO_PENDING: TStringField;
    HawbItemSQLMULTI_ITEMS_INVOICE: TStringField;
    HawbItemSQLINVOICE_LINE: TIntegerField;
    HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbItemSQLWEIGHT_NET: TFloatField;
    HawbItemSQLUNIT: TStringField;
    CntItemsFLD: TppVariable;
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ImportPayCodeFLDCalc(Sender: TObject; var Value: Variant);
    procedure TrlPayCodeFLDCalc(Sender: TObject; var Value: Variant);
    procedure ExcisePayCOdeFLDCalc(Sender: TObject; var Value: Variant);
    procedure VatPayCodeFLDCalc(Sender: TObject; var Value: Variant);
    procedure StoragePayCodeFLDCalc(Sender: TObject; var Value: Variant);
    procedure DeliveryPayCodeFLDCalc(Sender: TObject; var Value: Variant);
    procedure OtherChargePayCodeFLDCalc(Sender: TObject;
      var Value: Variant);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand1BeforeGenerate(Sender: TObject);
    procedure ImportCountryConsigneeFLDPrint(Sender: TObject);
    procedure ExportCountryCOnsigneeFLDPrint(Sender: TObject);
    procedure ppDBText119GetText(Sender: TObject; var Text: String);
    procedure ppDBText122GetText(Sender: TObject; var Text: String);
    procedure ppLabel74GetText(Sender: TObject; var Text: String);
    procedure ppLabel76GetText(Sender: TObject; var Text: String);
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
    procedure ImpRelFldFormat(Sender: TObject; DisplayFormat: String;
      DataType: TppDataType; Value: Variant; var Text: String);
    procedure ImportDutyTotalFLDFormat(Sender: TObject;
      DisplayFormat: String; DataType: TppDataType; Value: Variant;
      var Text: String);
    procedure GroupTrfDRTStartPage(Sender: TObject);
    procedure ExciseTotalFLDCalc(Sender: TObject; var Value: Variant);
    procedure ImportTotalFLDCalc(Sender: TObject; var Value: Variant);
    procedure TRLTotalFLDCalc(Sender: TObject; var Value: Variant);
    procedure VATTotalFLDCalc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure C_DescFLDCalc(Sender: TObject; var Value: Variant);
    procedure RelievedFLDCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable4Calc(Sender: TObject; var Value: Variant);
    procedure ppDBText214GetText(Sender: TObject; var Text: string);
    procedure ppDBText215GetText(Sender: TObject; var Text: string);
    procedure CntItemsFLDCalc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    cn:TIBCConnection;
    IsImport:Boolean;
    IsExport:Boolean;
    function FindDutyPayType(RelievedValue:double):String;
    procedure PrintMulti(HawbSerial:Integer);
     procedure PrintMulti2(HawbSerial:Integer);
  public
    { Public declarations }
    In_HawbSErial:Integer;
    InAction:String;
    IN_OnPrinter:Boolean;
    IN_PrinterSettings: TopPrinterSettings;
    procedure PrintHawb;
  end;


var
  P_MultiEdeFRM: TP_MultiEdeFRM;

implementation

uses U_ClairDML, G_KyrSQL;

{$R *.DFM}





procedure TP_MultiEdeFRM.PrintHawb;
begin
  if (IN_OnPrinter) then begin    //24Mar2017 to printi without dialog
          TestMultiRPT.DeviceType := dtPrinter;
          TestMultiRPT.ShowPrintDialog := false;

          TestMultiRPT.PrinterSetup.Copies:=IN_PrinterSettings.copies;
          TestMultiRPT.PrinterSetup.PrinterName:=IN_PrinterSettings.name;

  end else begin

          TestMultiRPT.DeviceType := dtScreen;
          TestMultiRPT.ShowPrintDialog := true;
          TestMultiRPT.PrinterSetup.Copies:=1;
  end;

  printMulti(In_HawbSErial);

end;

procedure TP_MultiEdeFRM.PrintMulti(HawbSerial:Integer);
begin
HawbSQL.Close;
HawbSQL.ParamByName('HawbSerial').AsInteger:=HawbSerial;
HawbSQL.Open;
ksOpenTables([MawbSQL,CustomerSQL,SenderInvoiceSQL,HawbItemSQL,TotalDutiesSQL]);
GroupTRFDutiesSQL.Close;
GroupTRFDutiesSQL.ParamByName('hawbSerial').value := HawbSerial;
GroupTRFDutiesSQL.Open;
//CountItemsSQL.close;
//CountItemsSQL.PAramByName('HawbSerial').value:=Hawbserial;
//CountItemsSQL.Open;
//MultiEdeRPT.Print;

TestMultiRPT.Print;
End;

procedure TP_MultiEdeFRM.PrintMulti2(HawbSerial:Integer);
begin
HawbSQL.Close;
HawbSQL.ParamByName('HawbSerial').AsInteger:=HawbSerial;
HawbSQL.Open;
CustomerSQL.Close;
CustomerSQL.Open;
SenderInvoiceSQL.Close;
SenderInvoiceSQL.Open;
HawbItemSQL.Close;
HawbItemSQL.Open;
//Test2RPT.Print;

End;






procedure TP_MultiEdeFRM.RelievedFLDCalc(Sender: TObject; var Value: Variant);
Var
isRelief:Boolean;
begin
  value:='P';
  isRelief:=GroupTRFDutiesSQL.FieldByName('C_relieved').AsFloat >0;
  if isRelief then
      value:='Y';
end;

procedure TP_MultiEdeFRM.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
Var
   TotalCharges :DOuble;
begin
//checked
{
with CountItemsSQL do
begin


TotalCharges:=
Round(FieldByName('ImportTOTAL').AsFloat) +
Round(FieldByName('TrlTOTAL').AsFloat) +
Round(FieldByName('VatTOTAL').AsFloat) +
Round(FieldByName('ExciseTOTAL').AsFloat) +
Round(HawbSQL.FieldByName('EDE_STORAGE_EXPENSES').AsFloat) +
Round(HawbSQL.FieldByName('EDE_DELIVERY_EXPENSES').AsFloat) +
Round(HawbSQL.FieldByName('OTHER_CHARGE_AMOUNT').AsFloat);

end;
Value:=TotalCharges;
}
value:=-999;
end;


procedure TP_MultiEdeFRM.ppVariable4Calc(Sender: TObject; var Value: Variant);
begin
value:='P';
 if GrTotalFLD.value>0 then
  value:='Y';

end;

procedure TP_MultiEdeFRM.ImportPayCodeFLDCalc(Sender: TObject;
  var Value: Variant);
begin

Value:= FindDutyPayType(HawbItemSQL.fieldByName('Relieved_Import_duty').AsFLoat);
end;

Function TP_MultiEdeFRM.FindDutyPayType(RelievedValue:double):String;
Var
   IsRelieved:Boolean;
   Value:String;
begin
//checked
{
IsRelieved:= (RelievedValue>0);
If IsNoDuty then
   Value:='Y'
else if IsRelieved then
     Value:='A'
else
    Value:='P';
}
value:='XXX';
Result:=value;

End;



procedure TP_MultiEdeFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
isExport:=false;
isIMport:=true;
end;

procedure TP_MultiEdeFRM.TrlPayCodeFLDCalc(Sender: TObject;
  var Value: Variant);
begin
Value:= FindDutyPayType(HawbItemSQL.fieldByName('TRL_RELeIVED').AsFLoat);

end;


procedure TP_MultiEdeFRM.ExcisePayCOdeFLDCalc(Sender: TObject;
  var Value: Variant);
Var
   TheCOde:String;
   THeRelieved:DOuble;
begin
//checked
TheCode:= ClearanceTypeSQL.FieldByName('SubCodeNum').AsSTring;
TheRelieved:= HawbItemSQL.FieldByName('EXCISE_RELIEVED').AsFloat;

Value:='P';

If( (TheCode='3') or (TheCOde='4') )then
    Value:='Y'
else
begin
     If (THeRelieved>0) then
        value:='A';
end;

If (Trim(HawbItemSQL.FieldByName('FK_EXCISE_CODE').AsSTring)='' )then
   value:='';



end;

procedure TP_MultiEdeFRM.VatPayCodeFLDCalc(Sender: TObject;
  var Value: Variant);
begin
Value:= FindDutyPayType(HawbItemSQL.fieldByName('Vat_RelEived').AsFLoat);

end;

procedure TP_MultiEdeFRM.StoragePayCodeFLDCalc(Sender: TObject;
  var Value: Variant);
begin
Value:='P';
end;

procedure TP_MultiEdeFRM.CntItemsFLDCalc(Sender: TObject; var Value: Variant);
var
qr:TksQuery;
begin
    qr:=TksQuery.Create(cn, 'select count(*) as cnt from hawb_item where fk_hawb_serial= :hawbSerial');
    try
      qr.ParamByName('HawbSerial').Value:= HawbItemSQL.FieldByName('fk_hawb_serial').AsInteger;
      qr.Open;
      value:=qr.FieldByName('cnt').AsInteger;
      qr.Close;
    finally
      qr.free;
    end;

end;

procedure TP_MultiEdeFRM.C_DescFLDCalc(Sender: TObject; var Value: Variant);
VAR
  Duty:String;
  Usage:String;
  tariffCode:String;
  qr:TksQuery;
begin


  Duty:=GroupTRFDutiesSQL.FieldByName('duty_type').AsString;
   usage:=GroupTRFDutiesSQL.FieldByName('fk_tariff_usage').AsString;
   tariffCode:=GroupTRFDutiesSQL.FieldByName('tariff_code').AsString;


  if usage = 'CUS' then begin
    qr:=TksQuery.Create(cn, 'select DESCRIPTION_GREEK from S_TARIFF where tariff_code= :code');
    try
      qr.ParamByName('code').Value:=tariffCode;
      qr.Open;
      value:=qr.FieldByName('description_greek').AsString;
      qr.Close;
    finally
      qr.free;
    end;
    exit;
  end;

   if duty='IMP' then begin
    value:= '2.120  Εισαγ. Δασμός';
   end else if duty ='EXC' then begin
    value:= '       Φόρος Πολυτελείας';
   end else if duty= 'VAT' then begin
    value:= '2.200  Φ.Π.Α';
   end;

end;

procedure TP_MultiEdeFRM.DeliveryPayCodeFLDCalc(Sender: TObject;
  var Value: Variant);
begin
VALUE:='P';
end;

procedure TP_MultiEdeFRM.OtherChargePayCodeFLDCalc(Sender: TObject;
  var Value: Variant);
begin
If (Trim(hawbSQL.FieldByName('FK_OTHER_CHARGE_CODE').AsSTring)='' )then begin
   TppVariable(Sender).Visible:=False;
end else begin
   TppVariable(Sender).Visible:=True;
   TppVariable(Sender).Value:='P';
end;

end;

procedure TP_MultiEdeFRM.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
Var
   TheEuro:String;
   IsGeneral,IsPending:Boolean;
begin
     TheEuro:=HawbItemSQL.FieldByName('EURO1').AsString;
     IsGeneral:=(HawbItemSQL.FieldByName('DUTY_TYPE').AsString='G');
     IsPending:=(HawbItemSQL.FieldByName('EURO_PENDING').AsString='Y');
     value:='';

     If (IsGeneral and IsPending) then
        Value:='Ζητώ προτιμ. μεταχ. Σχετική Μαρτυρία θα προσκομιστεί. Υπογρ:';

     If( (not IsGeneral) and (not IsPending)) then
        Value:='Ζητώ προτιμ. μεταχ. Αρ. EUR1:'+TheEuro+' .Υπογρ:';



end;

procedure TP_MultiEdeFRM.ppDetailBand1BeforeGenerate(Sender: TObject);
Var
        CountInvoice:Integer;
begin
end;

procedure TP_MultiEdeFRM.ImportCountryConsigneeFLDPrint(Sender: TObject);
begin
(Sender as TppDbText).Visible:=IsImport;
end;

procedure TP_MultiEdeFRM.ExportCountryCOnsigneeFLDPrint(Sender: TObject);
begin
(sender as TppDBText).Visible:=IsExport;
end;

procedure TP_MultiEdeFRM.ppDBText119GetText(Sender: TObject;
  var Text: String);
begin

If text='F' then begin
text:='';
end else if text='P' then begin
text:='Π'
end else begin
text:='Γ';
end;

end;

procedure TP_MultiEdeFRM.ppDBText122GetText(Sender: TObject;
  var Text: String);
begin
If Text='Y' then begin
        text:='ΝΑΙ';
end else begin
        text:='ΟΧΙ';
end;

End;

procedure TP_MultiEdeFRM.ppLabel74GetText(Sender: TObject;
  var Text: String);
begin
//fix
//Text:=M_MainFormFRM.GlobalClearingAgent;

end;

procedure TP_MultiEdeFRM.ppLabel76GetText(Sender: TObject;
  var Text: String);
begin
  TExt:= 'ΟΧΙ';
end;

procedure TP_MultiEdeFRM.ppLabel77GetText(Sender: TObject;
  var Text: String);
begin
//IF(EDEHItems.MeasUnAbb = '', 'KG', EDEHItems.MeasUnAbb)
Text:= HawbItemSQL.FieldByName('UNIT').AsString;
If text='' then
        Text:= 'KG';
end;

procedure TP_MultiEdeFRM.ppLabel79GetText(Sender: TObject;
  var Text: String);
begin
text:='';
With HawbItemSQL do begin
        If (FieldByName('DUTY_TYPE').AsString='G') AND  (FieldByName('EURO_PENDING').AsString='Y') then begin
                text:='Ζητώ προτιμ. μεταχ. Σχετική μαρτυρία θα προσκομισθεί. Υπογρ:.'
        end;

        If (FieldByName('DUTY_TYPE').AsString='P') AND  (FieldByName('EURO_PENDING').AsString='N') then begin
                text:='Ζητώ προτιμ. μεταχ. Αρ. EUR1 : '+FieldByName('EURO1').AsString;
        end;

end;

end;

procedure TP_MultiEdeFRM.FactorFLDCalc(Sender: TObject;
  var Value: Variant);
vAR
        F1,F2:Double;
begin
//checked
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

procedure TP_MultiEdeFRM.ppDBText203GetText(Sender: TObject;
  var Text: String);
begin
If text='' then
        text:='2';
end;

procedure TP_MultiEdeFRM.ppDBText214GetText(Sender: TObject; var Text: string);
begin
 TEXT:='IM';
end;

procedure TP_MultiEdeFRM.ppDBText215GetText(Sender: TObject; var Text: string);
begin
TEXT:='4';
end;

procedure TP_MultiEdeFRM.ppVariable22Calc(Sender: TObject;
  var Value: Variant);
Var
        I:Integer;

        Tariff:String;
        I_Customs:String;
        I_Rate:String;
        I_Value:String;
        I_Value_F:double;
        I_P:String;

        E_Customs:String;
        E_Rate:String;
        E_Value:String;
        E_Value_F:double;
        E_P:String;

        T_Customs:String;
        T_Rate:String;
        T_Value:String;
        T_Value_F:double;
        T_P:String;

        V_Customs:String;
        V_Rate:String;
        V_Value:String;
        V_Value_F:double;
        V_P:String;


begin
Value:=Value+1;

Tariff:=HawbItemSQL.fieLdbyName('FK_TARIFF_CODE').ASsTRING;

I_Customs:='EUR '+ formatfloat('0.00',HawbItemSQL.fieLdbyName('customs_value').asFloat);
I_Rate:=formatfloat('0.00',HawbItemSQL.fieLdbyName('import_duty_rate').asFloat)+'%';
I_Value:=formatfloat('0.00',HawbItemSQL.fieLdbyName('DUTY_IMPORT_TOTAL').asFloat);
I_Value_F:= HawbItemSQL.fieLdbyName('DUTY_IMPORT_TOTAL').asFloat;
I_P:= FindDutyPayType(HawbItemSQL.fieldByName('Relieved_Import_duty').AsFLoat);

E_Customs:='EUR '+ formatfloat('0.00',HawbItemSQL.fieLdbyName('customs_value').asFloat);
E_Rate:=formatfloat('0.00',HawbItemSQL.fieLdbyName('excise_duty_rate').asFloat)+'%';
E_Value:=formatfloat('0.00',HawbItemSQL.fieLdbyName('Duty_excise_TOTAL').asFloat);
E_Value_F:=HawbItemSQL.fieLdbyName('Duty_excise_TOTAL').asFloat;
E_P:= FindDutyPayType(HawbItemSQL.fieldByName('Excise_relieved').AsFLoat);

T_Customs:='EUR '+ formatfloat('0.00',HawbItemSQL.fieLdbyName('customs_value').asFloat);
T_Rate:=formatfloat('0.00',HawbItemSQL.fieLdbyName('TRL_RATE').asFloat)+'%';
T_Value:=formatfloat('0.00',HawbItemSQL.fieLdbyName('duty_trl_TOTAL').asFloat);
T_Value_F:=HawbItemSQL.fieLdbyName('duty_trl_TOTAL').asFloat;
T_P:= FindDutyPayType(HawbItemSQL.fieldByName('TRL_RELEIVED').AsFLoat);


V_Customs:='EUR '+ formatfloat('0.00',Round(HawbItemSQL.fieLdbyName('TOTAL_VALUE_FOR_VAT').asFloat));
V_Rate:=formatfloat('0.00',HawbItemSQL.fieLdbyName('VAT_RATE').asFloat)+'%';
V_Value:=formatfloat('0.00',HawbItemSQL.fieLdbyName('DUTY_VAT_TOTAL').asFloat);
V_Value_F:=HawbItemSQL.fieLdbyName('DUTY_VAT_TOTAL').asFloat;
V_P:= FindDutyPayType(HawbItemSQL.fieldByName('VAT_RELEIVED').AsFLoat);


I:=Value mod 3;
If I=0 then I:=3;
         // it fires for every value of I which indicates item number
        // find the component based on I which is also the position of each component
        tppRegion(FindComponent('sr'+IntToStr(i))).Visible:=true;

        Tpplabel(FindComponent('I_custom'+IntToStr(i) )).Caption  :=I_Customs;
        Tpplabel(FindComponent('I_Rate'+IntToStr(i))).Caption:=I_Rate;
        Tpplabel(FindComponent('I_Value'+IntToStr(i))).Caption:=I_Value;
        Tpplabel(FindComponent('I_P'+IntToStr(i))).Caption:=I_P;

        Tpplabel(FindComponent('E_custom'+IntToStr(i))).Caption:=E_Customs;
        Tpplabel(FindComponent('E_Rate'+IntToStr(i))).Caption:=E_Rate;
        Tpplabel(FindComponent('E_Value'+IntToStr(i))).Caption:=E_Value;
        Tpplabel(FindComponent('E_P'+IntToStr(i))).Caption:=E_P;

        Tpplabel(FindComponent('T_custom'+IntToStr(i))).Caption:=T_Customs;
        Tpplabel(FindComponent('T_Rate'+IntToStr(i))).Caption:=T_Rate;
        Tpplabel(FindComponent('T_Value'+IntToStr(i))).Caption:=T_Value;
        Tpplabel(FindComponent('T_P'+IntToStr(i))).Caption:=T_P;

        Tpplabel(FindComponent('V_custom'+IntToStr(i))).Caption:=V_Customs;
        Tpplabel(FindComponent('V_Rate'+IntToStr(i))).Caption:=V_Rate;
        Tpplabel(FindComponent('V_Value'+IntToStr(i))).Caption:=V_Value;
        Tpplabel(FindComponent('V_P'+IntToStr(i))).Caption:=V_P;

        //Tpplabel(FindComponent('Sum_Taxes'+IntToStr(i))).Caption:=Sum_Taxes;
        TppVariable(FindComponent('SumTaxes'+IntToStr(i))).Value:=
                 HawbItemSQL.fieldbyName('DUTY_IMPORT_TOTAL').AsFloat+
                +HawbItemSQL.fieldbyName('duty_trl_TOTAL').AsFloat
                +HawbItemSQL.fieldbyName('Duty_excise_TOTAL').AsFloat
                +HawbItemSQL.fieldbyName('DUTY_VAT_TOTAL').AsFloat;


End;

procedure TP_MultiEdeFRM.ppLabel82Print(Sender: TObject);
begin
//fix
//TppLabel(Sender).Caption :=M_MainFormFRM.GlobalClearingAgent;
end;

procedure TP_MultiEdeFRM.ppLabel84Print(Sender: TObject);
begin
//fix
{
If CustomerSQL.FieldByName('Authority_to_Agent').asString>'' then
  TppLabel(Sender).Caption:= M_MainFormFRM.GlobalAgentLicense+'/'+CUstomerSQL.FieldByName('Authority_To_Agent').asString
else
    TppLabel(Sender).Caption:= M_MainFormFRM.GlobalAgentLicense;
}
end;

procedure TP_MultiEdeFRM.ppLabel86Print(Sender: TObject);
begin
        IF( CustomerSQL.FieldbyName('COMPANY_OR_PERSON').AsString = 'C') then
                TppLabel(Sender).Caption:= 'Αρ. Εταιρ.:'
        else                TppLabel(Sender).Caption:= 'Αρ. Ταυτ.:';


end;

procedure TP_MultiEdeFRM.ppLabel87Print(Sender: TObject);
begin
TppLabel(Sender).caption:=CustomerSQL.FieldbyName('COMPANY_ID').AsString;

end;

procedure TP_MultiEdeFRM.OtherCustomsValueFLDPrint(Sender: TObject);
begin
If (Trim(hawbSQL.FieldByName('FK_OTHER_CHARGE_CODE').AsSTring)='' )then begin
   TppVariable(Sender).Visible:=False;
end else begin
   TppVariable(Sender).Visible:=True;
end;
End;

procedure TP_MultiEdeFRM.TestMultiRPTBeforePrint(Sender: TObject);
begin
  isImport:=true;
  isExport:=false;
//   IsExport:=(trim(ClearanceTypeSQL.FieldByName('SUBCODE').AsString)='EX');
//   IsImport:=(trim(ClearanceTypeSQL.FieldByName('SUBCODE').AsString)='IM');
//   IsMultiInvoice:=(trim(ClearanceTypeSQL.FieldByName('SUBCODE').AsString)='IM');

end;

procedure TP_MultiEdeFRM.MultiExportRGNPrint(Sender: TObject);
begin
If IsExport then begin
        TppRegion(Sender).Visible:=true;
end else begin
        TppRegion(Sender).Visible:=False;
end;

end;





procedure TP_MultiEdeFRM.ImpRelFldFormat(Sender: TObject;
  DisplayFormat: String; DataType: TppDataType; Value: Variant;
  var Text: String);
Var
        ReleivedVal:Double;
        THeSubCode:String;
        IsNotApplicable:Boolean;
        IsRelieved:boolean;
begin
//checked
TheSubCode:= ClearanceTypeSQL.FieldByName('SubCodeNum').AsSTring;
IsNotApplicable:= (TheSubCode<>'3') and (TheSubCode<>'4');

If Datatype= dtdouble then begin
        ReleivedVal:=Value;
end else begin
        ReleivedVal:=0;
end;
IsRelieved:= (ReleivedVal>0);

If IsNotApplicable then
   Value:='Y'
else if IsRelieved then
     Value:='A'
else
    Value:='P';

Text:=value;


End;

procedure TP_MultiEdeFRM.ImportDutyTotalFLDFormat(Sender: TObject;
  DisplayFormat: String; DataType: TppDataType; Value: Variant;
  var Text: String);
Var
        Val:double;
begin

If Datatype= dtdouble then begin
        Val:=Round(Value);
        TExt:=FormatFloat('0.00',Val);
end else begin
        //Text:='0.00';
end;

end;

procedure TP_MultiEdeFRM.GroupTrfDRTStartPage(Sender: TObject);
begin
SR1.Visible:=false;
SR2.Visible:=false;
SR3.Visible:=false;
end;

procedure TP_MultiEdeFRM.ExciseTotalFLDCalc(Sender: TObject; var Value: Variant);
begin
//fix
{
 If VarisNull(value) then begin
        Value:=HawbItemSQL.fieldbyName('Duty_excise_TOTAL').AsFloat;
 end else begin
        Value:=Value+HawbItemSQL.fieldbyName('Duty_excise_TOTAL').AsFloat;
 end;
 }
end;

procedure TP_MultiEdeFRM.ImportTotalFLDCalc(Sender: TObject;
  var Value: Variant);
begin
//fix
{
 If VarisNull(value) then begin
        Value:=HawbItemSQL.fieldbyName('DUTY_IMPORT_TOTAL').AsFloat;
 end else begin
        Value:=Value+HawbItemSQL.fieldbyName('DUTY_IMPORT_TOTAL').AsFloat;
 end;
}
end;

procedure TP_MultiEdeFRM.TRLTotalFLDCalc(Sender: TObject;
  var Value: Variant);
begin
//fix
{
 If VarisNull(value) then begin
        Value:=HawbItemSQL.fieldbyName('duty_trl_TOTAL').AsFloat;
 end else begin
        Value:=Value+HawbItemSQL.fieldbyName('duty_trl_TOTAL').AsFloat;
 end;
}
end;

procedure TP_MultiEdeFRM.VATTotalFLDCalc(Sender: TObject;
  var Value: Variant);
begin
        Value:=Value+HawbItemSQL.fieldbyName('DUTY_VAT_TOTAL').AsFloat;

end;

END.



