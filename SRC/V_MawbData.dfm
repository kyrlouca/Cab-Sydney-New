object V_MawbDataDML: TV_MawbDataDML
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 527
  Width = 799
  object MawbSQL: TIBCQuery
    KeyFields = 'reference_number'
    KeyGenerator = 'MAWB_KEY_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO MAWB'
      
        '  (REFERENCE_YEAR, REFERENCE_NUMBER, DATE_ARRIVED, FK_COUNTRY_CO' +
        'NSIGNEE, FK_PORT_IMPORTATION, SIGNATORY_NAME, FORM_DATE, FLIGHT_' +
        'NUMBER, PASSED, ROTATION_NUMBER, ROTATION_YEAR, FK_PORT_CLEARING' +
        ', GOODS_NUMBER, GOODS_DESCRIPTION, CBOOK_NUMBER, MAWB_ID, INVOIC' +
        'ED, SENT_TO_HEAD, CUSTOMS_OVERTIME_HOURS, CUSTOMS_OVERTIME_RATE,' +
        ' STORAGE_EXPENSES, DELIVERY_EXPENSES, AMOUNT_NOT_INVOICED, AMOUN' +
        'T_INVOICED, DATE_PASSED, GOODS_WEIGHT, HAWBS_CLEARED_FIRST_TIME,' +
        ' HAWBS_IN_MAWB, DOCS_NUMBER, DOCS_WEIGHT, HIGH_VALUE_NUMBER, HIG' +
        'H_VALUE_WEIGHT, MEDIUM_VALUE_NUMBER, MEDIUM_VALUE_WEIGHT, LOW_VA' +
        'LUE_NUMBER, LOW_VALUE_WEIGHT, CUSTOMS_OVERTIME_RATE_TYPE, XML_CO' +
        'NSOLIDATED_ID, ROTATION_2, HMSD, LOW_VALUE_TDID, STATUSC_NUMBER,' +
        ' STATUSC_WEIGHT, TDID_NEW, F63, STATUSC, TDID_MEDIUM)'
      'VALUES'
      
        '  (:REFERENCE_YEAR, :REFERENCE_NUMBER, :DATE_ARRIVED, :FK_COUNTR' +
        'Y_CONSIGNEE, :FK_PORT_IMPORTATION, :SIGNATORY_NAME, :FORM_DATE, ' +
        ':FLIGHT_NUMBER, :PASSED, :ROTATION_NUMBER, :ROTATION_YEAR, :FK_P' +
        'ORT_CLEARING, :GOODS_NUMBER, :GOODS_DESCRIPTION, :CBOOK_NUMBER, ' +
        ':MAWB_ID, :INVOICED, :SENT_TO_HEAD, :CUSTOMS_OVERTIME_HOURS, :CU' +
        'STOMS_OVERTIME_RATE, :STORAGE_EXPENSES, :DELIVERY_EXPENSES, :AMO' +
        'UNT_NOT_INVOICED, :AMOUNT_INVOICED, :DATE_PASSED, :GOODS_WEIGHT,' +
        ' :HAWBS_CLEARED_FIRST_TIME, :HAWBS_IN_MAWB, :DOCS_NUMBER, :DOCS_' +
        'WEIGHT, :HIGH_VALUE_NUMBER, :HIGH_VALUE_WEIGHT, :MEDIUM_VALUE_NU' +
        'MBER, :MEDIUM_VALUE_WEIGHT, :LOW_VALUE_NUMBER, :LOW_VALUE_WEIGHT' +
        ', :CUSTOMS_OVERTIME_RATE_TYPE, :XML_CONSOLIDATED_ID, :ROTATION_2' +
        ', :HMSD, :LOW_VALUE_TDID, :STATUSC_NUMBER, :STATUSC_WEIGHT, :TDI' +
        'D_NEW, :F63, :STATUSC, :TDID_MEDIUM)')
    SQLDelete.Strings = (
      'DELETE FROM MAWB'
      'WHERE'
      '  REFERENCE_NUMBER = :Old_REFERENCE_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE MAWB'
      'SET'
      
        '  REFERENCE_YEAR = :REFERENCE_YEAR, REFERENCE_NUMBER = :REFERENC' +
        'E_NUMBER, DATE_ARRIVED = :DATE_ARRIVED, FK_COUNTRY_CONSIGNEE = :' +
        'FK_COUNTRY_CONSIGNEE, FK_PORT_IMPORTATION = :FK_PORT_IMPORTATION' +
        ', SIGNATORY_NAME = :SIGNATORY_NAME, FORM_DATE = :FORM_DATE, FLIG' +
        'HT_NUMBER = :FLIGHT_NUMBER, PASSED = :PASSED, ROTATION_NUMBER = ' +
        ':ROTATION_NUMBER, ROTATION_YEAR = :ROTATION_YEAR, FK_PORT_CLEARI' +
        'NG = :FK_PORT_CLEARING, GOODS_NUMBER = :GOODS_NUMBER, GOODS_DESC' +
        'RIPTION = :GOODS_DESCRIPTION, CBOOK_NUMBER = :CBOOK_NUMBER, MAWB' +
        '_ID = :MAWB_ID, INVOICED = :INVOICED, SENT_TO_HEAD = :SENT_TO_HE' +
        'AD, CUSTOMS_OVERTIME_HOURS = :CUSTOMS_OVERTIME_HOURS, CUSTOMS_OV' +
        'ERTIME_RATE = :CUSTOMS_OVERTIME_RATE, STORAGE_EXPENSES = :STORAG' +
        'E_EXPENSES, DELIVERY_EXPENSES = :DELIVERY_EXPENSES, AMOUNT_NOT_I' +
        'NVOICED = :AMOUNT_NOT_INVOICED, AMOUNT_INVOICED = :AMOUNT_INVOIC' +
        'ED, DATE_PASSED = :DATE_PASSED, GOODS_WEIGHT = :GOODS_WEIGHT, HA' +
        'WBS_CLEARED_FIRST_TIME = :HAWBS_CLEARED_FIRST_TIME, HAWBS_IN_MAW' +
        'B = :HAWBS_IN_MAWB, DOCS_NUMBER = :DOCS_NUMBER, DOCS_WEIGHT = :D' +
        'OCS_WEIGHT, HIGH_VALUE_NUMBER = :HIGH_VALUE_NUMBER, HIGH_VALUE_W' +
        'EIGHT = :HIGH_VALUE_WEIGHT, MEDIUM_VALUE_NUMBER = :MEDIUM_VALUE_' +
        'NUMBER, MEDIUM_VALUE_WEIGHT = :MEDIUM_VALUE_WEIGHT, LOW_VALUE_NU' +
        'MBER = :LOW_VALUE_NUMBER, LOW_VALUE_WEIGHT = :LOW_VALUE_WEIGHT, ' +
        'CUSTOMS_OVERTIME_RATE_TYPE = :CUSTOMS_OVERTIME_RATE_TYPE, XML_CO' +
        'NSOLIDATED_ID = :XML_CONSOLIDATED_ID, ROTATION_2 = :ROTATION_2, ' +
        'HMSD = :HMSD, LOW_VALUE_TDID = :LOW_VALUE_TDID, STATUSC_NUMBER =' +
        ' :STATUSC_NUMBER, STATUSC_WEIGHT = :STATUSC_WEIGHT, TDID_NEW = :' +
        'TDID_NEW, F63 = :F63, STATUSC = :STATUSC, TDID_MEDIUM = :TDID_ME' +
        'DIUM'
      'WHERE'
      '  REFERENCE_NUMBER = :Old_REFERENCE_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT REFERENCE_YEAR, REFERENCE_NUMBER, DATE_ARRIVED, FK_COUNTR' +
        'Y_CONSIGNEE, FK_PORT_IMPORTATION, SIGNATORY_NAME, FORM_DATE, FLI' +
        'GHT_NUMBER, PASSED, ROTATION_NUMBER, ROTATION_YEAR, FK_PORT_CLEA' +
        'RING, GOODS_NUMBER, GOODS_DESCRIPTION, CBOOK_NUMBER, MAWB_ID, IN' +
        'VOICED, SENT_TO_HEAD, CUSTOMS_OVERTIME_HOURS, CUSTOMS_OVERTIME_R' +
        'ATE, STORAGE_EXPENSES, DELIVERY_EXPENSES, AMOUNT_NOT_INVOICED, A' +
        'MOUNT_INVOICED, DATE_PASSED, GOODS_WEIGHT, HAWBS_CLEARED_FIRST_T' +
        'IME, HAWBS_IN_MAWB, DOCS_NUMBER, DOCS_WEIGHT, HIGH_VALUE_NUMBER,' +
        ' HIGH_VALUE_WEIGHT, MEDIUM_VALUE_NUMBER, MEDIUM_VALUE_WEIGHT, LO' +
        'W_VALUE_NUMBER, LOW_VALUE_WEIGHT, CUSTOMS_OVERTIME_RATE_TYPE, XM' +
        'L_CONSOLIDATED_ID, ROTATION_2, HMSD, LOW_VALUE_TDID, STATUSC_NUM' +
        'BER, STATUSC_WEIGHT, TDID_NEW, F63, STATUSC, TDID_MEDIUM FROM MA' +
        'WB'
      'WHERE'
      '  REFERENCE_NUMBER = :REFERENCE_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM MAWB'
      'WHERE'
      'REFERENCE_NUMBER = :Old_REFERENCE_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM MAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from Mawb'
      'where Reference_number = :mawbSerial')
    Active = True
    BeforePost = MawbSQLBeforePost
    OnNewRecord = MawbSQLNewRecord
    Left = 48
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mawbSerial'
        Value = nil
      end>
    object MawbSQLREFERENCE_YEAR: TSmallintField
      FieldName = 'REFERENCE_YEAR'
      Required = True
    end
    object MawbSQLREFERENCE_NUMBER: TIntegerField
      FieldName = 'REFERENCE_NUMBER'
    end
    object MawbSQLDATE_ARRIVED: TDateField
      FieldName = 'DATE_ARRIVED'
    end
    object MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField
      FieldName = 'FK_COUNTRY_CONSIGNEE'
    end
    object MawbSQLFK_PORT_IMPORTATION: TIntegerField
      FieldName = 'FK_PORT_IMPORTATION'
    end
    object MawbSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      Size = 50
    end
    object MawbSQLFORM_DATE: TDateField
      FieldName = 'FORM_DATE'
    end
    object MawbSQLFLIGHT_NUMBER: TStringField
      FieldName = 'FLIGHT_NUMBER'
      Size = 10
    end
    object MawbSQLPASSED: TStringField
      FieldName = 'PASSED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object MawbSQLROTATION_NUMBER: TIntegerField
      FieldName = 'ROTATION_NUMBER'
    end
    object MawbSQLROTATION_YEAR: TSmallintField
      FieldName = 'ROTATION_YEAR'
    end
    object MawbSQLFK_PORT_CLEARING: TIntegerField
      FieldName = 'FK_PORT_CLEARING'
    end
    object MawbSQLGOODS_NUMBER: TIntegerField
      FieldName = 'GOODS_NUMBER'
    end
    object MawbSQLGOODS_DESCRIPTION: TStringField
      FieldName = 'GOODS_DESCRIPTION'
    end
    object MawbSQLCBOOK_NUMBER: TStringField
      FieldName = 'CBOOK_NUMBER'
      Size = 10
    end
    object MawbSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      Required = True
      Size = 15
    end
    object MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField
      FieldName = 'CUSTOMS_OVERTIME_HOURS'
    end
    object MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField
      FieldName = 'CUSTOMS_OVERTIME_RATE'
    end
    object MawbSQLSTORAGE_EXPENSES: TFloatField
      FieldName = 'STORAGE_EXPENSES'
    end
    object MawbSQLDELIVERY_EXPENSES: TFloatField
      FieldName = 'DELIVERY_EXPENSES'
    end
    object MawbSQLAMOUNT_NOT_INVOICED: TFloatField
      FieldName = 'AMOUNT_NOT_INVOICED'
    end
    object MawbSQLAMOUNT_INVOICED: TFloatField
      FieldName = 'AMOUNT_INVOICED'
    end
    object MawbSQLDATE_PASSED: TDateField
      FieldName = 'DATE_PASSED'
    end
    object MawbSQLGOODS_WEIGHT: TIntegerField
      FieldName = 'GOODS_WEIGHT'
    end
    object MawbSQLHAWBS_CLEARED_FIRST_TIME: TIntegerField
      FieldName = 'HAWBS_CLEARED_FIRST_TIME'
    end
    object MawbSQLHAWBS_IN_MAWB: TIntegerField
      FieldName = 'HAWBS_IN_MAWB'
    end
    object MawbSQLDOCS_NUMBER: TIntegerField
      FieldName = 'DOCS_NUMBER'
    end
    object MawbSQLDOCS_WEIGHT: TFloatField
      FieldName = 'DOCS_WEIGHT'
    end
    object MawbSQLHIGH_VALUE_NUMBER: TIntegerField
      FieldName = 'HIGH_VALUE_NUMBER'
    end
    object MawbSQLHIGH_VALUE_WEIGHT: TFloatField
      FieldName = 'HIGH_VALUE_WEIGHT'
    end
    object MawbSQLMEDIUM_VALUE_NUMBER: TIntegerField
      FieldName = 'MEDIUM_VALUE_NUMBER'
    end
    object MawbSQLMEDIUM_VALUE_WEIGHT: TFloatField
      FieldName = 'MEDIUM_VALUE_WEIGHT'
    end
    object MawbSQLLOW_VALUE_NUMBER: TIntegerField
      FieldName = 'LOW_VALUE_NUMBER'
    end
    object MawbSQLLOW_VALUE_WEIGHT: TFloatField
      FieldName = 'LOW_VALUE_WEIGHT'
    end
    object MawbSQLCUSTOMS_OVERTIME_RATE_TYPE: TStringField
      FieldName = 'CUSTOMS_OVERTIME_RATE_TYPE'
      FixedChar = True
      Size = 3
    end
    object MawbSQLXML_CONSOLIDATED_ID: TStringField
      FieldName = 'XML_CONSOLIDATED_ID'
      FixedChar = True
      Size = 13
    end
    object MawbSQLROTATION_2: TStringField
      FieldName = 'ROTATION_2'
      FixedChar = True
      Size = 2
    end
    object MawbSQLHMSD: TStringField
      FieldName = 'HMSD'
      FixedChar = True
    end
    object MawbSQLLOW_VALUE_TDID: TStringField
      FieldName = 'LOW_VALUE_TDID'
      FixedChar = True
    end
    object MawbSQLSTATUSC_NUMBER: TIntegerField
      FieldName = 'STATUSC_NUMBER'
    end
    object MawbSQLSTATUSC_WEIGHT: TIntegerField
      FieldName = 'STATUSC_WEIGHT'
    end
    object MawbSQLTDID_NEW: TStringField
      FieldName = 'TDID_NEW'
      FixedChar = True
      Size = 15
    end
    object MawbSQLF63: TStringField
      FieldName = 'F63'
      FixedChar = True
      Size = 15
    end
    object MawbSQLSTATUSC: TStringField
      FieldName = 'STATUSC'
      FixedChar = True
      Size = 15
    end
    object MawbSQLTDID_MEDIUM: TStringField
      FieldName = 'TDID_MEDIUM'
      FixedChar = True
      Size = 15
    end
    object MawbSQLINVOICED: TStringField
      FieldName = 'INVOICED'
      FixedChar = True
      Size = 1
    end
    object MawbSQLDHL_EQUIPMENT_ID: TStringField
      FieldName = 'DHL_EQUIPMENT_ID'
      FixedChar = True
      Size = 15
    end
    object MawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      FixedChar = True
      Size = 1
    end
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 512
    Top = 24
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 424
    Top = 16
  end
  object HawbSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      
        '  (SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CUSTOMER_CODE' +
        ', FK_CLEARANCE_INSTRUCTION, DESCRIPTION, WEIGHT, FK_CLEARING_STA' +
        'TE, FK_INVOICE_STATUS, FK_CURRENCY, EXCHANGE_RATE, INVOICE_TOTAL' +
        ', FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT, OTH' +
        'ER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_INVOICABLE, CUSTOMS_VALU' +
        'E, INVOICE_SERIAL, COURIER_INVOICE_SERIAL, COURIER_INVOICE_VALUE' +
        ', HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER, EDE_STORAGE_EXPENSES, ED' +
        'E_DELIVERY_EXPENSES, DATE_INVOICED, SENT_TO_HEAD, NUM_OF_PIECES_' +
        'ARRIVED, TOTAL_NUM_OF_PIECES, FK_CLEARANCE_TYPE, FK_DELIVERY_TER' +
        'M, ORIGIN_STATION, EC2_NUMBER_DATE, SENDERS_INV_NO, NUMBER_OF_PA' +
        'RCELS, FK_CUSTOMER_ACCOUNT, DISTRICT, DELIVERY_ORDER_AMOUNT, OTH' +
        'ER2_CHARGE_AMOUNT, FK_OTHER2_CHARGE_CODE, POSOSTOSIS, TOTAL_DUTI' +
        'ES, CLEARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON, DATE_CLEAR' +
        'ED, DATE_REGISTERED, FACTOR, FK_COUNTRY_ORIGIN, CHARGE_TRL, CHAR' +
        'GE_VAT, CHARGE_EXCISE, CHARGE_IMPORT, INVOICABLE, TOTAL_CHARGES,' +
        ' CUSTOMER_NAME, EDE_COMMENTS, FK_MAWB_ID, SIGNATORY_NAME, XML_HO' +
        'USE_ID, SENDER_NAME, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_' +
        'ADDRESS_3, IS_PRIVATE, DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT, ' +
        'FK_OTHER4_CHARGE, IS_PAID, PARTIAL_FLAG, PARTIAL_WEIGHT, PARTIAL' +
        '_DELIVERY_ORDER_ID, PARTIAL_MAWB_ID, PARTIAL_PIECES, PARTIAL_MAW' +
        'B_REFER_NUMBER, STATUS_C, IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHARGED' +
        '_DELIVERY, IS_VALID, IS_PREPAID, OTHER5_CHARGE_AMOUNT, FK_DUTY_R' +
        'ELIEVE, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY, CUSTOMER_' +
        'VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT, IS_LOW, DESTINATION_STATION' +
        ', IS_OVERRIDE_MEDIUM, IS_FROM_BUCKET, BUCKET_REFERENCE_NUMBER, W' +
        'EIGHT_GROSS, PROCEDURE_CODE, IOSS, DUTY_BILLING_ACCOUNT, IS_LOCK' +
        'ED, FILE_NAME)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CUSTOMER_' +
        'CODE, :FK_CLEARANCE_INSTRUCTION, :DESCRIPTION, :WEIGHT, :FK_CLEA' +
        'RING_STATE, :FK_INVOICE_STATUS, :FK_CURRENCY, :EXCHANGE_RATE, :I' +
        'NVOICE_TOTAL, :FREIGHT_AMOUNT, :FK_OTHER_CHARGE_CODE, :OTHER_CHA' +
        'RGE_AMOUNT, :OTHER_CHARGE_PAID, :STAMPS_AMOUNT, :EXPS_NON_INVOIC' +
        'ABLE, :CUSTOMS_VALUE, :INVOICE_SERIAL, :COURIER_INVOICE_SERIAL, ' +
        ':COURIER_INVOICE_VALUE, :HIGH_VALUE, :FK_SEC_MAWB_REFER_NUMBER, ' +
        ':EDE_STORAGE_EXPENSES, :EDE_DELIVERY_EXPENSES, :DATE_INVOICED, :' +
        'SENT_TO_HEAD, :NUM_OF_PIECES_ARRIVED, :TOTAL_NUM_OF_PIECES, :FK_' +
        'CLEARANCE_TYPE, :FK_DELIVERY_TERM, :ORIGIN_STATION, :EC2_NUMBER_' +
        'DATE, :SENDERS_INV_NO, :NUMBER_OF_PARCELS, :FK_CUSTOMER_ACCOUNT,' +
        ' :DISTRICT, :DELIVERY_ORDER_AMOUNT, :OTHER2_CHARGE_AMOUNT, :FK_O' +
        'THER2_CHARGE_CODE, :POSOSTOSIS, :TOTAL_DUTIES, :CLEARANCE_WAITIN' +
        'G_CODE, :CLEARANCE_WAITING_REASON, :DATE_CLEARED, :DATE_REGISTER' +
        'ED, :FACTOR, :FK_COUNTRY_ORIGIN, :CHARGE_TRL, :CHARGE_VAT, :CHAR' +
        'GE_EXCISE, :CHARGE_IMPORT, :INVOICABLE, :TOTAL_CHARGES, :CUSTOME' +
        'R_NAME, :EDE_COMMENTS, :FK_MAWB_ID, :SIGNATORY_NAME, :XML_HOUSE_' +
        'ID, :SENDER_NAME, :SENDER_ADDRESS_1, :SENDER_ADDRESS_2, :SENDER_' +
        'ADDRESS_3, :IS_PRIVATE, :DELIVERY_ORDER_ID, :OTHER4_CHARGE_AMOUN' +
        'T, :FK_OTHER4_CHARGE, :IS_PAID, :PARTIAL_FLAG, :PARTIAL_WEIGHT, ' +
        ':PARTIAL_DELIVERY_ORDER_ID, :PARTIAL_MAWB_ID, :PARTIAL_PIECES, :' +
        'PARTIAL_MAWB_REFER_NUMBER, :STATUS_C, :IS_MEDIUM, :MEDIUM_VAT_RA' +
        'TE, :IS_CHARGED_DELIVERY, :IS_VALID, :IS_PREPAID, :OTHER5_CHARGE' +
        '_AMOUNT, :FK_DUTY_RELIEVE, :SENDER_POST_CODE, :SENDER_CITY, :SEN' +
        'DER_COUNTRY, :CUSTOMER_VAT_ID, :CUSTOMER_AUTHORITY_TO_AGENT, :IS' +
        '_LOW, :DESTINATION_STATION, :IS_OVERRIDE_MEDIUM, :IS_FROM_BUCKET' +
        ', :BUCKET_REFERENCE_NUMBER, :WEIGHT_GROSS, :PROCEDURE_CODE, :IOS' +
        'S, :DUTY_BILLING_ACCOUNT, :IS_LOCKED, :FILE_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, HAB_ID = :HAB_ID, FK_MAWB_REFE' +
        'R_NUMBER = :FK_MAWB_REFER_NUMBER, FK_CUSTOMER_CODE = :FK_CUSTOME' +
        'R_CODE, FK_CLEARANCE_INSTRUCTION = :FK_CLEARANCE_INSTRUCTION, DE' +
        'SCRIPTION = :DESCRIPTION, WEIGHT = :WEIGHT, FK_CLEARING_STATE = ' +
        ':FK_CLEARING_STATE, FK_INVOICE_STATUS = :FK_INVOICE_STATUS, FK_C' +
        'URRENCY = :FK_CURRENCY, EXCHANGE_RATE = :EXCHANGE_RATE, INVOICE_' +
        'TOTAL = :INVOICE_TOTAL, FREIGHT_AMOUNT = :FREIGHT_AMOUNT, FK_OTH' +
        'ER_CHARGE_CODE = :FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT = :O' +
        'THER_CHARGE_AMOUNT, OTHER_CHARGE_PAID = :OTHER_CHARGE_PAID, STAM' +
        'PS_AMOUNT = :STAMPS_AMOUNT, EXPS_NON_INVOICABLE = :EXPS_NON_INVO' +
        'ICABLE, CUSTOMS_VALUE = :CUSTOMS_VALUE, INVOICE_SERIAL = :INVOIC' +
        'E_SERIAL, COURIER_INVOICE_SERIAL = :COURIER_INVOICE_SERIAL, COUR' +
        'IER_INVOICE_VALUE = :COURIER_INVOICE_VALUE, HIGH_VALUE = :HIGH_V' +
        'ALUE, FK_SEC_MAWB_REFER_NUMBER = :FK_SEC_MAWB_REFER_NUMBER, EDE_' +
        'STORAGE_EXPENSES = :EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES ' +
        '= :EDE_DELIVERY_EXPENSES, DATE_INVOICED = :DATE_INVOICED, SENT_T' +
        'O_HEAD = :SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED = :NUM_OF_PIECES_A' +
        'RRIVED, TOTAL_NUM_OF_PIECES = :TOTAL_NUM_OF_PIECES, FK_CLEARANCE' +
        '_TYPE = :FK_CLEARANCE_TYPE, FK_DELIVERY_TERM = :FK_DELIVERY_TERM' +
        ', ORIGIN_STATION = :ORIGIN_STATION, EC2_NUMBER_DATE = :EC2_NUMBE' +
        'R_DATE, SENDERS_INV_NO = :SENDERS_INV_NO, NUMBER_OF_PARCELS = :N' +
        'UMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT = :FK_CUSTOMER_ACCOUNT, DI' +
        'STRICT = :DISTRICT, DELIVERY_ORDER_AMOUNT = :DELIVERY_ORDER_AMOU' +
        'NT, OTHER2_CHARGE_AMOUNT = :OTHER2_CHARGE_AMOUNT, FK_OTHER2_CHAR' +
        'GE_CODE = :FK_OTHER2_CHARGE_CODE, POSOSTOSIS = :POSOSTOSIS, TOTA' +
        'L_DUTIES = :TOTAL_DUTIES, CLEARANCE_WAITING_CODE = :CLEARANCE_WA' +
        'ITING_CODE, CLEARANCE_WAITING_REASON = :CLEARANCE_WAITING_REASON' +
        ', DATE_CLEARED = :DATE_CLEARED, DATE_REGISTERED = :DATE_REGISTER' +
        'ED, FACTOR = :FACTOR, FK_COUNTRY_ORIGIN = :FK_COUNTRY_ORIGIN, CH' +
        'ARGE_TRL = :CHARGE_TRL, CHARGE_VAT = :CHARGE_VAT, CHARGE_EXCISE ' +
        '= :CHARGE_EXCISE, CHARGE_IMPORT = :CHARGE_IMPORT, INVOICABLE = :' +
        'INVOICABLE, TOTAL_CHARGES = :TOTAL_CHARGES, CUSTOMER_NAME = :CUS' +
        'TOMER_NAME, EDE_COMMENTS = :EDE_COMMENTS, FK_MAWB_ID = :FK_MAWB_' +
        'ID, SIGNATORY_NAME = :SIGNATORY_NAME, XML_HOUSE_ID = :XML_HOUSE_' +
        'ID, SENDER_NAME = :SENDER_NAME, SENDER_ADDRESS_1 = :SENDER_ADDRE' +
        'SS_1, SENDER_ADDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADDRESS_3 = :' +
        'SENDER_ADDRESS_3, IS_PRIVATE = :IS_PRIVATE, DELIVERY_ORDER_ID = ' +
        ':DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT = :OTHER4_CHARGE_AMOUNT' +
        ', FK_OTHER4_CHARGE = :FK_OTHER4_CHARGE, IS_PAID = :IS_PAID, PART' +
        'IAL_FLAG = :PARTIAL_FLAG, PARTIAL_WEIGHT = :PARTIAL_WEIGHT, PART' +
        'IAL_DELIVERY_ORDER_ID = :PARTIAL_DELIVERY_ORDER_ID, PARTIAL_MAWB' +
        '_ID = :PARTIAL_MAWB_ID, PARTIAL_PIECES = :PARTIAL_PIECES, PARTIA' +
        'L_MAWB_REFER_NUMBER = :PARTIAL_MAWB_REFER_NUMBER, STATUS_C = :ST' +
        'ATUS_C, IS_MEDIUM = :IS_MEDIUM, MEDIUM_VAT_RATE = :MEDIUM_VAT_RA' +
        'TE, IS_CHARGED_DELIVERY = :IS_CHARGED_DELIVERY, IS_VALID = :IS_V' +
        'ALID, IS_PREPAID = :IS_PREPAID, OTHER5_CHARGE_AMOUNT = :OTHER5_C' +
        'HARGE_AMOUNT, FK_DUTY_RELIEVE = :FK_DUTY_RELIEVE, SENDER_POST_CO' +
        'DE = :SENDER_POST_CODE, SENDER_CITY = :SENDER_CITY, SENDER_COUNT' +
        'RY = :SENDER_COUNTRY, CUSTOMER_VAT_ID = :CUSTOMER_VAT_ID, CUSTOM' +
        'ER_AUTHORITY_TO_AGENT = :CUSTOMER_AUTHORITY_TO_AGENT, IS_LOW = :' +
        'IS_LOW, DESTINATION_STATION = :DESTINATION_STATION, IS_OVERRIDE_' +
        'MEDIUM = :IS_OVERRIDE_MEDIUM, IS_FROM_BUCKET = :IS_FROM_BUCKET, ' +
        'BUCKET_REFERENCE_NUMBER = :BUCKET_REFERENCE_NUMBER, WEIGHT_GROSS' +
        ' = :WEIGHT_GROSS, PROCEDURE_CODE = :PROCEDURE_CODE, IOSS = :IOSS' +
        ', DUTY_BILLING_ACCOUNT = :DUTY_BILLING_ACCOUNT, IS_LOCKED = :IS_' +
        'LOCKED, FILE_NAME = :FILE_NAME'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CUSTOMER_' +
        'CODE, FK_CLEARANCE_INSTRUCTION, DESCRIPTION, WEIGHT, FK_CLEARING' +
        '_STATE, FK_INVOICE_STATUS, FK_CURRENCY, EXCHANGE_RATE, INVOICE_T' +
        'OTAL, FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT,' +
        ' OTHER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_INVOICABLE, CUSTOMS_' +
        'VALUE, INVOICE_SERIAL, COURIER_INVOICE_SERIAL, COURIER_INVOICE_V' +
        'ALUE, HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER, EDE_STORAGE_EXPENSES' +
        ', EDE_DELIVERY_EXPENSES, DATE_INVOICED, SENT_TO_HEAD, NUM_OF_PIE' +
        'CES_ARRIVED, TOTAL_NUM_OF_PIECES, FK_CLEARANCE_TYPE, FK_DELIVERY' +
        '_TERM, ORIGIN_STATION, EC2_NUMBER_DATE, SENDERS_INV_NO, NUMBER_O' +
        'F_PARCELS, FK_CUSTOMER_ACCOUNT, DISTRICT, DELIVERY_ORDER_AMOUNT,' +
        ' OTHER2_CHARGE_AMOUNT, FK_OTHER2_CHARGE_CODE, POSOSTOSIS, TOTAL_' +
        'DUTIES, CLEARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON, DATE_C' +
        'LEARED, DATE_REGISTERED, FACTOR, FK_COUNTRY_ORIGIN, CHARGE_TRL, ' +
        'CHARGE_VAT, CHARGE_EXCISE, CHARGE_IMPORT, INVOICABLE, TOTAL_CHAR' +
        'GES, CUSTOMER_NAME, EDE_COMMENTS, FK_MAWB_ID, SIGNATORY_NAME, XM' +
        'L_HOUSE_ID, SENDER_NAME, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SEN' +
        'DER_ADDRESS_3, IS_PRIVATE, DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOU' +
        'NT, FK_OTHER4_CHARGE, IS_PAID, PARTIAL_FLAG, PARTIAL_WEIGHT, PAR' +
        'TIAL_DELIVERY_ORDER_ID, PARTIAL_MAWB_ID, PARTIAL_PIECES, PARTIAL' +
        '_MAWB_REFER_NUMBER, STATUS_C, IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHA' +
        'RGED_DELIVERY, IS_VALID, IS_PREPAID, OTHER5_CHARGE_AMOUNT, FK_DU' +
        'TY_RELIEVE, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY, CUSTO' +
        'MER_VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT, IS_LOW, DESTINATION_STA' +
        'TION, IS_OVERRIDE_MEDIUM, IS_FROM_BUCKET, BUCKET_REFERENCE_NUMBE' +
        'R, WEIGHT_GROSS, PROCEDURE_CODE, IOSS, DUTY_BILLING_ACCOUNT, IS_' +
        'LOCKED, FILE_NAME FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select ha.*,'
      
        'ssi.pre_discount_amount,ssi.invoice_amount_cyp, ssi.customs_valu' +
        'e as SenderCustomValue,ssi.currency,'
      'cu.company_or_person,'
      
        'pe.serial_number as Pending_serial, se.serial_Number as Sent_ser' +
        'ial, fa.serial_number as failed_serial'
      'from hawb ha'
      
        'left outer join sender_invoice ssi on ha.serial_number=ssi.fk_ha' +
        'wb_serial'
      'left outer join customer cu on cu.code = ha.fk_customer_code'
      
        'left outer join low_pending pe on ha.serial_number= pe.hawb_seri' +
        'al_number'
      
        'left outer join low_Send se on ha.serial_number= se.hawb_serial_' +
        'number'
      
        'left outer join low_Failed fa on ha.serial_number= fa.hawb_seria' +
        'l_number'
      'order by ha.hab_id asc'
      '')
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    MasterSource = MawbSRC
    Active = True
    Left = 48
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REFERENCE_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object HawbSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = '* S/N'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object HawbSQLHAB_ID: TStringField
      DisplayLabel = 'Hawb'
      DisplayWidth = 14
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object HawbSQLFK_CLEARING_STATE: TStringField
      DisplayLabel = 'Ready'
      DisplayWidth = 8
      FieldName = 'FK_CLEARING_STATE'
      Size = 1
    end
    object HawbSQLFK_INVOICE_STATUS: TStringField
      DisplayLabel = 'Inv'
      DisplayWidth = 5
      FieldName = 'FK_INVOICE_STATUS'
      Size = 1
    end
    object HawbSQLPROCEDURE_CODE: TStringField
      DisplayLabel = 'Proc'
      DisplayWidth = 6
      FieldName = 'PROCEDURE_CODE'
      Size = 10
    end
    object HawbSQLXML_HOUSE_ID: TStringField
      DisplayLabel = 'TDID'
      DisplayWidth = 14
      FieldName = 'XML_HOUSE_ID'
      FixedChar = True
      Size = 13
    end
    object HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField
      DisplayLabel = 'Type'
      DisplayWidth = 7
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      FixedChar = True
      Size = 5
    end
    object HawbSQLCLEARANCE_WAITING_CODE: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 8
      FieldName = 'CLEARANCE_WAITING_CODE'
      FixedChar = True
      Size = 5
    end
    object HawbSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 24
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object HawbSQLCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer Name'
      DisplayWidth = 23
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object HawbSQLWEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 9
      FieldName = 'WEIGHT'
      DisplayFormat = '0.00'
    end
    object HawbSQLWEIGHT_GROSS: TFloatField
      DisplayLabel = 'Gross'
      DisplayWidth = 10
      FieldName = 'WEIGHT_GROSS'
    end
    object HawbSQLPRE_DISCOUNT_AMOUNT: TFloatField
      DisplayLabel = 'Inv Amount'
      DisplayWidth = 12
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object HawbSQLCURRENCY: TStringField
      DisplayLabel = 'Currency'
      DisplayWidth = 10
      FieldName = 'CURRENCY'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object HawbSQLSENDERCUSTOMVALUE: TFloatField
      DisplayLabel = 'Customs Val'
      DisplayWidth = 14
      FieldName = 'SENDERCUSTOMVALUE'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object HawbSQLPENDING_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'PENDING_SERIAL'
      ReadOnly = True
      Visible = False
    end
    object HawbSQLDATE_REGISTERED: TDateField
      DisplayLabel = 'Date Registered'
      DisplayWidth = 15
      FieldName = 'DATE_REGISTERED'
      Visible = False
    end
    object HawbSQLIS_MEDIUM: TStringField
      DisplayLabel = 'As Med'
      DisplayWidth = 6
      FieldName = 'IS_MEDIUM'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_LOW: TStringField
      DisplayLabel = 'Only Vat'
      DisplayWidth = 1
      FieldName = 'IS_LOW'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLExpanded: TStringField
      DisplayLabel = 'Ch'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'Expanded'
      Visible = False
      Size = 10
      Calculated = True
    end
    object HawbSQLDELIVERY_ORDER_ID: TStringField
      DisplayLabel = 'Delivery ID'
      DisplayWidth = 11
      FieldName = 'DELIVERY_ORDER_ID'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object HawbSQLFACTOR: TFloatField
      DisplayWidth = 10
      FieldName = 'FACTOR'
      Visible = False
    end
    object HawbSQLOTHER_CHARGE_PAID: TStringField
      DisplayLabel = 'D/O'
      DisplayWidth = 3
      FieldName = 'OTHER_CHARGE_PAID'
      Visible = False
      Size = 1
    end
    object HawbSQLCHARGE_TRL: TFloatField
      DisplayLabel = 'TRL~Duty'
      DisplayWidth = 5
      FieldName = 'CHARGE_TRL'
      Visible = False
    end
    object HawbSQLCHARGE_IMPORT: TFloatField
      DisplayLabel = 'Import~Duty'
      DisplayWidth = 6
      FieldName = 'CHARGE_IMPORT'
      Visible = False
    end
    object HawbSQLCHARGE_EXCISE: TFloatField
      DisplayLabel = 'Excise~Duty'
      DisplayWidth = 6
      FieldName = 'CHARGE_EXCISE'
      Visible = False
    end
    object HawbSQLEDE_DELIVERY_EXPENSES: TFloatField
      DisplayLabel = 'Deliv~Expn'
      DisplayWidth = 5
      FieldName = 'EDE_DELIVERY_EXPENSES'
      Visible = False
    end
    object HawbSQLCHARGE_VAT: TFloatField
      DisplayLabel = 'Vat~Duty'
      DisplayWidth = 5
      FieldName = 'CHARGE_VAT'
      Visible = False
    end
    object HawbSQLEDE_STORAGE_EXPENSES: TFloatField
      DisplayLabel = 'Stor~Expn'
      DisplayWidth = 4
      FieldName = 'EDE_STORAGE_EXPENSES'
      Visible = False
    end
    object HawbSQLOTHER_CHARGE_AMOUNT: TFloatField
      DisplayLabel = 'Other~Chrg'
      DisplayWidth = 5
      FieldName = 'OTHER_CHARGE_AMOUNT'
      Visible = False
    end
    object HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField
      DisplayLabel = 'DHL~Charge'
      DisplayWidth = 6
      FieldName = 'OTHER4_CHARGE_AMOUNT'
      Visible = False
    end
    object HawbSQLTOTAL_CHARGES: TFloatField
      DisplayLabel = 'Cust~charg'
      DisplayWidth = 6
      FieldName = 'TOTAL_CHARGES'
      Visible = False
    end
    object HawbSQLHIGH_VALUE: TStringField
      DisplayLabel = 'Ede~High'
      DisplayWidth = 4
      FieldName = 'HIGH_VALUE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLSTATUS_C: TStringField
      DisplayLabel = 'Status~C'
      DisplayWidth = 5
      FieldName = 'STATUS_C'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_PAID: TStringField
      DisplayLabel = 'DTP'
      DisplayWidth = 3
      FieldName = 'IS_PAID'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
      Visible = False
    end
    object HawbSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
      Visible = False
    end
    object HawbSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Visible = False
      Size = 3
    end
    object HawbSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Visible = False
    end
    object HawbSQLINVOICE_TOTAL: TFloatField
      FieldName = 'INVOICE_TOTAL'
      Visible = False
    end
    object HawbSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
      Visible = False
    end
    object HawbSQLFK_OTHER_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER_CHARGE_CODE'
      Visible = False
      Size = 6
    end
    object HawbSQLSTAMPS_AMOUNT: TFloatField
      FieldName = 'STAMPS_AMOUNT'
      Visible = False
    end
    object HawbSQLEXPS_NON_INVOICABLE: TFloatField
      FieldName = 'EXPS_NON_INVOICABLE'
      Visible = False
    end
    object HawbSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
      Visible = False
    end
    object HawbSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
      Visible = False
    end
    object HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField
      FieldName = 'COURIER_INVOICE_SERIAL'
      Visible = False
    end
    object HawbSQLCOURIER_INVOICE_VALUE: TFloatField
      FieldName = 'COURIER_INVOICE_VALUE'
      Visible = False
    end
    object HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_SEC_MAWB_REFER_NUMBER'
      Visible = False
    end
    object HawbSQLDATE_INVOICED: TDateField
      FieldName = 'DATE_INVOICED'
      Visible = False
    end
    object HawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
      Visible = False
    end
    object HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
      Visible = False
    end
    object HawbSQLFK_CLEARANCE_TYPE: TStringField
      FieldName = 'FK_CLEARANCE_TYPE'
      Visible = False
      Size = 12
    end
    object HawbSQLFK_DELIVERY_TERM: TStringField
      FieldName = 'FK_DELIVERY_TERM'
      Visible = False
      Size = 3
    end
    object HawbSQLORIGIN_STATION: TStringField
      FieldName = 'ORIGIN_STATION'
      Visible = False
      Size = 12
    end
    object HawbSQLEC2_NUMBER_DATE: TStringField
      FieldName = 'EC2_NUMBER_DATE'
      Visible = False
      Size = 40
    end
    object HawbSQLSENDERS_INV_NO: TStringField
      FieldName = 'SENDERS_INV_NO'
      Visible = False
      Size = 50
    end
    object HawbSQLNUMBER_OF_PARCELS: TIntegerField
      FieldName = 'NUMBER_OF_PARCELS'
      Visible = False
    end
    object HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField
      FieldName = 'FK_CUSTOMER_ACCOUNT'
      Visible = False
    end
    object HawbSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField
      FieldName = 'DELIVERY_ORDER_AMOUNT'
      Visible = False
    end
    object HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER2_CHARGE_AMOUNT'
      Visible = False
    end
    object HawbSQLFK_OTHER2_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER2_CHARGE_CODE'
      Visible = False
      FixedChar = True
      Size = 6
    end
    object HawbSQLTOTAL_DUTIES: TFloatField
      FieldName = 'TOTAL_DUTIES'
      Visible = False
    end
    object HawbSQLCLEARANCE_WAITING_REASON: TStringField
      FieldName = 'CLEARANCE_WAITING_REASON'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object HawbSQLDATE_CLEARED: TDateField
      FieldName = 'DATE_CLEARED'
      Visible = False
    end
    object HawbSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
      Visible = False
    end
    object HawbSQLINVOICABLE: TStringField
      FieldName = 'INVOICABLE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLEDE_COMMENTS: TStringField
      FieldName = 'EDE_COMMENTS'
      Visible = False
      Size = 100
    end
    object HawbSQLFK_MAWB_ID: TStringField
      FieldName = 'FK_MAWB_ID'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object HawbSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object HawbSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object HawbSQLIS_PRIVATE: TStringField
      FieldName = 'IS_PRIVATE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLFK_OTHER4_CHARGE: TStringField
      FieldName = 'FK_OTHER4_CHARGE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object HawbSQLPARTIAL_FLAG: TStringField
      FieldName = 'PARTIAL_FLAG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLPARTIAL_WEIGHT: TFloatField
      FieldName = 'PARTIAL_WEIGHT'
      Visible = False
    end
    object HawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField
      FieldName = 'PARTIAL_DELIVERY_ORDER_ID'
      Visible = False
      Size = 10
    end
    object HawbSQLPARTIAL_MAWB_ID: TStringField
      FieldName = 'PARTIAL_MAWB_ID'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object HawbSQLPARTIAL_PIECES: TIntegerField
      FieldName = 'PARTIAL_PIECES'
      Visible = False
    end
    object HawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'PARTIAL_MAWB_REFER_NUMBER'
      Visible = False
    end
    object HawbSQLMEDIUM_VAT_RATE: TFloatField
      FieldName = 'MEDIUM_VAT_RATE'
      Visible = False
    end
    object HawbSQLIS_CHARGED_DELIVERY: TStringField
      FieldName = 'IS_CHARGED_DELIVERY'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_VALID: TStringField
      FieldName = 'IS_VALID'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_PREPAID: TStringField
      FieldName = 'IS_PREPAID'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLOTHER5_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER5_CHARGE_AMOUNT'
      Visible = False
    end
    object HawbSQLFK_DUTY_RELIEVE: TStringField
      FieldName = 'FK_DUTY_RELIEVE'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object HawbSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLSENDER_POST_CODE: TStringField
      FieldName = 'SENDER_POST_CODE'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_CITY: TStringField
      FieldName = 'SENDER_CITY'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_COUNTRY: TStringField
      FieldName = 'SENDER_COUNTRY'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object HawbSQLIS_OVERRIDE_MEDIUM: TStringField
      FieldName = 'IS_OVERRIDE_MEDIUM'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbSQLCOMPANY_OR_PERSON: TStringField
      FieldName = 'COMPANY_OR_PERSON'
      ReadOnly = True
      Visible = False
      Size = 1
    end
    object HawbSQLINVOICE_AMOUNT_CYP: TFloatField
      FieldName = 'INVOICE_AMOUNT_CYP'
      ReadOnly = True
      Visible = False
    end
    object HawbSQLSENT_SERIAL: TIntegerField
      FieldName = 'SENT_SERIAL'
      ReadOnly = True
      Visible = False
    end
    object HawbSQLFAILED_SERIAL: TIntegerField
      FieldName = 'FAILED_SERIAL'
      ReadOnly = True
      Visible = False
    end
    object HawbSQLIS_LOCKED: TStringField
      FieldName = 'IS_LOCKED'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object MawbSRC: TIBCDataSource
    DataSet = MawbSQL
    OnStateChange = MawbSRCStateChange
    Left = 184
    Top = 104
  end
  object MawbSelectSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO MAWB'
      '  (REFERENCE_NUMBER, DATE_ARRIVED, MAWB_ID)'
      'VALUES'
      '  (:REFERENCE_NUMBER, :DATE_ARRIVED, :MAWB_ID)')
    SQLDelete.Strings = (
      'DELETE FROM MAWB'
      'WHERE'
      '  REFERENCE_NUMBER = :Old_REFERENCE_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE MAWB'
      'SET'
      
        '  REFERENCE_NUMBER = :REFERENCE_NUMBER, DATE_ARRIVED = :DATE_ARR' +
        'IVED, MAWB_ID = :MAWB_ID'
      'WHERE'
      '  REFERENCE_NUMBER = :Old_REFERENCE_NUMBER')
    SQLRefresh.Strings = (
      'SELECT REFERENCE_NUMBER, DATE_ARRIVED, MAWB_ID FROM MAWB'
      'WHERE'
      '  REFERENCE_NUMBER = :REFERENCE_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM MAWB'
      'WHERE'
      'REFERENCE_NUMBER = :Old_REFERENCE_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM MAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    SQL.Strings = (
      'Select first 70 reference_number, mawb_id,date_arrived '
      'from '
      'Mawb '
      'order by reference_number desc')
    ReadOnly = True
    Active = True
    Left = 45
    Top = 18
    object MawbSelectSQLREFERENCE_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 10
      FieldName = 'REFERENCE_NUMBER'
      Required = True
    end
    object MawbSelectSQLMAWB_ID: TStringField
      DisplayLabel = 'Mawb ID'
      DisplayWidth = 15
      FieldName = 'MAWB_ID'
      Size = 15
    end
    object MawbSelectSQLDATE_ARRIVED: TDateField
      DisplayLabel = 'Arrived'
      DisplayWidth = 15
      FieldName = 'DATE_ARRIVED'
    end
  end
  object MawbSelectSRC: TIBCDataSource
    DataSet = MawbSelectSQL
    Left = 156
    Top = 34
  end
  object HawbSRC: TIBCDataSource
    DataSet = HawbSQL
    Left = 144
    Top = 176
  end
  object HawbMediumValueSRC: TIBCDataSource
    DataSet = HawbMediumValueSQL
    Left = 708
    Top = 37
  end
  object HawbMediumValueSQL: TIBCQuery
    DMLRefresh = True
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      
        '  (HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARING_STATE, FK_INVOICE_S' +
        'TATUS, DESCRIPTION, FK_CUSTOMER_CODE, WEIGHT, EXCHANGE_RATE, SER' +
        'IAL_NUMBER, CUSTOMER_NAME, IS_MEDIUM, MEDIUM_VAT_RATE)'
      'VALUES'
      
        '  (:HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CLEARING_STATE, :FK_INVOI' +
        'CE_STATUS, :DESCRIPTION, :FK_CUSTOMER_CODE, :WEIGHT, :EXCHANGE_R' +
        'ATE, :SERIAL_NUMBER, :CUSTOMER_NAME, :IS_MEDIUM, :MEDIUM_VAT_RAT' +
        'E)'
      'RETURNING '
      
        '  HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARING_STATE, FK_INVOICE_ST' +
        'ATUS, DESCRIPTION, FK_CUSTOMER_CODE, WEIGHT, EXCHANGE_RATE, SERI' +
        'AL_NUMBER, CUSTOMER_NAME, IS_MEDIUM, MEDIUM_VAT_RATE')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      
        '  HAB_ID = :HAB_ID, FK_MAWB_REFER_NUMBER = :FK_MAWB_REFER_NUMBER' +
        ', FK_CLEARING_STATE = :FK_CLEARING_STATE, FK_INVOICE_STATUS = :F' +
        'K_INVOICE_STATUS, DESCRIPTION = :DESCRIPTION, FK_CUSTOMER_CODE =' +
        ' :FK_CUSTOMER_CODE, WEIGHT = :WEIGHT, EXCHANGE_RATE = :EXCHANGE_' +
        'RATE, SERIAL_NUMBER = :SERIAL_NUMBER, CUSTOMER_NAME = :CUSTOMER_' +
        'NAME, IS_MEDIUM = :IS_MEDIUM, MEDIUM_VAT_RATE = :MEDIUM_VAT_RATE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      'select '
      
        'hab_id, serial_number, fk_mawb_refer_number, ha.fk_clearing_Stat' +
        'e,fk_invoice_status, ha.IS_MEDIUM,ha.Description, ha.FK_Customer' +
        '_code,ha.MEDIUM_VAT_RATE,'
      
        'ha.fk_customer_code,ha.Customer_name, ha.weight,ha.exchange_rate' +
        ','
      'se.invoice_amount,se.currency,se.Customs_value'
      'from hawb ha left outer join sender_invoice se'
      'on'
      '  se.fk_hawb_serial=ha.serial_number'
      'where '
      'ha.fk_clearance_instruction='#39'MED'#39
      'order by Hab_id'
      '')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select '
      
        'hab_id, serial_number, fk_mawb_refer_number, ha.fk_clearing_Stat' +
        'e,fk_invoice_status, ha.IS_MEDIUM,ha.Description, ha.FK_Customer' +
        '_code,ha.MEDIUM_VAT_RATE,'
      
        'ha.fk_customer_code,ha.Customer_name, ha.weight,ha.exchange_rate' +
        ','
      'se.invoice_amount,se.currency,se.Customs_value'
      'from hawb ha left outer join sender_invoice se'
      'on'
      '  se.fk_hawb_serial=ha.serial_number'
      'where '
      'ha.fk_clearance_instruction='#39'MED'#39
      'order by Hab_id')
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    MasterSource = MawbSRC
    Active = True
    Left = 592
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REFERENCE_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object HawbMediumValueSQLHAB_ID: TStringField
      DisplayLabel = 'Hawb'
      DisplayWidth = 10
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object HawbMediumValueSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 13
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object HawbMediumValueSQLFK_CUSTOMER_CODE: TIntegerField
      DisplayLabel = 'Cust'
      DisplayWidth = 4
      FieldName = 'FK_CUSTOMER_CODE'
    end
    object HawbMediumValueSQLCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer'
      DisplayWidth = 12
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object HawbMediumValueSQLFK_CLEARING_STATE: TStringField
      DisplayLabel = 'Clr'
      DisplayWidth = 3
      FieldName = 'FK_CLEARING_STATE'
      Size = 1
    end
    object HawbMediumValueSQLFK_INVOICE_STATUS: TStringField
      DisplayLabel = 'Inv'
      DisplayWidth = 3
      FieldName = 'FK_INVOICE_STATUS'
      Size = 1
    end
    object HawbMediumValueSQLINVOICE_AMOUNT: TFloatField
      DisplayLabel = 'Invoice~Amount'
      DisplayWidth = 9
      FieldName = 'INVOICE_AMOUNT'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object HawbMediumValueSQLCURRENCY: TStringField
      DisplayLabel = 'Cur'
      DisplayWidth = 5
      FieldName = 'CURRENCY'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object HawbMediumValueSQLMEDIUM_VAT_RATE: TFloatField
      DisplayLabel = 'VAT~Rate'
      DisplayWidth = 4
      FieldName = 'MEDIUM_VAT_RATE'
    end
    object HawbMediumValueSQLCUSTOMS_VALUE: TFloatField
      DisplayLabel = 'Customs~Value'
      DisplayWidth = 9
      FieldName = 'CUSTOMS_VALUE'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object HawbMediumValueSQLWEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 6
      FieldName = 'WEIGHT'
      DisplayFormat = '0.00'
    end
    object HawbMediumValueSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object HawbMediumValueSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
      Visible = False
    end
    object HawbMediumValueSQLIS_MEDIUM: TStringField
      FieldName = 'IS_MEDIUM'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbMediumValueSQLFK_CUSTOMER_CODE_1: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE_1'
      Visible = False
    end
    object HawbMediumValueSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Visible = False
    end
  end
  object PartialHawbSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'HAWB_PARTIAL_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO HAWB_PARTIAL'
      
        '  (SERIAL_NUMBER, FK_MAWB_SERIAL_ORIGINAL, FK_HAWB_SERIAL_ORIGIN' +
        'AL, FK_HAWB_ID_ORIGINAL, PARTIAL_PIECES, PARTIAL_DELIVERY_ORDER_' +
        'ID, PARTIAL_WEIGHT, DESCRIPTION)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_MAWB_SERIAL_ORIGINAL, :FK_HAWB_SERIAL_ORI' +
        'GINAL, :FK_HAWB_ID_ORIGINAL, :PARTIAL_PIECES, :PARTIAL_DELIVERY_' +
        'ORDER_ID, :PARTIAL_WEIGHT, :DESCRIPTION)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB_PARTIAL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB_PARTIAL'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_MAWB_SERIAL_ORIGINAL = :FK_' +
        'MAWB_SERIAL_ORIGINAL, FK_HAWB_SERIAL_ORIGINAL = :FK_HAWB_SERIAL_' +
        'ORIGINAL, FK_HAWB_ID_ORIGINAL = :FK_HAWB_ID_ORIGINAL, PARTIAL_PI' +
        'ECES = :PARTIAL_PIECES, PARTIAL_DELIVERY_ORDER_ID = :PARTIAL_DEL' +
        'IVERY_ORDER_ID, PARTIAL_WEIGHT = :PARTIAL_WEIGHT, DESCRIPTION = ' +
        ':DESCRIPTION'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'sELECT  hp.SERIAL_NUMBER, hp.FK_HAWB_SERIAL_ORIGINAL, hp.fk_hawb' +
        '_id_original, hp.FK_MAWB_SERIAL_ORIGINAL,     hp.PARTIAL_PIECES,' +
        '  hp.PARTIAL_DELIVERY_ORDER_ID,  hp.PARTIAL_WEIGHT,  hp.DESCRIPT' +
        'ION,'
      ' ma.mawb_id as MawbIdOriginal FROM hAWB_PARTIAL hp'
      'left outer join mawb ma'
      'on hp.fk_mawb_serial_original=ma.reference_number'
      'SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB_PARTIAL'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB_PARTIAL'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      
        'sELECT  hp.SERIAL_NUMBER, hp.FK_HAWB_SERIAL_ORIGINAL, hp.fk_hawb' +
        '_id_original, hp.FK_MAWB_SERIAL_ORIGINAL,  hp.fk_mawb_serial_arr' +
        'ived,   hp.PARTIAL_PIECES,  hp.PARTIAL_DELIVERY_ORDER_ID,  hp.PA' +
        'RTIAL_WEIGHT,  hp.DESCRIPTION,'
      ' ma.mawb_id as MawbIdOriginal FROM hAWB_PARTIAL hp'
      'left outer join mawb ma'
      'on hp.fk_mawb_serial_original=ma.reference_number')
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_SERIAL_ARRIVED'
    MasterSource = MawbSRC
    Active = True
    Left = 24
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REFERENCE_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object PartialHawbSQLFK_HAWB_ID_ORIGINAL: TStringField
      DisplayLabel = 'Hawb ID'
      DisplayWidth = 12
      FieldName = 'FK_HAWB_ID_ORIGINAL'
      Required = True
      Size = 10
    end
    object PartialHawbSQLFK_HAWB_SERIAL_ORIGINAL: TIntegerField
      DisplayLabel = 'Hawb Origianal S/N'
      DisplayWidth = 10
      FieldName = 'FK_HAWB_SERIAL_ORIGINAL'
      Required = True
    end
    object PartialHawbSQLMAWBIDORIGINAL: TStringField
      DisplayLabel = 'Mawb Id Original'
      DisplayWidth = 15
      FieldName = 'MAWBIDORIGINAL'
      ReadOnly = True
      Size = 15
    end
    object PartialHawbSQLFK_MAWB_SERIAL_ORIGINAL: TIntegerField
      DisplayLabel = 'Mawb Ref Original'
      DisplayWidth = 15
      FieldName = 'FK_MAWB_SERIAL_ORIGINAL'
      Required = True
    end
    object PartialHawbSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 25
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object PartialHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField
      DisplayLabel = 'Delivery Order'
      DisplayWidth = 14
      FieldName = 'PARTIAL_DELIVERY_ORDER_ID'
      Required = True
      FixedChar = True
      Size = 15
    end
    object PartialHawbSQLPARTIAL_PIECES: TIntegerField
      DisplayLabel = 'Pieces'
      DisplayWidth = 5
      FieldName = 'PARTIAL_PIECES'
      Required = True
    end
    object PartialHawbSQLPARTIAL_WEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 6
      FieldName = 'PARTIAL_WEIGHT'
    end
    object PartialHawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Visible = False
    end
    object PartialHawbSQLFK_MAWB_SERIAL_ARRIVED: TIntegerField
      FieldName = 'FK_MAWB_SERIAL_ARRIVED'
      Required = True
      Visible = False
    end
  end
  object PartialHawbSRC: TIBCDataSource
    DataSet = PartialHawbSQL
    Left = 128
    Top = 384
  end
  object HawbChargeSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO HAWB_CHARGE'
      
        '  (SERIAL_NUMBER, FK_HAWB, FK_TARIFF_USAGE, FK_HAWB_ITEM, FK_TAR' +
        'IFF_LINE, PRE_DISCOUNT_AMOUNT, CUSTOMS_VALUE, QUANTITY, WEIGHT, ' +
        'TARIFF_CODE, TARIFF_CHARGING_METHOD, TARIFF_UNIT, TARIFF_UNIT_IN' +
        'CREMENT, TARIFF_UNIT_RATE, TARIFF_UNITS_NOT_CHARGED, DUTY_TYPE, ' +
        'TARIFF_RELIEVED_RATE, VAT_CODE, VAT_RATE, AMOUNT_RELIEVED, AMOUN' +
        'T_NET)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_HAWB, :FK_TARIFF_USAGE, :FK_HAWB_ITEM, :F' +
        'K_TARIFF_LINE, :PRE_DISCOUNT_AMOUNT, :CUSTOMS_VALUE, :QUANTITY, ' +
        ':WEIGHT, :TARIFF_CODE, :TARIFF_CHARGING_METHOD, :TARIFF_UNIT, :T' +
        'ARIFF_UNIT_INCREMENT, :TARIFF_UNIT_RATE, :TARIFF_UNITS_NOT_CHARG' +
        'ED, :DUTY_TYPE, :TARIFF_RELIEVED_RATE, :VAT_CODE, :VAT_RATE, :AM' +
        'OUNT_RELIEVED, :AMOUNT_NET)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB_CHARGE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB_CHARGE'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_HAWB = :FK_HAWB, FK_TARIFF_' +
        'USAGE = :FK_TARIFF_USAGE, FK_HAWB_ITEM = :FK_HAWB_ITEM, FK_TARIF' +
        'F_LINE = :FK_TARIFF_LINE, PRE_DISCOUNT_AMOUNT = :PRE_DISCOUNT_AM' +
        'OUNT, CUSTOMS_VALUE = :CUSTOMS_VALUE, QUANTITY = :QUANTITY, WEIG' +
        'HT = :WEIGHT, TARIFF_CODE = :TARIFF_CODE, TARIFF_CHARGING_METHOD' +
        ' = :TARIFF_CHARGING_METHOD, TARIFF_UNIT = :TARIFF_UNIT, TARIFF_U' +
        'NIT_INCREMENT = :TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE = :TARI' +
        'FF_UNIT_RATE, TARIFF_UNITS_NOT_CHARGED = :TARIFF_UNITS_NOT_CHARG' +
        'ED, DUTY_TYPE = :DUTY_TYPE, TARIFF_RELIEVED_RATE = :TARIFF_RELIE' +
        'VED_RATE, VAT_CODE = :VAT_CODE, VAT_RATE = :VAT_RATE, AMOUNT_REL' +
        'IEVED = :AMOUNT_RELIEVED, AMOUNT_NET = :AMOUNT_NET'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_HAWB, FK_TARIFF_USAGE, FK_HAWB_ITEM, FK' +
        '_TARIFF_LINE, PRE_DISCOUNT_AMOUNT, CUSTOMS_VALUE, QUANTITY, WEIG' +
        'HT, TARIFF_CODE, TARIFF_CHARGING_METHOD, TARIFF_UNIT, TARIFF_UNI' +
        'T_INCREMENT, TARIFF_UNIT_RATE, TARIFF_UNITS_NOT_CHARGED, DUTY_TY' +
        'PE, TARIFF_RELIEVED_RATE, VAT_CODE, VAT_RATE, AMOUNT_RELIEVED, A' +
        'MOUNT_NET FROM HAWB_CHARGE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB_CHARGE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB_CHARGE'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from hawb_charge'
      'order by Duty_type')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_HAWB'
    MasterSource = HawbSRC
    ReadOnly = True
    Active = True
    Left = 24
    Top = 327
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object HawbChargeSQLFK_TARIFF_USAGE: TStringField
      DisplayLabel = 'Usage'
      DisplayWidth = 5
      FieldName = 'FK_TARIFF_USAGE'
      FixedChar = True
      Size = 3
    end
    object HawbChargeSQLDUTY_TYPE: TStringField
      DisplayLabel = 'Duty'
      DisplayWidth = 10
      FieldName = 'DUTY_TYPE'
      FixedChar = True
      Size = 3
    end
    object HawbChargeSQLTARIFF_CODE: TStringField
      DisplayLabel = 'Tariff'
      DisplayWidth = 17
      FieldName = 'TARIFF_CODE'
      FixedChar = True
      Size = 17
    end
    object HawbChargeSQLPRE_DISCOUNT_AMOUNT: TFloatField
      DisplayLabel = 'Inv Amount'
      DisplayWidth = 9
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      DisplayFormat = '0.00'
    end
    object HawbChargeSQLAMOUNT_NET: TFloatField
      DisplayLabel = 'Charge'
      DisplayWidth = 12
      FieldName = 'AMOUNT_NET'
      DisplayFormat = '0.00'
    end
    object HawbChargeSQLFK_TARIFF_LINE: TIntegerField
      DisplayWidth = 14
      FieldName = 'FK_TARIFF_LINE'
      Visible = False
    end
    object HawbChargeSQLTARIFF_CHARGING_METHOD: TStringField
      DisplayWidth = 25
      FieldName = 'TARIFF_CHARGING_METHOD'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object HawbChargeSQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object HawbChargeSQLFK_HAWB: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_HAWB'
      Required = True
      Visible = False
    end
    object HawbChargeSQLFK_HAWB_ITEM: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_HAWB_ITEM'
      Visible = False
    end
    object HawbChargeSQLCUSTOMS_VALUE: TFloatField
      DisplayWidth = 10
      FieldName = 'CUSTOMS_VALUE'
      Visible = False
    end
    object HawbChargeSQLQUANTITY: TIntegerField
      DisplayWidth = 10
      FieldName = 'QUANTITY'
      Visible = False
    end
    object HawbChargeSQLWEIGHT: TFloatField
      DisplayWidth = 10
      FieldName = 'WEIGHT'
      Visible = False
    end
    object HawbChargeSQLTARIFF_UNIT: TStringField
      DisplayWidth = 3
      FieldName = 'TARIFF_UNIT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object HawbChargeSQLTARIFF_UNIT_INCREMENT: TIntegerField
      DisplayWidth = 10
      FieldName = 'TARIFF_UNIT_INCREMENT'
      Visible = False
    end
    object HawbChargeSQLTARIFF_UNIT_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TARIFF_UNIT_RATE'
      Visible = False
    end
    object HawbChargeSQLTARIFF_UNITS_NOT_CHARGED: TIntegerField
      DisplayWidth = 10
      FieldName = 'TARIFF_UNITS_NOT_CHARGED'
      Visible = False
    end
    object HawbChargeSQLTARIFF_RELIEVED_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TARIFF_RELIEVED_RATE'
      Visible = False
    end
    object HawbChargeSQLVAT_CODE: TStringField
      DisplayWidth = 3
      FieldName = 'VAT_CODE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object HawbChargeSQLVAT_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'VAT_RATE'
      Visible = False
    end
    object HawbChargeSQLAMOUNT_RELIEVED: TFloatField
      DisplayWidth = 10
      FieldName = 'AMOUNT_RELIEVED'
      Visible = False
    end
  end
  object HawbChargeSRC: TIBCDataSource
    DataSet = HawbChargeSQL
    Left = 128
    Top = 328
  end
  object HawbLowListSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      
        '  (SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARANCE_INS' +
        'TRUCTION, DESCRIPTION, WEIGHT, FK_INVOICE_STATUS, CUSTOMER_NAME,' +
        ' XML_HOUSE_ID, IS_LOW)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CLEARANCE' +
        '_INSTRUCTION, :DESCRIPTION, :WEIGHT, :FK_INVOICE_STATUS, :CUSTOM' +
        'ER_NAME, :XML_HOUSE_ID, :IS_LOW)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, HAB_ID = :HAB_ID, FK_MAWB_REFE' +
        'R_NUMBER = :FK_MAWB_REFER_NUMBER, FK_CLEARANCE_INSTRUCTION = :FK' +
        '_CLEARANCE_INSTRUCTION, DESCRIPTION = :DESCRIPTION, WEIGHT = :WE' +
        'IGHT, FK_INVOICE_STATUS = :FK_INVOICE_STATUS, CUSTOMER_NAME = :C' +
        'USTOMER_NAME, XML_HOUSE_ID = :XML_HOUSE_ID, IS_LOW = :IS_LOW'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARANCE' +
        '_INSTRUCTION, DESCRIPTION, WEIGHT, FK_INVOICE_STATUS, CUSTOMER_N' +
        'AME, XML_HOUSE_ID, IS_LOW FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select'
      'ha.Serial_number,'
      'ha.fk_mawb_refer_number,'
      'ha.Hab_id,'
      'ha.XML_house_id,'
      'ha.Description,'
      'ha.Customer_name,'
      'ha.weight,'
      'ha.FK_CLEARANCE_INSTRUCTION,'
      'ha.fk_invoice_status,'
      'ha.is_low,'
      'ssi.currency,'
      'ssi.pre_discount_amount'
      'from'
      '        hawb ha'
      'left outer join sender_invoice ssi'
      'on ha.serial_number=ssi.fk_hawb_serial'
      'where '
      '    fk_Invoice_Status<>1'
      '    and fk_Clearing_State<>1'
      'order by hab_id')
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    MasterSource = MawbSRC
    Active = True
    Left = 44
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REFERENCE_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object HawbLowListSQLHAB_ID: TStringField
      DisplayLabel = 'Hawb'
      DisplayWidth = 10
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object HawbLowListSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 16
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object HawbLowListSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object HawbLowListSQLCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer'
      DisplayWidth = 13
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object HawbLowListSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
      Visible = False
    end
    object HawbLowListSQLFK_INVOICE_STATUS: TStringField
      DisplayLabel = 'Inv'
      DisplayWidth = 3
      FieldName = 'FK_INVOICE_STATUS'
      Size = 1
    end
    object HawbLowListSQLXML_HOUSE_ID: TStringField
      FieldName = 'XML_HOUSE_ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object HawbLowListSQLCURRENCY: TStringField
      DisplayLabel = 'Cur'
      DisplayWidth = 5
      FieldName = 'CURRENCY'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object HawbLowListSQLFK_CLEARANCE_INSTRUCTION: TStringField
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object HawbLowListSQLPRE_DISCOUNT_AMOUNT: TFloatField
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      ReadOnly = True
      Visible = False
    end
    object HawbLowListSQLWEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 6
      FieldName = 'WEIGHT'
    end
    object HawbLowListSQLIS_LOW: TStringField
      FieldName = 'IS_LOW'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object HawbLowListSRC: TIBCDataSource
    DataSet = HawbLowListSQL
    Left = 136
    Top = 240
  end
  object HawbIm4SQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      
        '  (HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARING_STATE, FK_INVOICE_S' +
        'TATUS, DESCRIPTION, WEIGHT, SERIAL_NUMBER, CUSTOMER_NAME, IS_MED' +
        'IUM)'
      'VALUES'
      
        '  (:HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CLEARING_STATE, :FK_INVOI' +
        'CE_STATUS, :DESCRIPTION, :WEIGHT, :SERIAL_NUMBER, :CUSTOMER_NAME' +
        ', :IS_MEDIUM)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      
        '  HAB_ID = :HAB_ID, FK_MAWB_REFER_NUMBER = :FK_MAWB_REFER_NUMBER' +
        ', FK_CLEARING_STATE = :FK_CLEARING_STATE, FK_INVOICE_STATUS = :F' +
        'K_INVOICE_STATUS, DESCRIPTION = :DESCRIPTION, WEIGHT = :WEIGHT, ' +
        'SERIAL_NUMBER = :SERIAL_NUMBER, CUSTOMER_NAME = :CUSTOMER_NAME, ' +
        'IS_MEDIUM = :IS_MEDIUM'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARING_STATE, FK_INVOI' +
        'CE_STATUS, DESCRIPTION, WEIGHT, SERIAL_NUMBER, CUSTOMER_NAME, IS' +
        '_MEDIUM FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select '
      
        'hab_id, serial_number, fk_mawb_refer_number, ha.fk_clearing_Stat' +
        'e,fk_invoice_status, ha.FK_CLEARANCE_INSTRUCTION, ha.Description' +
        ','
      
        'se.invoice_amount,se.currency,se.Customs_value, ha.Customer_name' +
        ', ha.weight'
      'from hawb ha left outer join sender_invoice se'
      'on'
      '  se.fk_hawb_serial=ha.serial_number'
      'where '
      
        '  ha.fk_clearance_instruction is null or ha.fk_clearance_instruc' +
        'tion = '#39'IM4'#39
      'order by Hab_id')
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    MasterSource = MawbSRC
    Active = True
    Left = 577
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REFERENCE_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object IntegerField5: TIntegerField
      DisplayLabel = '* S/N'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object StringField8: TStringField
      DisplayLabel = 'Hawb'
      DisplayWidth = 14
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object HawbIm4SQLFK_CLEARANCE_INSTRUCTION: TStringField
      DisplayLabel = 'Type'
      DisplayWidth = 7
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      FixedChar = True
      Size = 5
    end
    object StringField11: TStringField
      DisplayLabel = 'Clr'
      DisplayWidth = 3
      FieldName = 'FK_CLEARING_STATE'
      Size = 1
    end
    object StringField12: TStringField
      DisplayLabel = 'Inv'
      DisplayWidth = 3
      FieldName = 'FK_INVOICE_STATUS'
      Size = 1
    end
    object StringField9: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 24
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object StringField10: TStringField
      DisplayLabel = 'Customer Name'
      DisplayWidth = 19
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object FloatField8: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 7
      FieldName = 'WEIGHT'
      DisplayFormat = '0.00'
    end
    object StringField13: TStringField
      DisplayLabel = 'Currency'
      DisplayWidth = 8
      FieldName = 'CURRENCY'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object FloatField6: TFloatField
      DisplayLabel = 'Invoice~Amount'
      DisplayWidth = 8
      FieldName = 'INVOICE_AMOUNT'
      ReadOnly = True
      Visible = False
      DisplayFormat = '0.00'
    end
    object FloatField7: TFloatField
      DisplayLabel = 'Customs~Value'
      DisplayWidth = 8
      FieldName = 'CUSTOMS_VALUE'
      ReadOnly = True
      Visible = False
      DisplayFormat = '0.00'
    end
    object IntegerField6: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
      Visible = False
    end
  end
  object HawbIm4SRC: TIBCDataSource
    DataSet = HawbIm4SQL
    Left = 681
    Top = 298
  end
  object HawbDiffSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      
        '  (SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CUSTOMER_CODE' +
        ', FK_CLEARANCE_INSTRUCTION, DESCRIPTION, WEIGHT, FK_CLEARING_STA' +
        'TE, FK_INVOICE_STATUS, EXCHANGE_RATE, CUSTOMER_NAME, MEDIUM_VAT_' +
        'RATE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CUSTOMER_' +
        'CODE, :FK_CLEARANCE_INSTRUCTION, :DESCRIPTION, :WEIGHT, :FK_CLEA' +
        'RING_STATE, :FK_INVOICE_STATUS, :EXCHANGE_RATE, :CUSTOMER_NAME, ' +
        ':MEDIUM_VAT_RATE)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, HAB_ID = :HAB_ID, FK_MAWB_REFE' +
        'R_NUMBER = :FK_MAWB_REFER_NUMBER, FK_CUSTOMER_CODE = :FK_CUSTOME' +
        'R_CODE, FK_CLEARANCE_INSTRUCTION = :FK_CLEARANCE_INSTRUCTION, DE' +
        'SCRIPTION = :DESCRIPTION, WEIGHT = :WEIGHT, FK_CLEARING_STATE = ' +
        ':FK_CLEARING_STATE, FK_INVOICE_STATUS = :FK_INVOICE_STATUS, EXCH' +
        'ANGE_RATE = :EXCHANGE_RATE, CUSTOMER_NAME = :CUSTOMER_NAME, MEDI' +
        'UM_VAT_RATE = :MEDIUM_VAT_RATE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CUSTOMER_' +
        'CODE, FK_CLEARANCE_INSTRUCTION, DESCRIPTION, WEIGHT, FK_CLEARING' +
        '_STATE, FK_INVOICE_STATUS, EXCHANGE_RATE, CUSTOMER_NAME, MEDIUM_' +
        'VAT_RATE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select '
      
        'hab_id, serial_number, fk_mawb_refer_number, ha.fk_clearing_Stat' +
        'e,fk_invoice_status, ha.FK_CLEARANCE_INSTRUCTION,ha.Description,' +
        'ha.MEDIUM_VAT_RATE,'
      
        'ha.fk_customer_code,ha.Customer_name, ha.weight,ha.exchange_rate' +
        ','
      'se.invoice_amount,se.currency,se.Customs_value'
      'from hawb ha left outer join sender_invoice se'
      'on'
      '  se.fk_hawb_serial=ha.serial_number'
      'where '
      'ha.fk_clearance_instruction= :clr'
      'order by Hab_id')
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    MasterSource = MawbSRC
    Active = True
    Left = 585
    Top = 233
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clr'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'REFERENCE_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object StringField22: TStringField
      DisplayLabel = 'Hawb'
      DisplayWidth = 13
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object StringField23: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 25
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object StringField24: TStringField
      DisplayLabel = 'Customer'
      DisplayWidth = 16
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object StringField25: TStringField
      DisplayLabel = 'Clr'
      DisplayWidth = 3
      FieldName = 'FK_CLEARING_STATE'
      Size = 1
    end
    object StringField26: TStringField
      DisplayLabel = 'Inv'
      DisplayWidth = 3
      FieldName = 'FK_INVOICE_STATUS'
      Size = 1
    end
    object FloatField12: TFloatField
      DisplayLabel = 'Invoice~Amount'
      DisplayWidth = 9
      FieldName = 'INVOICE_AMOUNT'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object StringField27: TStringField
      DisplayLabel = 'Cur'
      DisplayWidth = 5
      FieldName = 'CURRENCY'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object FloatField14: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 6
      FieldName = 'WEIGHT'
      Visible = False
      DisplayFormat = '0.00'
    end
    object HawbDiffSQLFK_CLEARANCE_INSTRUCTION: TStringField
      DisplayWidth = 5
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object IntegerField9: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object IntegerField10: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
      Visible = False
    end
    object FloatField13: TFloatField
      DisplayLabel = 'Customs~Value'
      DisplayWidth = 9
      FieldName = 'CUSTOMS_VALUE'
      ReadOnly = True
      Visible = False
      DisplayFormat = '0.00'
    end
    object HawbDiffSQLMEDIUM_VAT_RATE: TFloatField
      FieldName = 'MEDIUM_VAT_RATE'
      Visible = False
    end
    object HawbDiffSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
      Visible = False
    end
    object HawbDiffSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Visible = False
    end
  end
  object HawbDiffSRC: TIBCDataSource
    DataSet = HawbDiffSQL
    Left = 689
    Top = 226
  end
  object HawbStatusSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      
        '  (SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARANCE_INS' +
        'TRUCTION, DESCRIPTION, FK_INVOICE_STATUS, CLEARANCE_WAITING_CODE' +
        ')'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CLEARANCE' +
        '_INSTRUCTION, :DESCRIPTION, :FK_INVOICE_STATUS, :CLEARANCE_WAITI' +
        'NG_CODE)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, HAB_ID = :HAB_ID, FK_MAWB_REFE' +
        'R_NUMBER = :FK_MAWB_REFER_NUMBER, FK_CLEARANCE_INSTRUCTION = :FK' +
        '_CLEARANCE_INSTRUCTION, DESCRIPTION = :DESCRIPTION, FK_INVOICE_S' +
        'TATUS = :FK_INVOICE_STATUS, CLEARANCE_WAITING_CODE = :CLEARANCE_' +
        'WAITING_CODE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARANCE' +
        '_INSTRUCTION, DESCRIPTION, FK_INVOICE_STATUS, CLEARANCE_WAITING_' +
        'CODE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select '
      
        'hab_id, serial_number, fk_mawb_refer_number, fk_invoice_status, ' +
        'ha.FK_CLEARANCE_INSTRUCTION, ha.Description,'
      'ha.CLEARANCE_WAITING_CODE'
      'from Hawb ha'
      'where '
      '  FK_INVOICE_STATUS ='#39'0'#39
      '  and FK_CLEARING_STATE ='#39'0'#39
      ''
      'order by Hab_id')
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    MasterSource = MawbSRC
    Active = True
    Left = 569
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REFERENCE_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object HawbStatusSQLHAB_ID: TStringField
      DisplayLabel = 'Hawb'
      DisplayWidth = 13
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object HawbStatusSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 22
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object HawbStatusSQLCLEARANCE_WAITING_CODE: TStringField
      DisplayLabel = 'Clearance'
      DisplayWidth = 5
      FieldName = 'CLEARANCE_WAITING_CODE'
      FixedChar = True
      Size = 5
    end
    object HawbStatusSQLFK_CLEARANCE_INSTRUCTION: TStringField
      DisplayLabel = 'Type'
      DisplayWidth = 5
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      FixedChar = True
      Size = 5
    end
    object HawbStatusSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object HawbStatusSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
      Visible = False
    end
    object HawbStatusSQLFK_INVOICE_STATUS: TStringField
      DisplayLabel = 'Inv'
      DisplayWidth = 3
      FieldName = 'FK_INVOICE_STATUS'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object HawbStatusSRC: TIBCDataSource
    DataSet = HawbStatusSQL
    Left = 673
    Top = 386
  end
  object BucketPendingSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      
        '  (SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CUSTOMER_CODE' +
        ', FK_CLEARANCE_INSTRUCTION, DESCRIPTION, WEIGHT, FK_CLEARING_STA' +
        'TE, FK_INVOICE_STATUS, FK_CURRENCY, EXCHANGE_RATE, INVOICE_TOTAL' +
        ', FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT, OTH' +
        'ER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_INVOICABLE, CUSTOMS_VALU' +
        'E, INVOICE_SERIAL, COURIER_INVOICE_SERIAL, COURIER_INVOICE_VALUE' +
        ', HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER, EDE_STORAGE_EXPENSES, ED' +
        'E_DELIVERY_EXPENSES, DATE_INVOICED, SENT_TO_HEAD, NUM_OF_PIECES_' +
        'ARRIVED, TOTAL_NUM_OF_PIECES, FK_CLEARANCE_TYPE, FK_DELIVERY_TER' +
        'M, ORIGIN_STATION, EC2_NUMBER_DATE, SENDERS_INV_NO, NUMBER_OF_PA' +
        'RCELS, FK_CUSTOMER_ACCOUNT, DISTRICT, DELIVERY_ORDER_AMOUNT, OTH' +
        'ER2_CHARGE_AMOUNT, FK_OTHER2_CHARGE_CODE, POSOSTOSIS, TOTAL_DUTI' +
        'ES, CLEARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON, DATE_CLEAR' +
        'ED, DATE_REGISTERED, FACTOR, FK_COUNTRY_ORIGIN, CHARGE_TRL, CHAR' +
        'GE_VAT, CHARGE_EXCISE, CHARGE_IMPORT, INVOICABLE, TOTAL_CHARGES,' +
        ' CUSTOMER_NAME, EDE_COMMENTS, FK_MAWB_ID, SIGNATORY_NAME, XML_HO' +
        'USE_ID, SENDER_NAME, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_' +
        'ADDRESS_3, IS_PRIVATE, DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT, ' +
        'FK_OTHER4_CHARGE, IS_PAID, PARTIAL_FLAG, PARTIAL_WEIGHT, PARTIAL' +
        '_DELIVERY_ORDER_ID, PARTIAL_MAWB_ID, PARTIAL_PIECES, PARTIAL_MAW' +
        'B_REFER_NUMBER, STATUS_C, IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHARGED' +
        '_DELIVERY, IS_VALID, IS_PREPAID, OTHER5_CHARGE_AMOUNT, FK_DUTY_R' +
        'ELIEVE, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY, CUSTOMER_' +
        'VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT, IS_LOW, DESTINATION_STATION' +
        ', IS_OVERRIDE_MEDIUM, IS_FROM_BUCKET, BUCKET_REFERENCE_NUMBER, W' +
        'EIGHT_GROSS, PROCEDURE_CODE, IOSS, DUTY_BILLING_ACCOUNT)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CUSTOMER_' +
        'CODE, :FK_CLEARANCE_INSTRUCTION, :DESCRIPTION, :WEIGHT, :FK_CLEA' +
        'RING_STATE, :FK_INVOICE_STATUS, :FK_CURRENCY, :EXCHANGE_RATE, :I' +
        'NVOICE_TOTAL, :FREIGHT_AMOUNT, :FK_OTHER_CHARGE_CODE, :OTHER_CHA' +
        'RGE_AMOUNT, :OTHER_CHARGE_PAID, :STAMPS_AMOUNT, :EXPS_NON_INVOIC' +
        'ABLE, :CUSTOMS_VALUE, :INVOICE_SERIAL, :COURIER_INVOICE_SERIAL, ' +
        ':COURIER_INVOICE_VALUE, :HIGH_VALUE, :FK_SEC_MAWB_REFER_NUMBER, ' +
        ':EDE_STORAGE_EXPENSES, :EDE_DELIVERY_EXPENSES, :DATE_INVOICED, :' +
        'SENT_TO_HEAD, :NUM_OF_PIECES_ARRIVED, :TOTAL_NUM_OF_PIECES, :FK_' +
        'CLEARANCE_TYPE, :FK_DELIVERY_TERM, :ORIGIN_STATION, :EC2_NUMBER_' +
        'DATE, :SENDERS_INV_NO, :NUMBER_OF_PARCELS, :FK_CUSTOMER_ACCOUNT,' +
        ' :DISTRICT, :DELIVERY_ORDER_AMOUNT, :OTHER2_CHARGE_AMOUNT, :FK_O' +
        'THER2_CHARGE_CODE, :POSOSTOSIS, :TOTAL_DUTIES, :CLEARANCE_WAITIN' +
        'G_CODE, :CLEARANCE_WAITING_REASON, :DATE_CLEARED, :DATE_REGISTER' +
        'ED, :FACTOR, :FK_COUNTRY_ORIGIN, :CHARGE_TRL, :CHARGE_VAT, :CHAR' +
        'GE_EXCISE, :CHARGE_IMPORT, :INVOICABLE, :TOTAL_CHARGES, :CUSTOME' +
        'R_NAME, :EDE_COMMENTS, :FK_MAWB_ID, :SIGNATORY_NAME, :XML_HOUSE_' +
        'ID, :SENDER_NAME, :SENDER_ADDRESS_1, :SENDER_ADDRESS_2, :SENDER_' +
        'ADDRESS_3, :IS_PRIVATE, :DELIVERY_ORDER_ID, :OTHER4_CHARGE_AMOUN' +
        'T, :FK_OTHER4_CHARGE, :IS_PAID, :PARTIAL_FLAG, :PARTIAL_WEIGHT, ' +
        ':PARTIAL_DELIVERY_ORDER_ID, :PARTIAL_MAWB_ID, :PARTIAL_PIECES, :' +
        'PARTIAL_MAWB_REFER_NUMBER, :STATUS_C, :IS_MEDIUM, :MEDIUM_VAT_RA' +
        'TE, :IS_CHARGED_DELIVERY, :IS_VALID, :IS_PREPAID, :OTHER5_CHARGE' +
        '_AMOUNT, :FK_DUTY_RELIEVE, :SENDER_POST_CODE, :SENDER_CITY, :SEN' +
        'DER_COUNTRY, :CUSTOMER_VAT_ID, :CUSTOMER_AUTHORITY_TO_AGENT, :IS' +
        '_LOW, :DESTINATION_STATION, :IS_OVERRIDE_MEDIUM, :IS_FROM_BUCKET' +
        ', :BUCKET_REFERENCE_NUMBER, :WEIGHT_GROSS, :PROCEDURE_CODE, :IOS' +
        'S, :DUTY_BILLING_ACCOUNT)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, HAB_ID = :HAB_ID, FK_MAWB_REFE' +
        'R_NUMBER = :FK_MAWB_REFER_NUMBER, FK_CUSTOMER_CODE = :FK_CUSTOME' +
        'R_CODE, FK_CLEARANCE_INSTRUCTION = :FK_CLEARANCE_INSTRUCTION, DE' +
        'SCRIPTION = :DESCRIPTION, WEIGHT = :WEIGHT, FK_CLEARING_STATE = ' +
        ':FK_CLEARING_STATE, FK_INVOICE_STATUS = :FK_INVOICE_STATUS, FK_C' +
        'URRENCY = :FK_CURRENCY, EXCHANGE_RATE = :EXCHANGE_RATE, INVOICE_' +
        'TOTAL = :INVOICE_TOTAL, FREIGHT_AMOUNT = :FREIGHT_AMOUNT, FK_OTH' +
        'ER_CHARGE_CODE = :FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT = :O' +
        'THER_CHARGE_AMOUNT, OTHER_CHARGE_PAID = :OTHER_CHARGE_PAID, STAM' +
        'PS_AMOUNT = :STAMPS_AMOUNT, EXPS_NON_INVOICABLE = :EXPS_NON_INVO' +
        'ICABLE, CUSTOMS_VALUE = :CUSTOMS_VALUE, INVOICE_SERIAL = :INVOIC' +
        'E_SERIAL, COURIER_INVOICE_SERIAL = :COURIER_INVOICE_SERIAL, COUR' +
        'IER_INVOICE_VALUE = :COURIER_INVOICE_VALUE, HIGH_VALUE = :HIGH_V' +
        'ALUE, FK_SEC_MAWB_REFER_NUMBER = :FK_SEC_MAWB_REFER_NUMBER, EDE_' +
        'STORAGE_EXPENSES = :EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES ' +
        '= :EDE_DELIVERY_EXPENSES, DATE_INVOICED = :DATE_INVOICED, SENT_T' +
        'O_HEAD = :SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED = :NUM_OF_PIECES_A' +
        'RRIVED, TOTAL_NUM_OF_PIECES = :TOTAL_NUM_OF_PIECES, FK_CLEARANCE' +
        '_TYPE = :FK_CLEARANCE_TYPE, FK_DELIVERY_TERM = :FK_DELIVERY_TERM' +
        ', ORIGIN_STATION = :ORIGIN_STATION, EC2_NUMBER_DATE = :EC2_NUMBE' +
        'R_DATE, SENDERS_INV_NO = :SENDERS_INV_NO, NUMBER_OF_PARCELS = :N' +
        'UMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT = :FK_CUSTOMER_ACCOUNT, DI' +
        'STRICT = :DISTRICT, DELIVERY_ORDER_AMOUNT = :DELIVERY_ORDER_AMOU' +
        'NT, OTHER2_CHARGE_AMOUNT = :OTHER2_CHARGE_AMOUNT, FK_OTHER2_CHAR' +
        'GE_CODE = :FK_OTHER2_CHARGE_CODE, POSOSTOSIS = :POSOSTOSIS, TOTA' +
        'L_DUTIES = :TOTAL_DUTIES, CLEARANCE_WAITING_CODE = :CLEARANCE_WA' +
        'ITING_CODE, CLEARANCE_WAITING_REASON = :CLEARANCE_WAITING_REASON' +
        ', DATE_CLEARED = :DATE_CLEARED, DATE_REGISTERED = :DATE_REGISTER' +
        'ED, FACTOR = :FACTOR, FK_COUNTRY_ORIGIN = :FK_COUNTRY_ORIGIN, CH' +
        'ARGE_TRL = :CHARGE_TRL, CHARGE_VAT = :CHARGE_VAT, CHARGE_EXCISE ' +
        '= :CHARGE_EXCISE, CHARGE_IMPORT = :CHARGE_IMPORT, INVOICABLE = :' +
        'INVOICABLE, TOTAL_CHARGES = :TOTAL_CHARGES, CUSTOMER_NAME = :CUS' +
        'TOMER_NAME, EDE_COMMENTS = :EDE_COMMENTS, FK_MAWB_ID = :FK_MAWB_' +
        'ID, SIGNATORY_NAME = :SIGNATORY_NAME, XML_HOUSE_ID = :XML_HOUSE_' +
        'ID, SENDER_NAME = :SENDER_NAME, SENDER_ADDRESS_1 = :SENDER_ADDRE' +
        'SS_1, SENDER_ADDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADDRESS_3 = :' +
        'SENDER_ADDRESS_3, IS_PRIVATE = :IS_PRIVATE, DELIVERY_ORDER_ID = ' +
        ':DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT = :OTHER4_CHARGE_AMOUNT' +
        ', FK_OTHER4_CHARGE = :FK_OTHER4_CHARGE, IS_PAID = :IS_PAID, PART' +
        'IAL_FLAG = :PARTIAL_FLAG, PARTIAL_WEIGHT = :PARTIAL_WEIGHT, PART' +
        'IAL_DELIVERY_ORDER_ID = :PARTIAL_DELIVERY_ORDER_ID, PARTIAL_MAWB' +
        '_ID = :PARTIAL_MAWB_ID, PARTIAL_PIECES = :PARTIAL_PIECES, PARTIA' +
        'L_MAWB_REFER_NUMBER = :PARTIAL_MAWB_REFER_NUMBER, STATUS_C = :ST' +
        'ATUS_C, IS_MEDIUM = :IS_MEDIUM, MEDIUM_VAT_RATE = :MEDIUM_VAT_RA' +
        'TE, IS_CHARGED_DELIVERY = :IS_CHARGED_DELIVERY, IS_VALID = :IS_V' +
        'ALID, IS_PREPAID = :IS_PREPAID, OTHER5_CHARGE_AMOUNT = :OTHER5_C' +
        'HARGE_AMOUNT, FK_DUTY_RELIEVE = :FK_DUTY_RELIEVE, SENDER_POST_CO' +
        'DE = :SENDER_POST_CODE, SENDER_CITY = :SENDER_CITY, SENDER_COUNT' +
        'RY = :SENDER_COUNTRY, CUSTOMER_VAT_ID = :CUSTOMER_VAT_ID, CUSTOM' +
        'ER_AUTHORITY_TO_AGENT = :CUSTOMER_AUTHORITY_TO_AGENT, IS_LOW = :' +
        'IS_LOW, DESTINATION_STATION = :DESTINATION_STATION, IS_OVERRIDE_' +
        'MEDIUM = :IS_OVERRIDE_MEDIUM, IS_FROM_BUCKET = :IS_FROM_BUCKET, ' +
        'BUCKET_REFERENCE_NUMBER = :BUCKET_REFERENCE_NUMBER, WEIGHT_GROSS' +
        ' = :WEIGHT_GROSS, PROCEDURE_CODE = :PROCEDURE_CODE, IOSS = :IOSS' +
        ', DUTY_BILLING_ACCOUNT = :DUTY_BILLING_ACCOUNT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CUSTOMER_' +
        'CODE, FK_CLEARANCE_INSTRUCTION, DESCRIPTION, WEIGHT, FK_CLEARING' +
        '_STATE, FK_INVOICE_STATUS, FK_CURRENCY, EXCHANGE_RATE, INVOICE_T' +
        'OTAL, FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT,' +
        ' OTHER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_INVOICABLE, CUSTOMS_' +
        'VALUE, INVOICE_SERIAL, COURIER_INVOICE_SERIAL, COURIER_INVOICE_V' +
        'ALUE, HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER, EDE_STORAGE_EXPENSES' +
        ', EDE_DELIVERY_EXPENSES, DATE_INVOICED, SENT_TO_HEAD, NUM_OF_PIE' +
        'CES_ARRIVED, TOTAL_NUM_OF_PIECES, FK_CLEARANCE_TYPE, FK_DELIVERY' +
        '_TERM, ORIGIN_STATION, EC2_NUMBER_DATE, SENDERS_INV_NO, NUMBER_O' +
        'F_PARCELS, FK_CUSTOMER_ACCOUNT, DISTRICT, DELIVERY_ORDER_AMOUNT,' +
        ' OTHER2_CHARGE_AMOUNT, FK_OTHER2_CHARGE_CODE, POSOSTOSIS, TOTAL_' +
        'DUTIES, CLEARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON, DATE_C' +
        'LEARED, DATE_REGISTERED, FACTOR, FK_COUNTRY_ORIGIN, CHARGE_TRL, ' +
        'CHARGE_VAT, CHARGE_EXCISE, CHARGE_IMPORT, INVOICABLE, TOTAL_CHAR' +
        'GES, CUSTOMER_NAME, EDE_COMMENTS, FK_MAWB_ID, SIGNATORY_NAME, XM' +
        'L_HOUSE_ID, SENDER_NAME, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SEN' +
        'DER_ADDRESS_3, IS_PRIVATE, DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOU' +
        'NT, FK_OTHER4_CHARGE, IS_PAID, PARTIAL_FLAG, PARTIAL_WEIGHT, PAR' +
        'TIAL_DELIVERY_ORDER_ID, PARTIAL_MAWB_ID, PARTIAL_PIECES, PARTIAL' +
        '_MAWB_REFER_NUMBER, STATUS_C, IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHA' +
        'RGED_DELIVERY, IS_VALID, IS_PREPAID, OTHER5_CHARGE_AMOUNT, FK_DU' +
        'TY_RELIEVE, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY, CUSTO' +
        'MER_VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT, IS_LOW, DESTINATION_STA' +
        'TION, IS_OVERRIDE_MEDIUM, IS_FROM_BUCKET, BUCKET_REFERENCE_NUMBE' +
        'R, WEIGHT_GROSS, PROCEDURE_CODE, IOSS, DUTY_BILLING_ACCOUNT FROM' +
        ' HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      
        'select ha.*, ssi.pre_discount_amount,ssi.invoice_amount_cyp, ssi' +
        '.customs_value as SenderCustomValue,ssi.currency,cu.company_or_p' +
        'erson'
      'from hawb ha'
      
        'left outer join sender_invoice ssi on ha.serial_number=ssi.fk_ha' +
        'wb_serial'
      'left outer join customer cu on cu.code = ha.fk_customer_code'
      'where ha.fk_mawb_refer_number= 1000000'
      'order by ha.hab_id asc'
      '')
    Active = True
    Left = 577
    Top = 177
    object BucketPendingSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = '* S/N'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object BucketPendingSQLHAB_ID: TStringField
      DisplayLabel = 'Hawb'
      DisplayWidth = 14
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object BucketPendingSQLXML_HOUSE_ID: TStringField
      DisplayLabel = 'TDID'
      DisplayWidth = 16
      FieldName = 'XML_HOUSE_ID'
      FixedChar = True
      Size = 13
    end
    object BucketPendingSQLFK_CLEARANCE_INSTRUCTION: TStringField
      DisplayLabel = 'Type'
      DisplayWidth = 7
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      FixedChar = True
      Size = 5
    end
    object BucketPendingSQLCLEARANCE_WAITING_CODE: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 5
      FieldName = 'CLEARANCE_WAITING_CODE'
      FixedChar = True
      Size = 5
    end
    object BucketPendingSQLFK_CLEARING_STATE: TStringField
      DisplayLabel = 'Clr'
      DisplayWidth = 3
      FieldName = 'FK_CLEARING_STATE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLFK_INVOICE_STATUS: TStringField
      DisplayLabel = 'Inv'
      DisplayWidth = 3
      FieldName = 'FK_INVOICE_STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 24
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object BucketPendingSQLCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer Name'
      DisplayWidth = 19
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object BucketPendingSQLWEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 7
      FieldName = 'WEIGHT'
    end
    object BucketPendingSQLPRE_DISCOUNT_AMOUNT: TFloatField
      DisplayLabel = 'Inv Amount'
      DisplayWidth = 10
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      ReadOnly = True
    end
    object BucketPendingSQLCURRENCY: TStringField
      DisplayLabel = 'Currency'
      DisplayWidth = 8
      FieldName = 'CURRENCY'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object BucketPendingSQLINVOICE_AMOUNT_CYP: TFloatField
      DisplayLabel = 'Amount Euro'
      DisplayWidth = 10
      FieldName = 'INVOICE_AMOUNT_CYP'
      ReadOnly = True
    end
    object BucketPendingSQLSENDERCUSTOMVALUE: TFloatField
      DisplayLabel = 'Customs Val'
      DisplayWidth = 11
      FieldName = 'SENDERCUSTOMVALUE'
      ReadOnly = True
    end
    object BucketPendingSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
      Visible = False
    end
    object BucketPendingSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
      Visible = False
    end
    object BucketPendingSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Visible = False
      Size = 3
    end
    object BucketPendingSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Visible = False
    end
    object BucketPendingSQLINVOICE_TOTAL: TFloatField
      FieldName = 'INVOICE_TOTAL'
      Visible = False
    end
    object BucketPendingSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
      Visible = False
    end
    object BucketPendingSQLFK_OTHER_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER_CHARGE_CODE'
      Visible = False
      Size = 6
    end
    object BucketPendingSQLOTHER_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER_CHARGE_AMOUNT'
      Visible = False
    end
    object BucketPendingSQLOTHER_CHARGE_PAID: TStringField
      FieldName = 'OTHER_CHARGE_PAID'
      Visible = False
      Size = 1
    end
    object BucketPendingSQLSTAMPS_AMOUNT: TFloatField
      FieldName = 'STAMPS_AMOUNT'
      Visible = False
    end
    object BucketPendingSQLEXPS_NON_INVOICABLE: TFloatField
      FieldName = 'EXPS_NON_INVOICABLE'
      Visible = False
    end
    object BucketPendingSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
      Visible = False
    end
    object BucketPendingSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
      Visible = False
    end
    object BucketPendingSQLCOURIER_INVOICE_SERIAL: TIntegerField
      FieldName = 'COURIER_INVOICE_SERIAL'
      Visible = False
    end
    object BucketPendingSQLCOURIER_INVOICE_VALUE: TFloatField
      FieldName = 'COURIER_INVOICE_VALUE'
      Visible = False
    end
    object BucketPendingSQLHIGH_VALUE: TStringField
      FieldName = 'HIGH_VALUE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_SEC_MAWB_REFER_NUMBER'
      Visible = False
    end
    object BucketPendingSQLEDE_STORAGE_EXPENSES: TFloatField
      FieldName = 'EDE_STORAGE_EXPENSES'
      Visible = False
    end
    object BucketPendingSQLEDE_DELIVERY_EXPENSES: TFloatField
      FieldName = 'EDE_DELIVERY_EXPENSES'
      Visible = False
    end
    object BucketPendingSQLDATE_INVOICED: TDateField
      FieldName = 'DATE_INVOICED'
      Visible = False
    end
    object BucketPendingSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
      Visible = False
    end
    object BucketPendingSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
      Visible = False
    end
    object BucketPendingSQLFK_CLEARANCE_TYPE: TStringField
      FieldName = 'FK_CLEARANCE_TYPE'
      Visible = False
      Size = 12
    end
    object BucketPendingSQLFK_DELIVERY_TERM: TStringField
      FieldName = 'FK_DELIVERY_TERM'
      Visible = False
      Size = 3
    end
    object BucketPendingSQLORIGIN_STATION: TStringField
      FieldName = 'ORIGIN_STATION'
      Visible = False
      Size = 12
    end
    object BucketPendingSQLEC2_NUMBER_DATE: TStringField
      FieldName = 'EC2_NUMBER_DATE'
      Visible = False
      Size = 40
    end
    object BucketPendingSQLSENDERS_INV_NO: TStringField
      FieldName = 'SENDERS_INV_NO'
      Visible = False
      Size = 50
    end
    object BucketPendingSQLNUMBER_OF_PARCELS: TIntegerField
      FieldName = 'NUMBER_OF_PARCELS'
      Visible = False
    end
    object BucketPendingSQLFK_CUSTOMER_ACCOUNT: TIntegerField
      FieldName = 'FK_CUSTOMER_ACCOUNT'
      Visible = False
    end
    object BucketPendingSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object BucketPendingSQLDELIVERY_ORDER_AMOUNT: TFloatField
      FieldName = 'DELIVERY_ORDER_AMOUNT'
      Visible = False
    end
    object BucketPendingSQLOTHER2_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER2_CHARGE_AMOUNT'
      Visible = False
    end
    object BucketPendingSQLFK_OTHER2_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER2_CHARGE_CODE'
      Visible = False
      FixedChar = True
      Size = 6
    end
    object BucketPendingSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLTOTAL_DUTIES: TFloatField
      FieldName = 'TOTAL_DUTIES'
      Visible = False
    end
    object BucketPendingSQLCLEARANCE_WAITING_REASON: TStringField
      FieldName = 'CLEARANCE_WAITING_REASON'
      Visible = False
      FixedChar = True
      Size = 40
    end
    object BucketPendingSQLDATE_CLEARED: TDateField
      FieldName = 'DATE_CLEARED'
      Visible = False
    end
    object BucketPendingSQLDATE_REGISTERED: TDateField
      FieldName = 'DATE_REGISTERED'
      Visible = False
    end
    object BucketPendingSQLFACTOR: TFloatField
      FieldName = 'FACTOR'
      Visible = False
    end
    object BucketPendingSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
      Visible = False
    end
    object BucketPendingSQLCHARGE_TRL: TFloatField
      FieldName = 'CHARGE_TRL'
      Visible = False
    end
    object BucketPendingSQLCHARGE_VAT: TFloatField
      FieldName = 'CHARGE_VAT'
      Visible = False
    end
    object BucketPendingSQLCHARGE_EXCISE: TFloatField
      FieldName = 'CHARGE_EXCISE'
      Visible = False
    end
    object BucketPendingSQLCHARGE_IMPORT: TFloatField
      FieldName = 'CHARGE_IMPORT'
      Visible = False
    end
    object BucketPendingSQLINVOICABLE: TStringField
      FieldName = 'INVOICABLE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
      Visible = False
    end
    object BucketPendingSQLEDE_COMMENTS: TStringField
      FieldName = 'EDE_COMMENTS'
      Visible = False
      Size = 100
    end
    object BucketPendingSQLFK_MAWB_ID: TStringField
      FieldName = 'FK_MAWB_ID'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object BucketPendingSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object BucketPendingSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object BucketPendingSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object BucketPendingSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object BucketPendingSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object BucketPendingSQLIS_PRIVATE: TStringField
      FieldName = 'IS_PRIVATE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLDELIVERY_ORDER_ID: TStringField
      FieldName = 'DELIVERY_ORDER_ID'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object BucketPendingSQLOTHER4_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER4_CHARGE_AMOUNT'
      Visible = False
    end
    object BucketPendingSQLFK_OTHER4_CHARGE: TStringField
      FieldName = 'FK_OTHER4_CHARGE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object BucketPendingSQLIS_PAID: TStringField
      FieldName = 'IS_PAID'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLPARTIAL_FLAG: TStringField
      FieldName = 'PARTIAL_FLAG'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLPARTIAL_WEIGHT: TFloatField
      FieldName = 'PARTIAL_WEIGHT'
      Visible = False
    end
    object BucketPendingSQLPARTIAL_DELIVERY_ORDER_ID: TStringField
      FieldName = 'PARTIAL_DELIVERY_ORDER_ID'
      Visible = False
      Size = 10
    end
    object BucketPendingSQLPARTIAL_MAWB_ID: TStringField
      FieldName = 'PARTIAL_MAWB_ID'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object BucketPendingSQLPARTIAL_PIECES: TIntegerField
      FieldName = 'PARTIAL_PIECES'
      Visible = False
    end
    object BucketPendingSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'PARTIAL_MAWB_REFER_NUMBER'
      Visible = False
    end
    object BucketPendingSQLSTATUS_C: TStringField
      FieldName = 'STATUS_C'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLIS_MEDIUM: TStringField
      FieldName = 'IS_MEDIUM'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLMEDIUM_VAT_RATE: TFloatField
      FieldName = 'MEDIUM_VAT_RATE'
      Visible = False
    end
    object BucketPendingSQLIS_CHARGED_DELIVERY: TStringField
      FieldName = 'IS_CHARGED_DELIVERY'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLIS_VALID: TStringField
      FieldName = 'IS_VALID'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLIS_PREPAID: TStringField
      FieldName = 'IS_PREPAID'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLOTHER5_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER5_CHARGE_AMOUNT'
      Visible = False
    end
    object BucketPendingSQLFK_DUTY_RELIEVE: TStringField
      FieldName = 'FK_DUTY_RELIEVE'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object BucketPendingSQLSENDER_POST_CODE: TStringField
      FieldName = 'SENDER_POST_CODE'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object BucketPendingSQLSENDER_CITY: TStringField
      FieldName = 'SENDER_CITY'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object BucketPendingSQLSENDER_COUNTRY: TStringField
      FieldName = 'SENDER_COUNTRY'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object BucketPendingSQLCUSTOMER_VAT_ID: TStringField
      FieldName = 'CUSTOMER_VAT_ID'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object BucketPendingSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField
      FieldName = 'CUSTOMER_AUTHORITY_TO_AGENT'
      Visible = False
      FixedChar = True
    end
    object BucketPendingSQLIS_LOW: TStringField
      FieldName = 'IS_LOW'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLDESTINATION_STATION: TStringField
      FieldName = 'DESTINATION_STATION'
      Visible = False
      FixedChar = True
    end
    object BucketPendingSQLIS_OVERRIDE_MEDIUM: TStringField
      FieldName = 'IS_OVERRIDE_MEDIUM'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLIS_FROM_BUCKET: TStringField
      FieldName = 'IS_FROM_BUCKET'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object BucketPendingSQLCOMPANY_OR_PERSON: TStringField
      FieldName = 'COMPANY_OR_PERSON'
      ReadOnly = True
      Visible = False
      Size = 1
    end
  end
  object BucketPendingSRC: TIBCDataSource
    DataSet = BucketPendingSQL
    Left = 681
    Top = 170
  end
end
