�
 TP_SINGELEDENEWFRM 0' TPF0TP_singelEdeNewFRMP_singelEdeNewFRMLeftRTopCaptionP_singelEdeNewFRMClientHeight&ClientWidthjColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style OldCreateOrderOnCreate
FormCreatePixelsPerInch`
TextHeight TButtonButton1Left3Top WidthLHeightCaptionButton1TabOrder   	TMaskEditHawbSerialFLDLeft.Top�WidthbHeightTabOrderText253922  	TIBCQueryHawbSQLSQLInsert.StringsINSERT INTO HAWB�    (SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CUSTOMER_CODE, FK_CLEARANCE_INSTRUCTION, DESCRIPTION, WEIGHT, FK_CLEARING_STATE, FK_INVOICE_STATUS, FK_CURRENCY, EXCHANGE_RATE, INVOICE_TOTAL, FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT, OTHER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_INVOICABLE, CUSTOMS_VALUE, INVOICE_SERIAL, COURIER_INVOICE_SERIAL, COURIER_INVOICE_VALUE, HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER, EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES, DATE_INVOICED, SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED, TOTAL_NUM_OF_PIECES, FK_CLEARANCE_TYPE, FK_DELIVERY_TERM, ORIGIN_STATION, EC2_NUMBER_DATE, SENDERS_INV_NO, NUMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT, DISTRICT, DELIVERY_ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT, FK_OTHER2_CHARGE_CODE, POSOSTOSIS, TOTAL_DUTIES, CLEARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON, DATE_CLEARED, DATE_REGISTERED, FACTOR, FK_COUNTRY_ORIGIN, CHARGE_TRL, CHARGE_VAT, CHARGE_EXCISE, CHARGE_IMPORT, INVOICABLE, TOTAL_CHARGES, CUSTOMER_NAME, EDE_COMMENTS, FK_MAWB_ID, SIGNATORY_NAME, XML_HOUSE_ID, SENDER_NAME, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRESS_3, IS_PRIVATE, DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT, FK_OTHER4_CHARGE, IS_PAID, PARTIAL_FLAG, PARTIAL_WEIGHT, PARTIAL_DELIVERY_ORDER_ID, PARTIAL_MAWB_ID, PARTIAL_PIECES, PARTIAL_MAWB_REFER_NUMBER, STATUS_C, IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHARGED_DELIVERY, IS_VALID, IS_PREPAID, OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY, CUSTOMER_VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT)VALUES<    (:SERIAL_NUMBER, :HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CUSTOMER_CODE, :FK_CLEARANCE_INSTRUCTION, :DESCRIPTION, :WEIGHT, :FK_CLEARING_STATE, :FK_INVOICE_STATUS, :FK_CURRENCY, :EXCHANGE_RATE, :INVOICE_TOTAL, :FREIGHT_AMOUNT, :FK_OTHER_CHARGE_CODE, :OTHER_CHARGE_AMOUNT, :OTHER_CHARGE_PAID, :STAMPS_AMOUNT, :EXPS_NON_INVOICABLE, :CUSTOMS_VALUE, :INVOICE_SERIAL, :COURIER_INVOICE_SERIAL, :COURIER_INVOICE_VALUE, :HIGH_VALUE, :FK_SEC_MAWB_REFER_NUMBER, :EDE_STORAGE_EXPENSES, :EDE_DELIVERY_EXPENSES, :DATE_INVOICED, :SENT_TO_HEAD, :NUM_OF_PIECES_ARRIVED, :TOTAL_NUM_OF_PIECES, :FK_CLEARANCE_TYPE, :FK_DELIVERY_TERM, :ORIGIN_STATION, :EC2_NUMBER_DATE, :SENDERS_INV_NO, :NUMBER_OF_PARCELS, :FK_CUSTOMER_ACCOUNT, :DISTRICT, :DELIVERY_ORDER_AMOUNT, :OTHER2_CHARGE_AMOUNT, :FK_OTHER2_CHARGE_CODE, :POSOSTOSIS, :TOTAL_DUTIES, :CLEARANCE_WAITING_CODE, :CLEARANCE_WAITING_REASON, :DATE_CLEARED, :DATE_REGISTERED, :FACTOR, :FK_COUNTRY_ORIGIN, :CHARGE_TRL, :CHARGE_VAT, :CHARGE_EXCISE, :CHARGE_IMPORT, :INVOICABLE, :TOTAL_CHARGES, :CUSTOMER_NAME, :EDE_COMMENTS, :FK_MAWB_ID, :SIGNATORY_NAME, :XML_HOUSE_ID, :SENDER_NAME, :SENDER_ADDRESS_1, :SENDER_ADDRESS_2, :SENDER_ADDRESS_3, :IS_PRIVATE, :DELIVERY_ORDER_ID, :OTHER4_CHARGE_AMOUNT, :FK_OTHER4_CHARGE, :IS_PAID, :PARTIAL_FLAG, :PARTIAL_WEIGHT, :PARTIAL_DELIVERY_ORDER_ID, :PARTIAL_MAWB_ID, :PARTIAL_PIECES, :PARTIAL_MAWB_REFER_NUMBER, :STATUS_C, :IS_MEDIUM, :MEDIUM_VAT_RATE, :IS_CHARGED_DELIVERY, :IS_VALID, :IS_PREPAID, :OTHER5_CHARGE_AMOUNT, :FK_DUTY_RELIEVE, :SENDER_POST_CODE, :SENDER_CITY, :SENDER_COUNTRY, :CUSTOMER_VAT_ID, :CUSTOMER_AUTHORITY_TO_AGENT) SQLDelete.StringsDELETE FROM HAWBWHERE$  SERIAL_NUMBER = :Old_SERIAL_NUMBER SQLUpdate.StringsUPDATE HAWBSETt    SERIAL_NUMBER = :SERIAL_NUMBER, HAB_ID = :HAB_ID, FK_MAWB_REFER_NUMBER = :FK_MAWB_REFER_NUMBER, FK_CUSTOMER_CODE = :FK_CUSTOMER_CODE, FK_CLEARANCE_INSTRUCTION = :FK_CLEARANCE_INSTRUCTION, DESCRIPTION = :DESCRIPTION, WEIGHT = :WEIGHT, FK_CLEARING_STATE = :FK_CLEARING_STATE, FK_INVOICE_STATUS = :FK_INVOICE_STATUS, FK_CURRENCY = :FK_CURRENCY, EXCHANGE_RATE = :EXCHANGE_RATE, INVOICE_TOTAL = :INVOICE_TOTAL, FREIGHT_AMOUNT = :FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE = :FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT = :OTHER_CHARGE_AMOUNT, OTHER_CHARGE_PAID = :OTHER_CHARGE_PAID, STAMPS_AMOUNT = :STAMPS_AMOUNT, EXPS_NON_INVOICABLE = :EXPS_NON_INVOICABLE, CUSTOMS_VALUE = :CUSTOMS_VALUE, INVOICE_SERIAL = :INVOICE_SERIAL, COURIER_INVOICE_SERIAL = :COURIER_INVOICE_SERIAL, COURIER_INVOICE_VALUE = :COURIER_INVOICE_VALUE, HIGH_VALUE = :HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER = :FK_SEC_MAWB_REFER_NUMBER, EDE_STORAGE_EXPENSES = :EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES = :EDE_DELIVERY_EXPENSES, DATE_INVOICED = :DATE_INVOICED, SENT_TO_HEAD = :SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED = :NUM_OF_PIECES_ARRIVED, TOTAL_NUM_OF_PIECES = :TOTAL_NUM_OF_PIECES, FK_CLEARANCE_TYPE = :FK_CLEARANCE_TYPE, FK_DELIVERY_TERM = :FK_DELIVERY_TERM, ORIGIN_STATION = :ORIGIN_STATION, EC2_NUMBER_DATE = :EC2_NUMBER_DATE, SENDERS_INV_NO = :SENDERS_INV_NO, NUMBER_OF_PARCELS = :NUMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT = :FK_CUSTOMER_ACCOUNT, DISTRICT = :DISTRICT, DELIVERY_ORDER_AMOUNT = :DELIVERY_ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT = :OTHER2_CHARGE_AMOUNT, FK_OTHER2_CHARGE_CODE = :FK_OTHER2_CHARGE_CODE, POSOSTOSIS = :POSOSTOSIS, TOTAL_DUTIES = :TOTAL_DUTIES, CLEARANCE_WAITING_CODE = :CLEARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON = :CLEARANCE_WAITING_REASON, DATE_CLEARED = :DATE_CLEARED, DATE_REGISTERED = :DATE_REGISTERED, FACTOR = :FACTOR, FK_COUNTRY_ORIGIN = :FK_COUNTRY_ORIGIN, CHARGE_TRL = :CHARGE_TRL, CHARGE_VAT = :CHARGE_VAT, CHARGE_EXCISE = :CHARGE_EXCISE, CHARGE_IMPORT = :CHARGE_IMPORT, INVOICABLE = :INVOICABLE, TOTAL_CHARGES = :TOTAL_CHARGES, CUSTOMER_NAME = :CUSTOMER_NAME, EDE_COMMENTS = :EDE_COMMENTS, FK_MAWB_ID = :FK_MAWB_ID, SIGNATORY_NAME = :SIGNATORY_NAME, XML_HOUSE_ID = :XML_HOUSE_ID, SENDER_NAME = :SENDER_NAME, SENDER_ADDRESS_1 = :SENDER_ADDRESS_1, SENDER_ADDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADDRESS_3 = :SENDER_ADDRESS_3, IS_PRIVATE = :IS_PRIVATE, DELIVERY_ORDER_ID = :DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT = :OTHER4_CHARGE_AMOUNT, FK_OTHER4_CHARGE = :FK_OTHER4_CHARGE, IS_PAID = :IS_PAID, PARTIAL_FLAG = :PARTIAL_FLAG, PARTIAL_WEIGHT = :PARTIAL_WEIGHT, PARTIAL_DELIVERY_ORDER_ID = :PARTIAL_DELIVERY_ORDER_ID, PARTIAL_MAWB_ID = :PARTIAL_MAWB_ID, PARTIAL_PIECES = :PARTIAL_PIECES, PARTIAL_MAWB_REFER_NUMBER = :PARTIAL_MAWB_REFER_NUMBER, STATUS_C = :STATUS_C, IS_MEDIUM = :IS_MEDIUM, MEDIUM_VAT_RATE = :MEDIUM_VAT_RATE, IS_CHARGED_DELIVERY = :IS_CHARGED_DELIVERY, IS_VALID = :IS_VALID, IS_PREPAID = :IS_PREPAID, OTHER5_CHARGE_AMOUNT = :OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE = :FK_DUTY_RELIEVE, SENDER_POST_CODE = :SENDER_POST_CODE, SENDER_CITY = :SENDER_CITY, SENDER_COUNTRY = :SENDER_COUNTRY, CUSTOMER_VAT_ID = :CUSTOMER_VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT = :CUSTOMER_AUTHORITY_TO_AGENTWHERE$  SERIAL_NUMBER = :Old_SERIAL_NUMBER SQLRefresh.Strings�  SELECT SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CUSTOMER_CODE, FK_CLEARANCE_INSTRUCTION, DESCRIPTION, WEIGHT, FK_CLEARING_STATE, FK_INVOICE_STATUS, FK_CURRENCY, EXCHANGE_RATE, INVOICE_TOTAL, FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT, OTHER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_INVOICABLE, CUSTOMS_VALUE, INVOICE_SERIAL, COURIER_INVOICE_SERIAL, COURIER_INVOICE_VALUE, HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER, EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES, DATE_INVOICED, SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED, TOTAL_NUM_OF_PIECES, FK_CLEARANCE_TYPE, FK_DELIVERY_TERM, ORIGIN_STATION, EC2_NUMBER_DATE, SENDERS_INV_NO, NUMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT, DISTRICT, DELIVERY_ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT, FK_OTHER2_CHARGE_CODE, POSOSTOSIS, TOTAL_DUTIES, CLEARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON, DATE_CLEARED, DATE_REGISTERED, FACTOR, FK_COUNTRY_ORIGIN, CHARGE_TRL, CHARGE_VAT, CHARGE_EXCISE, CHARGE_IMPORT, INVOICABLE, TOTAL_CHARGES, CUSTOMER_NAME, EDE_COMMENTS, FK_MAWB_ID, SIGNATORY_NAME, XML_HOUSE_ID, SENDER_NAME, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRESS_3, IS_PRIVATE, DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT, FK_OTHER4_CHARGE, IS_PAID, PARTIAL_FLAG, PARTIAL_WEIGHT, PARTIAL_DELIVERY_ORDER_ID, PARTIAL_MAWB_ID, PARTIAL_PIECES, PARTIAL_MAWB_REFER_NUMBER, STATUS_C, IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHARGED_DELIVERY, IS_VALID, IS_PREPAID, OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY, CUSTOMER_VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT FROM HAWBWHERE   SERIAL_NUMBER = :SERIAL_NUMBER SQLLock.StringsSELECT NULL FROM HAWBWHERE"SERIAL_NUMBER = :Old_SERIAL_NUMBERFOR UPDATE WITH LOCK SQLRecCount.StringsSELECT COUNT(*) FROM (SELECT 1 AS C  FROM HAWB    ) q 
ConnectionClairDML.CabCOnnectionSQL.Strings2select * from Hawb where serial_number=:HawbSerial ReadOnly	Active	LeftpTop 	ParamDataDataType	ftUnknownName
HawbSerialValue   TIntegerFieldHawbSQLSERIAL_NUMBER	FieldNameSERIAL_NUMBERRequired	  TStringFieldHawbSQLHAB_ID	FieldNameHAB_IDRequired	Size
  TIntegerFieldHawbSQLFK_MAWB_REFER_NUMBER	FieldNameFK_MAWB_REFER_NUMBERRequired	  TIntegerFieldHawbSQLFK_CUSTOMER_CODE	FieldNameFK_CUSTOMER_CODE  TStringFieldHawbSQLFK_CLEARANCE_INSTRUCTION	FieldNameFK_CLEARANCE_INSTRUCTION	FixedChar	Size  TStringFieldHawbSQLDESCRIPTION	FieldNameDESCRIPTIONSize�   TFloatFieldHawbSQLWEIGHT	FieldNameWEIGHT  TStringFieldHawbSQLFK_CLEARING_STATE	FieldNameFK_CLEARING_STATERequired		FixedChar	Size  TStringFieldHawbSQLFK_INVOICE_STATUS	FieldNameFK_INVOICE_STATUSRequired		FixedChar	Size  TStringFieldHawbSQLFK_CURRENCY	FieldNameFK_CURRENCYSize  TFloatFieldHawbSQLEXCHANGE_RATE	FieldNameEXCHANGE_RATE  TFloatFieldHawbSQLINVOICE_TOTAL	FieldNameINVOICE_TOTAL  TFloatFieldHawbSQLFREIGHT_AMOUNT	FieldNameFREIGHT_AMOUNT  TStringFieldHawbSQLFK_OTHER_CHARGE_CODE	FieldNameFK_OTHER_CHARGE_CODESize  TFloatFieldHawbSQLOTHER_CHARGE_AMOUNT	FieldNameOTHER_CHARGE_AMOUNT  TStringFieldHawbSQLOTHER_CHARGE_PAID	FieldNameOTHER_CHARGE_PAIDSize  TFloatFieldHawbSQLSTAMPS_AMOUNT	FieldNameSTAMPS_AMOUNT  TFloatFieldHawbSQLEXPS_NON_INVOICABLE	FieldNameEXPS_NON_INVOICABLE  TFloatFieldHawbSQLCUSTOMS_VALUE	FieldNameCUSTOMS_VALUE  TIntegerFieldHawbSQLINVOICE_SERIAL	FieldNameINVOICE_SERIAL  TIntegerFieldHawbSQLCOURIER_INVOICE_SERIAL	FieldNameCOURIER_INVOICE_SERIAL  TFloatFieldHawbSQLCOURIER_INVOICE_VALUE	FieldNameCOURIER_INVOICE_VALUE  TStringFieldHawbSQLHIGH_VALUE	FieldName
HIGH_VALUE	FixedChar	Size  TIntegerFieldHawbSQLFK_SEC_MAWB_REFER_NUMBER	FieldNameFK_SEC_MAWB_REFER_NUMBER  TFloatFieldHawbSQLEDE_STORAGE_EXPENSES	FieldNameEDE_STORAGE_EXPENSES  TFloatFieldHawbSQLEDE_DELIVERY_EXPENSES	FieldNameEDE_DELIVERY_EXPENSES  
TDateFieldHawbSQLDATE_INVOICED	FieldNameDATE_INVOICED  TStringFieldHawbSQLSENT_TO_HEAD	FieldNameSENT_TO_HEAD	FixedChar	Size  TIntegerFieldHawbSQLNUM_OF_PIECES_ARRIVED	FieldNameNUM_OF_PIECES_ARRIVED  TIntegerFieldHawbSQLTOTAL_NUM_OF_PIECES	FieldNameTOTAL_NUM_OF_PIECES  TStringFieldHawbSQLFK_CLEARANCE_TYPE	FieldNameFK_CLEARANCE_TYPESize  TStringFieldHawbSQLFK_DELIVERY_TERM	FieldNameFK_DELIVERY_TERMSize  TStringFieldHawbSQLORIGIN_STATION	FieldNameORIGIN_STATIONSize  TStringFieldHawbSQLEC2_NUMBER_DATE	FieldNameEC2_NUMBER_DATESize(  TStringFieldHawbSQLSENDERS_INV_NO	FieldNameSENDERS_INV_NOSize2  TIntegerFieldHawbSQLNUMBER_OF_PARCELS	FieldNameNUMBER_OF_PARCELS  TIntegerFieldHawbSQLFK_CUSTOMER_ACCOUNT	FieldNameFK_CUSTOMER_ACCOUNT  TStringFieldHawbSQLDISTRICT	FieldNameDISTRICT	FixedChar	Size  TFloatFieldHawbSQLDELIVERY_ORDER_AMOUNT	FieldNameDELIVERY_ORDER_AMOUNT  TFloatFieldHawbSQLOTHER2_CHARGE_AMOUNT	FieldNameOTHER2_CHARGE_AMOUNT  TStringFieldHawbSQLFK_OTHER2_CHARGE_CODE	FieldNameFK_OTHER2_CHARGE_CODE	FixedChar	Size  TStringFieldHawbSQLPOSOSTOSIS	FieldName
POSOSTOSIS	FixedChar	Size  TFloatFieldHawbSQLTOTAL_DUTIES	FieldNameTOTAL_DUTIES  TStringFieldHawbSQLCLEARANCE_WAITING_CODE	FieldNameCLEARANCE_WAITING_CODE	FixedChar	Size  TStringFieldHawbSQLCLEARANCE_WAITING_REASON	FieldNameCLEARANCE_WAITING_REASON	FixedChar	Size(  
TDateFieldHawbSQLDATE_CLEARED	FieldNameDATE_CLEARED  
TDateFieldHawbSQLDATE_REGISTERED	FieldNameDATE_REGISTERED  TFloatFieldHawbSQLFACTOR	FieldNameFACTOR  TIntegerFieldHawbSQLFK_COUNTRY_ORIGIN	FieldNameFK_COUNTRY_ORIGIN  TFloatFieldHawbSQLCHARGE_TRL	FieldName
CHARGE_TRL  TFloatFieldHawbSQLCHARGE_VAT	FieldName
CHARGE_VAT  TFloatFieldHawbSQLCHARGE_EXCISE	FieldNameCHARGE_EXCISE  TFloatFieldHawbSQLCHARGE_IMPORT	FieldNameCHARGE_IMPORT  TStringFieldHawbSQLINVOICABLE	FieldName
INVOICABLE	FixedChar	Size  TFloatFieldHawbSQLTOTAL_CHARGES	FieldNameTOTAL_CHARGES  TStringFieldHawbSQLCUSTOMER_NAME	FieldNameCUSTOMER_NAME	FixedChar	Size(  TStringFieldHawbSQLEDE_COMMENTS	FieldNameEDE_COMMENTSSized  TStringFieldHawbSQLFK_MAWB_ID	FieldName
FK_MAWB_ID	FixedChar	Size  TStringFieldHawbSQLSIGNATORY_NAME	FieldNameSIGNATORY_NAME	FixedChar	Size2  TStringFieldHawbSQLXML_HOUSE_ID	FieldNameXML_HOUSE_ID	FixedChar	Size  TStringFieldHawbSQLSENDER_NAME	FieldNameSENDER_NAME	FixedChar	Size<  TStringFieldHawbSQLSENDER_ADDRESS_1	FieldNameSENDER_ADDRESS_1	FixedChar	Size<  TStringFieldHawbSQLSENDER_ADDRESS_2	FieldNameSENDER_ADDRESS_2	FixedChar	Size<  TStringFieldHawbSQLSENDER_ADDRESS_3	FieldNameSENDER_ADDRESS_3	FixedChar	Size<  TStringFieldHawbSQLIS_PRIVATE	FieldName
IS_PRIVATE	FixedChar	Size  TStringFieldHawbSQLDELIVERY_ORDER_ID	FieldNameDELIVERY_ORDER_ID	FixedChar	Size
  TFloatFieldHawbSQLOTHER4_CHARGE_AMOUNT	FieldNameOTHER4_CHARGE_AMOUNT  TStringFieldHawbSQLFK_OTHER4_CHARGE	FieldNameFK_OTHER4_CHARGE	FixedChar	Size  TStringFieldHawbSQLIS_PAID	FieldNameIS_PAID	FixedChar	Size  TStringFieldHawbSQLPARTIAL_FLAG	FieldNamePARTIAL_FLAG	FixedChar	Size  TFloatFieldHawbSQLPARTIAL_WEIGHT	FieldNamePARTIAL_WEIGHT  TStringField HawbSQLPARTIAL_DELIVERY_ORDER_ID	FieldNamePARTIAL_DELIVERY_ORDER_IDSize
  TStringFieldHawbSQLPARTIAL_MAWB_ID	FieldNamePARTIAL_MAWB_ID	FixedChar	Size  TIntegerFieldHawbSQLPARTIAL_PIECES	FieldNamePARTIAL_PIECES  TIntegerField HawbSQLPARTIAL_MAWB_REFER_NUMBER	FieldNamePARTIAL_MAWB_REFER_NUMBER  TStringFieldHawbSQLSTATUS_C	FieldNameSTATUS_C	FixedChar	Size  TStringFieldHawbSQLIS_MEDIUM	FieldName	IS_MEDIUM	FixedChar	Size  TFloatFieldHawbSQLMEDIUM_VAT_RATE	FieldNameMEDIUM_VAT_RATE  TStringFieldHawbSQLIS_CHARGED_DELIVERY	FieldNameIS_CHARGED_DELIVERY	FixedChar	Size  TStringFieldHawbSQLIS_VALID	FieldNameIS_VALID	FixedChar	Size  TStringFieldHawbSQLIS_PREPAID	FieldName
IS_PREPAID	FixedChar	Size  TFloatFieldHawbSQLOTHER5_CHARGE_AMOUNT	FieldNameOTHER5_CHARGE_AMOUNT  TStringFieldHawbSQLFK_DUTY_RELIEVE	FieldNameFK_DUTY_RELIEVE	FixedChar	Size  TStringFieldHawbSQLSENDER_POST_CODE	FieldNameSENDER_POST_CODE	FixedChar	Size<  TStringFieldHawbSQLSENDER_CITY	FieldNameSENDER_CITY	FixedChar	Size<  TStringFieldHawbSQLSENDER_COUNTRY	FieldNameSENDER_COUNTRY	FixedChar	Size<  TStringFieldHawbSQLCUSTOMER_VAT_ID	FieldNameCUSTOMER_VAT_ID	FixedChar	Size  TStringField"HawbSQLCUSTOMER_AUTHORITY_TO_AGENT	FieldNameCUSTOMER_AUTHORITY_TO_AGENT	FixedChar	   	TIBCQueryCountINvoiceSQL
ConnectionClairDML.CabCOnnectionTransactionClairDML.UsedForReadOnlyTransSQL.StringsZselect Count(*) as CountInvoice,fk_hawb_serial from Sender_invoice group by fk_hawb_serial MasterFieldsSERIAL_NUMBERDetailFieldsFK_HAWB_SERIALFetchAll	ReadOnly	Active	Left�TopX	ParamDataDataType	ftIntegerNameSERIAL_NUMBER	ParamTypeptInputValue   TIntegerFieldCountINvoiceSQLCOUNTINVOICE	FieldNameCOUNTINVOICEReadOnly	  TIntegerFieldCountINvoiceSQLFK_HAWB_SERIAL	FieldNameFK_HAWB_SERIALRequired	   	TIBCQueryMawbSQL
ConnectionClairDML.CabCOnnectionTransactionClairDML.UsedForReadOnlyTransSQL.Stringsselect * from Mawb MasterFieldsFK_MAWB_REFER_NUMBERDetailFieldsREFERENCE_NUMBERMasterSourceHawbSRCReadOnly	Active	LeftXTop� 	ParamDataDataType	ftIntegerNameFK_MAWB_REFER_NUMBER	ParamTypeptInputValue   TSmallintFieldMawbSQLREFERENCE_YEAR	FieldNameREFERENCE_YEAROriginMAWB.REFERENCE_YEAR  TIntegerFieldMawbSQLREFERENCE_NUMBER	FieldNameREFERENCE_NUMBEROriginMAWB.REFERENCE_NUMBER  TDateTimeFieldMawbSQLDATE_ARRIVED	FieldNameDATE_ARRIVEDOriginMAWB.DATE_ARRIVED  TIntegerFieldMawbSQLFK_COUNTRY_CONSIGNEE	FieldNameFK_COUNTRY_CONSIGNEEOriginMAWB.FK_COUNTRY_CONSIGNEE  TIntegerFieldMawbSQLFK_PORT_IMPORTATION	FieldNameFK_PORT_IMPORTATIONOriginMAWB.FK_PORT_IMPORTATION  TStringFieldMawbSQLSIGNATORY_NAME	FieldNameSIGNATORY_NAMEOriginMAWB.SIGNATORY_NAMESize2  TDateTimeFieldMawbSQLFORM_DATE	FieldName	FORM_DATEOriginMAWB.FORM_DATE  TStringFieldMawbSQLFLIGHT_NUMBER	FieldNameFLIGHT_NUMBEROriginMAWB.FLIGHT_NUMBERSize
  TStringFieldMawbSQLPASSED	FieldNamePASSEDOriginMAWB.PASSEDSize  TIntegerFieldMawbSQLROTATION_NUMBER	FieldNameROTATION_NUMBEROriginMAWB.ROTATION_NUMBER  TSmallintFieldMawbSQLROTATION_YEAR	FieldNameROTATION_YEAROriginMAWB.ROTATION_YEAR  TIntegerFieldMawbSQLFK_PORT_CLEARING	FieldNameFK_PORT_CLEARINGOriginMAWB.FK_PORT_CLEARING  TIntegerFieldMawbSQLGOODS_NUMBER	FieldNameGOODS_NUMBEROriginMAWB.GOODS_NUMBER  TStringFieldMawbSQLGOODS_DESCRIPTION	FieldNameGOODS_DESCRIPTIONOriginMAWB.GOODS_DESCRIPTION  TStringFieldMawbSQLCBOOK_NUMBER	FieldNameCBOOK_NUMBEROriginMAWB.CBOOK_NUMBERSize
  TStringFieldMawbSQLMAWB_ID	FieldNameMAWB_IDOriginMAWB.MAWB_IDSize  TStringFieldMawbSQLINVOICED	FieldNameINVOICEDOriginMAWB.INVOICEDSize  TStringFieldMawbSQLSENT_TO_HEAD	FieldNameSENT_TO_HEADOriginMAWB.SENT_TO_HEADSize  TFloatFieldMawbSQLCUSTOMS_OVERTIME_HOURS	FieldNameCUSTOMS_OVERTIME_HOURSOriginMAWB.CUSTOMS_OVERTIME_HOURS  TFloatFieldMawbSQLCUSTOMS_OVERTIME_RATE	FieldNameCUSTOMS_OVERTIME_RATEOriginMAWB.CUSTOMS_OVERTIME_RATE  TFloatFieldMawbSQLSTORAGE_EXPENSES	FieldNameSTORAGE_EXPENSESOriginMAWB.STORAGE_EXPENSES  TFloatFieldMawbSQLDELIVERY_EXPENSES	FieldNameDELIVERY_EXPENSESOriginMAWB.DELIVERY_EXPENSES  TFloatFieldMawbSQLAMOUNT_NOT_INVOICED	FieldNameAMOUNT_NOT_INVOICEDOriginMAWB.AMOUNT_NOT_INVOICED  TFloatFieldMawbSQLAMOUNT_INVOICED	FieldNameAMOUNT_INVOICEDOriginMAWB.AMOUNT_INVOICED  TDateTimeFieldMawbSQLDATE_PASSED	FieldNameDATE_PASSEDOriginMAWB.DATE_PASSED  TIntegerFieldMawbSQLGOODS_WEIGHT	FieldNameGOODS_WEIGHTOriginMAWB.GOODS_WEIGHT  TIntegerFieldMawbSQLHAWBS_CLEARED_FIRST_TIME	FieldNameHAWBS_CLEARED_FIRST_TIMEOriginMAWB.HAWBS_CLEARED_FIRST_TIME  TIntegerFieldMawbSQLHAWBS_IN_MAWB	FieldNameHAWBS_IN_MAWBOriginMAWB.HAWBS_IN_MAWB  TIntegerFieldMawbSQLDOCS_NUMBER	FieldNameDOCS_NUMBEROriginMAWB.DOCS_NUMBER  TFloatFieldMawbSQLDOCS_WEIGHT	FieldNameDOCS_WEIGHTOriginMAWB.DOCS_WEIGHT  TIntegerFieldMawbSQLHIGH_VALUE_NUMBER	FieldNameHIGH_VALUE_NUMBEROriginMAWB.HIGH_VALUE_NUMBER  TFloatFieldMawbSQLHIGH_VALUE_WEIGHT	FieldNameHIGH_VALUE_WEIGHTOriginMAWB.HIGH_VALUE_WEIGHT  TIntegerFieldMawbSQLMEDIUM_VALUE_NUMBER	FieldNameMEDIUM_VALUE_NUMBEROriginMAWB.MEDIUM_VALUE_NUMBER  TFloatFieldMawbSQLMEDIUM_VALUE_WEIGHT	FieldNameMEDIUM_VALUE_WEIGHTOriginMAWB.MEDIUM_VALUE_WEIGHT  TIntegerFieldMawbSQLLOW_VALUE_NUMBER	FieldNameLOW_VALUE_NUMBEROriginMAWB.LOW_VALUE_NUMBER  TFloatFieldMawbSQLLOW_VALUE_WEIGHT	FieldNameLOW_VALUE_WEIGHTOriginMAWB.LOW_VALUE_WEIGHT  TStringField!MawbSQLCUSTOMS_OVERTIME_RATE_TYPE	FieldNameCUSTOMS_OVERTIME_RATE_TYPEOriginMAWB.CUSTOMS_OVERTIME_RATE_TYPESize  TStringFieldMawbSQLPlaceUnload	FieldKindfkLookup	FieldNamePlaceUnloadLookupDataSetPortTBLLookupKeyFieldsCODELookupResultFieldSHORT_GREEK_DESCR	KeyFieldsFK_PORT_IMPORTATIONLookup	  TStringFieldMawbSQLPortClearing	FieldKindfkLookup	FieldNamePortClearingLookupDataSetPortTBLLookupKeyFieldsCODELookupResultFieldGREEK_DESCR	KeyFieldsFK_PORT_CLEARINGSizedLookup	  TStringFieldMawbSQLCountryConsignee	FieldKindfkLookup	FieldNameCountryConsigneeLookupDataSet
CountryTBLLookupKeyFieldsNUMBERLookupResultField
GREEK_NAME	KeyFieldsFK_COUNTRY_CONSIGNEESize(Lookup	   TppBDEPipelineHawbPiP
DataSourceHawbSRCUserNameHawbPiPLeftXTop( TppFieldHawbPiPppField1	AlignmenttaRightJustify
FieldAliasSERIAL_NUMBER	FieldNameSERIAL_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position   TppFieldHawbPiPppField2
FieldAliasHAB_ID	FieldNameHAB_IDFieldLength
DisplayWidth
Position  TppFieldHawbPiPppField3	AlignmenttaRightJustify
FieldAliasFK_MAWB_REFER_NUMBER	FieldNameFK_MAWB_REFER_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbPiPppField4	AlignmenttaRightJustify
FieldAliasFK_CUSTOMER_CODE	FieldNameFK_CUSTOMER_CODEFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbPiPppField5
FieldAliasFK_CLEARANCE_INSTRUCTION	FieldNameFK_CLEARANCE_INSTRUCTIONFieldLengthDisplayWidthPosition  TppFieldHawbPiPppField6
FieldAliasDESCRIPTION	FieldNameDESCRIPTIONFieldLength� DisplayWidth� Position  TppFieldHawbPiPppField7	AlignmenttaRightJustify
FieldAliasWEIGHT	FieldNameWEIGHTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbPiPppField8
FieldAliasFK_CLEARING_STATE	FieldNameFK_CLEARING_STATEFieldLengthDisplayWidthPosition  TppFieldHawbPiPppField9
FieldAliasFK_INVOICE_STATUS	FieldNameFK_INVOICE_STATUSFieldLengthDisplayWidthPosition  TppFieldHawbPiPppField10
FieldAliasFK_CURRENCY	FieldNameFK_CURRENCYFieldLengthDisplayWidthPosition	  TppFieldHawbPiPppField11	AlignmenttaRightJustify
FieldAliasEXCHANGE_RATE	FieldNameEXCHANGE_RATEFieldLength DataTypedtDoubleDisplayWidth
Position
  TppFieldHawbPiPppField12	AlignmenttaRightJustify
FieldAliasINVOICE_TOTAL	FieldNameINVOICE_TOTALFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbPiPppField13	AlignmenttaRightJustify
FieldAliasFREIGHT_AMOUNT	FieldNameFREIGHT_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbPiPppField14
FieldAliasFK_OTHER_CHARGE_CODE	FieldNameFK_OTHER_CHARGE_CODEFieldLengthDisplayWidthPosition  TppFieldHawbPiPppField15	AlignmenttaRightJustify
FieldAliasOTHER_CHARGE_AMOUNT	FieldNameOTHER_CHARGE_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbPiPppField16
FieldAliasOTHER_CHARGE_PAID	FieldNameOTHER_CHARGE_PAIDFieldLengthDisplayWidthPosition  TppFieldHawbPiPppField17	AlignmenttaRightJustify
FieldAliasSTAMPS_AMOUNT	FieldNameSTAMPS_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbPiPppField18	AlignmenttaRightJustify
FieldAliasEXPS_NON_INVOICABLE	FieldNameEXPS_NON_INVOICABLEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbPiPppField19	AlignmenttaRightJustify
FieldAliasCUSTOMS_VALUE	FieldNameCUSTOMS_VALUEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbPiPppField20	AlignmenttaRightJustify
FieldAliasINVOICE_SERIAL	FieldNameINVOICE_SERIALFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbPiPppField21	AlignmenttaRightJustify
FieldAliasCOURIER_INVOICE_SERIAL	FieldNameCOURIER_INVOICE_SERIALFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbPiPppField22	AlignmenttaRightJustify
FieldAliasCOURIER_INVOICE_VALUE	FieldNameCOURIER_INVOICE_VALUEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbPiPppField23
FieldAlias
HIGH_VALUE	FieldName
HIGH_VALUEFieldLengthDisplayWidthPosition  TppFieldHawbPiPppField24	AlignmenttaRightJustify
FieldAliasFK_SEC_MAWB_REFER_NUMBER	FieldNameFK_SEC_MAWB_REFER_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbPiPppField25	AlignmenttaRightJustify
FieldAliasEDE_STORAGE_EXPENSES	FieldNameEDE_STORAGE_EXPENSESFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbPiPppField26	AlignmenttaRightJustify
FieldAliasEDE_DELIVERY_EXPENSES	FieldNameEDE_DELIVERY_EXPENSESFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbPiPppField27
FieldAliasDATE_INVOICED	FieldNameDATE_INVOICEDFieldLength DataTypedtDateDisplayWidth
Position  TppFieldHawbPiPppField28
FieldAliasSENT_TO_HEAD	FieldNameSENT_TO_HEADFieldLengthDisplayWidthPosition  TppFieldHawbPiPppField29	AlignmenttaRightJustify
FieldAliasNUM_OF_PIECES_ARRIVED	FieldNameNUM_OF_PIECES_ARRIVEDFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbPiPppField30	AlignmenttaRightJustify
FieldAliasTOTAL_NUM_OF_PIECES	FieldNameTOTAL_NUM_OF_PIECESFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbPiPppField31
FieldAliasFK_CLEARANCE_TYPE	FieldNameFK_CLEARANCE_TYPEFieldLengthDisplayWidthPosition  TppFieldHawbPiPppField32
FieldAliasFK_DELIVERY_TERM	FieldNameFK_DELIVERY_TERMFieldLengthDisplayWidthPosition  TppFieldHawbPiPppField33
FieldAliasORIGIN_STATION	FieldNameORIGIN_STATIONFieldLengthDisplayWidthPosition   TppFieldHawbPiPppField34
FieldAliasEC2_NUMBER_DATE	FieldNameEC2_NUMBER_DATEFieldLength(DisplayWidth(Position!  TppFieldHawbPiPppField35
FieldAliasSENDERS_INV_NO	FieldNameSENDERS_INV_NOFieldLength2DisplayWidth2Position"  TppFieldHawbPiPppField36	AlignmenttaRightJustify
FieldAliasNUMBER_OF_PARCELS	FieldNameNUMBER_OF_PARCELSFieldLength DataType	dtIntegerDisplayWidth
Position#  TppFieldHawbPiPppField37	AlignmenttaRightJustify
FieldAliasFK_CUSTOMER_ACCOUNT	FieldNameFK_CUSTOMER_ACCOUNTFieldLength DataType	dtIntegerDisplayWidth
Position$  TppFieldHawbPiPppField38
FieldAliasDISTRICT	FieldNameDISTRICTFieldLengthDisplayWidthPosition%  TppFieldHawbPiPppField39	AlignmenttaRightJustify
FieldAliasDELIVERY_ORDER_AMOUNT	FieldNameDELIVERY_ORDER_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position&  TppFieldHawbPiPppField40	AlignmenttaRightJustify
FieldAliasOTHER2_CHARGE_AMOUNT	FieldNameOTHER2_CHARGE_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position'  TppFieldHawbPiPppField41
FieldAliasFK_OTHER2_CHARGE_CODE	FieldNameFK_OTHER2_CHARGE_CODEFieldLengthDisplayWidthPosition(  TppFieldHawbPiPppField42
FieldAlias
POSOSTOSIS	FieldName
POSOSTOSISFieldLengthDisplayWidthPosition)  TppFieldHawbPiPppField43	AlignmenttaRightJustify
FieldAliasTOTAL_DUTIES	FieldNameTOTAL_DUTIESFieldLength DataTypedtDoubleDisplayWidth
Position*  TppFieldHawbPiPppField44
FieldAliasCLEARANCE_WAITING_CODE	FieldNameCLEARANCE_WAITING_CODEFieldLengthDisplayWidthPosition+  TppFieldHawbPiPppField45
FieldAliasCLEARANCE_WAITING_REASON	FieldNameCLEARANCE_WAITING_REASONFieldLength(DisplayWidth(Position,  TppFieldHawbPiPppField46
FieldAliasDATE_CLEARED	FieldNameDATE_CLEAREDFieldLength DataTypedtDateDisplayWidth
Position-  TppFieldHawbPiPppField47
FieldAliasDATE_REGISTERED	FieldNameDATE_REGISTEREDFieldLength DataTypedtDateDisplayWidth
Position.  TppFieldHawbPiPppField48	AlignmenttaRightJustify
FieldAliasFACTOR	FieldNameFACTORFieldLength DataTypedtDoubleDisplayWidth
Position/  TppFieldHawbPiPppField49	AlignmenttaRightJustify
FieldAliasFK_COUNTRY_ORIGIN	FieldNameFK_COUNTRY_ORIGINFieldLength DataType	dtIntegerDisplayWidth
Position0  TppFieldHawbPiPppField50	AlignmenttaRightJustify
FieldAlias
CHARGE_TRL	FieldName
CHARGE_TRLFieldLength DataTypedtDoubleDisplayWidth
Position1  TppFieldHawbPiPppField51	AlignmenttaRightJustify
FieldAlias
CHARGE_VAT	FieldName
CHARGE_VATFieldLength DataTypedtDoubleDisplayWidth
Position2  TppFieldHawbPiPppField52	AlignmenttaRightJustify
FieldAliasCHARGE_EXCISE	FieldNameCHARGE_EXCISEFieldLength DataTypedtDoubleDisplayWidth
Position3  TppFieldHawbPiPppField53	AlignmenttaRightJustify
FieldAliasCHARGE_IMPORT	FieldNameCHARGE_IMPORTFieldLength DataTypedtDoubleDisplayWidth
Position4  TppFieldHawbPiPppField54
FieldAlias
INVOICABLE	FieldName
INVOICABLEFieldLengthDisplayWidthPosition5  TppFieldHawbPiPppField55	AlignmenttaRightJustify
FieldAliasTOTAL_CHARGES	FieldNameTOTAL_CHARGESFieldLength DataTypedtDoubleDisplayWidth
Position6  TppFieldHawbPiPppField56
FieldAliasCUSTOMER_NAME	FieldNameCUSTOMER_NAMEFieldLength(DisplayWidth(Position7  TppFieldHawbPiPppField57
FieldAliasEDE_COMMENTS	FieldNameEDE_COMMENTSFieldLengthdDisplayWidthdPosition8  TppFieldHawbPiPppField58
FieldAlias
FK_MAWB_ID	FieldName
FK_MAWB_IDFieldLengthDisplayWidthPosition9  TppFieldHawbPiPppField59
FieldAliasSIGNATORY_NAME	FieldNameSIGNATORY_NAMEFieldLength2DisplayWidth2Position:  TppFieldHawbPiPppField60
FieldAliasXML_HOUSE_ID	FieldNameXML_HOUSE_IDFieldLengthDisplayWidthPosition;  TppFieldHawbPiPppField61
FieldAliasSENDER_NAME	FieldNameSENDER_NAMEFieldLength<DisplayWidth<Position<  TppFieldHawbPiPppField62
FieldAliasSENDER_ADDRESS_1	FieldNameSENDER_ADDRESS_1FieldLength<DisplayWidth<Position=  TppFieldHawbPiPppField63
FieldAliasSENDER_ADDRESS_2	FieldNameSENDER_ADDRESS_2FieldLength<DisplayWidth<Position>  TppFieldHawbPiPppField64
FieldAliasSENDER_ADDRESS_3	FieldNameSENDER_ADDRESS_3FieldLength<DisplayWidth<Position?  TppFieldHawbPiPppField65
FieldAlias
IS_PRIVATE	FieldName
IS_PRIVATEFieldLengthDisplayWidthPosition@  TppFieldHawbPiPppField66
FieldAliasDELIVERY_ORDER_ID	FieldNameDELIVERY_ORDER_IDFieldLength
DisplayWidth
PositionA  TppFieldHawbPiPppField67	AlignmenttaRightJustify
FieldAliasOTHER4_CHARGE_AMOUNT	FieldNameOTHER4_CHARGE_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
PositionB  TppFieldHawbPiPppField68
FieldAliasFK_OTHER4_CHARGE	FieldNameFK_OTHER4_CHARGEFieldLengthDisplayWidthPositionC  TppFieldHawbPiPppField69
FieldAliasIS_PAID	FieldNameIS_PAIDFieldLengthDisplayWidthPositionD  TppFieldHawbPiPppField70
FieldAliasPARTIAL_FLAG	FieldNamePARTIAL_FLAGFieldLengthDisplayWidthPositionE  TppFieldHawbPiPppField71	AlignmenttaRightJustify
FieldAliasPARTIAL_WEIGHT	FieldNamePARTIAL_WEIGHTFieldLength DataTypedtDoubleDisplayWidth
PositionF  TppFieldHawbPiPppField72
FieldAliasPARTIAL_DELIVERY_ORDER_ID	FieldNamePARTIAL_DELIVERY_ORDER_IDFieldLength
DisplayWidth
PositionG  TppFieldHawbPiPppField73
FieldAliasPARTIAL_MAWB_ID	FieldNamePARTIAL_MAWB_IDFieldLengthDisplayWidthPositionH  TppFieldHawbPiPppField74	AlignmenttaRightJustify
FieldAliasPARTIAL_PIECES	FieldNamePARTIAL_PIECESFieldLength DataType	dtIntegerDisplayWidth
PositionI  TppFieldHawbPiPppField75	AlignmenttaRightJustify
FieldAliasPARTIAL_MAWB_REFER_NUMBER	FieldNamePARTIAL_MAWB_REFER_NUMBERFieldLength DataType	dtIntegerDisplayWidth
PositionJ  TppFieldHawbPiPppField76
FieldAliasSTATUS_C	FieldNameSTATUS_CFieldLengthDisplayWidthPositionK  TppFieldHawbPiPppField77
FieldAlias	IS_MEDIUM	FieldName	IS_MEDIUMFieldLengthDisplayWidthPositionL  TppFieldHawbPiPppField78	AlignmenttaRightJustify
FieldAliasMEDIUM_VAT_RATE	FieldNameMEDIUM_VAT_RATEFieldLength DataTypedtDoubleDisplayWidth
PositionM  TppFieldHawbPiPppField79
FieldAliasIS_CHARGED_DELIVERY	FieldNameIS_CHARGED_DELIVERYFieldLengthDisplayWidthPositionN  TppFieldHawbPiPppField80
FieldAliasIS_VALID	FieldNameIS_VALIDFieldLengthDisplayWidthPositionO  TppFieldHawbPiPppField81
FieldAlias
IS_PREPAID	FieldName
IS_PREPAIDFieldLengthDisplayWidthPositionP  TppFieldHawbPiPppField82	AlignmenttaRightJustify
FieldAliasOTHER5_CHARGE_AMOUNT	FieldNameOTHER5_CHARGE_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
PositionQ  TppFieldHawbPiPppField83
FieldAliasFK_DUTY_RELIEVE	FieldNameFK_DUTY_RELIEVEFieldLengthDisplayWidthPositionR  TppFieldHawbPiPppField84
FieldAliasSENDER_POST_CODE	FieldNameSENDER_POST_CODEFieldLength<DisplayWidth<PositionS  TppFieldHawbPiPppField85
FieldAliasSENDER_CITY	FieldNameSENDER_CITYFieldLength<DisplayWidth<PositionT  TppFieldHawbPiPppField86
FieldAliasSENDER_COUNTRY	FieldNameSENDER_COUNTRYFieldLength<DisplayWidth<PositionU  TppFieldHawbPiPppField87
FieldAliasCUSTOMER_VAT_ID	FieldNameCUSTOMER_VAT_IDFieldLengthDisplayWidthPositionV  TppFieldHawbPiPppField88
FieldAliasCUSTOMER_AUTHORITY_TO_AGENT	FieldNameCUSTOMER_AUTHORITY_TO_AGENTFieldLengthDisplayWidthPositionW   TppBDEPipelineMawbPIP
DataSourceMawbSRCUserNameMawbPIPLefthTop� MasterDataPipelineNameHawbPiP TppFieldMawbPIPppField1	AlignmenttaRightJustify
FieldAliasREFERENCE_YEAR	FieldNameREFERENCE_YEARFieldLength DataType	dtIntegerDisplayWidth
Position   TppFieldMawbPIPppField2	AlignmenttaRightJustify
FieldAliasREFERENCE_NUMBER	FieldNameREFERENCE_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldMawbPIPppField3
FieldAliasDATE_ARRIVED	FieldNameDATE_ARRIVEDFieldLength DataType
dtDateTimeDisplayWidthPosition  TppFieldMawbPIPppField4	AlignmenttaRightJustify
FieldAliasFK_COUNTRY_CONSIGNEE	FieldNameFK_COUNTRY_CONSIGNEEFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldMawbPIPppField5	AlignmenttaRightJustify
FieldAliasFK_PORT_IMPORTATION	FieldNameFK_PORT_IMPORTATIONFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldMawbPIPppField6
FieldAliasSIGNATORY_NAME	FieldNameSIGNATORY_NAMEFieldLength2DisplayWidth2Position  TppFieldMawbPIPppField7
FieldAlias	FORM_DATE	FieldName	FORM_DATEFieldLength DataType
dtDateTimeDisplayWidthPosition  TppFieldMawbPIPppField8
FieldAliasFLIGHT_NUMBER	FieldNameFLIGHT_NUMBERFieldLength
DisplayWidth
Position  TppFieldMawbPIPppField9
FieldAliasPASSED	FieldNamePASSEDFieldLengthDisplayWidthPosition  TppFieldMawbPIPppField10	AlignmenttaRightJustify
FieldAliasROTATION_NUMBER	FieldNameROTATION_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position	  TppFieldMawbPIPppField11	AlignmenttaRightJustify
FieldAliasROTATION_YEAR	FieldNameROTATION_YEARFieldLength DataType	dtIntegerDisplayWidth
Position
  TppFieldMawbPIPppField12	AlignmenttaRightJustify
FieldAliasFK_PORT_CLEARING	FieldNameFK_PORT_CLEARINGFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldMawbPIPppField13	AlignmenttaRightJustify
FieldAliasGOODS_NUMBER	FieldNameGOODS_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldMawbPIPppField14
FieldAliasGOODS_DESCRIPTION	FieldNameGOODS_DESCRIPTIONFieldLengthDisplayWidthPosition  TppFieldMawbPIPppField15
FieldAliasCBOOK_NUMBER	FieldNameCBOOK_NUMBERFieldLength
DisplayWidth
Position  TppFieldMawbPIPppField16
FieldAliasMAWB_ID	FieldNameMAWB_IDFieldLengthDisplayWidthPosition  TppFieldMawbPIPppField17
FieldAliasINVOICED	FieldNameINVOICEDFieldLengthDisplayWidthPosition  TppFieldMawbPIPppField18
FieldAliasSENT_TO_HEAD	FieldNameSENT_TO_HEADFieldLengthDisplayWidthPosition  TppFieldMawbPIPppField19	AlignmenttaRightJustify
FieldAliasCUSTOMS_OVERTIME_HOURS	FieldNameCUSTOMS_OVERTIME_HOURSFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldMawbPIPppField20	AlignmenttaRightJustify
FieldAliasCUSTOMS_OVERTIME_RATE	FieldNameCUSTOMS_OVERTIME_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldMawbPIPppField21	AlignmenttaRightJustify
FieldAliasSTORAGE_EXPENSES	FieldNameSTORAGE_EXPENSESFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldMawbPIPppField22	AlignmenttaRightJustify
FieldAliasDELIVERY_EXPENSES	FieldNameDELIVERY_EXPENSESFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldMawbPIPppField23	AlignmenttaRightJustify
FieldAliasAMOUNT_NOT_INVOICED	FieldNameAMOUNT_NOT_INVOICEDFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldMawbPIPppField24	AlignmenttaRightJustify
FieldAliasAMOUNT_INVOICED	FieldNameAMOUNT_INVOICEDFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldMawbPIPppField25
FieldAliasDATE_PASSED	FieldNameDATE_PASSEDFieldLength DataType
dtDateTimeDisplayWidthPosition  TppFieldMawbPIPppField26	AlignmenttaRightJustify
FieldAliasGOODS_WEIGHT	FieldNameGOODS_WEIGHTFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldMawbPIPppField27	AlignmenttaRightJustify
FieldAliasHAWBS_CLEARED_FIRST_TIME	FieldNameHAWBS_CLEARED_FIRST_TIMEFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldMawbPIPppField28	AlignmenttaRightJustify
FieldAliasHAWBS_IN_MAWB	FieldNameHAWBS_IN_MAWBFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldMawbPIPppField29	AlignmenttaRightJustify
FieldAliasDOCS_NUMBER	FieldNameDOCS_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldMawbPIPppField30	AlignmenttaRightJustify
FieldAliasDOCS_WEIGHT	FieldNameDOCS_WEIGHTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldMawbPIPppField31	AlignmenttaRightJustify
FieldAliasHIGH_VALUE_NUMBER	FieldNameHIGH_VALUE_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldMawbPIPppField32	AlignmenttaRightJustify
FieldAliasHIGH_VALUE_WEIGHT	FieldNameHIGH_VALUE_WEIGHTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldMawbPIPppField33	AlignmenttaRightJustify
FieldAliasMEDIUM_VALUE_NUMBER	FieldNameMEDIUM_VALUE_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position   TppFieldMawbPIPppField34	AlignmenttaRightJustify
FieldAliasMEDIUM_VALUE_WEIGHT	FieldNameMEDIUM_VALUE_WEIGHTFieldLength DataTypedtDoubleDisplayWidth
Position!  TppFieldMawbPIPppField35	AlignmenttaRightJustify
FieldAliasLOW_VALUE_NUMBER	FieldNameLOW_VALUE_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position"  TppFieldMawbPIPppField36	AlignmenttaRightJustify
FieldAliasLOW_VALUE_WEIGHT	FieldNameLOW_VALUE_WEIGHTFieldLength DataTypedtDoubleDisplayWidth
Position#  TppFieldMawbPIPppField37
FieldAliasCUSTOMS_OVERTIME_RATE_TYPE	FieldNameCUSTOMS_OVERTIME_RATE_TYPEFieldLengthDisplayWidthPosition$  TppFieldMawbPIPppField38
FieldAliasPlaceUnload	FieldNamePlaceUnloadFieldLengthDisplayWidthPosition%  TppFieldMawbPIPppField39
FieldAliasPortClearing	FieldNamePortClearingFieldLengthdDisplayWidthdPosition&  TppFieldMawbPIPppField40
FieldAliasCountryConsignee	FieldNameCountryConsigneeFieldLength(DisplayWidth(Position'   	TppReportSingleEdeRPTAutoStopDataPipelineHawbPiPPrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.DuplexdpNonePrinterSetup.PaperNameLetterPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight�A PrinterSetup.mmPaperWidth�K PrinterSetup.PaperSizeTemplate.FileNameD:\dhl\programs\P_SingleEde.rtmUnitsutMillimetersArchiveFileName ($MyDocuments)\ReportArchive.raf
DeviceTypeScreenDefaultFileDeviceTypePDFEmailSettings.ReportFormatPDF,EmailSettings.ConnectionSettings.MailServiceSMTP2EmailSettings.ConnectionSettings.EnableMultiPluginEmailSettings.OAuth2
   RedirectPort   
LanguageIDDefaultOpenFileOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.EnabledOutlineSettings.VisibleThumbnailSettings.Enabled	ThumbnailSettings.Visible	ThumbnailSettings.DeadSpace%ThumbnailSettings.PageHighlight.WidthThumbnailSettings.ThumbnailSizetsSmallPDFSettings.EmbedFontOptionsefUseSubset %PDFSettings.EncryptSettings.AllowCopy	)PDFSettings.EncryptSettings.AllowInteract	'PDFSettings.EncryptSettings.AllowModify	&PDFSettings.EncryptSettings.AllowPrint	(PDFSettings.EncryptSettings.AllowExtract	)PDFSettings.EncryptSettings.AllowAssemble	-PDFSettings.EncryptSettings.AllowQualityPrint	#PDFSettings.EncryptSettings.Enabled%PDFSettings.EncryptSettings.KeyLengthkl40Bit*PDFSettings.EncryptSettings.EncryptionTypeetRC4,PDFSettings.DigitalSignatureSettings.SignPDFPDFSettings.FontEncodingfeAnsi!PDFSettings.ImageCompressionLevelPDFSettings.PDFAFormatpafNone(PreviewFormSettings.PageBorder.mmPadding PreviewFormSettings.WindowStatewsMaximizedPreviewFormSettings.ZoomSettingzs100PercentRTFSettings.DefaultFont.CharsetDEFAULT_CHARSETRTFSettings.DefaultFont.ColorclWindowTextRTFSettings.DefaultFont.Height�RTFSettings.DefaultFont.NameArialRTFSettings.DefaultFont.Style TextFileName($MyDocuments)\Report.pdf TextSearchSettings.DefaultString
<FindText>TextSearchSettings.EnabledXLSSettings.AppNameReportBuilderXLSSettings.AuthorReportBuilderXLSSettings.SubjectReportXLSSettings.TitleReportXLSSettings.WorksheetNameReport6CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort 3CloudDriveSettings.DropBoxSettings.DirectorySupport	:CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort 7CloudDriveSettings.GoogleDriveSettings.DirectorySupport7CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort 4CloudDriveSettings.OneDriveSettings.DirectorySupport	LeftTopVersion21.0mmColumnWidth DataPipelineNameHawbPiP TppDetailBandppDetailBand1BeforeGenerateppDetailBand1BeforeGenerateBackground1.Brush.StylebsClearBackground2.Brush.StylebsClearBorder.mmPadding PrintHeight	phDynamicmmBottomOffset mmHeight�� mmPrintPosition  	TppRegion
Import1RGNDesignLayerppDesignLayer1UserName
Import1RGNCaptionIm	Pen.StylepsClearmmHeight(�  mmLeft�VmmToptjmmWidth�h BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  	TppDBText	ppDBText1DesignLayerppDesignLayer1UserNameDBText1HyperlinkEnabledBorder.mmPadding 	DataFieldNAMEDataPipelineCustomerPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameCustomerPIPmmHeight�mmLeft'ammTop��  mmWidth�P BandType	LayerName
Foreground  	TppDBText	ppDBText2DesignLayerppDesignLayer1UserNameDBText2HyperlinkEnabledBorder.mmPadding 	DataFieldADDRESS1DataPipelineCustomerPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameCustomerPIPmmHeight�mmLeft�`mmTop�  mmWidth,R BandType	LayerName
Foreground  	TppDBText	ppDBText3DesignLayerppDesignLayer1UserNameDBText3HyperlinkEnabledBorder.mmPadding 	DataFieldADDRESS_POST_CODEDataPipelineCustomerPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameCustomerPIPmmHeight�mmLeft�`mmTopK�  mmWidthmXBandType	LayerName
Foreground  	TppDBText	ppDBText4DesignLayerppDesignLayer1UserNameDBText4HyperlinkEnabledBorder.mmPadding 	DataFieldADDRESS_CITYDataPipelineCustomerPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameCustomerPIPmmHeight�mmLeft��  mmTopw�  mmWidth:�  BandType	LayerName
Foreground  TppLabelppLabel1DesignLayerppDesignLayer1UserNameLabel1HyperlinkEnabledBorder.mmPadding Caption   ΦΠΑ:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeft� mmTop�ummWidth�BandType	LayerName
Foreground  	TppDBText	ppDBText5DesignLayerppDesignLayer1UserNameDBText5HyperlinkEnabledBorder.mmPadding 	DataFieldVAT_IDDataPipelineCustomerPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameCustomerPIPmmHeight�mmLeft�2 mmTop�smmWidth�RBandType	LayerName
Foreground  TppLabel	ppLabel88DesignLayerppDesignLayer1UserNameLabel88HyperlinkEnabledBorder.mmPadding Caption   ΦΠΑ: 10016129GFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeft.�  mmTop�  mmWidth�WBandType	LayerName
Foreground  	TppDBText
ppDBText15DesignLayerppDesignLayer1UserNameDBText15HyperlinkEnabledBorder.mmPadding 	DataFieldADDRESS_COUNTRYDataPipelineCustomerPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameCustomerPIPmmHeight�mmLeft�ZmmTop�  mmWidth�Q BandType	LayerName
Foreground   	TppDBText
Area1_1FLDDesignLayerppDesignLayer1UserName
Area1_1FLDHyperlinkEnabledBorder.mmPadding 	DataFieldCODEDataPipelineClearanceTypePIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameClearanceTypePIPmmHeight�mmLeftP� mmTop]mmWidth�3BandType	LayerName
Foreground  	TppDBText	ppDBText8DesignLayerppDesignLayer1UserNameDBText8HyperlinkEnabledBorder.mmPadding 	DataFieldDATE_ARRIVEDDataPipelineMawbPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameMawbPIPmmHeight�mmLefto�  mmTop\? mmWidth%BBandType	LayerName
Foreground  	TppDBTextArea54_1FLDDesignLayerppDesignLayer1UserNameArea54_1FLDHyperlinkEnabledBorder.mmPadding 	DataFieldGREEK_DESCRDataPipelineClearingPortPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameClearingPortPIPmmHeight�mmLeft�� mmTop�� mmWidth˓  BandType	LayerName
Foreground  	TppDBText	ppDBText6DesignLayerppDesignLayer1UserNameDBText6HyperlinkEnabledBorder.mmPadding 	DataFieldFLIGHT_NUMBERDataPipelineMawbPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameMawbPIPmmHeight�mmLeft�[mmTope@ mmWidth%BBandType	LayerName
Foreground  	TppDBText
ppDBText10DesignLayerppDesignLayer1UserNameDBText10HyperlinkEnabledBorder.mmPadding 	DataFieldFK_DELIVERY_TERMDataPipelineHawbPiPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	DataPipelineNameHawbPiPmmHeight�mmLeftռ mmTop;5 mmWidth�(BandType	LayerName
Foreground  	TppDBText
ppDBText11DesignLayerppDesignLayer1UserNameDBText11HyperlinkEnabledBorder.mmPadding 	DataFieldORIGIN_STATIONDataPipelineHawbPiPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	DataPipelineNameHawbPiPmmHeight�mmLeft̖ mmTop;5 mmWidth!BandType	LayerName
Foreground  	TppDBText
ppDBText12DesignLayerppDesignLayer1UserNameDBText12HyperlinkEnabledBorder.mmPadding 	DataFieldPRE_DISCOUNT_AMOUNTDataPipelineSenderInvoicePIPDisplayFormat0.000Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameSenderInvoicePIPmmHeight�mmLeftO� mmTopbL mmWidth�4BandType	LayerName
Foreground  	TppDBText
ppDBText13DesignLayerppDesignLayer1UserNameDBText13HyperlinkEnabledBorder.mmPadding 	DataFieldEXCHANGE_RATEDataPipelineSenderInvoicePIPDisplayFormat0.0000Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameSenderInvoicePIPmmHeight�mmLeft�9 mmTopbL mmWidth�BBandType	LayerName
Foreground  	TppDBText
ppDBText14DesignLayerppDesignLayer1UserNameDBText14HyperlinkEnabledBorder.mmPadding 	DataFieldFK_TARIFF_CODEDataPipelineHawbItemPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameHawbItemPIPmmHeight�mmLeftW mmTopL� mmWidth�}BandType	LayerName
Foreground  	TppRegion	ppRegion2DesignLayerppDesignLayer1UserNameRegion2	Pen.StylepsClearVisiblemmHeight�#mmLeftkmmTopM mmWidth�rBandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  	TppDBText
ppDBText20DesignLayerppDesignLayer1UserNameDBText20HyperlinkEnabledBorder.mmPadding 	DataFieldIMPORT_DUTY_RATE_QUANTDataPipelineHawbItemPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	VisibleDataPipelineNameHawbItemPIPmmHeight�mmLeft�%mmTopbX mmWidth$#BandType	LayerName
Foreground  	TppDBText
ppDBText21DesignLayerppDesignLayer1UserNameDBText21HyperlinkEnabledBorder.mmPadding 	DataFieldIMPORT_DUTY_RATE_BASEDataPipelineHawbItemPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameHawbItemPIPmmHeight�mmLeft�LmmTopbX mmWidth�BandType	LayerName
Foreground  	TppDBText
ppDBText22DesignLayerppDesignLayer1UserNameDBText22HyperlinkEnabledBorder.mmPadding 	DataFieldIMPORT_DUTY_RATE_UNITDataPipelineHawbItemPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameHawbItemPIPmmHeight�mmLeft�kmmTopZW mmWidth
 BandType	LayerName
Foreground   	TppDBText
ppDBText45DesignLayerppDesignLayer1UserNameDBText45HyperlinkEnabledBorder.mmPadding 	DataFieldCountryConsigneeDataPipelineMawbPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameMawbPIPmmHeight�mmLeftռ mmTop��  mmWidthz�  BandType	LayerName
Foreground  	TppDBTextImportCountryConsigneeFLDDesignLayerppDesignLayer1UserNameImportCountryConsigneeFLDHyperlinkEnabledBorder.mmPadding 	DataFieldFK_COUNTRY_CONSIGNEEDataPipelineMawbPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameMawbPIPmmHeight�mmLeft� mmTop��  mmWidth�?BandType	LayerName
Foreground  	TppDBTextExportCountryCOnsigneeFLDOnPrintExportCountryCOnsigneeFLDPrintDesignLayerppDesignLayer1UserNameExportCountryCOnsigneeFLDHyperlinkEnabledBorder.mmPadding 	DataFieldFK_COUNTRY_CONSIGNEEDataPipelineMawbPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameMawbPIPmmHeight�mmLeft4� mmTop��  mmWidth�BBandType	LayerName
Foreground  	TppDBText
ppDBText47DesignLayerppDesignLayer1UserNameDBText47HyperlinkEnabledBorder.mmPadding 	DataFieldCURRENCYDataPipelineSenderInvoicePIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameSenderInvoicePIPmmHeight�mmLeftL� mmTopbL mmWidth�9BandType	LayerName
Foreground  TppLabel	ppLabel16DesignLayerppDesignLayer1UserNameLabel16HyperlinkEnabledBorder.mmPadding Caption
   Αρ. EC2:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeftk� mmTop5x mmWidthi+BandType	LayerName
Foreground  	TppDBText
ppDBText48DesignLayerppDesignLayer1UserNameDBText48HyperlinkEnabledBorder.mmPadding 	DataFieldEC2_NUMBER_DATEDataPipelineHawbPiPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameHawbPiPmmHeight�mmLeft�  mmTop5x mmWidth�BBandType	LayerName
Foreground  TppLabel	ppLabel17DesignLayerppDesignLayer1UserNameLabel17HyperlinkEnabledBorder.mmPadding Caption   Αρ. Τιμ.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeftk� mmTop�� mmWidth>&BandType	LayerName
Foreground  	TppDBText
ppDBText49DesignLayerppDesignLayer1UserNameDBText49HyperlinkEnabledBorder.mmPadding 	DataFieldINVOICE_NUMBERDataPipelineSenderInvoicePIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameSenderInvoicePIPmmHeight�mmLeft�� mmTop�� mmWidth�BBandType	LayerName
Foreground  TppLabel	ppLabel18DesignLayerppDesignLayer1UserNameLabel18HyperlinkEnabledBorder.mmPadding Caption1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeftm� mmTop� mmWidth`BandType	LayerName
Foreground  TppLabel	ppLabel19DesignLayerppDesignLayer1UserNameLabel19HyperlinkEnabledBorder.mmPadding Caption1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeft�� mmTop7DmmWidth3BandType	LayerName
Foreground  TppLabel	ppLabel20DesignLayerppDesignLayer1UserNameLabel20HyperlinkEnabledBorder.mmPadding Caption1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeft�� mmTop7DmmWidth3BandType	LayerName
Foreground  TppLabel	ppLabel21DesignLayerppDesignLayer1UserNameLabel201HyperlinkEnabledBorder.mmPadding Caption1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeft�� mmTop^mmWidth3BandType	LayerName
Foreground  	TppDBText
ppDBText51DesignLayerppDesignLayer1UserNameDBText51HyperlinkEnabledBorder.mmPadding 	DataFieldNUMBER_OF_PARCELSDataPipelineHawbPiPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameHawbPiPmmHeight�mmLeft� mmTopB^mmWidth�BandType	LayerName
Foreground  	TppDBText
ppDBText52DesignLayerppDesignLayer1UserNameDBText52HyperlinkEnabledBorder.mmPadding 	DataFieldFK_PORT_CLEARINGDataPipelineMawbPIPDisplayFormat00Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameMawbPIPmmHeight�mmLeft~� mmTop{mmWidth�BBandType	LayerName
Foreground  	TppDBTextppDBText123DesignLayerppDesignLayer1UserName	DBText123HyperlinkEnabledBorder.mmPadding 	DataFieldCUSTOMS_VALUEDataPipelineHawbPiPDisplayFormat#,0;-#,0Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	DataPipelineNameHawbPiPmmHeight�mmLeft�$ mmTop	� mmWidthz-BandType	LayerName
Foreground  	TppRegion
ppRegion10DesignLayerppDesignLayer1UserNameRegion4CaptionRegion4	Pen.StylepsClearmmHeight��  mmLeft�UmmTop]d mmWidth�J BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  	TppDBText	ppDBText9DesignLayerppDesignLayer1UserNameDBText9HyperlinkEnabledBorder.mmPadding 	DataFieldEDE_COMMENTSDataPipelineHawbPiPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	DataPipelineNameHawbPiPmmHeightmmLeft�_mmTopq� mmWidth�6 BandType	LayerName
Foreground  	TppDBText
ppDBText32DesignLayerppDesignLayer1UserNameDBText32HyperlinkEnabledBorder.mmPadding 	DataFieldHAB_IDDataPipelineHawbPiPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	DataPipelineNameHawbPiPmmHeight�mmLeft�_mmTop� mmWidth.hBandType	LayerName
Foreground  	TppDBText
ppDBText35DesignLayerppDesignLayer1UserNameDBText35HyperlinkEnabledBorder.mmPadding 	DataField
FK_MAWB_IDDataPipelineHawbPiPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	DataPipelineNameHawbPiPmmHeight�mmLeft�_mmTopZ� mmWidthZgBandType	LayerName
Foreground  	TppDBText
ppDBText36DesignLayerppDesignLayer1UserNameDBText36HyperlinkEnabledBorder.mmPadding 	DataFieldDESCRIPTIONDataPipelineHawbPiPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	DataPipelineNameHawbPiPmmHeight�mmLeft��  mmTop�� mmWidthf�  BandType	LayerName
Foreground  TppVariableppVariable1DesignLayerppDesignLayer1UserName	Variable1HyperlinkEnabledAutoSizeBorder.mmPadding BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style OnCalcppVariable1CalcTransparent	mmHeight�mmLeft�_mmTop�	 mmWidthh4 BandType	LayerName
Foreground  	TppDBText
ppDBText43DesignLayerppDesignLayer1UserNameDBText40HyperlinkEnabledBorder.mmPadding 	DataFieldPortClearingDataPipelineMawbPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameMawbPIPmmHeight�mmLeftO�  mmTop:� mmWidth#�  BandType	LayerName
Foreground  	TppDBText
ppDBText44DesignLayerppDesignLayer1UserNameDBText41HyperlinkEnabledBorder.mmPadding 	DataFieldFK_PORT_CLEARINGDataPipelineMawbPIPDisplayFormat00Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameMawbPIPmmHeight�mmLeft�_mmTop�� mmWidthW)BandType	LayerName
Foreground  TppLabel	ppLabel14DesignLayerppDesignLayer1UserNameLabel10HyperlinkEnabledBorder.mmPadding Caption40Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeft`mmTop�k mmWidthgBandType	LayerName
Foreground  TppLabel	ppLabel15DesignLayerppDesignLayer1UserNameLabel15HyperlinkEnabledBorder.mmPadding Caption0Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeftb mmTopZ� mmWidth3BandType	LayerName
Foreground  	TppDBText
ppDBText37DesignLayerppDesignLayer1UserNameDBText37HyperlinkEnabledBorder.mmPadding 	DataFieldPlaceUnloadDataPipelineMawbPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameMawbPIPmmHeight�mmLeftʙ  mmTop�k mmWidth�wBandType	LayerName
Foreground   	TppRegion
DHLDataRGNDesignLayerppDesignLayer1UserNameRegion5CaptionRegion5	Pen.StylepsClearmmHeight�:mmLeft�ZmmTop.�  mmWidth� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppLabel	ppLabel82DesignLayerppDesignLayer1UserNameLabel82Border.mmPadding CaptionClearing AgentFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeftAdmmTop@�  mmWidthaIBandType	LayerName
Foreground  TppLabel	ppLabel83DesignLayerppDesignLayer1UserNameLabel83Border.mmPadding CaptionACROPOLIS 13 NICOSIAFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeft8cmmTop� mmWidth�yBandType	LayerName
Foreground  TppLabel	ppLabel84DesignLayerppDesignLayer1UserNameLabel84Border.mmPadding Caption   Αρ. Εξ.:305/C7Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeft#�  mmTop[  mmWidthaIBandType	LayerName
Foreground  TppLabel	ppLabel85DesignLayerppDesignLayer1UserNameLabel85Border.mmPadding CaptionP.O. Box 2002Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeftAdmmTop[  mmWidthPGBandType	LayerName
Foreground   TppSubReportppSubReport1DesignLayerppDesignLayer1UserName
SubReport1	ExpandAllNewPrintJobOutlineSettings.CreateNode	TraverseAllDataDataPipelineNameHawbChargePIPmmHeight@mmLeft mmTopk mmWidth$ BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport1AutoStopDataPipelineHawbChargePIPPrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.DuplexdpNonePrinterSetup.PaperNameLetterPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight�A PrinterSetup.mmPaperWidth�K PrinterSetup.PaperSizeUnitsutMillimetersVersion21.0mmColumnWidth DataPipelineNameHawbChargePIP TppTitleBandppTitleBand1Background.Brush.StylebsClearBorder.mmPadding mmBottomOffset mmHeight mmPrintPosition   TppDetailBandppDetailBand2Background1.Brush.StylebsClearBackground2.Brush.StylebsClearBorder.mmPadding mmBottomOffset mmHeight�mmPrintPosition  	TppDBText
ppDBText17DesignLayerppDesignLayer2UserNameDBText17Border.mmPadding 	DataField
AMOUNT_NETDataPipelineHawbChargePIPDisplayFormat#,0.00;-#,0.00Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameHawbChargePIPmmHeight�mmLeft" mmTop mmWidth7DBandType	LayerNameForeground1  	TppDBText
ppDBText33DesignLayerppDesignLayer2UserNameDBText33	OnGetTextppDBText33GetTextBorder.mmPadding 	DataFieldTARIFF_UNIT_RATEDataPipelineHawbChargePIPDisplayFormat0.00 %Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameHawbChargePIPmmHeight�mmLeftY�  mmTop mmWidth7DBandType	LayerNameForeground1  TppVariableRelievedFLDDesignLayerppDesignLayer2UserNameRelievedFLDAutoSizeBorder.mmPadding BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.Style OnCalcRelievedFLDCalcTransparent	mmHeight�mmLeft�k mmTop mmWidth�BandType	LayerNameForeground1  TppVariable	C_DescFLDDesignLayerppDesignLayer2UserName	C_DescFLDBorder.mmPadding BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.Style OnCalcC_DescFLDCalcTransparent	mmHeight�mmLeft'ammTop	mmWidthHFBandType	LayerNameForeground1   TppSummaryBandppSummaryBand1Background.Brush.StylebsClearBorder.mmPadding mmBottomOffset mmHeight5%mmPrintPosition  TppVariableTotalChargesvvDesignLayerppDesignLayer2UserNameTotalChargesvvBorder.mmPadding BlankWhenZero	CalcOrder DataTypedtDoubleDisplayFormat#,0.00;-#,0.00Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.Style OnCalcTotalChargesvvCalcTextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft[  mmTop+mmWidth7DBandType	LayerNameForeground1  TppLabelcc_isReliefDesignLayerppDesignLayer2UserNamecc_isReliefBorder.mmPadding Captioncc_isReliefFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size	
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeight�mmLeft�i mmTop"mmWidth�BandType	LayerNameForeground1   TppDesignLayersppDesignLayers2 TppDesignLayerppDesignLayer2UserNameForeground1	LayerTypeltBandedIndex      	TppDBTextArea40_2FLDDesignLayerppDesignLayer1UserNameArea40_2FLDBorder.mmPadding 	DataFieldROTATION_NUMBERDataPipelineMawbPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameMawbPIPmmHeight�mmLeft�[ mmTop2� mmWidth�/BandType	LayerName
Foreground  	TppDBTextArea40_4FLDDesignLayerppDesignLayer1UserNameArea40_4FLDBorder.mmPadding 	DataFieldROTATION_YEARDataPipelineMawbPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameMawbPIPmmHeight�mmLeftݡ mmTop2� mmWidth�1BandType	LayerName
Foreground  TppLabelppLabel9DesignLayerppDesignLayer1UserNameLabel9Border.mmPadding Caption"   Αριθμός Δηλωτικού:Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeight�mmLeft�� mmTop2� mmWidthAdBandType	LayerName
Foreground  	TppDBText
ppDBText16DesignLayerppDesignLayer1UserNameDBText16Border.mmPadding 	DataFieldNET_QUANTITYDataPipelineHawbItemPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameHawbItemPIPmmHeightxmmLeft�  mmTop/A mmWidthBandType	LayerName
Foreground  	TppDBText
ppDBText18DesignLayerppDesignLayer1UserNameDBText18Border.mmPadding 	DataFieldDESCRIPTIONDataPipelineMeasurementUnitPIPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameMeasurementUnitPIPmmHeightxmmLeft5� mmTop/A mmWidthF'BandType	LayerName
Foreground  	TppDBText
ppDBText19DesignLayerppDesignLayer1UserNameDBText19Border.mmPadding 	DataFieldCUSTOMS_VALUEDataPipelineHawbPiPDisplayFormat#,0.000;-#,0.000Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	DataPipelineNameHawbPiPmmHeightxmmLeft� mmTop/A mmWidth�5BandType	LayerName
Foreground  	TppDBText
ppDBText23DesignLayerppDesignLayer1UserNameDBText23Border.mmPadding Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTransparent	mmHeightxmmLeft�G mmTop/A mmWidthi+BandType	LayerName
Foreground  TppLabelppLabel2DesignLayerppDesignLayer1UserNameArea40_3FLD1Border.mmPadding Caption-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeight�mmLeft� mmTop2� mmWidth"BandType	LayerName
Foreground  TppLabelppLabel3DesignLayerppDesignLayer1UserNameLabel3Border.mmPadding Caption1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLefth� mmTop/A mmWidth3BandType	LayerName
Foreground  TppLabelppLabel5DesignLayerppDesignLayer1UserNameLabel4Border.mmPadding Caption   ���Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeft; mmTopJ� mmWidth�BandType	LayerName
Foreground  TppLabelppLabel6DesignLayerppDesignLayer1UserNameLabel6Border.mmPadding Caption4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightymmLeft�� mmTop[� mmWidth3BandType	LayerName
Foreground  	TppRegion	ppRegion1DesignLayerppDesignLayer1UserNameRegion3CaptionRegion3	Pen.StylepsClearmmHeight'ammLeft�� mmTop& mmWidth�# BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  	TppDBText
ppDBText24DesignLayerppDesignLayer1UserNameDBText24Border.mmPadding 	DataFieldCUSTOMS_VALUEDataPipelineHawbChargeVATPipDisplayFormat#,0.00;-#,0.00Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameHawbChargeVATPipmmHeightmmLeft7� mmTope' mmWidth�BBandType	LayerName
Foreground  TppLabelppLabel8DesignLayerppDesignLayer1UserNameLabel101Border.mmPadding Caption   Συντελ.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTextAlignmenttaRightJustifiedTransparent	mmHeightxmmLeft�A mmTop� mmWidth>&BandType	LayerName
Foreground  TppLabel	ppLabel10DesignLayerppDesignLayer1UserNameLabel102Border.mmPadding Caption   Ποσό ΦΠΑFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTextAlignmenttaRightJustifiedTransparent	mmHeightxmmLeft(� mmTop� mmWidth�5BandType	LayerName
Foreground  	TppDBText
ppDBText25DesignLayerppDesignLayer1UserNameDBText25Border.mmPadding 	DataFieldTARIFF_UNIT_RATEDataPipelineHawbChargeVATPipDisplayFormat0.00 %Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameHawbChargeVATPipmmHeightmmLeft�$ mmTope' mmWidth�BBandType	LayerName
Foreground  TppLabel	ppLabel11DesignLayerppDesignLayer1UserNameLabel103Border.mmPadding Caption   Εξαίρ.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTextAlignmenttaRightJustifiedTransparent	mmHeightxmmLeftK mmTop�8 mmWidth�BandType	LayerName
Foreground  	TppDBText
ppDBText27DesignLayerppDesignLayer1UserName	DBText402Border.mmPadding 	DataFieldAMOUNT_RELIEVEDDataPipelineHawbChargeVATPipDisplayFormat0.00Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameHawbChargeVATPipmmHeightmmLeft�~ mmTop�8 mmWidth�BBandType	LayerName
Foreground  TppLabel	ppLabel12DesignLayerppDesignLayer1UserNameLabel12Border.mmPadding Caption   ������Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTextAlignmenttaRightJustifiedTransparent	mmHeightxmmLeft�A mmTopeL mmWidth>&BandType	LayerName
Foreground  	TppDBText
ppDBText28DesignLayerppDesignLayer1UserName	DBText403Border.mmPadding 	DataField
AMOUNT_NETDataPipelineHawbChargeVATPipDisplayFormat0.00Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style ParentDataPipelineTextAlignmenttaRightJustifiedTransparent	DataPipelineNameHawbChargeVATPipmmHeightmmLeft�~ mmTop�L mmWidth�BBandType	LayerName
Foreground  TppLabelppLabel7DesignLayerppDesignLayer1UserNameLabel104Border.mmPadding Caption   Αξία ΦΠΑFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTextAlignmenttaRightJustifiedTransparent	mmHeightxmmLeft�� mmTop� mmWidth�0BandType	LayerName
Foreground  TppVariableppVariable2DesignLayerppDesignLayer1UserName	Variable2Border.mmPadding BlankWhenZero	CalcOrderDataTypedtDoubleDisplayFormat#,0.00;-#,0.00Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style OnCalcppVariable2CalcTextAlignmenttaRightJustifiedTransparent	mmHeightxmmLeft\� mmTop% mmWidth�/BandType	LayerName
Foreground   TppVariableCountryOriginFLDDesignLayerppDesignLayer1UserNameCountryOriginFLDBorder.mmPadding BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style OnCalcCountryOriginFLDCalcTransparent	mmHeightxmmLeftk� mmTop�	 mmWidth�WBandType	LayerName
Foreground   TppFooterBandppFooterBand1Background.Brush.StylebsClearBorder.mmPadding mmBottomOffset mmHeight�}mmPrintPosition  	TppDBText	ppDBText7DesignLayerppDesignLayer1UserNameDBText7HyperlinkEnabledBorder.mmPadding 	DataFieldSIGNATORY_NAMEDataPipelineHawbPiPFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	DataPipelineNameHawbPiPmmHeight�mmLeft:�  mmTop>&mmWidth��  BandType	LayerName
Foreground  TppSystemVariableArea54_2FLDDesignLayerppDesignLayer1UserNameArea54_2FLDHyperlinkEnabledBorder.mmPadding DisplayFormat
dd/mm/yyyyFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style Transparent	mmHeightxmmLeft�% mmTopjJmmWidth�7BandType	LayerName
Foreground  TppLabelppLabel4DesignLayerppDesignLayer1UserNameLabel2Border.mmPadding Caption)   ΤΕΛΩΝΕΙΑΚΟΣ ΠΡΑΚΤΟΡΑΣFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.Style -FormFieldSettings.FormSubmitInfo.SubmitMethodfstPostFormFieldSettings.FormFieldTypefftNoneTransparent	mmHeightxmmLeft� mmTop'ammWidth��  BandType	LayerName
Foreground   TppDesignLayersppDesignLayers1 TppDesignLayerppDesignLayer1UserName
Foreground	LayerTypeltBandedIndex    TppParameterListppParameterList1   	TIBCQueryCustomerSQLSQLInsert.StringsINSERT INTO CUSTOMER    (CODE, NAME, FK_DISTRICT_CODE, COMPANY_OR_PERSON, VAT_ID, ADDRESS1, ADDRESS2, ADDRESS3, COMPANY_ID, RECEIPIENT_ID, OTHER_ID, FAX2, TEL_NO1, TEL_NO2, FAX1, COMMENTS, AUTHORIZATION_NUMBER, QUARANTEE_NUMBER, IMPORTER, EXPORTER, RESELLER, CUSTOM_DEALER_NUMBER, FK_OCCUPATION_CODE, FK_CUSTOMER_CATEGORY_CODE, AUTHORITY_TO_AGENT, ACCOUNT_NUMBER, EMAIL_TO_NOTIFY, MOBILE_TO_NOTIFY, IS_NOTIFY_MOBILE, IS_NOTIFY_EMAIL, IS_RECEIVE_NOTIFICATION, AUTHORITY_TO_DHL, IS_CREDIT, ADDRESS_POST_CODE, ADDRESS_CITY, ADDRESS_COUNTRY)VALUES'    (:CODE, :NAME, :FK_DISTRICT_CODE, :COMPANY_OR_PERSON, :VAT_ID, :ADDRESS1, :ADDRESS2, :ADDRESS3, :COMPANY_ID, :RECEIPIENT_ID, :OTHER_ID, :FAX2, :TEL_NO1, :TEL_NO2, :FAX1, :COMMENTS, :AUTHORIZATION_NUMBER, :QUARANTEE_NUMBER, :IMPORTER, :EXPORTER, :RESELLER, :CUSTOM_DEALER_NUMBER, :FK_OCCUPATION_CODE, :FK_CUSTOMER_CATEGORY_CODE, :AUTHORITY_TO_AGENT, :ACCOUNT_NUMBER, :EMAIL_TO_NOTIFY, :MOBILE_TO_NOTIFY, :IS_NOTIFY_MOBILE, :IS_NOTIFY_EMAIL, :IS_RECEIVE_NOTIFICATION, :AUTHORITY_TO_DHL, :IS_CREDIT, :ADDRESS_POST_CODE, :ADDRESS_CITY, :ADDRESS_COUNTRY) SQLDelete.StringsDELETE FROM CUSTOMERWHERE  CODE = :Old_CODE SQLUpdate.StringsUPDATE CUSTOMERSETJ    CODE = :CODE, NAME = :NAME, FK_DISTRICT_CODE = :FK_DISTRICT_CODE, COMPANY_OR_PERSON = :COMPANY_OR_PERSON, VAT_ID = :VAT_ID, ADDRESS1 = :ADDRESS1, ADDRESS2 = :ADDRESS2, ADDRESS3 = :ADDRESS3, COMPANY_ID = :COMPANY_ID, RECEIPIENT_ID = :RECEIPIENT_ID, OTHER_ID = :OTHER_ID, FAX2 = :FAX2, TEL_NO1 = :TEL_NO1, TEL_NO2 = :TEL_NO2, FAX1 = :FAX1, COMMENTS = :COMMENTS, AUTHORIZATION_NUMBER = :AUTHORIZATION_NUMBER, QUARANTEE_NUMBER = :QUARANTEE_NUMBER, IMPORTER = :IMPORTER, EXPORTER = :EXPORTER, RESELLER = :RESELLER, CUSTOM_DEALER_NUMBER = :CUSTOM_DEALER_NUMBER, FK_OCCUPATION_CODE = :FK_OCCUPATION_CODE, FK_CUSTOMER_CATEGORY_CODE = :FK_CUSTOMER_CATEGORY_CODE, AUTHORITY_TO_AGENT = :AUTHORITY_TO_AGENT, ACCOUNT_NUMBER = :ACCOUNT_NUMBER, EMAIL_TO_NOTIFY = :EMAIL_TO_NOTIFY, MOBILE_TO_NOTIFY = :MOBILE_TO_NOTIFY, IS_NOTIFY_MOBILE = :IS_NOTIFY_MOBILE, IS_NOTIFY_EMAIL = :IS_NOTIFY_EMAIL, IS_RECEIVE_NOTIFICATION = :IS_RECEIVE_NOTIFICATION, AUTHORITY_TO_DHL = :AUTHORITY_TO_DHL, IS_CREDIT = :IS_CREDIT, ADDRESS_POST_CODE = :ADDRESS_POST_CODE, ADDRESS_CITY = :ADDRESS_CITY, ADDRESS_COUNTRY = :ADDRESS_COUNTRYWHERE  CODE = :Old_CODE SQLRefresh.Strings  SELECT CODE, NAME, FK_DISTRICT_CODE, COMPANY_OR_PERSON, VAT_ID, ADDRESS1, ADDRESS2, ADDRESS3, COMPANY_ID, RECEIPIENT_ID, OTHER_ID, FAX2, TEL_NO1, TEL_NO2, FAX1, COMMENTS, AUTHORIZATION_NUMBER, QUARANTEE_NUMBER, IMPORTER, EXPORTER, RESELLER, CUSTOM_DEALER_NUMBER, FK_OCCUPATION_CODE, FK_CUSTOMER_CATEGORY_CODE, AUTHORITY_TO_AGENT, ACCOUNT_NUMBER, EMAIL_TO_NOTIFY, MOBILE_TO_NOTIFY, IS_NOTIFY_MOBILE, IS_NOTIFY_EMAIL, IS_RECEIVE_NOTIFICATION, AUTHORITY_TO_DHL, IS_CREDIT, ADDRESS_POST_CODE, ADDRESS_CITY, ADDRESS_COUNTRY FROM CUSTOMERWHERE  CODE = :CODE SQLLock.StringsSELECT NULL FROM CUSTOMERWHERECODE = :Old_CODEFOR UPDATE WITH LOCK SQLRecCount.StringsSELECT COUNT(*) FROM (SELECT 1 AS C  FROM CUSTOMER    ) q 
ConnectionClairDML.CabCOnnectionTransactionClairDML.UsedForReadOnlyTransSQL.Stringsselect * from Customer MasterFieldsFK_CUSTOMER_CODEDetailFieldsCODEMasterSourceHawbSRCReadOnly	Active	LefthTop� 	ParamDataDataType	ftIntegerNameFK_CUSTOMER_CODE	ParamTypeptInputValue   TStringFieldCustomerSQLNAME	FieldNameNAMEOriginCUSTOMER.NAMESizeP  TStringFieldCustomerSQLADDRESS1	FieldNameADDRESS1OriginCUSTOMER.ADDRESS1Size2  TStringFieldCustomerSQLADDRESS2	FieldNameADDRESS2OriginCUSTOMER.ADDRESS2Size2  TStringFieldCustomerSQLADDRESS3	FieldNameADDRESS3OriginCUSTOMER.ADDRESS3Size2  TStringFieldCustomerSQLVAT_ID	FieldNameVAT_IDOriginCUSTOMER.VAT_IDSize
  TStringFieldCustomerSQLCOMPANY_ID	FieldName
COMPANY_IDOriginCUSTOMER.COMPANY_IDSize
  TStringFieldCustomerSQLRECEIPIENT_ID	FieldNameRECEIPIENT_IDOriginCUSTOMER.RECEIPIENT_IDSize
  TStringFieldCustomerSQLOTHER_ID	FieldNameOTHER_IDOriginCUSTOMER.OTHER_IDSize  TStringFieldCustomerSQLTEL_NO1	FieldNameTEL_NO1OriginCUSTOMER.TEL_NO1Size
  TStringFieldCustomerSQLTEL_NO2	FieldNameTEL_NO2OriginCUSTOMER.TEL_NO2Size
  TStringFieldCustomerSQLFAX1	FieldNameFAX1OriginCUSTOMER.FAX1Size
  TStringFieldCustomerSQLFAX2	FieldNameFAX2OriginCUSTOMER.FAX2Size
  TStringFieldCustomerSQLFK_DISTRICT_CODE	FieldNameFK_DISTRICT_CODEOriginCUSTOMER.FK_DISTRICT_CODESize  TStringFieldCustomerSQLCOMMENTS	FieldNameCOMMENTSOriginCUSTOMER.COMMENTSSize�   TStringFieldCustomerSQLAUTHORIZATION_NUMBER	FieldNameAUTHORIZATION_NUMBEROriginCUSTOMER.AUTHORIZATION_NUMBERSize  TStringFieldCustomerSQLQUARANTEE_NUMBER	FieldNameQUARANTEE_NUMBEROriginCUSTOMER.QUARANTEE_NUMBERSize
  TStringFieldCustomerSQLIMPORTER	FieldNameIMPORTEROriginCUSTOMER.IMPORTERSize  TStringFieldCustomerSQLEXPORTER	FieldNameEXPORTEROriginCUSTOMER.EXPORTERSize  TStringFieldCustomerSQLRESELLER	FieldNameRESELLEROriginCUSTOMER.RESELLERSize  TStringFieldCustomerSQLCUSTOM_DEALER_NUMBER	FieldNameCUSTOM_DEALER_NUMBEROriginCUSTOMER.CUSTOM_DEALER_NUMBERSize
  TStringFieldCustomerSQLFK_OCCUPATION_CODE	FieldNameFK_OCCUPATION_CODEOriginCUSTOMER.FK_OCCUPATION_CODESize  TStringField$CustomerSQLFK_CUSTOMER_CATEGORY_CODE	FieldNameFK_CUSTOMER_CATEGORY_CODEOrigin"CUSTOMER.FK_CUSTOMER_CATEGORY_CODESize  TStringFieldCustomerSQLAUTHORITY_TO_AGENT	FieldNameAUTHORITY_TO_AGENTOriginCUSTOMER.AUTHORITY_TO_AGENTSize
  TStringFieldCustomerSQLCOMPANY_OR_PERSON	FieldNameCOMPANY_OR_PERSONOriginCUSTOMER.COMPANY_OR_PERSONSize  TIntegerFieldCustomerSQLCODE	FieldNameCODEOriginCUSTOMER.CODE  TIntegerFieldCustomerSQLACCOUNT_NUMBER	FieldNameACCOUNT_NUMBEROriginCUSTOMER.ACCOUNT_NUMBER  TStringFieldCustomerSQLEMAIL_TO_NOTIFY	FieldNameEMAIL_TO_NOTIFYSizeP  TStringFieldCustomerSQLMOBILE_TO_NOTIFY	FieldNameMOBILE_TO_NOTIFYSizeP  TStringFieldCustomerSQLIS_NOTIFY_MOBILE	FieldNameIS_NOTIFY_MOBILE	FixedChar	Size  TStringFieldCustomerSQLIS_NOTIFY_EMAIL	FieldNameIS_NOTIFY_EMAIL	FixedChar	Size  TStringField"CustomerSQLIS_RECEIVE_NOTIFICATION	FieldNameIS_RECEIVE_NOTIFICATION	FixedChar	Size  TStringFieldCustomerSQLAUTHORITY_TO_DHL	FieldNameAUTHORITY_TO_DHLSize
  TStringFieldCustomerSQLIS_CREDIT	FieldName	IS_CREDIT	FixedChar	Size  TStringFieldCustomerSQLADDRESS_POST_CODE	FieldNameADDRESS_POST_CODESize2  TStringFieldCustomerSQLADDRESS_CITY	FieldNameADDRESS_CITYSize2  TStringFieldCustomerSQLADDRESS_COUNTRY	FieldNameADDRESS_COUNTRYSize2   TppBDEPipelineCustomerPIP
DataSourceCustomerSRCUserNameCustomerPIPLeft@Top� MasterDataPipelineNameHawbPiP TppFieldCustomerPIPppField1
FieldAliasNAME	FieldNameNAMEFieldLengthPDisplayWidthPPosition   TppFieldCustomerPIPppField2
FieldAliasADDRESS1	FieldNameADDRESS1FieldLength2DisplayWidth2Position  TppFieldCustomerPIPppField3
FieldAliasADDRESS2	FieldNameADDRESS2FieldLength2DisplayWidth2Position  TppFieldCustomerPIPppField4
FieldAliasADDRESS3	FieldNameADDRESS3FieldLength2DisplayWidth2Position  TppFieldCustomerPIPppField5
FieldAliasVAT_ID	FieldNameVAT_IDFieldLength
DisplayWidth
Position  TppFieldCustomerPIPppField6
FieldAlias
COMPANY_ID	FieldName
COMPANY_IDFieldLength
DisplayWidth
Position  TppFieldCustomerPIPppField7
FieldAliasRECEIPIENT_ID	FieldNameRECEIPIENT_IDFieldLength
DisplayWidth
Position  TppFieldCustomerPIPppField8
FieldAliasOTHER_ID	FieldNameOTHER_IDFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField9
FieldAliasTEL_NO1	FieldNameTEL_NO1FieldLength
DisplayWidth
Position  TppFieldCustomerPIPppField10
FieldAliasTEL_NO2	FieldNameTEL_NO2FieldLength
DisplayWidth
Position	  TppFieldCustomerPIPppField11
FieldAliasFAX1	FieldNameFAX1FieldLength
DisplayWidth
Position
  TppFieldCustomerPIPppField12
FieldAliasFAX2	FieldNameFAX2FieldLength
DisplayWidth
Position  TppFieldCustomerPIPppField13
FieldAliasFK_DISTRICT_CODE	FieldNameFK_DISTRICT_CODEFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField14
FieldAliasCOMMENTS	FieldNameCOMMENTSFieldLength� DisplayWidth� Position  TppFieldCustomerPIPppField15
FieldAliasAUTHORIZATION_NUMBER	FieldNameAUTHORIZATION_NUMBERFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField16
FieldAliasQUARANTEE_NUMBER	FieldNameQUARANTEE_NUMBERFieldLength
DisplayWidth
Position  TppFieldCustomerPIPppField17
FieldAliasIMPORTER	FieldNameIMPORTERFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField18
FieldAliasEXPORTER	FieldNameEXPORTERFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField19
FieldAliasRESELLER	FieldNameRESELLERFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField20
FieldAliasCUSTOM_DEALER_NUMBER	FieldNameCUSTOM_DEALER_NUMBERFieldLength
DisplayWidth
Position  TppFieldCustomerPIPppField21
FieldAliasFK_OCCUPATION_CODE	FieldNameFK_OCCUPATION_CODEFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField22
FieldAliasFK_CUSTOMER_CATEGORY_CODE	FieldNameFK_CUSTOMER_CATEGORY_CODEFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField23
FieldAliasAUTHORITY_TO_AGENT	FieldNameAUTHORITY_TO_AGENTFieldLength
DisplayWidth
Position  TppFieldCustomerPIPppField24
FieldAliasCOMPANY_OR_PERSON	FieldNameCOMPANY_OR_PERSONFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField25	AlignmenttaRightJustify
FieldAliasCODE	FieldNameCODEFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldCustomerPIPppField26	AlignmenttaRightJustify
FieldAliasACCOUNT_NUMBER	FieldNameACCOUNT_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldCustomerPIPppField27
FieldAliasEMAIL_TO_NOTIFY	FieldNameEMAIL_TO_NOTIFYFieldLengthPDisplayWidthPPosition  TppFieldCustomerPIPppField28
FieldAliasMOBILE_TO_NOTIFY	FieldNameMOBILE_TO_NOTIFYFieldLengthPDisplayWidthPPosition  TppFieldCustomerPIPppField29
FieldAliasIS_NOTIFY_MOBILE	FieldNameIS_NOTIFY_MOBILEFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField30
FieldAliasIS_NOTIFY_EMAIL	FieldNameIS_NOTIFY_EMAILFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField31
FieldAliasIS_RECEIVE_NOTIFICATION	FieldNameIS_RECEIVE_NOTIFICATIONFieldLengthDisplayWidthPosition  TppFieldCustomerPIPppField32
FieldAliasAUTHORITY_TO_DHL	FieldNameAUTHORITY_TO_DHLFieldLength
DisplayWidth
Position  TppFieldCustomerPIPppField33
FieldAlias	IS_CREDIT	FieldName	IS_CREDITFieldLengthDisplayWidthPosition   TppFieldCustomerPIPppField34
FieldAliasADDRESS_POST_CODE	FieldNameADDRESS_POST_CODEFieldLength2DisplayWidth2Position!  TppFieldCustomerPIPppField35
FieldAliasADDRESS_CITY	FieldNameADDRESS_CITYFieldLength2DisplayWidth2Position"  TppFieldCustomerPIPppField36
FieldAliasADDRESS_COUNTRY	FieldNameADDRESS_COUNTRYFieldLength2DisplayWidth2Position#   TppBDEPipelineClearanceTypePIP
DataSourceClearanceTypeSRCUserNameClearanceTypePIPLeftPTopMasterDataPipelineNameHawbPiP TppFieldClearanceTypePIPppField1
FieldAliasCODE	FieldNameCODEFieldLengthDisplayWidthPosition   TppFieldClearanceTypePIPppField2
FieldAliasDESCRIPTION	FieldNameDESCRIPTIONFieldLengthDisplayWidthPosition  TppFieldClearanceTypePIPppField3
FieldAliasFK_TARIFF_GROUP	FieldNameFK_TARIFF_GROUPFieldLengthDisplayWidthPosition  TppFieldClearanceTypePIPppField4
FieldAliasIS_VAT_APPLY	FieldNameIS_VAT_APPLYFieldLengthDisplayWidthPosition  TppFieldClearanceTypePIPppField5	AlignmenttaRightJustify
FieldAliasORDER_NUMBER	FieldNameORDER_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position   	TIBCQueryCountryOriginSQLSQLInsert.StringsINSERT INTO COUNTRYa  (NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CURRENCY_CODE, GREEK_NAME, XML_COUNTRY)VALUESj  (:NUMBER, :CODE, :NAME, :EU_MEMBER, :FREIGHT05, :FREIGHT6, :FK_CURRENCY_CODE, :GREEK_NAME, :XML_COUNTRY) SQLDelete.StringsDELETE FROM COUNTRYWHERE  NUMBER = :Old_NUMBER SQLUpdate.StringsUPDATE COUNTRYSET�  NUMBER = :NUMBER, CODE = :CODE, NAME = :NAME, EU_MEMBER = :EU_MEMBER, FREIGHT05 = :FREIGHT05, FREIGHT6 = :FREIGHT6, FK_CURRENCY_CODE = :FK_CURRENCY_CODE, GREEK_NAME = :GREEK_NAME, XML_COUNTRY = :XML_COUNTRYWHERE  NUMBER = :Old_NUMBER SQLRefresh.StringsqSELECT NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CURRENCY_CODE, GREEK_NAME, XML_COUNTRY FROM COUNTRYWHERE  NUMBER = :NUMBER SQLLock.StringsSELECT NULL FROM COUNTRYWHERENUMBER = :Old_NUMBERFOR UPDATE WITH LOCK SQLRecCount.StringsSELECT COUNT(*) FROM (SELECT 1 AS C  FROM COUNTRY    ) q 
ConnectionClairDML.CabCOnnectionTransactionClairDML.UsedForReadOnlyTransSQL.Strings,select * from country where number = :number ReadOnly	Left�Top�	ParamDataDataType	ftUnknownNamenumberValue    	TIBCQueryCountryMadeInSQLSQLInsert.StringsINSERT INTO COUNTRYa  (NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CURRENCY_CODE, GREEK_NAME, XML_COUNTRY)VALUESj  (:NUMBER, :CODE, :NAME, :EU_MEMBER, :FREIGHT05, :FREIGHT6, :FK_CURRENCY_CODE, :GREEK_NAME, :XML_COUNTRY) SQLDelete.StringsDELETE FROM COUNTRYWHERE  NUMBER = :Old_NUMBER SQLUpdate.StringsUPDATE COUNTRYSET�  NUMBER = :NUMBER, CODE = :CODE, NAME = :NAME, EU_MEMBER = :EU_MEMBER, FREIGHT05 = :FREIGHT05, FREIGHT6 = :FREIGHT6, FK_CURRENCY_CODE = :FK_CURRENCY_CODE, GREEK_NAME = :GREEK_NAME, XML_COUNTRY = :XML_COUNTRYWHERE  NUMBER = :Old_NUMBER SQLRefresh.StringsqSELECT NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CURRENCY_CODE, GREEK_NAME, XML_COUNTRY FROM COUNTRYWHERE  NUMBER = :NUMBER SQLLock.StringsSELECT NULL FROM COUNTRYWHERENUMBER = :Old_NUMBERFOR UPDATE WITH LOCK SQLRecCount.StringsSELECT COUNT(*) FROM (SELECT 1 AS C  FROM COUNTRY    ) q 
ConnectionClairDML.CabCOnnectionTransactionClairDML.UsedForReadOnlyTransSQL.Strings,select * from country where number = :number     ReadOnly	Left`Toph	ParamDataDataType	ftUnknownNamenumberValue    	TIBCQueryCountrySentSQLSQLInsert.StringsINSERT INTO COUNTRYa  (NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CURRENCY_CODE, GREEK_NAME, XML_COUNTRY)VALUESj  (:NUMBER, :CODE, :NAME, :EU_MEMBER, :FREIGHT05, :FREIGHT6, :FK_CURRENCY_CODE, :GREEK_NAME, :XML_COUNTRY) SQLDelete.StringsDELETE FROM COUNTRYWHERE  NUMBER = :Old_NUMBER SQLUpdate.StringsUPDATE COUNTRYSET�  NUMBER = :NUMBER, CODE = :CODE, NAME = :NAME, EU_MEMBER = :EU_MEMBER, FREIGHT05 = :FREIGHT05, FREIGHT6 = :FREIGHT6, FK_CURRENCY_CODE = :FK_CURRENCY_CODE, GREEK_NAME = :GREEK_NAME, XML_COUNTRY = :XML_COUNTRYWHERE  NUMBER = :Old_NUMBER SQLRefresh.StringsqSELECT NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CURRENCY_CODE, GREEK_NAME, XML_COUNTRY FROM COUNTRYWHERE  NUMBER = :NUMBER SQLLock.StringsSELECT NULL FROM COUNTRYWHERENUMBER = :Old_NUMBERFOR UPDATE WITH LOCK SQLRecCount.StringsSELECT COUNT(*) FROM (SELECT 1 AS C  FROM COUNTRY    ) q 
ConnectionClairDML.CabCOnnectionTransactionClairDML.UsedForReadOnlyTransSQL.Strings,select * from country where number = :number     ReadOnly	LeftXTop�	ParamDataDataType	ftUnknownNamenumberValue    	TIBCQueryClearingPortSQL
ConnectionClairDML.CabCOnnectionTransactionClairDML.UsedForReadOnlyTransSQL.Strings0select * from Port where code= :fk_port_clearing ReadOnly	Active	LeftXTop�	ParamDataDataType	ftUnknownNamefk_port_clearingValue   TStringFieldClearingPortSQLDESCRIPTION	FieldNameDESCRIPTIONOriginPORT.DESCRIPTIONSize  TStringFieldClearingPortSQLGREEK_DESCR	FieldNameGREEK_DESCROriginPORT.GREEK_DESCRSize2  TStringField ClearingPortSQLSHORT_GREEK_DESCR	FieldNameSHORT_GREEK_DESCROriginPORT.SHORT_GREEK_DESCRSize
  TIntegerFieldClearingPortSQLCODE	FieldNameCODEOrigin	PORT.CODE   TppBDEPipelineClearingPortPIP
DataSourceClearingPortSRCUserNameClearingPortPIPLeftXTop� TppFieldClearingPortPIPppField1
FieldAliasDESCRIPTION	FieldNameDESCRIPTIONFieldLengthDisplayWidthPosition   TppFieldClearingPortPIPppField2
FieldAliasGREEK_DESCR	FieldNameGREEK_DESCRFieldLength2DisplayWidth2Position  TppFieldClearingPortPIPppField3
FieldAliasSHORT_GREEK_DESCR	FieldNameSHORT_GREEK_DESCRFieldLength
DisplayWidth
Position  TppFieldClearingPortPIPppField4	AlignmenttaRightJustify
FieldAliasCODE	FieldNameCODEFieldLength DataType	dtIntegerDisplayWidth
Position   	TIBCQuerySenderInvoiceSQL
ConnectionClairDML.CabCOnnectionTransactionClairDML.UsedForReadOnlyTransSQL.Strings>Select si.*,cu.currency_code, cu.country_code as SICountryCodefrom     sender_Invoice SI left outer join     Currency cuon SI.currency=cu.currency_code MasterFieldsSERIAL_NUMBERDetailFieldsFK_HAWB_SERIALMasterSourceHawbSRCReadOnly	Active	LeftPTop	ParamDataDataType	ftIntegerNameSERIAL_NUMBER	ParamTypeptInputValue   TIntegerFieldSenderInvoiceSQLFK_HAWB_SERIAL	FieldNameFK_HAWB_SERIALOriginSENDER_INVOICE.FK_HAWB_SERIAL  TIntegerFieldSenderInvoiceSQLINVOICE_SERIAL	FieldNameINVOICE_SERIALOriginSENDER_INVOICE.INVOICE_SERIAL  TStringFieldSenderInvoiceSQLINVOICE_NUMBER	FieldNameINVOICE_NUMBEROriginSENDER_INVOICE.INVOICE_NUMBERSizeP  TStringFieldSenderInvoiceSQLFK_HAWB_ID	FieldName
FK_HAWB_IDOriginSENDER_INVOICE.FK_HAWB_IDSize
  TFloatFieldSenderInvoiceSQLINVOICE_AMOUNT	FieldNameINVOICE_AMOUNTOriginSENDER_INVOICE.INVOICE_AMOUNT  TFloatFieldSenderInvoiceSQLFREIGHT_AMOUNT	FieldNameFREIGHT_AMOUNTOriginSENDER_INVOICE.FREIGHT_AMOUNT  TFloatFieldSenderInvoiceSQLDISCOUNT_AMOUNT	FieldNameDISCOUNT_AMOUNTOriginSENDER_INVOICE.DISCOUNT_AMOUNT  TFloatField SenderInvoiceSQLINSURANCE_AMOUNT	FieldNameINSURANCE_AMOUNTOriginSENDER_INVOICE.INSURANCE_AMOUNT  TFloatField$SenderInvoiceSQLOTHER_CHARGES_AMOUNT	FieldNameOTHER_CHARGES_AMOUNTOrigin#SENDER_INVOICE.OTHER_CHARGES_AMOUNT  TFloatFieldSenderInvoiceSQLTOTAL_AMOUNT	FieldNameTOTAL_AMOUNTOriginSENDER_INVOICE.TOTAL_AMOUNT  TStringFieldSenderInvoiceSQLCURRENCY	FieldNameCURRENCYOriginSENDER_INVOICE.CURRENCYSize  TFloatFieldSenderInvoiceSQLEXCHANGE_RATE	FieldNameEXCHANGE_RATEOriginSENDER_INVOICE.EXCHANGE_RATE  TFloatFieldSenderInvoiceSQLFACTOR	FieldNameFACTOROriginSENDER_INVOICE.FACTOR  TFloatField"SenderInvoiceSQLFREIGHT_CYP_AMOUNT	FieldNameFREIGHT_CYP_AMOUNTOrigin!SENDER_INVOICE.FREIGHT_CYP_AMOUNT  TIntegerFieldSenderInvoiceSQLFK_MAWB_SERIAL	FieldNameFK_MAWB_SERIALOriginSENDER_INVOICE.FK_MAWB_SERIAL  TStringFieldSenderInvoiceSQLIS_VALID	FieldNameIS_VALIDOriginSENDER_INVOICE.IS_VALIDSize  TIntegerField$SenderInvoiceSQLNUMBER_OF_HAWB_ITEMS	FieldNameNUMBER_OF_HAWB_ITEMSOrigin#SENDER_INVOICE.NUMBER_OF_HAWB_ITEMS  TFloatField#SenderInvoiceSQLPRE_DISCOUNT_AMOUNT	FieldNamePRE_DISCOUNT_AMOUNTOrigin"SENDER_INVOICE.PRE_DISCOUNT_AMOUNT  TFloatFieldSenderInvoiceSQLDISCOUNT_RATE	FieldNameDISCOUNT_RATEOriginSENDER_INVOICE.DISCOUNT_RATE  TFloatFieldSenderInvoiceSQLCUSTOMS_VALUE	FieldNameCUSTOMS_VALUEOrigin$CLAIRDB.SENDER_INVOICE.CUSTOMS_VALUE  TFloatFieldSenderInvoiceSQLFACTOR_NUMERIC	FieldNameFACTOR_NUMERIC  TStringFieldSenderInvoiceSQLCURRENCY_CODE	FieldNameCURRENCY_CODEReadOnly		FixedChar	Size  TIntegerFieldSenderInvoiceSQLSICOUNTRYCODE	FieldNameSICOUNTRYCODEReadOnly	   TppBDEPipelineSenderInvoicePIP
DataSourceSenderInvoiceSRCUserNameSenderInvoicePIPLeftHTopMasterDataPipelineNameHawbPiP TppFieldSenderInvoicePIPppField1	AlignmenttaRightJustify
FieldAliasFK_HAWB_SERIAL	FieldNameFK_HAWB_SERIALFieldLength DataType	dtIntegerDisplayWidth
Position   TppFieldSenderInvoicePIPppField2	AlignmenttaRightJustify
FieldAliasINVOICE_SERIAL	FieldNameINVOICE_SERIALFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldSenderInvoicePIPppField3
FieldAliasINVOICE_NUMBER	FieldNameINVOICE_NUMBERFieldLengthDisplayWidthPosition  TppFieldSenderInvoicePIPppField4
FieldAlias
FK_HAWB_ID	FieldName
FK_HAWB_IDFieldLength
DisplayWidth
Position  TppFieldSenderInvoicePIPppField5	AlignmenttaRightJustify
FieldAliasINVOICE_AMOUNT	FieldNameINVOICE_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField6	AlignmenttaRightJustify
FieldAliasFREIGHT_AMOUNT	FieldNameFREIGHT_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField7	AlignmenttaRightJustify
FieldAliasDISCOUNT_AMOUNT	FieldNameDISCOUNT_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField8	AlignmenttaRightJustify
FieldAliasINSURANCE_AMOUNT	FieldNameINSURANCE_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField9	AlignmenttaRightJustify
FieldAliasOTHER_CHARGES_AMOUNT	FieldNameOTHER_CHARGES_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField10	AlignmenttaRightJustify
FieldAliasTOTAL_AMOUNT	FieldNameTOTAL_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position	  TppFieldSenderInvoicePIPppField11
FieldAliasCURRENCY	FieldNameCURRENCYFieldLengthDisplayWidthPosition
  TppFieldSenderInvoicePIPppField12	AlignmenttaRightJustify
FieldAliasEXCHANGE_RATE	FieldNameEXCHANGE_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField13	AlignmenttaRightJustify
FieldAliasFACTOR	FieldNameFACTORFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField14	AlignmenttaRightJustify
FieldAliasFREIGHT_CYP_AMOUNT	FieldNameFREIGHT_CYP_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField15	AlignmenttaRightJustify
FieldAliasFK_MAWB_SERIAL	FieldNameFK_MAWB_SERIALFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldSenderInvoicePIPppField16
FieldAliasIS_VALID	FieldNameIS_VALIDFieldLengthDisplayWidthPosition  TppFieldSenderInvoicePIPppField17	AlignmenttaRightJustify
FieldAliasNUMBER_OF_HAWB_ITEMS	FieldNameNUMBER_OF_HAWB_ITEMSFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldSenderInvoicePIPppField18	AlignmenttaRightJustify
FieldAliasPRE_DISCOUNT_AMOUNT	FieldNamePRE_DISCOUNT_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField19	AlignmenttaRightJustify
FieldAliasDISCOUNT_RATE	FieldNameDISCOUNT_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField20	AlignmenttaRightJustify
FieldAliasCUSTOMS_VALUE	FieldNameCUSTOMS_VALUEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField21	AlignmenttaRightJustify
FieldAliasFACTOR_NUMERIC	FieldNameFACTOR_NUMERICFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldSenderInvoicePIPppField22
FieldAliasCURRENCY_CODE	FieldNameCURRENCY_CODEFieldLengthDisplayWidthPosition  TppFieldSenderInvoicePIPppField23	AlignmenttaRightJustify
FieldAliasSICOUNTRYCODE	FieldNameSICOUNTRYCODEFieldLength DataType	dtIntegerDisplayWidth
Position   	TIBCTablePortTBL	TableNamePORTReadOnly	
ConnectionClairDML.CabCOnnectionActive	LeftToph TStringFieldPortTBLDESCRIPTION	FieldNameDESCRIPTIONSize  TStringFieldPortTBLGREEK_DESCR	FieldNameGREEK_DESCRSize2  TStringFieldPortTBLSHORT_GREEK_DESCR	FieldNameSHORT_GREEK_DESCRSize
  TIntegerFieldPortTBLCODE	FieldNameCODERequired	   	TIBCTable
CountryTBL	TableNameCOUNTRYReadOnly	
ConnectionClairDML.CabCOnnectionActive	Left�Top� TIntegerFieldCountryTBLNUMBER	FieldNameNUMBERRequired	  TStringFieldCountryTBLCODE	FieldNameCODERequired	Size  TStringFieldCountryTBLNAME	FieldNameNAMESize(  TStringFieldCountryTBLEU_MEMBER	FieldName	EU_MEMBERRequired	Size  TIntegerFieldCountryTBLFREIGHT05	FieldName	FREIGHT05  TIntegerFieldCountryTBLFREIGHT6	FieldNameFREIGHT6  TStringFieldCountryTBLFK_CURRENCY_CODE	FieldNameFK_CURRENCY_CODESize  TStringFieldCountryTBLGREEK_NAME	FieldName
GREEK_NAMESize(   	TIBCQueryMeasurementUnitSQLSQLInsert.StringsINSERT INTO UNIT_MEASURE<  (SERIAL_NUMBER, UNIT, DESCRIPTION, ORDER_NUMBER, XML_CODE)VALUESA  (:SERIAL_NUMBER, :UNIT, :DESCRIPTION, :ORDER_NUMBER, :XML_CODE) SQLDelete.StringsDELETE FROM UNIT_MEASUREWHERE$  SERIAL_NUMBER = :Old_SERIAL_NUMBER SQLUpdate.StringsUPDATE UNIT_MEASURESET~  SERIAL_NUMBER = :SERIAL_NUMBER, UNIT = :UNIT, DESCRIPTION = :DESCRIPTION, ORDER_NUMBER = :ORDER_NUMBER, XML_CODE = :XML_CODEWHERE$  SERIAL_NUMBER = :Old_SERIAL_NUMBER SQLRefresh.StringsQSELECT SERIAL_NUMBER, UNIT, DESCRIPTION, ORDER_NUMBER, XML_CODE FROM UNIT_MEASUREWHERE   SERIAL_NUMBER = :SERIAL_NUMBER SQLLock.StringsSELECT NULL FROM UNIT_MEASUREWHERE"SERIAL_NUMBER = :Old_SERIAL_NUMBERFOR UPDATE WITH LOCK SQLRecCount.StringsSELECT COUNT(*) FROM ( SELECT 1 AS C  FROM UNIT_MEASURE    ) q 
ConnectionClairDML.CabCOnnectionTransactionClairDML.UsedForReadOnlyTransSQL.Stringsselect * from UNIT_Measure MasterFieldsUNITDetailFieldsUNITMasterSourceHawbItemSRCReadOnly	Active	Left8Topx	ParamDataDataTypeftFixedCharNameUNIT	ParamTypeptInputValue   TIntegerFieldMeasurementUnitSQLSERIAL_NUMBER	FieldNameSERIAL_NUMBERRequired	  TStringFieldMeasurementUnitSQLUNIT	FieldNameUNIT	FixedChar	Size  TStringFieldMeasurementUnitSQLDESCRIPTION	FieldNameDESCRIPTION	FixedChar	Size  TFloatFieldMeasurementUnitSQLORDER_NUMBER	FieldNameORDER_NUMBER  TStringFieldMeasurementUnitSQLXML_CODE	FieldNameXML_CODE	FixedChar	Size   TppDBPipelineMeasurementUnitPIP
DataSourceMeasurementUnitSRCUserNameMeasurementUnitPIPLeft� ToppMasterDataPipelineNameHawbItemPIP TppFieldMeasurementUnitPIPppField1	AlignmenttaRightJustify
FieldAliasSERIAL_NUMBER	FieldNameSERIAL_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position   TppFieldMeasurementUnitPIPppField2
FieldAliasUNIT	FieldNameUNITFieldLengthDisplayWidthPosition  TppFieldMeasurementUnitPIPppField3
FieldAliasDESCRIPTION	FieldNameDESCRIPTIONFieldLengthDisplayWidthPosition  TppFieldMeasurementUnitPIPppField4	AlignmenttaRightJustify
FieldAliasORDER_NUMBER	FieldNameORDER_NUMBERFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldMeasurementUnitPIPppField5
FieldAliasXML_CODE	FieldNameXML_CODEFieldLengthDisplayWidthPosition   TIBCDataSourceMeasurementUnitSRCDataSetMeasurementUnitSQLLeft� Topx  TppDBPipelineHawbItemPIP
DataSourceHawbItemSRCUserNameHawbItemPIPLeftXTophMasterDataPipelineNameHawbPiP TppFieldHawbItemPIPppField1	AlignmenttaRightJustify
FieldAliasSERIAL_NUMBER	FieldNameSERIAL_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position   TppFieldHawbItemPIPppField2	AlignmenttaRightJustify
FieldAliasFK_HAWB_SERIAL	FieldNameFK_HAWB_SERIALFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbItemPIPppField3	AlignmenttaRightJustify
FieldAliasFK_COUNTRY_ORIGIN	FieldNameFK_COUNTRY_ORIGINFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbItemPIPppField4
FieldAliasDESCRIPTION	FieldNameDESCRIPTIONFieldLength(DisplayWidth(Position  TppFieldHawbItemPIPppField5
FieldAliasFK_RELIEF_CODE	FieldNameFK_RELIEF_CODEFieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField6
FieldAliasFK_IMPORT_TYPE	FieldNameFK_IMPORT_TYPEFieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField7	AlignmenttaRightJustify
FieldAliasINVOICE_VALUE	FieldNameINVOICE_VALUEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbItemPIPppField8
FieldAlias	DUTY_TYPE	FieldName	DUTY_TYPEFieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField9
FieldAliasTARIFF_DESCRIPTION	FieldNameTARIFF_DESCRIPTIONFieldLength2DisplayWidth2Position  TppFieldHawbItemPIPppField10	AlignmenttaRightJustify
FieldAliasNET_QUANTITY	FieldNameNET_QUANTITYFieldLength DataType	dtIntegerDisplayWidth
Position	  TppFieldHawbItemPIPppField11	AlignmenttaRightJustify
FieldAliasIMPORT_DUTY_RATE	FieldNameIMPORT_DUTY_RATEFieldLength DataTypedtDoubleDisplayWidth
Position
  TppFieldHawbItemPIPppField12	AlignmenttaRightJustify
FieldAliasRELIEVED_IMPORT_DUTY	FieldNameRELIEVED_IMPORT_DUTYFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbItemPIPppField13	AlignmenttaRightJustify
FieldAliasEXCISE_DUTY_RATE	FieldNameEXCISE_DUTY_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbItemPIPppField14	AlignmenttaRightJustify
FieldAliasEXCISE_RELIEVED	FieldNameEXCISE_RELIEVEDFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbItemPIPppField15	AlignmenttaRightJustify
FieldAliasTRL_RATE	FieldNameTRL_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbItemPIPppField16	AlignmenttaRightJustify
FieldAliasTRL_RELEIVED	FieldNameTRL_RELEIVEDFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbItemPIPppField17	AlignmenttaRightJustify
FieldAliasVAT_RATE	FieldNameVAT_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbItemPIPppField18	AlignmenttaRightJustify
FieldAliasVAT_RELEIVED	FieldNameVAT_RELEIVEDFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbItemPIPppField19	AlignmenttaRightJustify
FieldAliasCURRENCY_RATE	FieldNameCURRENCY_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbItemPIPppField20
FieldAliasCURRENCY	FieldNameCURRENCYFieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField21	AlignmenttaRightJustify
FieldAliasFK_MAWB	FieldNameFK_MAWBFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbItemPIPppField22	AlignmenttaRightJustify
FieldAliasFK_VAT_CODE	FieldNameFK_VAT_CODEFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbItemPIPppField23
FieldAliasFK_TARIFF_C_CODE	FieldNameFK_TARIFF_C_CODEFieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField24
FieldAliasFK_TARIFF_CODE	FieldNameFK_TARIFF_CODEFieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField25
FieldAliasIMPORT_DUTY_RATE_UNIT	FieldNameIMPORT_DUTY_RATE_UNITFieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField26	AlignmenttaRightJustify
FieldAliasIMPORT_DUTY_RATE_QUANT	FieldNameIMPORT_DUTY_RATE_QUANTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbItemPIPppField27	AlignmenttaRightJustify
FieldAliasIMPORT_DUTY_RATE_BASE	FieldNameIMPORT_DUTY_RATE_BASEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbItemPIPppField28
FieldAliasFK_EXCISE_CODE	FieldNameFK_EXCISE_CODEFieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField29
FieldAliasEURO1	FieldNameEURO1FieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField30
FieldAliasEURO2	FieldNameEURO2FieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField31
FieldAlias
POSOSTOSIS	FieldName
POSOSTOSISFieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField32
FieldAliasEURO_PENDING	FieldNameEURO_PENDINGFieldLengthDisplayWidthPosition  TppFieldHawbItemPIPppField33	AlignmenttaRightJustify
FieldAliasFK_SENDER_INVOICE_SERIAL	FieldNameFK_SENDER_INVOICE_SERIALFieldLength DataType	dtIntegerDisplayWidth
Position   TppFieldHawbItemPIPppField34
FieldAliasMULTI_ITEMS_INVOICE	FieldNameMULTI_ITEMS_INVOICEFieldLengthDisplayWidthPosition!  TppFieldHawbItemPIPppField35	AlignmenttaRightJustify
FieldAliasINVOICE_LINE	FieldNameINVOICE_LINEFieldLength DataType	dtIntegerDisplayWidth
Position"  TppFieldHawbItemPIPppField36	AlignmenttaRightJustify
FieldAliasPRE_DISCOUNT_AMOUNT	FieldNamePRE_DISCOUNT_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position#  TppFieldHawbItemPIPppField37	AlignmenttaRightJustify
FieldAliasCUSTOMS_VALUE	FieldNameCUSTOMS_VALUEFieldLength DataTypedtDoubleDisplayWidth
Position$  TppFieldHawbItemPIPppField38	AlignmenttaRightJustify
FieldAliasDUTY_IMPORT_PAY	FieldNameDUTY_IMPORT_PAYFieldLength DataTypedtDoubleDisplayWidth
Position%  TppFieldHawbItemPIPppField39	AlignmenttaRightJustify
FieldAliasDUTY_TRL_PAY	FieldNameDUTY_TRL_PAYFieldLength DataTypedtDoubleDisplayWidth
Position&  TppFieldHawbItemPIPppField40	AlignmenttaRightJustify
FieldAliasDUTY_EXCISE_PAY	FieldNameDUTY_EXCISE_PAYFieldLength DataTypedtDoubleDisplayWidth
Position'  TppFieldHawbItemPIPppField41	AlignmenttaRightJustify
FieldAliasDUTY_VAT_PAY	FieldNameDUTY_VAT_PAYFieldLength DataTypedtDoubleDisplayWidth
Position(  TppFieldHawbItemPIPppField42	AlignmenttaRightJustify
FieldAliasDUTY_IMPORT_TOTAL	FieldNameDUTY_IMPORT_TOTALFieldLength DataTypedtDoubleDisplayWidth
Position)  TppFieldHawbItemPIPppField43	AlignmenttaRightJustify
FieldAliasDUTY_EXCISE_TOTAL	FieldNameDUTY_EXCISE_TOTALFieldLength DataTypedtDoubleDisplayWidth
Position*  TppFieldHawbItemPIPppField44	AlignmenttaRightJustify
FieldAliasDUTY_TRL_TOTAL	FieldNameDUTY_TRL_TOTALFieldLength DataTypedtDoubleDisplayWidth
Position+  TppFieldHawbItemPIPppField45	AlignmenttaRightJustify
FieldAliasDUTY_VAT_TOTAL	FieldNameDUTY_VAT_TOTALFieldLength DataTypedtDoubleDisplayWidth
Position,  TppFieldHawbItemPIPppField46	AlignmenttaRightJustify
FieldAliasTOTAL_VALUE_FOR_VAT	FieldNameTOTAL_VALUE_FOR_VATFieldLength DataTypedtDoubleDisplayWidth
Position-  TppFieldHawbItemPIPppField47	AlignmenttaRightJustify
FieldAliasDUTY_TOTAL_CHARGES	FieldNameDUTY_TOTAL_CHARGESFieldLength DataTypedtDoubleDisplayWidth
Position.  TppFieldHawbItemPIPppField48	AlignmenttaRightJustify
FieldAlias
WEIGHT_NET	FieldName
WEIGHT_NETFieldLength DataTypedtDoubleDisplayWidth
Position/  TppFieldHawbItemPIPppField49
FieldAliasVAT_CODE	FieldNameVAT_CODEFieldLengthDisplayWidthPosition0  TppFieldHawbItemPIPppField50
FieldAliasUNIT	FieldNameUNITFieldLengthDisplayWidthPosition1   	TIBCQueryHawbItemSQLSQLInsert.StringsINSERT INTO HAWB_ITEM.    (SERIAL_NUMBER, FK_MAWB, FK_HAWB_SERIAL, FK_SENDER_INVOICE_SERIAL, FK_COUNTRY_ORIGIN, FK_TARIFF_CODE, DESCRIPTION, FK_RELIEF_CODE, FK_IMPORT_TYPE, INVOICE_VALUE, DUTY_TYPE, TARIFF_DESCRIPTION, NET_QUANTITY, IMPORT_DUTY_RATE, RELIEVED_IMPORT_DUTY, EXCISE_DUTY_RATE, EXCISE_RELIEVED, TRL_RATE, TRL_RELEIVED, VAT_CODE, VAT_RATE, VAT_RELEIVED, CUSTOMS_VALUE, CURRENCY_RATE, CURRENCY, FK_VAT_CODE, FK_TARIFF_C_CODE, IMPORT_DUTY_RATE_UNIT, IMPORT_DUTY_RATE_QUANT, IMPORT_DUTY_RATE_BASE, DUTY_IMPORT_PAY, DUTY_TRL_PAY, DUTY_EXCISE_PAY, DUTY_VAT_PAY, DUTY_IMPORT_TOTAL, DUTY_EXCISE_TOTAL, DUTY_TRL_TOTAL, DUTY_VAT_TOTAL, TOTAL_VALUE_FOR_VAT, DUTY_TOTAL_CHARGES, FK_EXCISE_CODE, EURO1, EURO2, POSOSTOSIS, EURO_PENDING, MULTI_ITEMS_INVOICE, INVOICE_LINE, PRE_DISCOUNT_AMOUNT, WEIGHT_NET, UNIT, BUCKET_TARIFF, WEIGHT_GROSS)VALUESb    (:SERIAL_NUMBER, :FK_MAWB, :FK_HAWB_SERIAL, :FK_SENDER_INVOICE_SERIAL, :FK_COUNTRY_ORIGIN, :FK_TARIFF_CODE, :DESCRIPTION, :FK_RELIEF_CODE, :FK_IMPORT_TYPE, :INVOICE_VALUE, :DUTY_TYPE, :TARIFF_DESCRIPTION, :NET_QUANTITY, :IMPORT_DUTY_RATE, :RELIEVED_IMPORT_DUTY, :EXCISE_DUTY_RATE, :EXCISE_RELIEVED, :TRL_RATE, :TRL_RELEIVED, :VAT_CODE, :VAT_RATE, :VAT_RELEIVED, :CUSTOMS_VALUE, :CURRENCY_RATE, :CURRENCY, :FK_VAT_CODE, :FK_TARIFF_C_CODE, :IMPORT_DUTY_RATE_UNIT, :IMPORT_DUTY_RATE_QUANT, :IMPORT_DUTY_RATE_BASE, :DUTY_IMPORT_PAY, :DUTY_TRL_PAY, :DUTY_EXCISE_PAY, :DUTY_VAT_PAY, :DUTY_IMPORT_TOTAL, :DUTY_EXCISE_TOTAL, :DUTY_TRL_TOTAL, :DUTY_VAT_TOTAL, :TOTAL_VALUE_FOR_VAT, :DUTY_TOTAL_CHARGES, :FK_EXCISE_CODE, :EURO1, :EURO2, :POSOSTOSIS, :EURO_PENDING, :MULTI_ITEMS_INVOICE, :INVOICE_LINE, :PRE_DISCOUNT_AMOUNT, :WEIGHT_NET, :UNIT, :BUCKET_TARIFF, :WEIGHT_GROSS) SQLDelete.StringsDELETE FROM HAWB_ITEMWHERE$  SERIAL_NUMBER = :Old_SERIAL_NUMBER SQLUpdate.StringsUPDATE HAWB_ITEMSET�    SERIAL_NUMBER = :SERIAL_NUMBER, FK_MAWB = :FK_MAWB, FK_HAWB_SERIAL = :FK_HAWB_SERIAL, FK_SENDER_INVOICE_SERIAL = :FK_SENDER_INVOICE_SERIAL, FK_COUNTRY_ORIGIN = :FK_COUNTRY_ORIGIN, FK_TARIFF_CODE = :FK_TARIFF_CODE, DESCRIPTION = :DESCRIPTION, FK_RELIEF_CODE = :FK_RELIEF_CODE, FK_IMPORT_TYPE = :FK_IMPORT_TYPE, INVOICE_VALUE = :INVOICE_VALUE, DUTY_TYPE = :DUTY_TYPE, TARIFF_DESCRIPTION = :TARIFF_DESCRIPTION, NET_QUANTITY = :NET_QUANTITY, IMPORT_DUTY_RATE = :IMPORT_DUTY_RATE, RELIEVED_IMPORT_DUTY = :RELIEVED_IMPORT_DUTY, EXCISE_DUTY_RATE = :EXCISE_DUTY_RATE, EXCISE_RELIEVED = :EXCISE_RELIEVED, TRL_RATE = :TRL_RATE, TRL_RELEIVED = :TRL_RELEIVED, VAT_CODE = :VAT_CODE, VAT_RATE = :VAT_RATE, VAT_RELEIVED = :VAT_RELEIVED, CUSTOMS_VALUE = :CUSTOMS_VALUE, CURRENCY_RATE = :CURRENCY_RATE, CURRENCY = :CURRENCY, FK_VAT_CODE = :FK_VAT_CODE, FK_TARIFF_C_CODE = :FK_TARIFF_C_CODE, IMPORT_DUTY_RATE_UNIT = :IMPORT_DUTY_RATE_UNIT, IMPORT_DUTY_RATE_QUANT = :IMPORT_DUTY_RATE_QUANT, IMPORT_DUTY_RATE_BASE = :IMPORT_DUTY_RATE_BASE, DUTY_IMPORT_PAY = :DUTY_IMPORT_PAY, DUTY_TRL_PAY = :DUTY_TRL_PAY, DUTY_EXCISE_PAY = :DUTY_EXCISE_PAY, DUTY_VAT_PAY = :DUTY_VAT_PAY, DUTY_IMPORT_TOTAL = :DUTY_IMPORT_TOTAL, DUTY_EXCISE_TOTAL = :DUTY_EXCISE_TOTAL, DUTY_TRL_TOTAL = :DUTY_TRL_TOTAL, DUTY_VAT_TOTAL = :DUTY_VAT_TOTAL, TOTAL_VALUE_FOR_VAT = :TOTAL_VALUE_FOR_VAT, DUTY_TOTAL_CHARGES = :DUTY_TOTAL_CHARGES, FK_EXCISE_CODE = :FK_EXCISE_CODE, EURO1 = :EURO1, EURO2 = :EURO2, POSOSTOSIS = :POSOSTOSIS, EURO_PENDING = :EURO_PENDING, MULTI_ITEMS_INVOICE = :MULTI_ITEMS_INVOICE, INVOICE_LINE = :INVOICE_LINE, PRE_DISCOUNT_AMOUNT = :PRE_DISCOUNT_AMOUNT, WEIGHT_NET = :WEIGHT_NET, UNIT = :UNIT, BUCKET_TARIFF = :BUCKET_TARIFF, WEIGHT_GROSS = :WEIGHT_GROSSWHERE$  SERIAL_NUMBER = :Old_SERIAL_NUMBER SQLRefresh.Strings@  SELECT SERIAL_NUMBER, FK_MAWB, FK_HAWB_SERIAL, FK_SENDER_INVOICE_SERIAL, FK_COUNTRY_ORIGIN, FK_TARIFF_CODE, DESCRIPTION, FK_RELIEF_CODE, FK_IMPORT_TYPE, INVOICE_VALUE, DUTY_TYPE, TARIFF_DESCRIPTION, NET_QUANTITY, IMPORT_DUTY_RATE, RELIEVED_IMPORT_DUTY, EXCISE_DUTY_RATE, EXCISE_RELIEVED, TRL_RATE, TRL_RELEIVED, VAT_CODE, VAT_RATE, VAT_RELEIVED, CUSTOMS_VALUE, CURRENCY_RATE, CURRENCY, FK_VAT_CODE, FK_TARIFF_C_CODE, IMPORT_DUTY_RATE_UNIT, IMPORT_DUTY_RATE_QUANT, IMPORT_DUTY_RATE_BASE, DUTY_IMPORT_PAY, DUTY_TRL_PAY, DUTY_EXCISE_PAY, DUTY_VAT_PAY, DUTY_IMPORT_TOTAL, DUTY_EXCISE_TOTAL, DUTY_TRL_TOTAL, DUTY_VAT_TOTAL, TOTAL_VALUE_FOR_VAT, DUTY_TOTAL_CHARGES, FK_EXCISE_CODE, EURO1, EURO2, POSOSTOSIS, EURO_PENDING, MULTI_ITEMS_INVOICE, INVOICE_LINE, PRE_DISCOUNT_AMOUNT, WEIGHT_NET, UNIT, BUCKET_TARIFF, WEIGHT_GROSS FROM HAWB_ITEMWHERE   SERIAL_NUMBER = :SERIAL_NUMBER SQLLock.StringsSELECT NULL FROM HAWB_ITEMWHERE"SERIAL_NUMBER = :Old_SERIAL_NUMBERFOR UPDATE WITH LOCK SQLRecCount.StringsSELECT COUNT(*) FROM (SELECT 1 AS C  FROM HAWB_ITEM    ) q 
ConnectionClairDML.CabCOnnectionTransactionClairDML.UsedForReadOnlyTransSQL.Strings/select * from Hawb_Item order by Serial_number; MasterFieldsSERIAL_NUMBERDetailFieldsFK_HAWB_SERIALMasterSourceHawbSRCFetchAll	ReadOnly	LeftPTop`	ParamDataDataType	ftIntegerNameSERIAL_NUMBER	ParamTypeptInputValue   TIntegerFieldIntegerField1	FieldNameSERIAL_NUMBEROriginHAWB_ITEM.SERIAL_NUMBER  TIntegerFieldIntegerField2	FieldNameFK_HAWB_SERIALOriginHAWB_ITEM.FK_HAWB_SERIAL  TIntegerFieldIntegerField3	FieldNameFK_COUNTRY_ORIGINOriginHAWB_ITEM.FK_COUNTRY_ORIGIN  TStringFieldStringField19	FieldNameDESCRIPTIONOriginHAWB_ITEM.DESCRIPTIONSize(  TStringFieldStringField20	FieldNameFK_RELIEF_CODEOriginHAWB_ITEM.FK_RELIEF_CODESize  TStringFieldStringField21	FieldNameFK_IMPORT_TYPEOriginHAWB_ITEM.FK_IMPORT_TYPESize  TFloatFieldFloatField1	FieldNameINVOICE_VALUEOriginHAWB_ITEM.INVOICE_VALUE  TStringFieldStringField22	FieldName	DUTY_TYPEOriginHAWB_ITEM.DUTY_TYPESize  TStringFieldStringField23	FieldNameTARIFF_DESCRIPTIONOriginHAWB_ITEM.TARIFF_DESCRIPTIONSize2  TFloatFieldFloatField2	FieldNameIMPORT_DUTY_RATEOriginHAWB_ITEM.IMPORT_DUTY_RATE  TFloatFieldFloatField3	FieldNameRELIEVED_IMPORT_DUTYOriginHAWB_ITEM.RELIEVED_IMPORT_DUTY  TFloatFieldFloatField4	FieldNameEXCISE_DUTY_RATEOriginHAWB_ITEM.EXCISE_DUTY_RATE  TFloatFieldFloatField5	FieldNameEXCISE_RELIEVEDOriginHAWB_ITEM.EXCISE_RELIEVED  TFloatFieldFloatField6	FieldNameTRL_RATEOriginHAWB_ITEM.TRL_RATE  TFloatFieldFloatField7	FieldNameTRL_RELEIVEDOriginHAWB_ITEM.TRL_RELEIVED  TFloatFieldFloatField8	FieldNameVAT_RATEOriginHAWB_ITEM.VAT_RATE  TFloatFieldFloatField9	FieldNameVAT_RELEIVEDOriginHAWB_ITEM.VAT_RELEIVED  TFloatFieldFloatField10	FieldNameCURRENCY_RATEOriginHAWB_ITEM.CURRENCY_RATE  TStringFieldStringField24	FieldNameCURRENCYOriginHAWB_ITEM.CURRENCYSize  TIntegerFieldIntegerField5	FieldNameFK_MAWBOriginHAWB_ITEM.FK_MAWB  TIntegerFieldIntegerField6	FieldNameFK_VAT_CODEOriginHAWB_ITEM.FK_VAT_CODE  TStringFieldStringField25	FieldNameFK_TARIFF_C_CODEOriginHAWB_ITEM.FK_TARIFF_C_CODESize  TStringFieldStringField26	FieldNameFK_TARIFF_CODEOriginHAWB_ITEM.FK_TARIFF_CODESize  TStringFieldStringField27	FieldNameIMPORT_DUTY_RATE_UNITOriginHAWB_ITEM.IMPORT_DUTY_RATE_UNITSize  TFloatFieldFloatField11	FieldNameIMPORT_DUTY_RATE_QUANTOrigin HAWB_ITEM.IMPORT_DUTY_RATE_QUANT  TFloatFieldFloatField12	FieldNameIMPORT_DUTY_RATE_BASEOriginHAWB_ITEM.IMPORT_DUTY_RATE_BASE  TStringFieldStringField28	FieldNameFK_EXCISE_CODEOriginHAWB_ITEM.FK_EXCISE_CODESize  TStringFieldStringField29	FieldNameEURO1OriginHAWB_ITEM.EURO1  TStringFieldStringField30	FieldNameEURO2OriginHAWB_ITEM.EURO2  TStringFieldStringField31	FieldName
POSOSTOSISOriginHAWB_ITEM.POSOSTOSISSize  TStringFieldStringField32	FieldNameEURO_PENDINGOriginHAWB_ITEM.EURO_PENDINGSize  TIntegerFieldIntegerField7	FieldNameFK_SENDER_INVOICE_SERIALOrigin"HAWB_ITEM.FK_SENDER_INVOICE_SERIAL  TStringFieldStringField33	FieldNameMULTI_ITEMS_INVOICEOriginHAWB_ITEM.MULTI_ITEMS_INVOICESize  TIntegerFieldIntegerField8	FieldNameINVOICE_LINEOriginHAWB_ITEM.INVOICE_LINE  TFloatFieldFloatField13	FieldNamePRE_DISCOUNT_AMOUNTOriginHAWB_ITEM.PRE_DISCOUNT_AMOUNT  TFloatFieldFloatField14	FieldNameCUSTOMS_VALUEOriginCLAIRDB.HAWB_ITEM.CUSTOMS_VALUE  TFloatFieldFloatField15	FieldNameDUTY_IMPORT_PAYOrigin!CLAIRDB.HAWB_ITEM.DUTY_IMPORT_PAY  TFloatFieldFloatField16	FieldNameDUTY_TRL_PAYOriginCLAIRDB.HAWB_ITEM.DUTY_TRL_PAY  TFloatFieldFloatField17	FieldNameDUTY_EXCISE_PAYOrigin!CLAIRDB.HAWB_ITEM.DUTY_EXCISE_PAY  TFloatFieldFloatField18	FieldNameDUTY_VAT_PAYOriginCLAIRDB.HAWB_ITEM.DUTY_VAT_PAY  TFloatFieldFloatField19	FieldNameDUTY_IMPORT_TOTALOrigin#CLAIRDB.HAWB_ITEM.DUTY_IMPORT_TOTAL  TFloatFieldFloatField20	FieldNameDUTY_EXCISE_TOTALOrigin#CLAIRDB.HAWB_ITEM.DUTY_EXCISE_TOTAL  TFloatFieldFloatField21	FieldNameDUTY_TRL_TOTALOrigin CLAIRDB.HAWB_ITEM.DUTY_TRL_TOTAL  TFloatFieldFloatField22	FieldNameDUTY_VAT_TOTALOrigin CLAIRDB.HAWB_ITEM.DUTY_VAT_TOTAL  TFloatFieldFloatField23	FieldNameTOTAL_VALUE_FOR_VATOrigin%CLAIRDB.HAWB_ITEM.TOTAL_VALUE_FOR_VAT  TFloatFieldFloatField24	FieldNameDUTY_TOTAL_CHARGESOrigin$CLAIRDB.HAWB_ITEM.DUTY_TOTAL_CHARGES  TFloatFieldFloatField25	FieldName
WEIGHT_NET  TStringFieldHawbItemSQLVAT_CODE	FieldNameVAT_CODE	FixedChar	Size  TStringFieldHawbItemSQLUNIT	FieldNameUNIT	FixedChar	Size  TFloatFieldHawbItemSQLNET_QUANTITY	FieldNameNET_QUANTITY   	TIBCQueryCountItemsSQL
DMLRefresh	
ConnectionClairDML.CabCOnnectionTransactionClairDML.UsedForReadOnlyTransSQL.Stringsselect fk_hawb_serial,Count(*) as CountItems,'Sum(Duty_import_total) as ImportTotal, !Sum(Duty_Vat_total) as VATTotal, 'Sum(Duty_excise_total) as exciseTotal, !Sum(Duty_TRL_total) as TrlTotal, ,Sum(Relieved_Import_duty) as ImportRelieved,!Sum(TRL_releived) as TrlRelieved,'Sum(excise_relieved) as ExciseRelieved, Sum(VAT_releived) as VatRelieved    &from hawb_item group by fk_hawb_serial MasterFieldsSERIAL_NUMBERDetailFieldsFK_HAWB_SERIALReadOnly	UniDirectional	Active	LeftTop0	ParamDataDataType	ftIntegerNameSERIAL_NUMBER	ParamTypeptInputValue   TIntegerFieldCountItemsSQLCOUNTITEMS	FieldName
COUNTITEMSReadOnly	  TIntegerFieldCountItemsSQLFK_HAWB_SERIAL	FieldNameFK_HAWB_SERIALRequired	  TFloatFieldCountItemsSQLIMPORTTOTAL	FieldNameIMPORTTOTALReadOnly	  TFloatFieldCountItemsSQLVATTOTAL	FieldNameVATTOTALReadOnly	  TFloatFieldCountItemsSQLEXCISETOTAL	FieldNameEXCISETOTALReadOnly	  TFloatFieldCountItemsSQLTRLTOTAL	FieldNameTRLTOTALReadOnly	  TFloatFieldCountItemsSQLIMPORTRELIEVED	FieldNameIMPORTRELIEVEDReadOnly	  TFloatFieldCountItemsSQLTRLRELIEVED	FieldNameTRLRELIEVEDReadOnly	  TFloatFieldCountItemsSQLEXCISERELIEVED	FieldNameEXCISERELIEVEDReadOnly	  TFloatFieldCountItemsSQLVATRELIEVED	FieldNameVATRELIEVEDReadOnly	   TppDBPipelineCountItemsPIP
DataSourceCountItemsSRCUserNameCountItemsPIPLeft�Top MasterDataPipelineNameHawbPiP  TIBCDataSourceCountItemsSRCDataSetCountItemsSQLLeftXTopx  TIBCDataSourceHawbSRCDataSetHawbSQLLeft� Top(  TIBCDataSourceHawbItemSRCDataSetHawbItemSQLLeft� Topp  TIBCDataSourceMawbSRCDataSetMawbSQLLeft� Top�   TIBCDataSourceCustomerSRCDataSetCustomerSQLLeft� Top�   TIBCDataSourceClearanceTypeSRCDataSetClearanceInstructionSQLLeft� Top  TIBCDataSourceClearingPortSRCDataSetClearingPortSQLLeft� Top�  TIBCDataSourceSenderInvoiceSRCDataSetSenderInvoiceSQLLeft� Top(  	TIBCQueryClearanceInstructionSQL
ConnectionClairDML.CabCOnnectionSQL.Strings#select * from clearance_instruction MasterFieldsFK_CLEARANCE_INSTRUCTIONDetailFieldsCODEMasterSourceHawbSRCActive	LeftXTop	ParamDataDataTypeftFixedCharNameFK_CLEARANCE_INSTRUCTION	ParamTypeptInputValue   TStringFieldClearanceInstructionSQLCODE	FieldNameCODERequired		FixedChar	Size  TStringField"ClearanceInstructionSQLDESCRIPTION	FieldNameDESCRIPTION	FixedChar	Size2  TStringField&ClearanceInstructionSQLFK_TARIFF_GROUP	FieldNameFK_TARIFF_GROUP	FixedChar	Size  TStringField#ClearanceInstructionSQLIS_VAT_APPLY	FieldNameIS_VAT_APPLYRequired		FixedChar	Size  TIntegerField#ClearanceInstructionSQLORDER_NUMBER	FieldNameORDER_NUMBER   	TIBCQueryHawbChargeSQLSQLInsert.StringsINSERT INTO HAWB_CHARGEF    (SERIAL_NUMBER, FK_HAWB, FK_TARIFF_USAGE, FK_HAWB_ITEM, FK_TARIFF_LINE, PRE_DISCOUNT_AMOUNT, CUSTOMS_VALUE, QUANTITY, WEIGHT, TARIFF_CODE, TARIFF_CHARGING_METHOD, TARIFF_UNIT, TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE, TARIFF_UNITS_NOT_CHARGED, DUTY_TYPE, TARIFF_RELIEVED_RATE, VAT_CODE, VAT_RATE, AMOUNT_RELIEVED, AMOUNT_NET)VALUES[    (:SERIAL_NUMBER, :FK_HAWB, :FK_TARIFF_USAGE, :FK_HAWB_ITEM, :FK_TARIFF_LINE, :PRE_DISCOUNT_AMOUNT, :CUSTOMS_VALUE, :QUANTITY, :WEIGHT, :TARIFF_CODE, :TARIFF_CHARGING_METHOD, :TARIFF_UNIT, :TARIFF_UNIT_INCREMENT, :TARIFF_UNIT_RATE, :TARIFF_UNITS_NOT_CHARGED, :DUTY_TYPE, :TARIFF_RELIEVED_RATE, :VAT_CODE, :VAT_RATE, :AMOUNT_RELIEVED, :AMOUNT_NET) SQLDelete.StringsDELETE FROM HAWB_CHARGEWHERE$  SERIAL_NUMBER = :Old_SERIAL_NUMBER SQLUpdate.StringsUPDATE HAWB_CHARGESET�    SERIAL_NUMBER = :SERIAL_NUMBER, FK_HAWB = :FK_HAWB, FK_TARIFF_USAGE = :FK_TARIFF_USAGE, FK_HAWB_ITEM = :FK_HAWB_ITEM, FK_TARIFF_LINE = :FK_TARIFF_LINE, PRE_DISCOUNT_AMOUNT = :PRE_DISCOUNT_AMOUNT, CUSTOMS_VALUE = :CUSTOMS_VALUE, QUANTITY = :QUANTITY, WEIGHT = :WEIGHT, TARIFF_CODE = :TARIFF_CODE, TARIFF_CHARGING_METHOD = :TARIFF_CHARGING_METHOD, TARIFF_UNIT = :TARIFF_UNIT, TARIFF_UNIT_INCREMENT = :TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE = :TARIFF_UNIT_RATE, TARIFF_UNITS_NOT_CHARGED = :TARIFF_UNITS_NOT_CHARGED, DUTY_TYPE = :DUTY_TYPE, TARIFF_RELIEVED_RATE = :TARIFF_RELIEVED_RATE, VAT_CODE = :VAT_CODE, VAT_RATE = :VAT_RATE, AMOUNT_RELIEVED = :AMOUNT_RELIEVED, AMOUNT_NET = :AMOUNT_NETWHERE$  SERIAL_NUMBER = :Old_SERIAL_NUMBER SQLRefresh.StringsZ  SELECT SERIAL_NUMBER, FK_HAWB, FK_TARIFF_USAGE, FK_HAWB_ITEM, FK_TARIFF_LINE, PRE_DISCOUNT_AMOUNT, CUSTOMS_VALUE, QUANTITY, WEIGHT, TARIFF_CODE, TARIFF_CHARGING_METHOD, TARIFF_UNIT, TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE, TARIFF_UNITS_NOT_CHARGED, DUTY_TYPE, TARIFF_RELIEVED_RATE, VAT_CODE, VAT_RATE, AMOUNT_RELIEVED, AMOUNT_NET FROM HAWB_CHARGEWHERE   SERIAL_NUMBER = :SERIAL_NUMBER SQLLock.StringsSELECT NULL FROM HAWB_CHARGEWHERE"SERIAL_NUMBER = :Old_SERIAL_NUMBERFOR UPDATE WITH LOCK SQLRecCount.StringsSELECT COUNT(*) FROM (SELECT 1 AS C  FROM HAWB_CHARGE    ) q SQL.Strings3select star.description_greek as tariff_Greek, ha.*from hawb_charge ha@left outer join s_tariff star on ha.tariff_code=star.tariff_codeWHERE  ha.FK_TARIFF_USAGE <>'DHL'order by ha.fk_hawb_item  desc     MasterFieldsSERIAL_NUMBERDetailFieldsFK_HAWBMasterSourceHawbSRCFetchAll	ReadOnly	Active	Left�Top� 	ParamDataDataType	ftIntegerNameSERIAL_NUMBER	ParamTypeptInputValue   TStringFieldHawbChargeSQLTARIFF_GREEK	FieldNameTARIFF_GREEK	FixedChar	Size<  TIntegerFieldHawbChargeSQLSERIAL_NUMBER	FieldNameSERIAL_NUMBERReadOnly	Required	  TIntegerFieldHawbChargeSQLFK_HAWB	FieldNameFK_HAWBReadOnly	Required	  TStringFieldHawbChargeSQLFK_TARIFF_USAGE	FieldNameFK_TARIFF_USAGEReadOnly		FixedChar	Size  TIntegerFieldHawbChargeSQLFK_HAWB_ITEM	FieldNameFK_HAWB_ITEMReadOnly	  TIntegerFieldHawbChargeSQLFK_TARIFF_LINE	FieldNameFK_TARIFF_LINEReadOnly	  TFloatField HawbChargeSQLPRE_DISCOUNT_AMOUNT	FieldNamePRE_DISCOUNT_AMOUNTReadOnly	  TFloatFieldHawbChargeSQLCUSTOMS_VALUE	FieldNameCUSTOMS_VALUEReadOnly	  TIntegerFieldHawbChargeSQLQUANTITY	FieldNameQUANTITYReadOnly	  TFloatFieldHawbChargeSQLWEIGHT	FieldNameWEIGHTReadOnly	  TStringFieldHawbChargeSQLTARIFF_CODE	FieldNameTARIFF_CODEReadOnly		FixedChar	Size  TStringField#HawbChargeSQLTARIFF_CHARGING_METHOD	FieldNameTARIFF_CHARGING_METHODReadOnly		FixedChar	Size  TStringFieldHawbChargeSQLTARIFF_UNIT	FieldNameTARIFF_UNITReadOnly		FixedChar	Size  TIntegerField"HawbChargeSQLTARIFF_UNIT_INCREMENT	FieldNameTARIFF_UNIT_INCREMENTReadOnly	  TFloatFieldHawbChargeSQLTARIFF_UNIT_RATE	FieldNameTARIFF_UNIT_RATEReadOnly	  TIntegerField%HawbChargeSQLTARIFF_UNITS_NOT_CHARGED	FieldNameTARIFF_UNITS_NOT_CHARGEDReadOnly	  TStringFieldHawbChargeSQLDUTY_TYPE	FieldName	DUTY_TYPEReadOnly		FixedChar	Size  TFloatField!HawbChargeSQLTARIFF_RELIEVED_RATE	FieldNameTARIFF_RELIEVED_RATEReadOnly	  TStringFieldHawbChargeSQLVAT_CODE	FieldNameVAT_CODEReadOnly		FixedChar	Size  TFloatFieldHawbChargeSQLVAT_RATE	FieldNameVAT_RATEReadOnly	  TFloatFieldHawbChargeSQLAMOUNT_RELIEVED	FieldNameAMOUNT_RELIEVEDReadOnly	  TFloatFieldHawbChargeSQLAMOUNT_NET	FieldName
AMOUNT_NETReadOnly	   TIBCDataSourceHawbChargeSRCDataSetHawbChargeSQLLeftTop�   TppDBPipelineHawbChargePIP
DataSourceHawbChargeSRCUserNameHawbChargePIPLeftHTop MasterDataPipelineNameHawbPiP TppFieldHawbChargePIPppField1
FieldAliasTARIFF_GREEK	FieldNameTARIFF_GREEKFieldLength<DisplayWidth<Position   TppFieldHawbChargePIPppField2	AlignmenttaRightJustify
FieldAliasSERIAL_NUMBER	FieldNameSERIAL_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargePIPppField3	AlignmenttaRightJustify
FieldAliasFK_HAWB	FieldNameFK_HAWBFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargePIPppField4
FieldAliasFK_TARIFF_USAGE	FieldNameFK_TARIFF_USAGEFieldLengthDisplayWidthPosition  TppFieldHawbChargePIPppField5	AlignmenttaRightJustify
FieldAliasFK_HAWB_ITEM	FieldNameFK_HAWB_ITEMFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargePIPppField6	AlignmenttaRightJustify
FieldAliasFK_TARIFF_LINE	FieldNameFK_TARIFF_LINEFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargePIPppField7	AlignmenttaRightJustify
FieldAliasPRE_DISCOUNT_AMOUNT	FieldNamePRE_DISCOUNT_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargePIPppField8	AlignmenttaRightJustify
FieldAliasCUSTOMS_VALUE	FieldNameCUSTOMS_VALUEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargePIPppField9	AlignmenttaRightJustify
FieldAliasQUANTITY	FieldNameQUANTITYFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargePIPppField10	AlignmenttaRightJustify
FieldAliasWEIGHT	FieldNameWEIGHTFieldLength DataTypedtDoubleDisplayWidth
Position	  TppFieldHawbChargePIPppField11
FieldAliasTARIFF_CODE	FieldNameTARIFF_CODEFieldLengthDisplayWidthPosition
  TppFieldHawbChargePIPppField12
FieldAliasTARIFF_CHARGING_METHOD	FieldNameTARIFF_CHARGING_METHODFieldLengthDisplayWidthPosition  TppFieldHawbChargePIPppField13
FieldAliasTARIFF_UNIT	FieldNameTARIFF_UNITFieldLengthDisplayWidthPosition  TppFieldHawbChargePIPppField14	AlignmenttaRightJustify
FieldAliasTARIFF_UNIT_INCREMENT	FieldNameTARIFF_UNIT_INCREMENTFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargePIPppField15	AlignmenttaRightJustify
FieldAliasTARIFF_UNIT_RATE	FieldNameTARIFF_UNIT_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargePIPppField16	AlignmenttaRightJustify
FieldAliasTARIFF_UNITS_NOT_CHARGED	FieldNameTARIFF_UNITS_NOT_CHARGEDFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargePIPppField17
FieldAlias	DUTY_TYPE	FieldName	DUTY_TYPEFieldLengthDisplayWidthPosition  TppFieldHawbChargePIPppField18	AlignmenttaRightJustify
FieldAliasTARIFF_RELIEVED_RATE	FieldNameTARIFF_RELIEVED_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargePIPppField19
FieldAliasVAT_CODE	FieldNameVAT_CODEFieldLengthDisplayWidthPosition  TppFieldHawbChargePIPppField20	AlignmenttaRightJustify
FieldAliasVAT_RATE	FieldNameVAT_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargePIPppField21	AlignmenttaRightJustify
FieldAliasAMOUNT_RELIEVED	FieldNameAMOUNT_RELIEVEDFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargePIPppField22	AlignmenttaRightJustify
FieldAlias
AMOUNT_NET	FieldName
AMOUNT_NETFieldLength DataTypedtDoubleDisplayWidth
Position   	TIBCQueryHawbChargeVATSQLSQLInsert.StringsINSERT INTO HAWB_CHARGEF    (SERIAL_NUMBER, FK_HAWB, FK_TARIFF_USAGE, FK_HAWB_ITEM, FK_TARIFF_LINE, PRE_DISCOUNT_AMOUNT, CUSTOMS_VALUE, QUANTITY, WEIGHT, TARIFF_CODE, TARIFF_CHARGING_METHOD, TARIFF_UNIT, TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE, TARIFF_UNITS_NOT_CHARGED, DUTY_TYPE, TARIFF_RELIEVED_RATE, VAT_CODE, VAT_RATE, AMOUNT_RELIEVED, AMOUNT_NET)VALUES[    (:SERIAL_NUMBER, :FK_HAWB, :FK_TARIFF_USAGE, :FK_HAWB_ITEM, :FK_TARIFF_LINE, :PRE_DISCOUNT_AMOUNT, :CUSTOMS_VALUE, :QUANTITY, :WEIGHT, :TARIFF_CODE, :TARIFF_CHARGING_METHOD, :TARIFF_UNIT, :TARIFF_UNIT_INCREMENT, :TARIFF_UNIT_RATE, :TARIFF_UNITS_NOT_CHARGED, :DUTY_TYPE, :TARIFF_RELIEVED_RATE, :VAT_CODE, :VAT_RATE, :AMOUNT_RELIEVED, :AMOUNT_NET) SQLDelete.StringsDELETE FROM HAWB_CHARGEWHERE$  SERIAL_NUMBER = :Old_SERIAL_NUMBER SQLUpdate.StringsUPDATE HAWB_CHARGESET�    SERIAL_NUMBER = :SERIAL_NUMBER, FK_HAWB = :FK_HAWB, FK_TARIFF_USAGE = :FK_TARIFF_USAGE, FK_HAWB_ITEM = :FK_HAWB_ITEM, FK_TARIFF_LINE = :FK_TARIFF_LINE, PRE_DISCOUNT_AMOUNT = :PRE_DISCOUNT_AMOUNT, CUSTOMS_VALUE = :CUSTOMS_VALUE, QUANTITY = :QUANTITY, WEIGHT = :WEIGHT, TARIFF_CODE = :TARIFF_CODE, TARIFF_CHARGING_METHOD = :TARIFF_CHARGING_METHOD, TARIFF_UNIT = :TARIFF_UNIT, TARIFF_UNIT_INCREMENT = :TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE = :TARIFF_UNIT_RATE, TARIFF_UNITS_NOT_CHARGED = :TARIFF_UNITS_NOT_CHARGED, DUTY_TYPE = :DUTY_TYPE, TARIFF_RELIEVED_RATE = :TARIFF_RELIEVED_RATE, VAT_CODE = :VAT_CODE, VAT_RATE = :VAT_RATE, AMOUNT_RELIEVED = :AMOUNT_RELIEVED, AMOUNT_NET = :AMOUNT_NETWHERE$  SERIAL_NUMBER = :Old_SERIAL_NUMBER SQLRefresh.StringsZ  SELECT SERIAL_NUMBER, FK_HAWB, FK_TARIFF_USAGE, FK_HAWB_ITEM, FK_TARIFF_LINE, PRE_DISCOUNT_AMOUNT, CUSTOMS_VALUE, QUANTITY, WEIGHT, TARIFF_CODE, TARIFF_CHARGING_METHOD, TARIFF_UNIT, TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE, TARIFF_UNITS_NOT_CHARGED, DUTY_TYPE, TARIFF_RELIEVED_RATE, VAT_CODE, VAT_RATE, AMOUNT_RELIEVED, AMOUNT_NET FROM HAWB_CHARGEWHERE   SERIAL_NUMBER = :SERIAL_NUMBER SQLLock.StringsSELECT NULL FROM HAWB_CHARGEWHERE"SERIAL_NUMBER = :Old_SERIAL_NUMBERFOR UPDATE WITH LOCK SQLRecCount.StringsSELECT COUNT(*) FROM (SELECT 1 AS C  FROM HAWB_CHARGE    ) q 
ConnectionClairDML.CabCOnnectionSQL.Strings3select star.description_greek as tariff_Greek, ha.*from hawb_charge ha@left outer join s_tariff star on ha.tariff_code=star.tariff_codeWHERE ha.duty_type='VAT'order by ha.fk_hawb_item  desc     MasterFieldsSERIAL_NUMBERDetailFieldsFK_HAWBMasterSourceHawbSRCFetchAll	ReadOnly	Active	Left�Top@	ParamDataDataType	ftIntegerNameSERIAL_NUMBER	ParamTypeptInputValue   TStringFieldStringField1	FieldNameTARIFF_GREEK	FixedChar	Size<  TIntegerFieldIntegerField9	FieldNameSERIAL_NUMBERReadOnly	Required	  TIntegerFieldIntegerField10	FieldNameFK_HAWBReadOnly	Required	  TStringFieldStringField2	FieldNameFK_TARIFF_USAGEReadOnly		FixedChar	Size  TIntegerFieldIntegerField11	FieldNameFK_HAWB_ITEMReadOnly	  TIntegerFieldIntegerField12	FieldNameFK_TARIFF_LINEReadOnly	  TFloatFieldFloatField26	FieldNamePRE_DISCOUNT_AMOUNTReadOnly	  TFloatFieldFloatField27	FieldNameCUSTOMS_VALUEReadOnly	  TIntegerFieldIntegerField13	FieldNameQUANTITYReadOnly	  TFloatFieldFloatField28	FieldNameWEIGHTReadOnly	  TStringFieldStringField3	FieldNameTARIFF_CODEReadOnly		FixedChar	Size  TStringFieldStringField4	FieldNameTARIFF_CHARGING_METHODReadOnly		FixedChar	Size  TStringFieldStringField5	FieldNameTARIFF_UNITReadOnly		FixedChar	Size  TIntegerFieldIntegerField14	FieldNameTARIFF_UNIT_INCREMENTReadOnly	  TFloatFieldFloatField29	FieldNameTARIFF_UNIT_RATEReadOnly	  TIntegerFieldIntegerField15	FieldNameTARIFF_UNITS_NOT_CHARGEDReadOnly	  TStringFieldStringField6	FieldName	DUTY_TYPEReadOnly		FixedChar	Size  TFloatFieldFloatField30	FieldNameTARIFF_RELIEVED_RATEReadOnly	  TStringFieldStringField7	FieldNameVAT_CODEReadOnly		FixedChar	Size  TFloatFieldFloatField31	FieldNameVAT_RATEReadOnly	  TFloatFieldFloatField32	FieldNameAMOUNT_RELIEVEDReadOnly	  TFloatFieldFloatField33	FieldName
AMOUNT_NETReadOnly	   TIBCDataSourceHawbChargeVATSRCDataSetHawbChargeVATSQLLeft Top@  TppDBPipelineHawbChargeVATPip
DataSourceHawbChargeVATSRCUserNameHawbChargeVATPipLeftHTopHMasterDataPipelineNameHawbPiP TppFieldHawbChargeVATPipppField1
FieldAliasTARIFF_GREEK	FieldNameTARIFF_GREEKFieldLength<DisplayWidth<Position   TppFieldHawbChargeVATPipppField2	AlignmenttaRightJustify
FieldAliasSERIAL_NUMBER	FieldNameSERIAL_NUMBERFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargeVATPipppField3	AlignmenttaRightJustify
FieldAliasFK_HAWB	FieldNameFK_HAWBFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargeVATPipppField4
FieldAliasFK_TARIFF_USAGE	FieldNameFK_TARIFF_USAGEFieldLengthDisplayWidthPosition  TppFieldHawbChargeVATPipppField5	AlignmenttaRightJustify
FieldAliasFK_HAWB_ITEM	FieldNameFK_HAWB_ITEMFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargeVATPipppField6	AlignmenttaRightJustify
FieldAliasFK_TARIFF_LINE	FieldNameFK_TARIFF_LINEFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargeVATPipppField7	AlignmenttaRightJustify
FieldAliasPRE_DISCOUNT_AMOUNT	FieldNamePRE_DISCOUNT_AMOUNTFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargeVATPipppField8	AlignmenttaRightJustify
FieldAliasCUSTOMS_VALUE	FieldNameCUSTOMS_VALUEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargeVATPipppField9	AlignmenttaRightJustify
FieldAliasQUANTITY	FieldNameQUANTITYFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargeVATPipppField10	AlignmenttaRightJustify
FieldAliasWEIGHT	FieldNameWEIGHTFieldLength DataTypedtDoubleDisplayWidth
Position	  TppFieldHawbChargeVATPipppField11
FieldAliasTARIFF_CODE	FieldNameTARIFF_CODEFieldLengthDisplayWidthPosition
  TppFieldHawbChargeVATPipppField12
FieldAliasTARIFF_CHARGING_METHOD	FieldNameTARIFF_CHARGING_METHODFieldLengthDisplayWidthPosition  TppFieldHawbChargeVATPipppField13
FieldAliasTARIFF_UNIT	FieldNameTARIFF_UNITFieldLengthDisplayWidthPosition  TppFieldHawbChargeVATPipppField14	AlignmenttaRightJustify
FieldAliasTARIFF_UNIT_INCREMENT	FieldNameTARIFF_UNIT_INCREMENTFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargeVATPipppField15	AlignmenttaRightJustify
FieldAliasTARIFF_UNIT_RATE	FieldNameTARIFF_UNIT_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargeVATPipppField16	AlignmenttaRightJustify
FieldAliasTARIFF_UNITS_NOT_CHARGED	FieldNameTARIFF_UNITS_NOT_CHARGEDFieldLength DataType	dtIntegerDisplayWidth
Position  TppFieldHawbChargeVATPipppField17
FieldAlias	DUTY_TYPE	FieldName	DUTY_TYPEFieldLengthDisplayWidthPosition  TppFieldHawbChargeVATPipppField18	AlignmenttaRightJustify
FieldAliasTARIFF_RELIEVED_RATE	FieldNameTARIFF_RELIEVED_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargeVATPipppField19
FieldAliasVAT_CODE	FieldNameVAT_CODEFieldLengthDisplayWidthPosition  TppFieldHawbChargeVATPipppField20	AlignmenttaRightJustify
FieldAliasVAT_RATE	FieldNameVAT_RATEFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargeVATPipppField21	AlignmenttaRightJustify
FieldAliasAMOUNT_RELIEVED	FieldNameAMOUNT_RELIEVEDFieldLength DataTypedtDoubleDisplayWidth
Position  TppFieldHawbChargeVATPipppField22	AlignmenttaRightJustify
FieldAlias
AMOUNT_NET	FieldName
AMOUNT_NETFieldLength DataTypedtDoubleDisplayWidth
Position   TIBCConnectionIBCConnection1Port3050SSLOptions.EnabledLeft� TopH  TVirtualTableVirtualHawbChargeLeft�Top�Data

             TStringFieldVirtualHawbChargeDesc1	FieldNameDesc1Size  TStringFieldVirtualHawbChargeDesc2	FieldNameDesc2Size(  TFloatFieldVirtualHawbChargeTariff_rate	FieldNameTariff_rate  TFloatFieldVirtualHawbChargecustoms_value	FieldNamecustoms_value  TFloatFieldVirtualHawbChargeCharge	FieldNameCharge  TStringFieldVirtualHawbChargerelieved_flag	FieldNamerelieved_flagSize    