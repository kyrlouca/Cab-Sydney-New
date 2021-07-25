object V_HawbDataDML: TV_HawbDataDML
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 584
  Width = 860
  object SenderInvoiceSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO SENDER_INVOICE'
      
        '  (FK_HAWB_SERIAL, INVOICE_SERIAL, INVOICE_NUMBER, FK_HAWB_ID, I' +
        'NVOICE_AMOUNT, FREIGHT_AMOUNT, DISCOUNT_AMOUNT, INSURANCE_AMOUNT' +
        ', OTHER_CHARGES_AMOUNT, TOTAL_AMOUNT, CURRENCY, EXCHANGE_RATE, F' +
        'ACTOR, FREIGHT_CYP_AMOUNT, CUSTOMS_VALUE, FK_MAWB_SERIAL, IS_VAL' +
        'ID, NUMBER_OF_HAWB_ITEMS, PRE_DISCOUNT_AMOUNT, DISCOUNT_RATE, FA' +
        'CTOR_NUMERIC)'
      'VALUES'
      
        '  (:FK_HAWB_SERIAL, :INVOICE_SERIAL, :INVOICE_NUMBER, :FK_HAWB_I' +
        'D, :INVOICE_AMOUNT, :FREIGHT_AMOUNT, :DISCOUNT_AMOUNT, :INSURANC' +
        'E_AMOUNT, :OTHER_CHARGES_AMOUNT, :TOTAL_AMOUNT, :CURRENCY, :EXCH' +
        'ANGE_RATE, :FACTOR, :FREIGHT_CYP_AMOUNT, :CUSTOMS_VALUE, :FK_MAW' +
        'B_SERIAL, :IS_VALID, :NUMBER_OF_HAWB_ITEMS, :PRE_DISCOUNT_AMOUNT' +
        ', :DISCOUNT_RATE, :FACTOR_NUMERIC)')
    SQLDelete.Strings = (
      'DELETE FROM SENDER_INVOICE'
      'WHERE'
      
        '  FK_HAWB_SERIAL = :Old_FK_HAWB_SERIAL AND INVOICE_SERIAL = :Old' +
        '_INVOICE_SERIAL')
    SQLUpdate.Strings = (
      'UPDATE SENDER_INVOICE'
      'SET'
      
        '  FK_HAWB_SERIAL = :FK_HAWB_SERIAL, INVOICE_SERIAL = :INVOICE_SE' +
        'RIAL, INVOICE_NUMBER = :INVOICE_NUMBER, FK_HAWB_ID = :FK_HAWB_ID' +
        ', INVOICE_AMOUNT = :INVOICE_AMOUNT, FREIGHT_AMOUNT = :FREIGHT_AM' +
        'OUNT, DISCOUNT_AMOUNT = :DISCOUNT_AMOUNT, INSURANCE_AMOUNT = :IN' +
        'SURANCE_AMOUNT, OTHER_CHARGES_AMOUNT = :OTHER_CHARGES_AMOUNT, TO' +
        'TAL_AMOUNT = :TOTAL_AMOUNT, CURRENCY = :CURRENCY, EXCHANGE_RATE ' +
        '= :EXCHANGE_RATE, FACTOR = :FACTOR, FREIGHT_CYP_AMOUNT = :FREIGH' +
        'T_CYP_AMOUNT, CUSTOMS_VALUE = :CUSTOMS_VALUE, FK_MAWB_SERIAL = :' +
        'FK_MAWB_SERIAL, IS_VALID = :IS_VALID, NUMBER_OF_HAWB_ITEMS = :NU' +
        'MBER_OF_HAWB_ITEMS, PRE_DISCOUNT_AMOUNT = :PRE_DISCOUNT_AMOUNT, ' +
        'DISCOUNT_RATE = :DISCOUNT_RATE, FACTOR_NUMERIC = :FACTOR_NUMERIC'
      'WHERE'
      
        '  FK_HAWB_SERIAL = :Old_FK_HAWB_SERIAL AND INVOICE_SERIAL = :Old' +
        '_INVOICE_SERIAL')
    SQLRefresh.Strings = (
      
        'SELECT FK_HAWB_SERIAL, INVOICE_SERIAL, INVOICE_NUMBER, FK_HAWB_I' +
        'D, INVOICE_AMOUNT, FREIGHT_AMOUNT, DISCOUNT_AMOUNT, INSURANCE_AM' +
        'OUNT, OTHER_CHARGES_AMOUNT, TOTAL_AMOUNT, CURRENCY, EXCHANGE_RAT' +
        'E, FACTOR, FREIGHT_CYP_AMOUNT, CUSTOMS_VALUE, FK_MAWB_SERIAL, IS' +
        '_VALID, NUMBER_OF_HAWB_ITEMS, PRE_DISCOUNT_AMOUNT, DISCOUNT_RATE' +
        ', FACTOR_NUMERIC FROM SENDER_INVOICE'
      'WHERE'
      
        '  FK_HAWB_SERIAL = :FK_HAWB_SERIAL AND INVOICE_SERIAL = :INVOICE' +
        '_SERIAL')
    SQLLock.Strings = (
      'SELECT NULL FROM SENDER_INVOICE'
      'WHERE'
      
        'FK_HAWB_SERIAL = :Old_FK_HAWB_SERIAL AND INVOICE_SERIAL = :Old_I' +
        'NVOICE_SERIAL'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SENDER_INVOICE'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = HawbWriteTrans
    SQL.Strings = (
      'Select * '
      'From'
      '  SENDER_INVOICE')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_HAWB_SERIAL'
    MasterSource = HawbSRC
    FetchAll = True
    BeforeEdit = SenderInvoiceSQLBeforeEdit
    Left = 32
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object SenderInvoiceSQLCURRENCY: TStringField
      DisplayWidth = 3
      FieldName = 'CURRENCY'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SenderInvoiceSQLFK_HAWB_ID: TStringField
      DisplayWidth = 10
      FieldName = 'FK_HAWB_ID'
      FixedChar = True
      Size = 10
    end
    object SenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField
      FieldName = 'FK_HAWB_SERIAL'
      Required = True
      Visible = False
    end
    object SenderInvoiceSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
      Required = True
      Visible = False
    end
    object SenderInvoiceSQLINVOICE_NUMBER: TStringField
      FieldName = 'INVOICE_NUMBER'
      Visible = False
      FixedChar = True
    end
    object SenderInvoiceSQLINVOICE_AMOUNT: TFloatField
      FieldName = 'INVOICE_AMOUNT'
      Visible = False
    end
    object SenderInvoiceSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
      Visible = False
      DisplayFormat = '0.00'
    end
    object SenderInvoiceSQLDISCOUNT_AMOUNT: TFloatField
      FieldName = 'DISCOUNT_AMOUNT'
      Visible = False
    end
    object SenderInvoiceSQLINSURANCE_AMOUNT: TFloatField
      FieldName = 'INSURANCE_AMOUNT'
      Visible = False
      DisplayFormat = '0.00'
    end
    object SenderInvoiceSQLOTHER_CHARGES_AMOUNT: TFloatField
      FieldName = 'OTHER_CHARGES_AMOUNT'
      Visible = False
    end
    object SenderInvoiceSQLTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
      Visible = False
    end
    object SenderInvoiceSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Required = True
      Visible = False
      DisplayFormat = '0.0000'
    end
    object SenderInvoiceSQLFACTOR: TFloatField
      FieldName = 'FACTOR'
      Visible = False
      DisplayFormat = '0.000000'
    end
    object SenderInvoiceSQLFREIGHT_CYP_AMOUNT: TFloatField
      FieldName = 'FREIGHT_CYP_AMOUNT'
      Visible = False
      DisplayFormat = '0.00'
    end
    object SenderInvoiceSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
      Visible = False
      DisplayFormat = '0.00'
    end
    object SenderInvoiceSQLFK_MAWB_SERIAL: TIntegerField
      FieldName = 'FK_MAWB_SERIAL'
      Visible = False
    end
    object SenderInvoiceSQLIS_VALID: TStringField
      FieldName = 'IS_VALID'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SenderInvoiceSQLNUMBER_OF_HAWB_ITEMS: TIntegerField
      FieldName = 'NUMBER_OF_HAWB_ITEMS'
      Visible = False
    end
    object SenderInvoiceSQLPRE_DISCOUNT_AMOUNT: TFloatField
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      Required = True
      Visible = False
      DisplayFormat = '0.00'
    end
    object SenderInvoiceSQLDISCOUNT_RATE: TFloatField
      FieldName = 'DISCOUNT_RATE'
      Visible = False
    end
    object SenderInvoiceSQLFACTOR_NUMERIC: TFloatField
      FieldName = 'FACTOR_NUMERIC'
      Visible = False
      DisplayFormat = '0.000000'
    end
  end
  object HawbSRC: TIBCDataSource
    DataSet = HawbSQL
    OnDataChange = HawbSRCDataChange
    Left = 128
    Top = 24
  end
  object HawbItemSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO HAWB_ITEM'
      
        '  (SERIAL_NUMBER, FK_MAWB, FK_HAWB_SERIAL, FK_SENDER_INVOICE_SER' +
        'IAL, FK_COUNTRY_ORIGIN, FK_TARIFF_CODE, DESCRIPTION, FK_RELIEF_C' +
        'ODE, FK_IMPORT_TYPE, INVOICE_VALUE, DUTY_TYPE, TARIFF_DESCRIPTIO' +
        'N, NET_QUANTITY, IMPORT_DUTY_RATE, RELIEVED_IMPORT_DUTY, EXCISE_' +
        'DUTY_RATE, EXCISE_RELIEVED, TRL_RATE, TRL_RELEIVED, VAT_CODE, VA' +
        'T_RATE, VAT_RELEIVED, CUSTOMS_VALUE, CURRENCY_RATE, CURRENCY, FK' +
        '_VAT_CODE, FK_TARIFF_C_CODE, IMPORT_DUTY_RATE_UNIT, IMPORT_DUTY_' +
        'RATE_QUANT, IMPORT_DUTY_RATE_BASE, DUTY_IMPORT_PAY, DUTY_TRL_PAY' +
        ', DUTY_EXCISE_PAY, DUTY_VAT_PAY, DUTY_IMPORT_TOTAL, DUTY_EXCISE_' +
        'TOTAL, DUTY_TRL_TOTAL, DUTY_VAT_TOTAL, TOTAL_VALUE_FOR_VAT, DUTY' +
        '_TOTAL_CHARGES, FK_EXCISE_CODE, EURO1, EURO2, POSOSTOSIS, EURO_P' +
        'ENDING, MULTI_ITEMS_INVOICE, INVOICE_LINE, PRE_DISCOUNT_AMOUNT, ' +
        'WEIGHT_NET, UNIT, BUCKET_TARIFF, WEIGHT_GROSS)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_MAWB, :FK_HAWB_SERIAL, :FK_SENDER_INVOICE' +
        '_SERIAL, :FK_COUNTRY_ORIGIN, :FK_TARIFF_CODE, :DESCRIPTION, :FK_' +
        'RELIEF_CODE, :FK_IMPORT_TYPE, :INVOICE_VALUE, :DUTY_TYPE, :TARIF' +
        'F_DESCRIPTION, :NET_QUANTITY, :IMPORT_DUTY_RATE, :RELIEVED_IMPOR' +
        'T_DUTY, :EXCISE_DUTY_RATE, :EXCISE_RELIEVED, :TRL_RATE, :TRL_REL' +
        'EIVED, :VAT_CODE, :VAT_RATE, :VAT_RELEIVED, :CUSTOMS_VALUE, :CUR' +
        'RENCY_RATE, :CURRENCY, :FK_VAT_CODE, :FK_TARIFF_C_CODE, :IMPORT_' +
        'DUTY_RATE_UNIT, :IMPORT_DUTY_RATE_QUANT, :IMPORT_DUTY_RATE_BASE,' +
        ' :DUTY_IMPORT_PAY, :DUTY_TRL_PAY, :DUTY_EXCISE_PAY, :DUTY_VAT_PA' +
        'Y, :DUTY_IMPORT_TOTAL, :DUTY_EXCISE_TOTAL, :DUTY_TRL_TOTAL, :DUT' +
        'Y_VAT_TOTAL, :TOTAL_VALUE_FOR_VAT, :DUTY_TOTAL_CHARGES, :FK_EXCI' +
        'SE_CODE, :EURO1, :EURO2, :POSOSTOSIS, :EURO_PENDING, :MULTI_ITEM' +
        'S_INVOICE, :INVOICE_LINE, :PRE_DISCOUNT_AMOUNT, :WEIGHT_NET, :UN' +
        'IT, :BUCKET_TARIFF, :WEIGHT_GROSS)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB_ITEM'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB_ITEM'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_MAWB = :FK_MAWB, FK_HAWB_SE' +
        'RIAL = :FK_HAWB_SERIAL, FK_SENDER_INVOICE_SERIAL = :FK_SENDER_IN' +
        'VOICE_SERIAL, FK_COUNTRY_ORIGIN = :FK_COUNTRY_ORIGIN, FK_TARIFF_' +
        'CODE = :FK_TARIFF_CODE, DESCRIPTION = :DESCRIPTION, FK_RELIEF_CO' +
        'DE = :FK_RELIEF_CODE, FK_IMPORT_TYPE = :FK_IMPORT_TYPE, INVOICE_' +
        'VALUE = :INVOICE_VALUE, DUTY_TYPE = :DUTY_TYPE, TARIFF_DESCRIPTI' +
        'ON = :TARIFF_DESCRIPTION, NET_QUANTITY = :NET_QUANTITY, IMPORT_D' +
        'UTY_RATE = :IMPORT_DUTY_RATE, RELIEVED_IMPORT_DUTY = :RELIEVED_I' +
        'MPORT_DUTY, EXCISE_DUTY_RATE = :EXCISE_DUTY_RATE, EXCISE_RELIEVE' +
        'D = :EXCISE_RELIEVED, TRL_RATE = :TRL_RATE, TRL_RELEIVED = :TRL_' +
        'RELEIVED, VAT_CODE = :VAT_CODE, VAT_RATE = :VAT_RATE, VAT_RELEIV' +
        'ED = :VAT_RELEIVED, CUSTOMS_VALUE = :CUSTOMS_VALUE, CURRENCY_RAT' +
        'E = :CURRENCY_RATE, CURRENCY = :CURRENCY, FK_VAT_CODE = :FK_VAT_' +
        'CODE, FK_TARIFF_C_CODE = :FK_TARIFF_C_CODE, IMPORT_DUTY_RATE_UNI' +
        'T = :IMPORT_DUTY_RATE_UNIT, IMPORT_DUTY_RATE_QUANT = :IMPORT_DUT' +
        'Y_RATE_QUANT, IMPORT_DUTY_RATE_BASE = :IMPORT_DUTY_RATE_BASE, DU' +
        'TY_IMPORT_PAY = :DUTY_IMPORT_PAY, DUTY_TRL_PAY = :DUTY_TRL_PAY, ' +
        'DUTY_EXCISE_PAY = :DUTY_EXCISE_PAY, DUTY_VAT_PAY = :DUTY_VAT_PAY' +
        ', DUTY_IMPORT_TOTAL = :DUTY_IMPORT_TOTAL, DUTY_EXCISE_TOTAL = :D' +
        'UTY_EXCISE_TOTAL, DUTY_TRL_TOTAL = :DUTY_TRL_TOTAL, DUTY_VAT_TOT' +
        'AL = :DUTY_VAT_TOTAL, TOTAL_VALUE_FOR_VAT = :TOTAL_VALUE_FOR_VAT' +
        ', DUTY_TOTAL_CHARGES = :DUTY_TOTAL_CHARGES, FK_EXCISE_CODE = :FK' +
        '_EXCISE_CODE, EURO1 = :EURO1, EURO2 = :EURO2, POSOSTOSIS = :POSO' +
        'STOSIS, EURO_PENDING = :EURO_PENDING, MULTI_ITEMS_INVOICE = :MUL' +
        'TI_ITEMS_INVOICE, INVOICE_LINE = :INVOICE_LINE, PRE_DISCOUNT_AMO' +
        'UNT = :PRE_DISCOUNT_AMOUNT, WEIGHT_NET = :WEIGHT_NET, UNIT = :UN' +
        'IT, BUCKET_TARIFF = :BUCKET_TARIFF, WEIGHT_GROSS = :WEIGHT_GROSS'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_MAWB, FK_HAWB_SERIAL, FK_SENDER_INVOICE' +
        '_SERIAL, FK_COUNTRY_ORIGIN, FK_TARIFF_CODE, DESCRIPTION, FK_RELI' +
        'EF_CODE, FK_IMPORT_TYPE, INVOICE_VALUE, DUTY_TYPE, TARIFF_DESCRI' +
        'PTION, NET_QUANTITY, IMPORT_DUTY_RATE, RELIEVED_IMPORT_DUTY, EXC' +
        'ISE_DUTY_RATE, EXCISE_RELIEVED, TRL_RATE, TRL_RELEIVED, VAT_CODE' +
        ', VAT_RATE, VAT_RELEIVED, CUSTOMS_VALUE, CURRENCY_RATE, CURRENCY' +
        ', FK_VAT_CODE, FK_TARIFF_C_CODE, IMPORT_DUTY_RATE_UNIT, IMPORT_D' +
        'UTY_RATE_QUANT, IMPORT_DUTY_RATE_BASE, DUTY_IMPORT_PAY, DUTY_TRL' +
        '_PAY, DUTY_EXCISE_PAY, DUTY_VAT_PAY, DUTY_IMPORT_TOTAL, DUTY_EXC' +
        'ISE_TOTAL, DUTY_TRL_TOTAL, DUTY_VAT_TOTAL, TOTAL_VALUE_FOR_VAT, ' +
        'DUTY_TOTAL_CHARGES, FK_EXCISE_CODE, EURO1, EURO2, POSOSTOSIS, EU' +
        'RO_PENDING, MULTI_ITEMS_INVOICE, INVOICE_LINE, PRE_DISCOUNT_AMOU' +
        'NT, WEIGHT_NET, UNIT, BUCKET_TARIFF, WEIGHT_GROSS FROM HAWB_ITEM'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB_ITEM'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB_ITEM'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from Hawb_item')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_HAWB_SERIAL'
    MasterSource = HawbSRC
    Active = True
    BeforeInsert = HawbSQLBeforeEdit
    BeforeEdit = HawbSQLBeforeEdit
    BeforeDelete = HawbSQLBeforeEdit
    Left = 32
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object HawbItemSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object HawbItemSQLFK_TARIFF_CODE: TStringField
      DisplayLabel = 'Tariff'
      DisplayWidth = 17
      FieldName = 'FK_TARIFF_CODE'
      Size = 17
    end
    object HawbItemSQLDESCRIPTION: TStringField
      DisplayLabel = 'Desc.'
      DisplayWidth = 20
      FieldName = 'DESCRIPTION'
      Size = 40
    end
    object HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField
      DisplayLabel = 'Origin'
      DisplayWidth = 12
      FieldName = 'FK_COUNTRY_ORIGIN'
    end
    object HawbItemSQLNET_QUANTITY: TFloatField
      DisplayLabel = 'Units'
      DisplayWidth = 10
      FieldName = 'NET_QUANTITY'
    end
    object HawbItemSQLWEIGHT_GROSS: TFloatField
      DisplayLabel = 'Gross Weight'
      DisplayWidth = 10
      FieldName = 'WEIGHT_GROSS'
    end
    object HawbItemSQLWEIGHT_NET: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 8
      FieldName = 'WEIGHT_NET'
      DisplayFormat = '0.00'
    end
    object HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField
      DisplayLabel = 'Invoice Amnt'
      DisplayWidth = 11
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      DisplayFormat = '0.00'
    end
    object HawbItemSQLDUTY_TYPE: TStringField
      DisplayLabel = 'Duty~Type'
      DisplayWidth = 10
      FieldName = 'DUTY_TYPE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object HawbItemSQLCUSTOMS_VALUE: TFloatField
      DisplayLabel = 'Customs~Value'
      DisplayWidth = 14
      FieldName = 'CUSTOMS_VALUE'
      Visible = False
    end
    object HawbItemSQLFK_HAWB_SERIAL: TIntegerField
      FieldName = 'FK_HAWB_SERIAL'
      Required = True
      Visible = False
    end
    object HawbItemSQLINVOICE_LINE: TIntegerField
      FieldName = 'INVOICE_LINE'
      Visible = False
    end
    object HawbItemSQLUNIT: TStringField
      FieldName = 'UNIT'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object HawbItemSRC: TIBCDataSource
    DataSet = HawbItemSQL
    Left = 128
    Top = 176
  end
  object CountrySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO COUNTRY'
      
        '  (NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CURREN' +
        'CY_CODE, GREEK_NAME, XML_COUNTRY)'
      'VALUES'
      
        '  (:NUMBER, :CODE, :NAME, :EU_MEMBER, :FREIGHT05, :FREIGHT6, :FK' +
        '_CURRENCY_CODE, :GREEK_NAME, :XML_COUNTRY)')
    SQLDelete.Strings = (
      'DELETE FROM COUNTRY'
      'WHERE'
      '  NUMBER = :Old_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE COUNTRY'
      'SET'
      
        '  NUMBER = :NUMBER, CODE = :CODE, NAME = :NAME, EU_MEMBER = :EU_' +
        'MEMBER, FREIGHT05 = :FREIGHT05, FREIGHT6 = :FREIGHT6, FK_CURRENC' +
        'Y_CODE = :FK_CURRENCY_CODE, GREEK_NAME = :GREEK_NAME, XML_COUNTR' +
        'Y = :XML_COUNTRY'
      'WHERE'
      '  NUMBER = :Old_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CU' +
        'RRENCY_CODE, GREEK_NAME, XML_COUNTRY FROM COUNTRY'
      'WHERE'
      '  NUMBER = :NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM COUNTRY'
      'WHERE'
      'NUMBER = :Old_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM COUNTRY'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from Country')
    ReadOnly = True
    Left = 400
    Top = 328
    object CountrySQLCODE: TStringField
      DisplayWidth = 3
      FieldName = 'CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object CountrySQLNAME: TStringField
      DisplayWidth = 40
      FieldName = 'NAME'
      Size = 40
    end
    object CountrySQLNUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMBER'
      Required = True
      Visible = False
    end
    object CountrySQLEU_MEMBER: TStringField
      DisplayWidth = 1
      FieldName = 'EU_MEMBER'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CountrySQLFREIGHT05: TIntegerField
      DisplayWidth = 10
      FieldName = 'FREIGHT05'
      Visible = False
    end
    object CountrySQLFREIGHT6: TIntegerField
      DisplayWidth = 10
      FieldName = 'FREIGHT6'
      Visible = False
    end
    object CountrySQLFK_CURRENCY_CODE: TStringField
      DisplayWidth = 3
      FieldName = 'FK_CURRENCY_CODE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object CountrySQLGREEK_NAME: TStringField
      DisplayWidth = 40
      FieldName = 'GREEK_NAME'
      Visible = False
      Size = 40
    end
    object CountrySQLXML_COUNTRY: TStringField
      DisplayWidth = 2
      FieldName = 'XML_COUNTRY'
      Visible = False
      FixedChar = True
      Size = 2
    end
  end
  object HawbCommentSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'HAWB_COMMENTS_SERIAL_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO HAWB_COMMENTS'
      
        '  (SERIAL_NUMBER, FK_HAWB_SERIAL, THE_TIMESTAMP, THE_COMMENTS, U' +
        'SER_ID)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_HAWB_SERIAL, :THE_TIMESTAMP, :THE_COMMENT' +
        'S, :USER_ID)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB_COMMENTS'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB_COMMENTS'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_HAWB_SERIAL = :FK_HAWB_SERI' +
        'AL, THE_TIMESTAMP = :THE_TIMESTAMP, THE_COMMENTS = :THE_COMMENTS' +
        ', USER_ID = :USER_ID'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_HAWB_SERIAL, THE_TIMESTAMP, THE_COMMENT' +
        'S, USER_ID FROM HAWB_COMMENTS'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB_COMMENTS'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from Hawb_comments')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_HAWB_SERIAL'
    MasterSource = HawbSRC
    FetchAll = True
    RefreshOptions = [roAfterInsert]
    BeforeEdit = HawbCommentSQLBeforeEdit
    AfterPost = HawbCommentSQLAfterPost
    OnNewRecord = HawbCommentSQLNewRecord
    Left = 40
    Top = 459
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object HawbCommentSQLUSER_ID: TStringField
      DisplayLabel = 'User Id'
      DisplayWidth = 5
      FieldName = 'USER_ID'
      FixedChar = True
      Size = 5
    end
    object HawbCommentSQLTHE_TIMESTAMP: TDateTimeField
      DisplayLabel = 'time'
      DisplayWidth = 18
      FieldName = 'THE_TIMESTAMP'
      DisplayFormat = 'hh:mm ddd dd mmm '
    end
    object HawbCommentSQLTHE_COMMENTS: TStringField
      DisplayLabel = 'comments'
      DisplayWidth = 105
      FieldName = 'THE_COMMENTS'
      FixedChar = True
      Size = 140
    end
    object HawbCommentSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Visible = False
    end
    object HawbCommentSQLFK_HAWB_SERIAL: TIntegerField
      FieldName = 'FK_HAWB_SERIAL'
      Required = True
      Visible = False
    end
  end
  object HawbSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'HAWB_SERIAL_GENERATOR'
    GeneratorMode = gmInsert
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
    UpdateTransaction = HawbWriteTrans
    SQL.Strings = (
      'Select '
      '* '
      'From'
      '  Hawb'
      'where '
      '  SERIAL_NUMBER= :SerialNumber')
    FetchAll = True
    Active = True
    BeforeInsert = HawbSQLBeforeInsert
    BeforeEdit = HawbSQLBeforeEdit
    OnNewRecord = HawbSQLNewRecord
    Left = 32
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SerialNumber'
        Value = nil
      end>
    object HawbSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
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
      DisplayFormat = '0.00'
    end
    object HawbSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Size = 3
    end
    object HawbSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      DisplayFormat = '0.0000'
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
      DisplayLabel = 'Pieces Arrived'
      FieldName = 'NUM_OF_PIECES_ARRIVED'
      Required = True
    end
    object HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
    end
    object HawbSQLFK_CLEARANCE_TYPE: TStringField
      FieldName = 'FK_CLEARANCE_TYPE'
      Size = 12
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
      DisplayLabel = 'Pieces Total'
      FieldName = 'NUMBER_OF_PARCELS'
      Required = True
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
      DisplayLabel = 'Origin Country'
      FieldName = 'FK_COUNTRY_ORIGIN'
      Required = True
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
    object HawbSQLFK_DELIVERY_TERM: TStringField
      DisplayLabel = 'Incoterm'
      FieldName = 'FK_DELIVERY_TERM'
      Size = 3
    end
    object HawbSQLSENDER_POST_CODE: TStringField
      FieldName = 'SENDER_POST_CODE'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_CITY: TStringField
      FieldName = 'SENDER_CITY'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_COUNTRY: TStringField
      FieldName = 'SENDER_COUNTRY'
      FixedChar = True
      Size = 60
    end
    object HawbSQLCUSTOMER_VAT_ID: TStringField
      FieldName = 'CUSTOMER_VAT_ID'
      FixedChar = True
      Size = 30
    end
    object HawbSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField
      FieldName = 'CUSTOMER_AUTHORITY_TO_AGENT'
      FixedChar = True
    end
    object HawbSQLIS_LOW: TStringField
      FieldName = 'IS_LOW'
      FixedChar = True
      Size = 1
    end
    object HawbSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      FixedChar = True
      Size = 1
    end
    object HawbSQLDESTINATION_STATION: TStringField
      FieldName = 'DESTINATION_STATION'
      FixedChar = True
    end
    object HawbSQLIS_OVERRIDE_MEDIUM: TStringField
      FieldName = 'IS_OVERRIDE_MEDIUM'
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_FROM_BUCKET: TStringField
      FieldName = 'IS_FROM_BUCKET'
      FixedChar = True
      Size = 1
    end
    object HawbSQLBUCKET_REFERENCE_NUMBER: TStringField
      FieldName = 'BUCKET_REFERENCE_NUMBER'
      Size = 80
    end
    object HawbSQLWEIGHT_GROSS: TFloatField
      FieldName = 'WEIGHT_GROSS'
    end
    object HawbSQLPROCEDURE_CODE: TStringField
      FieldName = 'PROCEDURE_CODE'
      Size = 10
    end
    object HawbSQLIOSS: TStringField
      FieldName = 'IOSS'
      FixedChar = True
    end
    object HawbSQLDUTY_BILLING_ACCOUNT: TStringField
      FieldName = 'DUTY_BILLING_ACCOUNT'
      Size = 50
    end
    object HawbSQLIS_LOCKED: TStringField
      FieldName = 'IS_LOCKED'
      FixedChar = True
      Size = 1
    end
    object HawbSQLFILE_NAME: TStringField
      FieldName = 'FILE_NAME'
      Size = 400
    end
  end
  object SenderInvoiceSRC: TIBCDataSource
    DataSet = SenderInvoiceSQL
    Left = 200
    Top = 136
  end
  object ExchangeRateSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select'
      '      *'
      'from'
      ' Exchange_rate')
    ReadOnly = True
    UniDirectional = True
    Left = 448
    Top = 79
    object ExchangeRateSQLFK_CURRENCY_CODE: TStringField
      DisplayLabel = 'Currency'
      DisplayWidth = 15
      FieldName = 'FK_CURRENCY_CODE'
      Required = True
      Size = 3
    end
    object ExchangeRateSQLRATE: TFloatField
      DisplayLabel = 'Rate'
      DisplayWidth = 10
      FieldName = 'RATE'
    end
  end
  object MakeSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from Unit_measure order by ORder_number')
    ReadOnly = True
    Left = 752
    Top = 64
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 264
    Top = 16
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 200
    Top = 16
  end
  object HawbWriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 352
    Top = 16
  end
  object HawbChargeCustomsSQL: TIBCQuery
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
      'select * '
      'from Hawb_charge ha'
      'left outer join charging_method cm'
      'on ha.tariff_charging_method=cm.charging_code'
      'where '
      'fk_tariff_usage='#39'CUS'#39
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
      'select * '
      'from Hawb_charge ha'
      'left outer join charging_method cm'
      'on ha.tariff_charging_method=cm.charging_code'
      'where '
      'fk_tariff_usage='#39'CUS'#39)
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_HAWB'
    MasterSource = HawbSRC
    Left = 48
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object HawbChargeCustomsSQLTARIFF_CODE: TStringField
      DisplayLabel = 'Tariff'
      DisplayWidth = 13
      FieldName = 'TARIFF_CODE'
      FixedChar = True
      Size = 17
    end
    object HawbChargeCustomsSQLDUTY_TYPE: TStringField
      DisplayLabel = 'Duty'
      DisplayWidth = 5
      FieldName = 'DUTY_TYPE'
      FixedChar = True
      Size = 3
    end
    object HawbChargeCustomsSQLTARIFF_CHARGING_METHOD: TStringField
      DisplayLabel = 'Method'
      DisplayWidth = 6
      FieldName = 'TARIFF_CHARGING_METHOD'
      FixedChar = True
      Size = 3
    end
    object HawbChargeCustomsSQLTARIFF_UNIT_RATE: TFloatField
      DisplayLabel = 'Rate'
      DisplayWidth = 8
      FieldName = 'TARIFF_UNIT_RATE'
      OnGetText = HawbChargeCustomsSQLTARIFF_UNIT_RATEGetText
      DisplayFormat = '0.00'
    end
    object HawbChargeCustomsSQLAMOUNT_NET: TFloatField
      DisplayLabel = 'Charge'
      DisplayWidth = 10
      FieldName = 'AMOUNT_NET'
      DisplayFormat = '0.00'
    end
    object HawbChargeCustomsSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 8
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object HawbChargeCustomsSQLDESCRIPTION: TStringField
      DisplayLabel = 'Method'
      DisplayWidth = 10
      FieldName = 'DESCRIPTION'
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 15
    end
    object HawbChargeCustomsSQLQUANTITY: TIntegerField
      DisplayLabel = 'Qty'
      DisplayWidth = 10
      FieldName = 'QUANTITY'
      Visible = False
    end
    object HawbChargeCustomsSQLTARIFF_UNIT: TStringField
      DisplayWidth = 11
      FieldName = 'TARIFF_UNIT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object HawbChargeCustomsSQLFK_HAWB: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_HAWB'
      Required = True
      Visible = False
    end
    object HawbChargeCustomsSQLFK_TARIFF_LINE: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_TARIFF_LINE'
      Visible = False
    end
    object HawbChargeCustomsSQLFK_HAWB_ITEM: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_HAWB_ITEM'
      Visible = False
    end
    object HawbChargeCustomsSQLCUSTOMS_VALUE: TFloatField
      DisplayWidth = 10
      FieldName = 'CUSTOMS_VALUE'
      Visible = False
    end
    object HawbChargeCustomsSQLTARIFF_UNIT_INCREMENT: TIntegerField
      DisplayWidth = 10
      FieldName = 'TARIFF_UNIT_INCREMENT'
      Visible = False
    end
    object HawbChargeCustomsSQLTARIFF_UNITS_NOT_CHARGED: TIntegerField
      DisplayWidth = 10
      FieldName = 'TARIFF_UNITS_NOT_CHARGED'
      Visible = False
    end
    object HawbChargeCustomsSQLTARIFF_RELIEVED_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TARIFF_RELIEVED_RATE'
      Visible = False
    end
    object HawbChargeCustomsSQLVAT_CODE: TStringField
      DisplayWidth = 3
      FieldName = 'VAT_CODE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object HawbChargeCustomsSQLVAT_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'VAT_RATE'
      Visible = False
    end
    object HawbChargeCustomsSQLWEIGHT: TFloatField
      DisplayWidth = 10
      FieldName = 'WEIGHT'
      Visible = False
    end
    object HawbChargeCustomsSQLPRE_DISCOUNT_AMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      Visible = False
    end
    object HawbChargeCustomsSQLFK_TARIFF_USAGE: TStringField
      FieldName = 'FK_TARIFF_USAGE'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object HawbChargeCustomsSRC: TIBCDataSource
    DataSet = HawbChargeCustomsSQL
    Left = 144
    Top = 288
  end
  object HawbChargeDhlSQL: TIBCQuery
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
      'select * '
      'from Hawb_charge ha'
      'left outer join charging_method cm'
      'on ha.tariff_charging_method=cm.charging_code'
      'where '
      'fk_tariff_usage='#39'DHL'#39
      'where'
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
      'select * '
      'from Hawb_charge ha'
      'left outer join charging_method cm'
      'on ha.tariff_charging_method=cm.charging_code'
      'where '
      'fk_tariff_usage='#39'DHL'#39)
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_HAWB'
    MasterSource = HawbSRC
    Left = 48
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object StringField8: TStringField
      DisplayLabel = 'Tariff'
      DisplayWidth = 14
      FieldName = 'TARIFF_CODE'
      FixedChar = True
      Size = 17
    end
    object StringField10: TStringField
      DisplayLabel = 'Duty'
      DisplayWidth = 4
      FieldName = 'DUTY_TYPE'
      FixedChar = True
      Size = 3
    end
    object StringField9: TStringField
      DisplayLabel = 'Method'
      DisplayWidth = 6
      FieldName = 'TARIFF_CHARGING_METHOD'
      FixedChar = True
      Size = 3
    end
    object FloatField15: TFloatField
      DisplayLabel = 'Rate'
      DisplayWidth = 8
      FieldName = 'TARIFF_UNIT_RATE'
      OnGetText = HawbChargeCustomsSQLTARIFF_UNIT_RATEGetText
      DisplayFormat = '0.00'
    end
    object FloatField19: TFloatField
      DisplayLabel = 'Charge'
      DisplayWidth = 10
      FieldName = 'AMOUNT_NET'
      LookupDataSet = CountrySQL
      DisplayFormat = '0.00'
    end
    object IntegerField6: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 9
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object HawbChargeDhlSQLDESCRIPTION: TStringField
      DisplayLabel = 'Method'
      DisplayWidth = 8
      FieldName = 'DESCRIPTION'
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 15
    end
    object IntegerField5: TIntegerField
      DisplayLabel = 'Qty'
      DisplayWidth = 10
      FieldName = 'QUANTITY'
      Visible = False
    end
    object StringField11: TStringField
      DisplayWidth = 11
      FieldName = 'TARIFF_UNIT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object IntegerField7: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_HAWB'
      Required = True
      Visible = False
    end
    object IntegerField8: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_TARIFF_LINE'
      Visible = False
    end
    object IntegerField9: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_HAWB_ITEM'
      Visible = False
    end
    object FloatField17: TFloatField
      DisplayWidth = 10
      FieldName = 'CUSTOMS_VALUE'
      Visible = False
    end
    object IntegerField10: TIntegerField
      DisplayWidth = 10
      FieldName = 'TARIFF_UNIT_INCREMENT'
      Visible = False
    end
    object IntegerField11: TIntegerField
      DisplayWidth = 10
      FieldName = 'TARIFF_UNITS_NOT_CHARGED'
      Visible = False
    end
    object FloatField18: TFloatField
      DisplayWidth = 10
      FieldName = 'TARIFF_RELIEVED_RATE'
      Visible = False
    end
    object StringField12: TStringField
      DisplayWidth = 3
      FieldName = 'VAT_CODE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object FloatField21: TFloatField
      DisplayWidth = 10
      FieldName = 'VAT_RATE'
      Visible = False
    end
    object FloatField23: TFloatField
      DisplayWidth = 10
      FieldName = 'WEIGHT'
      Visible = False
    end
    object FloatField24: TFloatField
      DisplayWidth = 10
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      Visible = False
    end
    object HawbChargeDhlSQLFK_TARIFF_USAGE: TStringField
      FieldName = 'FK_TARIFF_USAGE'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object HawbChargeDhlSRC: TIBCDataSource
    DataSet = HawbChargeDhlSQL
    Left = 144
    Top = 364
  end
  object OriginCountrySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO COUNTRY'
      
        '  (NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CURREN' +
        'CY_CODE, GREEK_NAME, XML_COUNTRY)'
      'VALUES'
      
        '  (:NUMBER, :CODE, :NAME, :EU_MEMBER, :FREIGHT05, :FREIGHT6, :FK' +
        '_CURRENCY_CODE, :GREEK_NAME, :XML_COUNTRY)')
    SQLDelete.Strings = (
      'DELETE FROM COUNTRY'
      'WHERE'
      '  NUMBER = :Old_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE COUNTRY'
      'SET'
      
        '  NUMBER = :NUMBER, CODE = :CODE, NAME = :NAME, EU_MEMBER = :EU_' +
        'MEMBER, FREIGHT05 = :FREIGHT05, FREIGHT6 = :FREIGHT6, FK_CURRENC' +
        'Y_CODE = :FK_CURRENCY_CODE, GREEK_NAME = :GREEK_NAME, XML_COUNTR' +
        'Y = :XML_COUNTRY'
      'WHERE'
      '  NUMBER = :Old_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CU' +
        'RRENCY_CODE, GREEK_NAME, XML_COUNTRY FROM COUNTRY'
      'WHERE'
      '  NUMBER = :NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM COUNTRY'
      'WHERE'
      'NUMBER = :Old_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM COUNTRY'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from Country')
    ReadOnly = True
    Left = 520
    Top = 384
    object StringField18: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 2
      FieldName = 'XML_COUNTRY'
      FixedChar = True
      Size = 2
    end
    object StringField14: TStringField
      DisplayLabel = 'Country'
      DisplayWidth = 40
      FieldName = 'NAME'
      Size = 40
    end
    object StringField13: TStringField
      DisplayWidth = 3
      FieldName = 'CODE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 3
    end
    object IntegerField12: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMBER'
      Required = True
      Visible = False
    end
    object StringField15: TStringField
      DisplayWidth = 1
      FieldName = 'EU_MEMBER'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object IntegerField13: TIntegerField
      DisplayWidth = 10
      FieldName = 'FREIGHT05'
      Visible = False
    end
    object IntegerField14: TIntegerField
      DisplayWidth = 10
      FieldName = 'FREIGHT6'
      Visible = False
    end
    object StringField16: TStringField
      DisplayWidth = 3
      FieldName = 'FK_CURRENCY_CODE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object StringField17: TStringField
      DisplayWidth = 40
      FieldName = 'GREEK_NAME'
      Visible = False
      Size = 40
    end
  end
  object GridOriginCountrySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO COUNTRY'
      
        '  (NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CURREN' +
        'CY_CODE, GREEK_NAME, XML_COUNTRY)'
      'VALUES'
      
        '  (:NUMBER, :CODE, :NAME, :EU_MEMBER, :FREIGHT05, :FREIGHT6, :FK' +
        '_CURRENCY_CODE, :GREEK_NAME, :XML_COUNTRY)')
    SQLDelete.Strings = (
      'DELETE FROM COUNTRY'
      'WHERE'
      '  NUMBER = :Old_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE COUNTRY'
      'SET'
      
        '  NUMBER = :NUMBER, CODE = :CODE, NAME = :NAME, EU_MEMBER = :EU_' +
        'MEMBER, FREIGHT05 = :FREIGHT05, FREIGHT6 = :FREIGHT6, FK_CURRENC' +
        'Y_CODE = :FK_CURRENCY_CODE, GREEK_NAME = :GREEK_NAME, XML_COUNTR' +
        'Y = :XML_COUNTRY'
      'WHERE'
      '  NUMBER = :Old_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT NUMBER, CODE, NAME, EU_MEMBER, FREIGHT05, FREIGHT6, FK_CU' +
        'RRENCY_CODE, GREEK_NAME, XML_COUNTRY FROM COUNTRY'
      'WHERE'
      '  NUMBER = :NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM COUNTRY'
      'WHERE'
      'NUMBER = :Old_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM COUNTRY'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from Country')
    ReadOnly = True
    Left = 648
    Top = 392
    object StringField19: TStringField
      DisplayWidth = 3
      FieldName = 'CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object StringField20: TStringField
      DisplayWidth = 40
      FieldName = 'NAME'
      Size = 40
    end
    object IntegerField15: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMBER'
      Required = True
      Visible = False
    end
    object StringField21: TStringField
      DisplayWidth = 1
      FieldName = 'EU_MEMBER'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object IntegerField16: TIntegerField
      DisplayWidth = 10
      FieldName = 'FREIGHT05'
      Visible = False
    end
    object IntegerField17: TIntegerField
      DisplayWidth = 10
      FieldName = 'FREIGHT6'
      Visible = False
    end
    object StringField22: TStringField
      DisplayWidth = 3
      FieldName = 'FK_CURRENCY_CODE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object StringField23: TStringField
      DisplayWidth = 40
      FieldName = 'GREEK_NAME'
      Visible = False
      Size = 40
    end
    object StringField24: TStringField
      DisplayWidth = 2
      FieldName = 'XML_COUNTRY'
      Visible = False
      FixedChar = True
      Size = 2
    end
  end
  object HawbCommentSRC: TIBCDataSource
    DataSet = HawbCommentSQL
    Left = 128
    Top = 464
  end
  object MawbSQL: TIBCQuery
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO MAWB'
      '  (REFERENCE_NUMBER, MAWB_ID)'
      'VALUES'
      '  (:REFERENCE_NUMBER, :MAWB_ID)')
    SQLDelete.Strings = (
      'DELETE FROM MAWB'
      'WHERE'
      '  REFERENCE_NUMBER = :Old_REFERENCE_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE MAWB'
      'SET'
      '  REFERENCE_NUMBER = :REFERENCE_NUMBER, MAWB_ID = :MAWB_ID'
      'WHERE'
      '  REFERENCE_NUMBER = :Old_REFERENCE_NUMBER')
    SQLRefresh.Strings = (
      'SELECT REFERENCE_NUMBER, MAWB_ID FROM MAWB'
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
    UpdateTransaction = HawbWriteTrans
    SQL.Strings = (
      'Select '
      'reference_number, mawb_id '
      'From'
      '  Mawb')
    MasterFields = 'FK_MAWB_REFER_NUMBER'
    DetailFields = 'REFERENCE_NUMBER'
    MasterSource = HawbSRC
    FetchAll = True
    ReadOnly = True
    BeforeInsert = HawbSQLBeforeInsert
    BeforeEdit = HawbSQLBeforeEdit
    OnNewRecord = HawbSQLNewRecord
    Left = 32
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FK_MAWB_REFER_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object MawbSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      Size = 15
    end
    object MawbSQLREFERENCE_NUMBER: TIntegerField
      FieldName = 'REFERENCE_NUMBER'
      Required = True
    end
  end
  object MawbSRC: TIBCDataSource
    DataSet = MawbSQL
    Left = 120
    Top = 80
  end
  object TokensSRC: TIBCDataSource
    DataSet = TokensSQL
    Left = 344
    Top = 480
  end
  object TokensSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      '  (SERIAL_NUMBER)'
      'VALUES'
      '  (:HAWB_SERIAL)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_HAWB_SERIAL')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      '  SERIAL_NUMBER = :HAWB_SERIAL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_HAWB_SERIAL')
    SQLRefresh.Strings = (
      'SELECT SERIAL_NUMBER FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :HAWB_SERIAL')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_HAWB_SERIAL'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    SQL.Strings = (
      'select Ha.SERIAL_NUMBER as hawb_serial,'
      
        '       pe.MESSAGE_ID as PENDING_MESSAGEID, pe.SERIAL_NUMBER as P' +
        'ENDING_SERIAL,'
      
        '       se.MESSAGE_ID as SENT_MESSAGEID, se.SERIAL_NUMBER as SENT' +
        '_SERIAL,'
      
        '       fa.SERIAL_NUMBER as FAILED_SERIAL, fa.MESSAGE_ID as FAILE' +
        'D_MESSAGEID, fa.FAILING_REASON as FAILED_REASON'
      'from '
      'HAWB ha'
      
        'left outer join LOW_PENDING pe on (ha.serial_number=pe.hawb_seri' +
        'al_number)'
      
        'left outer join LOW_SEND se on (ha.SERIAL_NUMBER = se.HAWB_SERIA' +
        'L_NUMBER)'
      
        'left outer join LOW_FAILED fa on (ha.SERIAL_NUMBER = fa.HAWB_SER' +
        'IAL_NUMBER)'
      'where ha.serial_number = :SERIAL_NUMBER'
      '')
    Left = 256
    Top = 472
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object TokensSQLHAWB_SERIAL: TIntegerField
      FieldName = 'HAWB_SERIAL'
      Required = True
    end
    object TokensSQLPENDING_MESSAGEID: TStringField
      FieldName = 'PENDING_MESSAGEID'
      ReadOnly = True
      Size = 50
    end
    object TokensSQLPENDING_SERIAL: TIntegerField
      FieldName = 'PENDING_SERIAL'
      ReadOnly = True
    end
    object TokensSQLSENT_MESSAGEID: TStringField
      FieldName = 'SENT_MESSAGEID'
      ReadOnly = True
      Size = 50
    end
    object TokensSQLSENT_SERIAL: TIntegerField
      FieldName = 'SENT_SERIAL'
      ReadOnly = True
    end
    object TokensSQLFAILED_SERIAL: TIntegerField
      FieldName = 'FAILED_SERIAL'
      ReadOnly = True
    end
    object TokensSQLFAILED_MESSAGEID: TStringField
      FieldName = 'FAILED_MESSAGEID'
      ReadOnly = True
      Size = 50
    end
    object TokensSQLFAILED_REASON: TStringField
      FieldName = 'FAILED_REASON'
      ReadOnly = True
      Size = 400
    end
  end
  object FailedLineSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO LOW_FAILED'
      '  (SERIAL_NUMBER)'
      'VALUES'
      '  (:SERIAL_NUMBER)')
    SQLDelete.Strings = (
      'DELETE FROM LOW_FAILED'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE LOW_FAILED'
      'SET'
      '  SERIAL_NUMBER = :SERIAL_NUMBER'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      'SELECT SERIAL_NUMBER FROM LOW_FAILED'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM LOW_FAILED'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM LOW_FAILED'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      
        'select lf.serial_number, li.error_code,li.error_message,li.error' +
        '_property_name from low_failed lf left outer join low_failed_lin' +
        'e li on li.fk_low_failed_serial= lf.serial_number'
      'where lf.hawb_serial_number = :Serial_Number')
    MasterSource = HawbSRC
    ReadOnly = True
    Active = True
    Left = 568
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Serial_Number'
        ParamType = ptInput
        Value = nil
      end>
    object FailedLineSQLERROR_MESSAGE: TStringField
      DisplayLabel = 'message'
      DisplayWidth = 60
      FieldName = 'ERROR_MESSAGE'
      ReadOnly = True
      Size = 400
    end
    object FailedLineSQLERROR_PROPERTY_NAME: TStringField
      DisplayLabel = 'Property'
      DisplayWidth = 160
      FieldName = 'ERROR_PROPERTY_NAME'
      ReadOnly = True
      Size = 160
    end
    object FailedLineSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object FailedLineSQLERROR_CODE: TStringField
      FieldName = 'ERROR_CODE'
      ReadOnly = True
      Visible = False
      Size = 160
    end
  end
  object FailedLineSRC: TIBCDataSource
    DataSet = FailedLineSQL
    Left = 672
    Top = 264
  end
end
