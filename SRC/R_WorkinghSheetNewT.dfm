object R_WorkingSheetHawbT: TR_WorkingSheetHawbT
  Left = 0
  Top = 0
  Caption = 'R_WorkingSheetHawbT'
  ClientHeight = 224
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object HawbItemSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from Hawb_Item'
      'order by'
      'description,'
      'fk_tariff_code,'
      'invoice_line,'
      'fk_country_origin;')
    MasterFields = 'FK_HAWB_SERIAL;INVOICE_SERIAL'
    DetailFields = 'FK_HAWB_SERIAL;FK_SENDER_INVOICE_SERIAL'
    MasterSource = SenderInvoiceSRC
    ReadOnly = True
    Left = 264
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FK_HAWB_SERIAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'INVOICE_SERIAL'
        ParamType = ptInput
        Value = nil
      end>
    object HawbItemSQLFK_HAWB_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_HAWB_SERIAL'
      Origin = 'HAWB_ITEM.FK_HAWB_SERIAL'
    end
    object HawbItemSQLFK_TARIFF_CODE: TStringField
      DisplayWidth = 17
      FieldName = 'FK_TARIFF_CODE'
      Origin = 'HAWB_ITEM.FK_TARIFF_CODE'
      Size = 17
    end
    object HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_SENDER_INVOICE_SERIAL'
      Origin = 'HAWB_ITEM.FK_SENDER_INVOICE_SERIAL'
    end
    object HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_COUNTRY_ORIGIN'
      Origin = 'HAWB_ITEM.FK_HAWB_SERIAL'
    end
    object HawbItemSQLDUTY_TYPE: TStringField
      DisplayWidth = 1
      FieldName = 'DUTY_TYPE'
      Origin = 'HAWB_ITEM.FK_IMPORT_TYPE'
      Size = 1
    end
    object HawbItemSQLDESCRIPTION: TStringField
      DisplayWidth = 40
      FieldName = 'DESCRIPTION'
      Origin = 'HAWB_ITEM.FK_HAWB_SERIAL'
      Size = 40
    end
    object HawbItemSQLINVOICE_VALUE: TFloatField
      DisplayWidth = 10
      FieldName = 'INVOICE_VALUE'
      Origin = 'HAWB_ITEM.DESCRIPTION'
    end
    object HawbItemSQLNET_QUANTITY: TIntegerField
      DisplayWidth = 10
      FieldName = 'NET_QUANTITY'
      Origin = 'HAWB_ITEM.FK_RELIEF_CODE'
    end
    object HawbItemSQLIMPORT_DUTY_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'IMPORT_DUTY_RATE'
      Origin = 'HAWB_ITEM.FK_RELIEF_CODE'
    end
    object HawbItemSQLTRL_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TRL_RATE'
      Origin = 'HAWB_ITEM.DUTY_TYPE'
    end
    object HawbItemSQLINVOICE_LINE: TIntegerField
      DisplayWidth = 10
      FieldName = 'INVOICE_LINE'
      Origin = 'HAWB_ITEM.DUTY_IMPORT_TOTAL'
    end
    object HawbItemSQLOriginCountry: TStringField
      FieldKind = fkLookup
      FieldName = 'OriginCountry'
      LookupDataSet = CountrySQL
      LookupKeyFields = 'NUMBER'
      LookupResultField = 'NAME'
      KeyFields = 'FK_COUNTRY_ORIGIN'
      Size = 30
      Lookup = True
    end
    object HawbItemSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
      Origin = 'CLAIRDB.HAWB_ITEM.CUSTOMS_VALUE'
    end
    object HawbItemSQLDUTY_IMPORT_PAY: TFloatField
      FieldName = 'DUTY_IMPORT_PAY'
      Origin = 'CLAIRDB.HAWB_ITEM.DUTY_IMPORT_PAY'
    end
    object HawbItemSQLDUTY_TRL_PAY: TFloatField
      FieldName = 'DUTY_TRL_PAY'
      Origin = 'CLAIRDB.HAWB_ITEM.DUTY_TRL_PAY'
    end
    object HawbItemSQLDUTY_EXCISE_PAY: TFloatField
      FieldName = 'DUTY_EXCISE_PAY'
      Origin = 'CLAIRDB.HAWB_ITEM.DUTY_EXCISE_PAY'
    end
    object HawbItemSQLDUTY_VAT_PAY: TFloatField
      FieldName = 'DUTY_VAT_PAY'
      Origin = 'CLAIRDB.HAWB_ITEM.DUTY_VAT_PAY'
    end
    object HawbItemSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object HawbItemSQLFK_RELIEF_CODE: TStringField
      FieldName = 'FK_RELIEF_CODE'
      FixedChar = True
      Size = 5
    end
    object HawbItemSQLFK_IMPORT_TYPE: TStringField
      FieldName = 'FK_IMPORT_TYPE'
      Size = 1
    end
    object HawbItemSQLTARIFF_DESCRIPTION: TStringField
      FieldName = 'TARIFF_DESCRIPTION'
      Size = 50
    end
    object HawbItemSQLRELIEVED_IMPORT_DUTY: TFloatField
      FieldName = 'RELIEVED_IMPORT_DUTY'
    end
    object HawbItemSQLEXCISE_DUTY_RATE: TFloatField
      FieldName = 'EXCISE_DUTY_RATE'
    end
    object HawbItemSQLEXCISE_RELIEVED: TFloatField
      FieldName = 'EXCISE_RELIEVED'
    end
    object HawbItemSQLTRL_RELEIVED: TFloatField
      FieldName = 'TRL_RELEIVED'
    end
    object HawbItemSQLVAT_RATE: TFloatField
      FieldName = 'VAT_RATE'
    end
    object HawbItemSQLVAT_RELEIVED: TFloatField
      FieldName = 'VAT_RELEIVED'
    end
    object HawbItemSQLCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
    end
    object HawbItemSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      FixedChar = True
      Size = 3
    end
    object HawbItemSQLFK_MAWB: TIntegerField
      FieldName = 'FK_MAWB'
    end
    object HawbItemSQLFK_VAT_CODE: TIntegerField
      FieldName = 'FK_VAT_CODE'
    end
    object HawbItemSQLFK_TARIFF_C_CODE: TStringField
      FieldName = 'FK_TARIFF_C_CODE'
      FixedChar = True
      Size = 17
    end
    object HawbItemSQLIMPORT_DUTY_RATE_UNIT: TStringField
      FieldName = 'IMPORT_DUTY_RATE_UNIT'
      FixedChar = True
      Size = 12
    end
    object HawbItemSQLIMPORT_DUTY_RATE_QUANT: TFloatField
      FieldName = 'IMPORT_DUTY_RATE_QUANT'
    end
    object HawbItemSQLIMPORT_DUTY_RATE_BASE: TFloatField
      FieldName = 'IMPORT_DUTY_RATE_BASE'
    end
    object HawbItemSQLDUTY_IMPORT_TOTAL: TFloatField
      FieldName = 'DUTY_IMPORT_TOTAL'
    end
    object HawbItemSQLDUTY_EXCISE_TOTAL: TFloatField
      FieldName = 'DUTY_EXCISE_TOTAL'
    end
    object HawbItemSQLDUTY_TRL_TOTAL: TFloatField
      FieldName = 'DUTY_TRL_TOTAL'
    end
    object HawbItemSQLDUTY_VAT_TOTAL: TFloatField
      FieldName = 'DUTY_VAT_TOTAL'
    end
    object HawbItemSQLTOTAL_VALUE_FOR_VAT: TFloatField
      FieldName = 'TOTAL_VALUE_FOR_VAT'
    end
    object HawbItemSQLDUTY_TOTAL_CHARGES: TFloatField
      FieldName = 'DUTY_TOTAL_CHARGES'
    end
    object HawbItemSQLFK_EXCISE_CODE: TStringField
      FieldName = 'FK_EXCISE_CODE'
      FixedChar = True
      Size = 5
    end
    object HawbItemSQLEURO1: TStringField
      FieldName = 'EURO1'
      FixedChar = True
    end
    object HawbItemSQLEURO2: TStringField
      FieldName = 'EURO2'
      FixedChar = True
    end
    object HawbItemSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object HawbItemSQLEURO_PENDING: TStringField
      FieldName = 'EURO_PENDING'
      Required = True
      FixedChar = True
      Size = 1
    end
    object HawbItemSQLMULTI_ITEMS_INVOICE: TStringField
      FieldName = 'MULTI_ITEMS_INVOICE'
      FixedChar = True
      Size = 1
    end
    object HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField
      FieldName = 'PRE_DISCOUNT_AMOUNT'
    end
    object HawbItemSQLWEIGHT_NET: TFloatField
      FieldName = 'WEIGHT_NET'
    end
  end
  object SenderInvoiceSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select *'
      'from Sender_Invoice'
      'where FK_HAWB_SERIAL=:HawbSerial'
      'order by Invoice_Serial;')
    ReadOnly = True
    Left = 136
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HawbSerial'
        ParamType = ptInput
        Value = nil
      end>
    object SenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField
      FieldName = 'FK_HAWB_SERIAL'
      Origin = 'SENDER_INVOICE.FK_HAWB_SERIAL'
    end
    object SenderInvoiceSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
      Origin = 'SENDER_INVOICE.INVOICE_SERIAL'
    end
    object SenderInvoiceSQLINVOICE_NUMBER: TStringField
      FieldName = 'INVOICE_NUMBER'
      Origin = 'SENDER_INVOICE.INVOICE_NUMBER'
    end
    object SenderInvoiceSQLFK_HAWB_ID: TStringField
      FieldName = 'FK_HAWB_ID'
      Origin = 'SENDER_INVOICE.FK_HAWB_ID'
      Size = 10
    end
    object SenderInvoiceSQLINVOICE_AMOUNT: TFloatField
      FieldName = 'INVOICE_AMOUNT'
      Origin = 'SENDER_INVOICE.INVOICE_AMOUNT'
    end
    object SenderInvoiceSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
      Origin = 'SENDER_INVOICE.FREIGHT_AMOUNT'
    end
    object SenderInvoiceSQLDISCOUNT_AMOUNT: TFloatField
      FieldName = 'DISCOUNT_AMOUNT'
      Origin = 'SENDER_INVOICE.DISCOUNT_AMOUNT'
    end
    object SenderInvoiceSQLINSURANCE_AMOUNT: TFloatField
      FieldName = 'INSURANCE_AMOUNT'
      Origin = 'SENDER_INVOICE.INSURANCE_AMOUNT'
    end
    object SenderInvoiceSQLOTHER_CHARGES_AMOUNT: TFloatField
      FieldName = 'OTHER_CHARGES_AMOUNT'
      Origin = 'SENDER_INVOICE.OTHER_CHARGES_AMOUNT'
    end
    object SenderInvoiceSQLTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
      Origin = 'SENDER_INVOICE.TOTAL_AMOUNT'
    end
    object SenderInvoiceSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Origin = 'SENDER_INVOICE.CURRENCY'
      Size = 3
    end
    object SenderInvoiceSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Origin = 'SENDER_INVOICE.EXCHANGE_RATE'
    end
    object SenderInvoiceSQLFACTOR: TFloatField
      FieldName = 'FACTOR'
      Origin = 'SENDER_INVOICE.FACTOR'
    end
    object SenderInvoiceSQLFREIGHT_CYP_AMOUNT: TFloatField
      FieldName = 'FREIGHT_CYP_AMOUNT'
      Origin = 'SENDER_INVOICE.FREIGHT_CYP_AMOUNT'
    end
    object SenderInvoiceSQLPRE_DISCOUNT_AMOUNT: TFloatField
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      Origin = 'SENDER_INVOICE.FK_HAWB_ID'
    end
    object SenderInvoiceSQLDISCOUNT_RATE: TFloatField
      FieldName = 'DISCOUNT_RATE'
      Origin = 'SENDER_INVOICE.INVOICE_AMOUNT'
    end
    object SenderInvoiceSQLTotalCyp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalCyp'
      Calculated = True
    end
    object SenderInvoiceSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
      Origin = 'CLAIRDB.SENDER_INVOICE.CUSTOMS_VALUE'
    end
    object SenderInvoiceSQLFK_MAWB_SERIAL: TIntegerField
      FieldName = 'FK_MAWB_SERIAL'
    end
    object SenderInvoiceSQLIS_VALID: TStringField
      FieldName = 'IS_VALID'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SenderInvoiceSQLNUMBER_OF_HAWB_ITEMS: TIntegerField
      FieldName = 'NUMBER_OF_HAWB_ITEMS'
    end
    object SenderInvoiceSQLFACTOR_NUMERIC: TFloatField
      FieldName = 'FACTOR_NUMERIC'
    end
  end
  object HawbItemPIP: TppDBPipeline
    DataSource = HawbItemSRC
    OpenDataSource = False
    UserName = 'HawbItemPIP'
    Left = 256
    Top = 144
    object HItemPIPppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'FK_HAWB_SERIAL'
      GuidCollationType = gcString
      DetailFieldName = 'FK_HAWB_SERIAL'
      DetailSortOrder = soAscending
    end
    object HItemPIPppMasterFieldLink2: TppMasterFieldLink
      MasterFieldName = 'INVOICE_SERIAL'
      GuidCollationType = gcString
      DetailFieldName = 'FK_SENDER_INVOICE_SERIAL'
      DetailSortOrder = soAscending
    end
  end
  object SenderInvoicePIP: TppDBPipeline
    DataSource = SenderInvoiceSRC
    OpenDataSource = False
    UserName = 'SenderInvoicePIP'
    Left = 144
    Top = 152
  end
  object HawbItemSRC: TDataSource
    DataSet = HawbItemSQL
    Left = 264
    Top = 80
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
        'VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT)'
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
        'DER_COUNTRY, :CUSTOMER_VAT_ID, :CUSTOMER_AUTHORITY_TO_AGENT)')
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
        'ER_AUTHORITY_TO_AGENT = :CUSTOMER_AUTHORITY_TO_AGENT'
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
        'MER_VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT FROM HAWB'
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
      'Select * from Hawb where Serial_number= :SerialNumber')
    ReadOnly = True
    Left = 40
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SerialNumber'
        ParamType = ptInput
        Value = 0
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
    object HawbSQLDATE_INVOICED: TDateTimeField
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
      Size = 5
    end
    object HawbSQLCLEARANCE_WAITING_REASON: TStringField
      FieldName = 'CLEARANCE_WAITING_REASON'
      FixedChar = True
      Size = 40
    end
    object HawbSQLDATE_CLEARED: TDateTimeField
      FieldName = 'DATE_CLEARED'
    end
    object HawbSQLDATE_REGISTERED: TDateTimeField
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
  end
  object HawbSRC: TDataSource
    DataSet = HawbSQL
    Left = 40
    Top = 88
  end
  object HawbPIP: TppDBPipeline
    DataSource = HawbSRC
    UserName = 'HawbPIP'
    Left = 40
    Top = 152
  end
  object CountrySQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from Country')
    ReadOnly = True
    Left = 400
    Top = 16
    object CountrySQLNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = 'CLAIRDB.COUNTRY.NUMBER'
    end
    object CountrySQLCODE: TStringField
      FieldName = 'CODE'
      Origin = 'CLAIRDB.COUNTRY.CODE'
      FixedChar = True
      Size = 3
    end
    object CountrySQLNAME: TStringField
      FieldName = 'NAME'
      Origin = 'CLAIRDB.COUNTRY.NAME'
      Size = 40
    end
    object CountrySQLEU_MEMBER: TStringField
      FieldName = 'EU_MEMBER'
      Origin = 'CLAIRDB.COUNTRY.EU_MEMBER'
      FixedChar = True
      Size = 1
    end
    object CountrySQLFREIGHT05: TIntegerField
      FieldName = 'FREIGHT05'
      Origin = 'CLAIRDB.COUNTRY.FREIGHT05'
    end
    object CountrySQLFREIGHT6: TIntegerField
      FieldName = 'FREIGHT6'
      Origin = 'CLAIRDB.COUNTRY.FREIGHT6'
    end
    object CountrySQLFK_CURRENCY_CODE: TStringField
      FieldName = 'FK_CURRENCY_CODE'
      Origin = 'CLAIRDB.COUNTRY.FK_CURRENCY_CODE'
      FixedChar = True
      Size = 3
    end
    object CountrySQLGREEK_NAME: TStringField
      FieldName = 'GREEK_NAME'
      Origin = 'CLAIRDB.COUNTRY.GREEK_NAME'
      Size = 40
    end
    object CountrySQLXML_COUNTRY: TStringField
      FieldName = 'XML_COUNTRY'
      Origin = 'CLAIRDB.COUNTRY.XML_COUNTRY'
      FixedChar = True
      Size = 2
    end
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Active = True
    Left = 412
    Top = 153
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Active = True
    Left = 412
    Top = 133
  end
  object SenderInvoiceSRC: TIBCDataSource
    DataSet = SenderInvoiceSQL
    Left = 128
    Top = 104
  end
end
