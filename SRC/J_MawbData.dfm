object J_MawbDataDML: TJ_MawbDataDML
  OldCreateOrder = False
  Height = 519
  Width = 673
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
      Required = True
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
      Size = 15
    end
    object MawbSQLINVOICED: TStringField
      FieldName = 'INVOICED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object MawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Required = True
      FixedChar = True
      Size = 1
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
      
        '  (HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARING_STATE, FK_INVOICE_S' +
        'TATUS, DESCRIPTION, FK_CUSTOMER_CODE, WEIGHT, FK_CURRENCY, EXCHA' +
        'NGE_RATE, INVOICE_TOTAL, FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, O' +
        'THER_CHARGE_AMOUNT, OTHER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_I' +
        'NVOICABLE, SERIAL_NUMBER, CUSTOMS_VALUE, INVOICE_SERIAL, COURIER' +
        '_INVOICE_SERIAL, COURIER_INVOICE_VALUE, HIGH_VALUE, FK_SEC_MAWB_' +
        'REFER_NUMBER, EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES, DATE_' +
        'INVOICED, SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED, TOTAL_NUM_OF_PIEC' +
        'ES, FK_CLEARANCE_TYPE, FK_DELIVERY_TERM, ORIGIN_STATION, EC2_NUM' +
        'BER_DATE, SENDERS_INV_NO, NUMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT' +
        ', DISTRICT, DELIVERY_ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT, FK_OTHE' +
        'R2_CHARGE_CODE, POSOSTOSIS, TOTAL_DUTIES, CLEARANCE_WAITING_CODE' +
        ', CLEARANCE_WAITING_REASON, DATE_CLEARED, DATE_REGISTERED, FACTO' +
        'R, FK_COUNTRY_ORIGIN, CHARGE_TRL, CHARGE_VAT, CHARGE_EXCISE, CHA' +
        'RGE_IMPORT, INVOICABLE, TOTAL_CHARGES, CUSTOMER_NAME, EDE_COMMEN' +
        'TS, FK_MAWB_ID, SIGNATORY_NAME, XML_HOUSE_ID, SENDER_NAME, SENDE' +
        'R_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRESS_3, IS_PRIVATE, DEL' +
        'IVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT, FK_OTHER4_CHARGE, IS_PAID,' +
        ' PARTIAL_FLAG, PARTIAL_WEIGHT, PARTIAL_DELIVERY_ORDER_ID, PARTIA' +
        'L_MAWB_ID, PARTIAL_PIECES, PARTIAL_MAWB_REFER_NUMBER, STATUS_C, ' +
        'IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHARGED_DELIVERY, IS_VALID, IS_PR' +
        'EPAID, OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE, FK_CLEARANCE_INSTR' +
        'UCTION)'
      'VALUES'
      
        '  (:HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CLEARING_STATE, :FK_INVOI' +
        'CE_STATUS, :DESCRIPTION, :FK_CUSTOMER_CODE, :WEIGHT, :FK_CURRENC' +
        'Y, :EXCHANGE_RATE, :INVOICE_TOTAL, :FREIGHT_AMOUNT, :FK_OTHER_CH' +
        'ARGE_CODE, :OTHER_CHARGE_AMOUNT, :OTHER_CHARGE_PAID, :STAMPS_AMO' +
        'UNT, :EXPS_NON_INVOICABLE, :SERIAL_NUMBER, :CUSTOMS_VALUE, :INVO' +
        'ICE_SERIAL, :COURIER_INVOICE_SERIAL, :COURIER_INVOICE_VALUE, :HI' +
        'GH_VALUE, :FK_SEC_MAWB_REFER_NUMBER, :EDE_STORAGE_EXPENSES, :EDE' +
        '_DELIVERY_EXPENSES, :DATE_INVOICED, :SENT_TO_HEAD, :NUM_OF_PIECE' +
        'S_ARRIVED, :TOTAL_NUM_OF_PIECES, :FK_CLEARANCE_TYPE, :FK_DELIVER' +
        'Y_TERM, :ORIGIN_STATION, :EC2_NUMBER_DATE, :SENDERS_INV_NO, :NUM' +
        'BER_OF_PARCELS, :FK_CUSTOMER_ACCOUNT, :DISTRICT, :DELIVERY_ORDER' +
        '_AMOUNT, :OTHER2_CHARGE_AMOUNT, :FK_OTHER2_CHARGE_CODE, :POSOSTO' +
        'SIS, :TOTAL_DUTIES, :CLEARANCE_WAITING_CODE, :CLEARANCE_WAITING_' +
        'REASON, :DATE_CLEARED, :DATE_REGISTERED, :FACTOR, :FK_COUNTRY_OR' +
        'IGIN, :CHARGE_TRL, :CHARGE_VAT, :CHARGE_EXCISE, :CHARGE_IMPORT, ' +
        ':INVOICABLE, :TOTAL_CHARGES, :CUSTOMER_NAME, :EDE_COMMENTS, :FK_' +
        'MAWB_ID, :SIGNATORY_NAME, :XML_HOUSE_ID, :SENDER_NAME, :SENDER_A' +
        'DDRESS_1, :SENDER_ADDRESS_2, :SENDER_ADDRESS_3, :IS_PRIVATE, :DE' +
        'LIVERY_ORDER_ID, :OTHER4_CHARGE_AMOUNT, :FK_OTHER4_CHARGE, :IS_P' +
        'AID, :PARTIAL_FLAG, :PARTIAL_WEIGHT, :PARTIAL_DELIVERY_ORDER_ID,' +
        ' :PARTIAL_MAWB_ID, :PARTIAL_PIECES, :PARTIAL_MAWB_REFER_NUMBER, ' +
        ':STATUS_C, :IS_MEDIUM, :MEDIUM_VAT_RATE, :IS_CHARGED_DELIVERY, :' +
        'IS_VALID, :IS_PREPAID, :OTHER5_CHARGE_AMOUNT, :FK_DUTY_RELIEVE, ' +
        ':FK_CLEARANCE_INSTRUCTION)')
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
        ' :FK_CUSTOMER_CODE, WEIGHT = :WEIGHT, FK_CURRENCY = :FK_CURRENCY' +
        ', EXCHANGE_RATE = :EXCHANGE_RATE, INVOICE_TOTAL = :INVOICE_TOTAL' +
        ', FREIGHT_AMOUNT = :FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE = :FK_O' +
        'THER_CHARGE_CODE, OTHER_CHARGE_AMOUNT = :OTHER_CHARGE_AMOUNT, OT' +
        'HER_CHARGE_PAID = :OTHER_CHARGE_PAID, STAMPS_AMOUNT = :STAMPS_AM' +
        'OUNT, EXPS_NON_INVOICABLE = :EXPS_NON_INVOICABLE, SERIAL_NUMBER ' +
        '= :SERIAL_NUMBER, CUSTOMS_VALUE = :CUSTOMS_VALUE, INVOICE_SERIAL' +
        ' = :INVOICE_SERIAL, COURIER_INVOICE_SERIAL = :COURIER_INVOICE_SE' +
        'RIAL, COURIER_INVOICE_VALUE = :COURIER_INVOICE_VALUE, HIGH_VALUE' +
        ' = :HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER = :FK_SEC_MAWB_REFER_NU' +
        'MBER, EDE_STORAGE_EXPENSES = :EDE_STORAGE_EXPENSES, EDE_DELIVERY' +
        '_EXPENSES = :EDE_DELIVERY_EXPENSES, DATE_INVOICED = :DATE_INVOIC' +
        'ED, SENT_TO_HEAD = :SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED = :NUM_O' +
        'F_PIECES_ARRIVED, TOTAL_NUM_OF_PIECES = :TOTAL_NUM_OF_PIECES, FK' +
        '_CLEARANCE_TYPE = :FK_CLEARANCE_TYPE, FK_DELIVERY_TERM = :FK_DEL' +
        'IVERY_TERM, ORIGIN_STATION = :ORIGIN_STATION, EC2_NUMBER_DATE = ' +
        ':EC2_NUMBER_DATE, SENDERS_INV_NO = :SENDERS_INV_NO, NUMBER_OF_PA' +
        'RCELS = :NUMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT = :FK_CUSTOMER_A' +
        'CCOUNT, DISTRICT = :DISTRICT, DELIVERY_ORDER_AMOUNT = :DELIVERY_' +
        'ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT = :OTHER2_CHARGE_AMOUNT, FK_O' +
        'THER2_CHARGE_CODE = :FK_OTHER2_CHARGE_CODE, POSOSTOSIS = :POSOST' +
        'OSIS, TOTAL_DUTIES = :TOTAL_DUTIES, CLEARANCE_WAITING_CODE = :CL' +
        'EARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON = :CLEARANCE_WAIT' +
        'ING_REASON, DATE_CLEARED = :DATE_CLEARED, DATE_REGISTERED = :DAT' +
        'E_REGISTERED, FACTOR = :FACTOR, FK_COUNTRY_ORIGIN = :FK_COUNTRY_' +
        'ORIGIN, CHARGE_TRL = :CHARGE_TRL, CHARGE_VAT = :CHARGE_VAT, CHAR' +
        'GE_EXCISE = :CHARGE_EXCISE, CHARGE_IMPORT = :CHARGE_IMPORT, INVO' +
        'ICABLE = :INVOICABLE, TOTAL_CHARGES = :TOTAL_CHARGES, CUSTOMER_N' +
        'AME = :CUSTOMER_NAME, EDE_COMMENTS = :EDE_COMMENTS, FK_MAWB_ID =' +
        ' :FK_MAWB_ID, SIGNATORY_NAME = :SIGNATORY_NAME, XML_HOUSE_ID = :' +
        'XML_HOUSE_ID, SENDER_NAME = :SENDER_NAME, SENDER_ADDRESS_1 = :SE' +
        'NDER_ADDRESS_1, SENDER_ADDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADD' +
        'RESS_3 = :SENDER_ADDRESS_3, IS_PRIVATE = :IS_PRIVATE, DELIVERY_O' +
        'RDER_ID = :DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT = :OTHER4_CHA' +
        'RGE_AMOUNT, FK_OTHER4_CHARGE = :FK_OTHER4_CHARGE, IS_PAID = :IS_' +
        'PAID, PARTIAL_FLAG = :PARTIAL_FLAG, PARTIAL_WEIGHT = :PARTIAL_WE' +
        'IGHT, PARTIAL_DELIVERY_ORDER_ID = :PARTIAL_DELIVERY_ORDER_ID, PA' +
        'RTIAL_MAWB_ID = :PARTIAL_MAWB_ID, PARTIAL_PIECES = :PARTIAL_PIEC' +
        'ES, PARTIAL_MAWB_REFER_NUMBER = :PARTIAL_MAWB_REFER_NUMBER, STAT' +
        'US_C = :STATUS_C, IS_MEDIUM = :IS_MEDIUM, MEDIUM_VAT_RATE = :MED' +
        'IUM_VAT_RATE, IS_CHARGED_DELIVERY = :IS_CHARGED_DELIVERY, IS_VAL' +
        'ID = :IS_VALID, IS_PREPAID = :IS_PREPAID, OTHER5_CHARGE_AMOUNT =' +
        ' :OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE = :FK_DUTY_RELIEVE, FK_C' +
        'LEARANCE_INSTRUCTION = :FK_CLEARANCE_INSTRUCTION'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARING_STATE, FK_INVOI' +
        'CE_STATUS, DESCRIPTION, FK_CUSTOMER_CODE, WEIGHT, FK_CURRENCY, E' +
        'XCHANGE_RATE, INVOICE_TOTAL, FREIGHT_AMOUNT, FK_OTHER_CHARGE_COD' +
        'E, OTHER_CHARGE_AMOUNT, OTHER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_N' +
        'ON_INVOICABLE, SERIAL_NUMBER, CUSTOMS_VALUE, INVOICE_SERIAL, COU' +
        'RIER_INVOICE_SERIAL, COURIER_INVOICE_VALUE, HIGH_VALUE, FK_SEC_M' +
        'AWB_REFER_NUMBER, EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES, D' +
        'ATE_INVOICED, SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED, TOTAL_NUM_OF_' +
        'PIECES, FK_CLEARANCE_TYPE, FK_DELIVERY_TERM, ORIGIN_STATION, EC2' +
        '_NUMBER_DATE, SENDERS_INV_NO, NUMBER_OF_PARCELS, FK_CUSTOMER_ACC' +
        'OUNT, DISTRICT, DELIVERY_ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT, FK_' +
        'OTHER2_CHARGE_CODE, POSOSTOSIS, TOTAL_DUTIES, CLEARANCE_WAITING_' +
        'CODE, CLEARANCE_WAITING_REASON, DATE_CLEARED, DATE_REGISTERED, F' +
        'ACTOR, FK_COUNTRY_ORIGIN, CHARGE_TRL, CHARGE_VAT, CHARGE_EXCISE,' +
        ' CHARGE_IMPORT, INVOICABLE, TOTAL_CHARGES, CUSTOMER_NAME, EDE_CO' +
        'MMENTS, FK_MAWB_ID, SIGNATORY_NAME, XML_HOUSE_ID, SENDER_NAME, S' +
        'ENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRESS_3, IS_PRIVATE,' +
        ' DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT, FK_OTHER4_CHARGE, IS_P' +
        'AID, PARTIAL_FLAG, PARTIAL_WEIGHT, PARTIAL_DELIVERY_ORDER_ID, PA' +
        'RTIAL_MAWB_ID, PARTIAL_PIECES, PARTIAL_MAWB_REFER_NUMBER, STATUS' +
        '_C, IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHARGED_DELIVERY, IS_VALID, I' +
        'S_PREPAID, OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE, FK_CLEARANCE_I' +
        'NSTRUCTION FROM HAWB'
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
      'Select * from Hawb')
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    MasterSource = MawbSRC
    Left = 48
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REFERENCE_NUMBER'
        Value = nil
      end>
    object HawbSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
    end
    object HawbSQLFK_CLEARING_STATE: TStringField
      FieldName = 'FK_CLEARING_STATE'
      Size = 1
    end
    object HawbSQLFK_INVOICE_STATUS: TStringField
      FieldName = 'FK_INVOICE_STATUS'
      Size = 1
    end
    object HawbSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object HawbSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
    end
    object HawbSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object HawbSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Size = 3
    end
    object HawbSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
    end
    object HawbSQLINVOICE_TOTAL: TFloatField
      FieldName = 'INVOICE_TOTAL'
    end
    object HawbSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
    end
    object HawbSQLFK_OTHER_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER_CHARGE_CODE'
      Size = 6
    end
    object HawbSQLOTHER_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER_CHARGE_AMOUNT'
    end
    object HawbSQLOTHER_CHARGE_PAID: TStringField
      FieldName = 'OTHER_CHARGE_PAID'
      Size = 1
    end
    object HawbSQLSTAMPS_AMOUNT: TFloatField
      FieldName = 'STAMPS_AMOUNT'
    end
    object HawbSQLEXPS_NON_INVOICABLE: TFloatField
      FieldName = 'EXPS_NON_INVOICABLE'
    end
    object HawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object HawbSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
    end
    object HawbSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
    end
    object HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField
      FieldName = 'COURIER_INVOICE_SERIAL'
    end
    object HawbSQLCOURIER_INVOICE_VALUE: TFloatField
      FieldName = 'COURIER_INVOICE_VALUE'
    end
    object HawbSQLHIGH_VALUE: TStringField
      FieldName = 'HIGH_VALUE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_SEC_MAWB_REFER_NUMBER'
    end
    object HawbSQLEDE_STORAGE_EXPENSES: TFloatField
      FieldName = 'EDE_STORAGE_EXPENSES'
    end
    object HawbSQLEDE_DELIVERY_EXPENSES: TFloatField
      FieldName = 'EDE_DELIVERY_EXPENSES'
    end
    object HawbSQLDATE_INVOICED: TDateField
      FieldName = 'DATE_INVOICED'
    end
    object HawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
    end
    object HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
    end
    object HawbSQLFK_CLEARANCE_TYPE: TStringField
      FieldName = 'FK_CLEARANCE_TYPE'
      Size = 12
    end
    object HawbSQLFK_DELIVERY_TERM: TStringField
      FieldName = 'FK_DELIVERY_TERM'
      Size = 3
    end
    object HawbSQLORIGIN_STATION: TStringField
      FieldName = 'ORIGIN_STATION'
      Size = 12
    end
    object HawbSQLEC2_NUMBER_DATE: TStringField
      FieldName = 'EC2_NUMBER_DATE'
      Size = 40
    end
    object HawbSQLSENDERS_INV_NO: TStringField
      FieldName = 'SENDERS_INV_NO'
      Size = 50
    end
    object HawbSQLNUMBER_OF_PARCELS: TIntegerField
      FieldName = 'NUMBER_OF_PARCELS'
    end
    object HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField
      FieldName = 'FK_CUSTOMER_ACCOUNT'
    end
    object HawbSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      FixedChar = True
      Size = 3
    end
    object HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField
      FieldName = 'DELIVERY_ORDER_AMOUNT'
    end
    object HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER2_CHARGE_AMOUNT'
    end
    object HawbSQLFK_OTHER2_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER2_CHARGE_CODE'
      FixedChar = True
      Size = 6
    end
    object HawbSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      FixedChar = True
      Size = 1
    end
    object HawbSQLTOTAL_DUTIES: TFloatField
      FieldName = 'TOTAL_DUTIES'
    end
    object HawbSQLCLEARANCE_WAITING_CODE: TStringField
      FieldName = 'CLEARANCE_WAITING_CODE'
      FixedChar = True
      Size = 3
    end
    object HawbSQLCLEARANCE_WAITING_REASON: TStringField
      FieldName = 'CLEARANCE_WAITING_REASON'
      FixedChar = True
      Size = 40
    end
    object HawbSQLDATE_CLEARED: TDateField
      FieldName = 'DATE_CLEARED'
    end
    object HawbSQLDATE_REGISTERED: TDateField
      FieldName = 'DATE_REGISTERED'
    end
    object HawbSQLFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object HawbSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
    end
    object HawbSQLCHARGE_TRL: TFloatField
      FieldName = 'CHARGE_TRL'
    end
    object HawbSQLCHARGE_VAT: TFloatField
      FieldName = 'CHARGE_VAT'
    end
    object HawbSQLCHARGE_EXCISE: TFloatField
      FieldName = 'CHARGE_EXCISE'
    end
    object HawbSQLCHARGE_IMPORT: TFloatField
      FieldName = 'CHARGE_IMPORT'
    end
    object HawbSQLINVOICABLE: TStringField
      FieldName = 'INVOICABLE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
    end
    object HawbSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object HawbSQLEDE_COMMENTS: TStringField
      FieldName = 'EDE_COMMENTS'
      Size = 100
    end
    object HawbSQLFK_MAWB_ID: TStringField
      FieldName = 'FK_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object HawbSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      FixedChar = True
      Size = 50
    end
    object HawbSQLXML_HOUSE_ID: TStringField
      FieldName = 'XML_HOUSE_ID'
      FixedChar = True
      Size = 13
    end
    object HawbSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      FixedChar = True
      Size = 60
    end
    object HawbSQLIS_PRIVATE: TStringField
      FieldName = 'IS_PRIVATE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLDELIVERY_ORDER_ID: TStringField
      FieldName = 'DELIVERY_ORDER_ID'
      FixedChar = True
      Size = 10
    end
    object HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER4_CHARGE_AMOUNT'
    end
    object HawbSQLFK_OTHER4_CHARGE: TStringField
      FieldName = 'FK_OTHER4_CHARGE'
      FixedChar = True
      Size = 3
    end
    object HawbSQLIS_PAID: TStringField
      FieldName = 'IS_PAID'
      FixedChar = True
      Size = 1
    end
    object HawbSQLPARTIAL_FLAG: TStringField
      FieldName = 'PARTIAL_FLAG'
      FixedChar = True
      Size = 1
    end
    object HawbSQLPARTIAL_WEIGHT: TFloatField
      FieldName = 'PARTIAL_WEIGHT'
    end
    object HawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField
      FieldName = 'PARTIAL_DELIVERY_ORDER_ID'
      Size = 10
    end
    object HawbSQLPARTIAL_MAWB_ID: TStringField
      FieldName = 'PARTIAL_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object HawbSQLPARTIAL_PIECES: TIntegerField
      FieldName = 'PARTIAL_PIECES'
    end
    object HawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'PARTIAL_MAWB_REFER_NUMBER'
    end
    object HawbSQLSTATUS_C: TStringField
      FieldName = 'STATUS_C'
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_MEDIUM: TStringField
      FieldName = 'IS_MEDIUM'
      FixedChar = True
      Size = 1
    end
    object HawbSQLMEDIUM_VAT_RATE: TFloatField
      FieldName = 'MEDIUM_VAT_RATE'
    end
    object HawbSQLIS_CHARGED_DELIVERY: TStringField
      FieldName = 'IS_CHARGED_DELIVERY'
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_VALID: TStringField
      FieldName = 'IS_VALID'
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_PREPAID: TStringField
      FieldName = 'IS_PREPAID'
      FixedChar = True
      Size = 1
    end
    object HawbSQLOTHER5_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER5_CHARGE_AMOUNT'
    end
    object HawbSQLFK_DUTY_RELIEVE: TStringField
      FieldName = 'FK_DUTY_RELIEVE'
      FixedChar = True
      Size = 5
    end
    object HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      FixedChar = True
      Size = 5
    end
  end
  object MawbSRC: TIBCDataSource
    DataSet = MawbSQL
    OnStateChange = MawbSRCStateChange
    Left = 128
    Top = 96
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
      DisplayWidth = 18
      FieldName = 'DATE_ARRIVED'
    end
  end
  object MawbSelectSRC: TIBCDataSource
    DataSet = MawbSelectSQL
    Left = 124
    Top = 26
  end
  object HawbSRC: TIBCDataSource
    DataSet = HawbSQL
    Left = 144
    Top = 176
  end
  object DhawbSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      
        '  (HAB_ID, FK_MAWB_REFER_NUMBER, FK_INVOICE_STATUS, DESCRIPTION,' +
        ' WEIGHT, OTHER_CHARGE_PAID, SERIAL_NUMBER, HIGH_VALUE, CUSTOMER_' +
        'NAME, XML_HOUSE_ID)'
      'VALUES'
      
        '  (:HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_INVOICE_STATUS, :DESCRIPT' +
        'ION, :WEIGHT, :OTHER_CHARGE_PAID, :SERIAL_NUMBER, :HIGH_VALUE, :' +
        'CUSTOMER_NAME, :XML_HOUSE_ID)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      
        '  HAB_ID = :HAB_ID, FK_MAWB_REFER_NUMBER = :FK_MAWB_REFER_NUMBER' +
        ', FK_INVOICE_STATUS = :FK_INVOICE_STATUS, DESCRIPTION = :DESCRIP' +
        'TION, WEIGHT = :WEIGHT, OTHER_CHARGE_PAID = :OTHER_CHARGE_PAID, ' +
        'SERIAL_NUMBER = :SERIAL_NUMBER, HIGH_VALUE = :HIGH_VALUE, CUSTOM' +
        'ER_NAME = :CUSTOMER_NAME, XML_HOUSE_ID = :XML_HOUSE_ID'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT HAB_ID, FK_MAWB_REFER_NUMBER, FK_INVOICE_STATUS, DESCRIPT' +
        'ION, WEIGHT, OTHER_CHARGE_PAID, SERIAL_NUMBER, HIGH_VALUE, CUSTO' +
        'MER_NAME, XML_HOUSE_ID FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select'
      'ha.Serial_number,'
      'ha.fk_mawb_refer_number,'
      'ha.Hab_id,'
      'ha.Description,'
      'ha.Customer_name,'
      'ha.weight,'
      'ha.Other_charge_paid,'
      'ha.HIgh_value,'
      'ha.FK_invoice_status,'
      'ha.XML_house_id,'
      'ha.Status_C,'
      
        '(select max(currency) from sender_invoice si where si.fk_hawb_se' +
        'rial=ha.serial_number) as currency,'
      
        '(select max(invoice_amount) from sender_invoice si where si.fk_h' +
        'awb_serial=ha.serial_number) as Invoice_amount'
      'from'
      '        hawb ha'
      'where '
      '    (fk_Invoice_Status<>1 or FK_INVOICE_STATUS is null)'
      '    and (fk_Clearing_State<>1 or FK_CLEARING_STATE is null)'
      'order by hab_id')
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    MasterSource = MawbSRC
    Active = True
    Left = 44
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REFERENCE_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object DhawbSQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object DhawbSQLFK_MAWB_REFER_NUMBER: TIntegerField
      DisplayWidth = 25
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
    end
    object DhawbSQLHAB_ID: TStringField
      DisplayWidth = 10
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object DhawbSQLDESCRIPTION: TStringField
      DisplayWidth = 200
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object DhawbSQLCUSTOMER_NAME: TStringField
      DisplayWidth = 40
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object DhawbSQLWEIGHT: TFloatField
      DisplayWidth = 10
      FieldName = 'WEIGHT'
    end
    object DhawbSQLOTHER_CHARGE_PAID: TStringField
      DisplayWidth = 20
      FieldName = 'OTHER_CHARGE_PAID'
      Size = 1
    end
    object DhawbSQLHIGH_VALUE: TStringField
      DisplayWidth = 11
      FieldName = 'HIGH_VALUE'
      FixedChar = True
      Size = 1
    end
    object DhawbSQLFK_INVOICE_STATUS: TStringField
      DisplayWidth = 18
      FieldName = 'FK_INVOICE_STATUS'
      Size = 1
    end
    object DhawbSQLXML_HOUSE_ID: TStringField
      DisplayWidth = 13
      FieldName = 'XML_HOUSE_ID'
      FixedChar = True
      Size = 13
    end
    object DhawbSQLCURRENCY: TStringField
      DisplayWidth = 10
      FieldName = 'CURRENCY'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object DhawbSQLINVOICE_AMOUNT: TFloatField
      DisplayWidth = 16
      FieldName = 'INVOICE_AMOUNT'
      ReadOnly = True
    end
    object DhawbSQLSTATUS_C: TStringField
      FieldName = 'STATUS_C'
      FixedChar = True
      Size = 1
    end
  end
  object DHawbSRC: TDataSource
    DataSet = DhawbSQL
    Left = 108
    Top = 256
  end
  object HawbLowDeletedSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'HAWB_LOW_DELETED_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO HAWB_LOW_DELETED'
      
        '  (HAB_ID, SERIAL_NUMBER, FK_MAWB_REFER_NUMBER, FK_MAWB_ID, FK_C' +
        'URRENCY, FK_COUNTRY_ORIGIN, DATE_REGISTERED, CUSTOMER_NAME, DESC' +
        'RIPTION, WEIGHT, TOTAL_NUM_OF_PIECES, NUMBER_OF_PARCELS, DISTRIC' +
        'T, TOTAL_CHARGES, NUM_OF_PIECES_ARRIVED, FK_CUSTOMER_CODE)'
      'VALUES'
      
        '  (:HAB_ID, :SERIAL_NUMBER, :FK_MAWB_REFER_NUMBER, :FK_MAWB_ID, ' +
        ':FK_CURRENCY, :FK_COUNTRY_ORIGIN, :DATE_REGISTERED, :CUSTOMER_NA' +
        'ME, :DESCRIPTION, :WEIGHT, :TOTAL_NUM_OF_PIECES, :NUMBER_OF_PARC' +
        'ELS, :DISTRICT, :TOTAL_CHARGES, :NUM_OF_PIECES_ARRIVED, :FK_CUST' +
        'OMER_CODE)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB_LOW_DELETED'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB_LOW_DELETED'
      'SET'
      
        '  HAB_ID = :HAB_ID, SERIAL_NUMBER = :SERIAL_NUMBER, FK_MAWB_REFE' +
        'R_NUMBER = :FK_MAWB_REFER_NUMBER, FK_MAWB_ID = :FK_MAWB_ID, FK_C' +
        'URRENCY = :FK_CURRENCY, FK_COUNTRY_ORIGIN = :FK_COUNTRY_ORIGIN, ' +
        'DATE_REGISTERED = :DATE_REGISTERED, CUSTOMER_NAME = :CUSTOMER_NA' +
        'ME, DESCRIPTION = :DESCRIPTION, WEIGHT = :WEIGHT, TOTAL_NUM_OF_P' +
        'IECES = :TOTAL_NUM_OF_PIECES, NUMBER_OF_PARCELS = :NUMBER_OF_PAR' +
        'CELS, DISTRICT = :DISTRICT, TOTAL_CHARGES = :TOTAL_CHARGES, NUM_' +
        'OF_PIECES_ARRIVED = :NUM_OF_PIECES_ARRIVED, FK_CUSTOMER_CODE = :' +
        'FK_CUSTOMER_CODE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT HAB_ID, SERIAL_NUMBER, FK_MAWB_REFER_NUMBER, FK_MAWB_ID, ' +
        'FK_CURRENCY, FK_COUNTRY_ORIGIN, DATE_REGISTERED, CUSTOMER_NAME, ' +
        'DESCRIPTION, WEIGHT, TOTAL_NUM_OF_PIECES, NUMBER_OF_PARCELS, DIS' +
        'TRICT, TOTAL_CHARGES, NUM_OF_PIECES_ARRIVED, FK_CUSTOMER_CODE FR' +
        'OM HAWB_LOW_DELETED'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB_LOW_DELETED'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB_LOW_DELETED'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from Hawb_Low_Deleted')
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    MasterSource = MawbSRC
    Options.DefaultValues = True
    Options.CacheCalcFields = True
    Active = True
    Left = 56
    Top = 322
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REFERENCE_NUMBER'
        Value = nil
      end>
    object HawbLowDeletedSQLHAB_ID: TStringField
      DisplayLabel = 'Hawb ID'
      DisplayWidth = 10
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object HawbLowDeletedSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 25
      FieldName = 'DESCRIPTION'
      Size = 150
    end
    object HawbLowDeletedSQLCUSTOMER_NAME: TStringField
      DisplayLabel = 'Customer'
      DisplayWidth = 40
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object HawbLowDeletedSQLWEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 10
      FieldName = 'WEIGHT'
    end
    object HawbLowDeletedSQLNUMBER_OF_PARCELS: TIntegerField
      DisplayLabel = 'Total Pieces'
      DisplayWidth = 10
      FieldName = 'NUMBER_OF_PARCELS'
    end
    object HawbLowDeletedSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      DisplayLabel = 'Pieces Arrived'
      DisplayWidth = 11
      FieldName = 'NUM_OF_PIECES_ARRIVED'
    end
    object HawbLowDeletedSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Visible = False
    end
    object HawbLowDeletedSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
      Visible = False
    end
    object HawbLowDeletedSQLFK_MAWB_ID: TStringField
      FieldName = 'FK_MAWB_ID'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object HawbLowDeletedSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Visible = False
      Size = 3
    end
    object HawbLowDeletedSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
      Visible = False
    end
    object HawbLowDeletedSQLDATE_REGISTERED: TDateField
      FieldName = 'DATE_REGISTERED'
      Visible = False
    end
    object HawbLowDeletedSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
      Visible = False
    end
    object HawbLowDeletedSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object HawbLowDeletedSQLTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
      Visible = False
    end
    object HawbLowDeletedSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
      Visible = False
    end
  end
  object HawbStatusCSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'HAWB_STATUS_C_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO HAWB_STATUS_C'
      
        '  (HAB_ID, SERIAL_NUMBER, FK_MAWB_REFER_NUMBER, FK_MAWB_ID, FK_C' +
        'URRENCY, FK_COUNTRY_ORIGIN, DATE_REGISTERED, CUSTOMER_NAME, DESC' +
        'RIPTION, WEIGHT, TOTAL_NUM_OF_PIECES, NUMBER_OF_PARCELS, DISTRIC' +
        'T, TOTAL_CHARGES, NUM_OF_PIECES_ARRIVED, FK_CUSTOMER_CODE)'
      'VALUES'
      
        '  (:HAB_ID, :SERIAL_NUMBER, :FK_MAWB_REFER_NUMBER, :FK_MAWB_ID, ' +
        ':FK_CURRENCY, :FK_COUNTRY_ORIGIN, :DATE_REGISTERED, :CUSTOMER_NA' +
        'ME, :DESCRIPTION, :WEIGHT, :TOTAL_NUM_OF_PIECES, :NUMBER_OF_PARC' +
        'ELS, :DISTRICT, :TOTAL_CHARGES, :NUM_OF_PIECES_ARRIVED, :FK_CUST' +
        'OMER_CODE)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB_STATUS_C'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB_STATUS_C'
      'SET'
      
        '  HAB_ID = :HAB_ID, SERIAL_NUMBER = :SERIAL_NUMBER, FK_MAWB_REFE' +
        'R_NUMBER = :FK_MAWB_REFER_NUMBER, FK_MAWB_ID = :FK_MAWB_ID, FK_C' +
        'URRENCY = :FK_CURRENCY, FK_COUNTRY_ORIGIN = :FK_COUNTRY_ORIGIN, ' +
        'DATE_REGISTERED = :DATE_REGISTERED, CUSTOMER_NAME = :CUSTOMER_NA' +
        'ME, DESCRIPTION = :DESCRIPTION, WEIGHT = :WEIGHT, TOTAL_NUM_OF_P' +
        'IECES = :TOTAL_NUM_OF_PIECES, NUMBER_OF_PARCELS = :NUMBER_OF_PAR' +
        'CELS, DISTRICT = :DISTRICT, TOTAL_CHARGES = :TOTAL_CHARGES, NUM_' +
        'OF_PIECES_ARRIVED = :NUM_OF_PIECES_ARRIVED, FK_CUSTOMER_CODE = :' +
        'FK_CUSTOMER_CODE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT HAB_ID, SERIAL_NUMBER, FK_MAWB_REFER_NUMBER, FK_MAWB_ID, ' +
        'FK_CURRENCY, FK_COUNTRY_ORIGIN, DATE_REGISTERED, CUSTOMER_NAME, ' +
        'DESCRIPTION, WEIGHT, TOTAL_NUM_OF_PIECES, NUMBER_OF_PARCELS, DIS' +
        'TRICT, TOTAL_CHARGES, NUM_OF_PIECES_ARRIVED, FK_CUSTOMER_CODE FR' +
        'OM HAWB_STATUS_C'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB_STATUS_C'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB_STATUS_C'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from Hawb_status_c where serial_number=-1')
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    MasterSource = MawbSRC
    Debug = True
    FetchAll = True
    LocalConstraints = False
    Left = 48
    Top = 399
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'REFERENCE_NUMBER'
        Value = nil
      end>
    object HawbStatusCSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Size = 10
    end
    object HawbStatusCSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object HawbStatusCSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
    end
    object HawbStatusCSQLFK_MAWB_ID: TStringField
      FieldName = 'FK_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object HawbStatusCSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Size = 3
    end
    object HawbStatusCSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
    end
    object HawbStatusCSQLDATE_REGISTERED: TDateField
      FieldName = 'DATE_REGISTERED'
    end
    object HawbStatusCSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object HawbStatusCSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 150
    end
    object HawbStatusCSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object HawbStatusCSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
    end
    object HawbStatusCSQLNUMBER_OF_PARCELS: TIntegerField
      FieldName = 'NUMBER_OF_PARCELS'
    end
    object HawbStatusCSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      FixedChar = True
      Size = 3
    end
    object HawbStatusCSQLTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
    end
    object HawbStatusCSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
    end
    object HawbStatusCSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
    end
  end
  object HawbLowDeletedSRC: TIBCDataSource
    DataSet = HawbLowDeletedSQL
    Left = 168
    Top = 328
  end
  object HawbStatusCSRC: TIBCDataSource
    DataSet = HawbStatusCSQL
    Left = 168
    Top = 400
  end
end
