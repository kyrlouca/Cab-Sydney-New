object R_WorkingSheetNewFRM: TR_WorkingSheetNewFRM
  Left = 159
  Top = 1
  Caption = 'R_WorkingSheetNewFRM'
  ClientHeight = 728
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object PrintBTN: TButton
    Left = 423
    Top = 295
    Width = 93
    Height = 31
    Caption = 'PrintBTN'
    TabOrder = 0
  end
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
    OnCalcFields = SenderInvoiceSQLCalcFields
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
    MasterDataPipelineName = 'SenderInvoicePIP'
    object HawbItemPIPppField1: TppField
      FieldAlias = 'FK_HAWB_SERIAL'
      FieldName = 'FK_HAWB_SERIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField2: TppField
      FieldAlias = 'FK_TARIFF_CODE'
      FieldName = 'FK_TARIFF_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField3: TppField
      FieldAlias = 'FK_SENDER_INVOICE_SERIAL'
      FieldName = 'FK_SENDER_INVOICE_SERIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField4: TppField
      FieldAlias = 'FK_COUNTRY_ORIGIN'
      FieldName = 'FK_COUNTRY_ORIGIN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField5: TppField
      FieldAlias = 'DUTY_TYPE'
      FieldName = 'DUTY_TYPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField6: TppField
      FieldAlias = 'DESCRIPTION'
      FieldName = 'DESCRIPTION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField7: TppField
      FieldAlias = 'INVOICE_VALUE'
      FieldName = 'INVOICE_VALUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField8: TppField
      FieldAlias = 'NET_QUANTITY'
      FieldName = 'NET_QUANTITY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField9: TppField
      FieldAlias = 'IMPORT_DUTY_RATE'
      FieldName = 'IMPORT_DUTY_RATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField10: TppField
      FieldAlias = 'TRL_RATE'
      FieldName = 'TRL_RATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField11: TppField
      FieldAlias = 'INVOICE_LINE'
      FieldName = 'INVOICE_LINE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField12: TppField
      FieldAlias = 'OriginCountry'
      FieldName = 'OriginCountry'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField13: TppField
      FieldAlias = 'CUSTOMS_VALUE'
      FieldName = 'CUSTOMS_VALUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField14: TppField
      FieldAlias = 'DUTY_IMPORT_PAY'
      FieldName = 'DUTY_IMPORT_PAY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField15: TppField
      FieldAlias = 'DUTY_TRL_PAY'
      FieldName = 'DUTY_TRL_PAY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField16: TppField
      FieldAlias = 'DUTY_EXCISE_PAY'
      FieldName = 'DUTY_EXCISE_PAY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField17: TppField
      FieldAlias = 'DUTY_VAT_PAY'
      FieldName = 'DUTY_VAT_PAY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField18: TppField
      FieldAlias = 'SERIAL_NUMBER'
      FieldName = 'SERIAL_NUMBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField19: TppField
      FieldAlias = 'FK_RELIEF_CODE'
      FieldName = 'FK_RELIEF_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField20: TppField
      FieldAlias = 'FK_IMPORT_TYPE'
      FieldName = 'FK_IMPORT_TYPE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField21: TppField
      FieldAlias = 'TARIFF_DESCRIPTION'
      FieldName = 'TARIFF_DESCRIPTION'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField22: TppField
      FieldAlias = 'RELIEVED_IMPORT_DUTY'
      FieldName = 'RELIEVED_IMPORT_DUTY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField23: TppField
      FieldAlias = 'EXCISE_DUTY_RATE'
      FieldName = 'EXCISE_DUTY_RATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField24: TppField
      FieldAlias = 'EXCISE_RELIEVED'
      FieldName = 'EXCISE_RELIEVED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField25: TppField
      FieldAlias = 'TRL_RELEIVED'
      FieldName = 'TRL_RELEIVED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField26: TppField
      FieldAlias = 'VAT_RATE'
      FieldName = 'VAT_RATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField27: TppField
      FieldAlias = 'VAT_RELEIVED'
      FieldName = 'VAT_RELEIVED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField28: TppField
      FieldAlias = 'CURRENCY_RATE'
      FieldName = 'CURRENCY_RATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField29: TppField
      FieldAlias = 'CURRENCY'
      FieldName = 'CURRENCY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField30: TppField
      FieldAlias = 'FK_MAWB'
      FieldName = 'FK_MAWB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField31: TppField
      FieldAlias = 'FK_VAT_CODE'
      FieldName = 'FK_VAT_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField32: TppField
      FieldAlias = 'FK_TARIFF_C_CODE'
      FieldName = 'FK_TARIFF_C_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField33: TppField
      FieldAlias = 'IMPORT_DUTY_RATE_UNIT'
      FieldName = 'IMPORT_DUTY_RATE_UNIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField34: TppField
      FieldAlias = 'IMPORT_DUTY_RATE_QUANT'
      FieldName = 'IMPORT_DUTY_RATE_QUANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField35: TppField
      FieldAlias = 'IMPORT_DUTY_RATE_BASE'
      FieldName = 'IMPORT_DUTY_RATE_BASE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField36: TppField
      FieldAlias = 'DUTY_IMPORT_TOTAL'
      FieldName = 'DUTY_IMPORT_TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField37: TppField
      FieldAlias = 'DUTY_EXCISE_TOTAL'
      FieldName = 'DUTY_EXCISE_TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField38: TppField
      FieldAlias = 'DUTY_TRL_TOTAL'
      FieldName = 'DUTY_TRL_TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField39: TppField
      FieldAlias = 'DUTY_VAT_TOTAL'
      FieldName = 'DUTY_VAT_TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField40: TppField
      FieldAlias = 'TOTAL_VALUE_FOR_VAT'
      FieldName = 'TOTAL_VALUE_FOR_VAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField41: TppField
      FieldAlias = 'DUTY_TOTAL_CHARGES'
      FieldName = 'DUTY_TOTAL_CHARGES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField42: TppField
      FieldAlias = 'FK_EXCISE_CODE'
      FieldName = 'FK_EXCISE_CODE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField43: TppField
      FieldAlias = 'EURO1'
      FieldName = 'EURO1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField44: TppField
      FieldAlias = 'EURO2'
      FieldName = 'EURO2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField45: TppField
      FieldAlias = 'POSOSTOSIS'
      FieldName = 'POSOSTOSIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField46: TppField
      FieldAlias = 'EURO_PENDING'
      FieldName = 'EURO_PENDING'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField47: TppField
      FieldAlias = 'MULTI_ITEMS_INVOICE'
      FieldName = 'MULTI_ITEMS_INVOICE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField48: TppField
      FieldAlias = 'PRE_DISCOUNT_AMOUNT'
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object HawbItemPIPppField49: TppField
      FieldAlias = 'WEIGHT_NET'
      FieldName = 'WEIGHT_NET'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
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
    object SenderInvoicePIPppField1: TppField
      FieldAlias = 'FK_HAWB_SERIAL'
      FieldName = 'FK_HAWB_SERIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField2: TppField
      FieldAlias = 'INVOICE_SERIAL'
      FieldName = 'INVOICE_SERIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField3: TppField
      FieldAlias = 'INVOICE_NUMBER'
      FieldName = 'INVOICE_NUMBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField4: TppField
      FieldAlias = 'FK_HAWB_ID'
      FieldName = 'FK_HAWB_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField5: TppField
      FieldAlias = 'INVOICE_AMOUNT'
      FieldName = 'INVOICE_AMOUNT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField6: TppField
      FieldAlias = 'FREIGHT_AMOUNT'
      FieldName = 'FREIGHT_AMOUNT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField7: TppField
      FieldAlias = 'DISCOUNT_AMOUNT'
      FieldName = 'DISCOUNT_AMOUNT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField8: TppField
      FieldAlias = 'INSURANCE_AMOUNT'
      FieldName = 'INSURANCE_AMOUNT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField9: TppField
      FieldAlias = 'OTHER_CHARGES_AMOUNT'
      FieldName = 'OTHER_CHARGES_AMOUNT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField10: TppField
      FieldAlias = 'TOTAL_AMOUNT'
      FieldName = 'TOTAL_AMOUNT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField11: TppField
      FieldAlias = 'CURRENCY'
      FieldName = 'CURRENCY'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField12: TppField
      FieldAlias = 'EXCHANGE_RATE'
      FieldName = 'EXCHANGE_RATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField13: TppField
      FieldAlias = 'FACTOR'
      FieldName = 'FACTOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField14: TppField
      FieldAlias = 'FREIGHT_CYP_AMOUNT'
      FieldName = 'FREIGHT_CYP_AMOUNT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField15: TppField
      FieldAlias = 'PRE_DISCOUNT_AMOUNT'
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField16: TppField
      FieldAlias = 'DISCOUNT_RATE'
      FieldName = 'DISCOUNT_RATE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField17: TppField
      FieldAlias = 'TotalCyp'
      FieldName = 'TotalCyp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField18: TppField
      FieldAlias = 'CUSTOMS_VALUE'
      FieldName = 'CUSTOMS_VALUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField19: TppField
      FieldAlias = 'FK_MAWB_SERIAL'
      FieldName = 'FK_MAWB_SERIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField20: TppField
      FieldAlias = 'IS_VALID'
      FieldName = 'IS_VALID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField21: TppField
      FieldAlias = 'NUMBER_OF_HAWB_ITEMS'
      FieldName = 'NUMBER_OF_HAWB_ITEMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object SenderInvoicePIPppField22: TppField
      FieldAlias = 'FACTOR_NUMERIC'
      FieldName = 'FACTOR_NUMERIC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
  end
  object HawbItemSRC: TDataSource
    DataSet = HawbItemSQL
    Left = 264
    Top = 80
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = SenderInvoicePIP
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 3810
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Documents and Settings\Admin\Desktop\DelphiProjects\dhl\progr' +
      'ams\abc.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 224
    Top = 293
    Version = '18.01'
    mmColumnWidth = 0
    DataPipelineName = 'SenderInvoicePIP'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 182373
        mmTop = 1058
        mmWidth = 14478
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 182965
        mmTop = 5821
        mmWidth = 13885
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = #934#973#955#955#959' '#917#961#947#945#963#943#945#962' '#916#953#945#963#945#966#951#963#951#962
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 58473
        mmTop = 1058
        mmWidth = 89959
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 10583
        mmWidth = 199840
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = #932#973#960#959#962' '#916#953#945#963#940#966'.'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165894
        mmTop = 12965
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = #928#945#961#945#955#942#960#964#951#962' :'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 57150
        mmTop = 12965
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        HyperlinkEnabled = False
        Caption = #908#961#959#953' '#928#945#961#940#948#959#963#951#962' :'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 3175
        mmTop = 16933
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        HyperlinkEnabled = False
        Caption = #924#949#953#954#964#942' '#924#940#950#945' :'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 39158
        mmTop = 16933
        mmWidth = 17187
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'FK_DELIVERY_TERM'
        DataPipeline = HawbPIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'HawbPIP'
        mmHeight = 3175
        mmLeft = 28310
        mmTop = 16933
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'CUSTOMER_NAME'
        DataPipeline = HawbPIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'HawbPIP'
        mmHeight = 3175
        mmLeft = 76465
        mmTop = 12965
        mmWidth = 69056
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'FK_CLEARANCE_TYPE'
        DataPipeline = HawbPIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'HawbPIP'
        mmHeight = 3175
        mmLeft = 187590
        mmTop = 12965
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'WEIGHT'
        DataPipeline = HawbPIP
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'HawbPIP'
        mmHeight = 3175
        mmLeft = 57150
        mmTop = 16933
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Hause Airway Bill :'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 3175
        mmTop = 12965
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText101'
        HyperlinkEnabled = False
        DataField = 'HAB_ID'
        DataPipeline = HawbPIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'HawbPIP'
        mmHeight = 3175
        mmLeft = 30692
        mmTop = 12965
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = #954#953#955#940
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 68792
        mmTop = 16933
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 21167
        mmWidth = 199840
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label37'
        HyperlinkEnabled = False
        Caption = 'DHL Cyprus LTD'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 265
        mmTop = 1058
        mmWidth = 33867
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 55033
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'HawbItemPIP'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 50006
        mmWidth = 199840
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = HawbItemPIP
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 3810
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Left = 448
          Top = 320
          Version = '18.01'
          mmColumnWidth = 0
          DataPipelineName = 'HawbItemPIP'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 2910
            mmPrintPosition = 0
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Pen.Style = psDot
              ParentWidth = True
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 0
              mmTop = 1058
              mmWidth = 199919
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 18785
            mmPrintPosition = 0
            object ppLabel25: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label25'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = #915#961#945#956#956#942
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 1058
              mmTop = 11906
              mmWidth = 10054
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel26: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label26'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = #932#953#956#959#955'. '#913#958#943#945
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 17992
              mmTop = 11906
              mmWidth = 14552
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel27: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label27'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = #928#959#963#972#964#951#964#945
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 44979
              mmTop = 11906
              mmWidth = 12700
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel28: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label28'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = #932#949#955#969#957'. '#913#958#943#945
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 70379
              mmTop = 11906
              mmWidth = 15875
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel29: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label29'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = #917#953#963#945#947'. '#916#945#963#956#972#962' @'
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 104511
              mmTop = 11906
              mmWidth = 23813
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel31: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label31'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = #922#969#948'. '#917#956#960#959#961'.'
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 1058
              mmTop = 2117
              mmWidth = 19050
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel32: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label32'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = #935#974#961#945' '#922#945#964#945#947#969#947#942#962
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 56092
              mmTop = 6615
              mmWidth = 26194
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel34: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label34'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = #928#949#961#953#947#961#945#966#942
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 794
              mmTop = 6615
              mmWidth = 15610
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText33'
              HyperlinkEnabled = False
              DataField = 'FK_TARIFF_CODE'
              DataPipeline = HawbItemPIP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'HawbItemPIP'
              mmHeight = 3969
              mmLeft = 21431
              mmTop = 2117
              mmWidth = 27781
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              HyperlinkEnabled = False
              DataField = 'INVOICE_LINE'
              DataPipeline = HawbItemPIP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'HawbItemPIP'
              mmHeight = 3175
              mmLeft = 12171
              mmTop = 11906
              mmWidth = 4498
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              HyperlinkEnabled = False
              DataField = 'INVOICE_VALUE'
              DataPipeline = HawbItemPIP
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'HawbItemPIP'
              mmHeight = 3175
              mmLeft = 33602
              mmTop = 11906
              mmWidth = 9260
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              HyperlinkEnabled = False
              DataField = 'NET_QUANTITY'
              DataPipeline = HawbItemPIP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'HawbItemPIP'
              mmHeight = 3175
              mmLeft = 59531
              mmTop = 11906
              mmWidth = 9260
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText28'
              HyperlinkEnabled = False
              DataField = 'CUSTOMS_VALUE'
              DataPipeline = HawbItemPIP
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'HawbItemPIP'
              mmHeight = 3175
              mmLeft = 87313
              mmTop = 11906
              mmWidth = 12171
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText34: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText34'
              HyperlinkEnabled = False
              DataField = 'DESCRIPTION'
              DataPipeline = HawbItemPIP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'HawbItemPIP'
              mmHeight = 3969
              mmLeft = 17198
              mmTop = 6615
              mmWidth = 37306
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText35: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText35'
              HyperlinkEnabled = False
              DataField = 'OriginCountry'
              DataPipeline = HawbItemPIP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'HawbItemPIP'
              mmHeight = 3969
              mmLeft = 84931
              mmTop = 6615
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel35: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label35'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = '='
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 139171
              mmTop = 11906
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Pen.Style = psDot
              ParentWidth = True
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 0
              mmTop = 17198
              mmWidth = 199919
              BandType = 4
              LayerName = Foreground
            end
            object PreferencialFLD: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'PreferencialFLD'
              HyperlinkEnabled = False
              BlankWhenZero = False
              CalcOrder = 0
              Font.Charset = GREEK_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              OnCalc = PreferencialFLDCalc
              Transparent = True
              mmHeight = 3302
              mmLeft = 104775
              mmTop = 6879
              mmWidth = 19727
              BandType = 4
              LayerName = Foreground
            end
            object ImportDutyFLD: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'ImportDutyFLD'
              BlankWhenZero = False
              CalcOrder = 1
              DataType = dtDouble
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              OnCalc = ImportDutyFLDCalc
              Transparent = True
              mmHeight = 3175
              mmLeft = 142346
              mmTop = 11906
              mmWidth = 18521
              BandType = 4
              LayerName = Foreground
            end
            object ImpRateFLD: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'ImpRateFLD'
              Caption = 'ImpRateFLD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 128852
              mmTop = 11906
              mmWidth = 15082
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 2117
            mmPrintPosition = 0
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              ParentWidth = True
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 0
              mmTop = 794
              mmWidth = 199919
              BandType = 7
              LayerName = Foreground
            end
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'Foreground'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = #913#961'. '#932#953#956#959#955#959#947#943#945#959#965' :'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3175
        mmTop = 3969
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = #913'/'#913' '#932#953#956#959#955#959#947#943#945#959#965' :'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3175
        mmTop = 7938
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = #925#972#956#953#963#956#945' :'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3175
        mmTop = 13494
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = #931#965#957#964'. '#921#963#959#964#953#956#943#945#962' :'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3175
        mmTop = 17727
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Factor :'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3175
        mmTop = 21960
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = #913#958#943#945' '#917#956#960#959#961#949#965#956#940#964#969#957
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 127529
        mmTop = 3969
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        HyperlinkEnabled = False
        Caption = #904#954#960#964#969#963#951
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 127529
        mmTop = 7938
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label102'
        HyperlinkEnabled = False
        Caption = #928#959#963#972' '#925#945#973#955#959#965' '#932#953#956#959#955#959#947#943#959#965
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 127529
        mmTop = 11906
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label103'
        HyperlinkEnabled = False
        Caption = #913#963#966#940#955#953#963#964#961#945
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 127529
        mmTop = 15875
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label104'
        HyperlinkEnabled = False
        Caption = #902#955#955#949#962' '#935#961#949#974#963#949#953#962
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 127529
        mmTop = 19844
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label105'
        HyperlinkEnabled = False
        Caption = #931#965#957#959#955#953#954#942' '#913#958#943#945' '#932#953#956#959#955'.'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 127529
        mmTop = 26458
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label106'
        HyperlinkEnabled = False
        Caption = #931#965#957#959#955#953#954#942' '#913#958#943#945' '#932#953#956'. EUR'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 127529
        mmTop = 33073
        mmWidth = 29676
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label107'
        HyperlinkEnabled = False
        Caption = #928#959#963#972' '#925#945#973#955#959#965
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 127529
        mmTop = 36513
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label108'
        HyperlinkEnabled = False
        Caption = #931#965#957#959#955#953#954#942' '#913#958#943#945' '#923#922
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 127529
        mmTop = 44186
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'PRE_DISCOUNT_AMOUNT'
        DataPipeline = SenderInvoicePIP
        DisplayFormat = '#,0.000;-#,0.000'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = FormatFloatValue
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 159544
        mmTop = 3969
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'DISCOUNT_AMOUNT'
        DataPipeline = SenderInvoicePIP
        DisplayFormat = '#,0.000;-#,0.000'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = FormatFloatValue
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 159544
        mmTop = 7938
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'FREIGHT_AMOUNT'
        DataPipeline = SenderInvoicePIP
        DisplayFormat = '#,0.000;-#,0.000'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = FormatFloatValue
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 159544
        mmTop = 11906
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'INSURANCE_AMOUNT'
        DataPipeline = SenderInvoicePIP
        DisplayFormat = '#,0.000;-#,0.000'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = FormatFloatValue
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 159544
        mmTop = 15875
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'OTHER_CHARGES_AMOUNT'
        DataPipeline = SenderInvoicePIP
        DisplayFormat = '#,0.000;-#,0.000'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = FormatFloatValue
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 159544
        mmTop = 19844
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'TOTAL_AMOUNT'
        DataPipeline = SenderInvoicePIP
        DisplayFormat = '#,0.000;-#,0.000'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = FormatFloatValue
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 159544
        mmTop = 26458
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'FREIGHT_CYP_AMOUNT'
        DataPipeline = SenderInvoicePIP
        DisplayFormat = '#,0.000;-#,0.000'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = FormatFloatValue
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 159544
        mmTop = 36513
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'CUSTOMS_VALUE'
        DataPipeline = SenderInvoicePIP
        DisplayFormat = '#,0.000;-#,0.000'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = FormatFloatValue
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 159544
        mmTop = 43921
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'CURRENCY'
        DataPipeline = SenderInvoicePIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 177536
        mmTop = 3969
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'CURRENCY'
        DataPipeline = SenderInvoicePIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 177536
        mmTop = 7938
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        HyperlinkEnabled = False
        DataField = 'CURRENCY'
        DataPipeline = SenderInvoicePIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 177536
        mmTop = 11906
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'CURRENCY'
        DataPipeline = SenderInvoicePIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 177536
        mmTop = 15875
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataField = 'CURRENCY'
        DataPipeline = SenderInvoicePIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 177536
        mmTop = 19844
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'CURRENCY'
        DataPipeline = SenderInvoicePIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 26988
        mmTop = 14023
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText26'
        HyperlinkEnabled = False
        DataField = 'CURRENCY'
        DataPipeline = SenderInvoicePIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 26458
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        HyperlinkEnabled = False
        DataField = 'INVOICE_SERIAL'
        DataPipeline = SenderInvoicePIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 26988
        mmTop = 3969
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'INVOICE_NUMBER'
        DataPipeline = SenderInvoicePIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 26988
        mmTop = 7938
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'FACTOR_NUMERIC'
        DataPipeline = SenderInvoicePIP
        DisplayFormat = '#,0.000000;-#,0.000000'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 27093
        mmTop = 22225
        mmWidth = 17145
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'EXCHANGE_RATE'
        DataPipeline = SenderInvoicePIP
        DisplayFormat = '#,0.0000;-#,0.0000'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 26988
        mmTop = 17992
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Position = lpBottom
        Weight = 0.500000000000000000
        mmHeight = 1323
        mmLeft = 126736
        mmTop = 23813
        mmWidth = 62706
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Position = lpBottom
        Weight = 0.500000000000000000
        mmHeight = 1323
        mmLeft = 127794
        mmTop = 42069
        mmWidth = 62706
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'EUR'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 36513
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        HyperlinkEnabled = False
        Caption = 'EUR'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 44186
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        HyperlinkEnabled = False
        Caption = 'EUR'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 33073
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText36'
        HyperlinkEnabled = False
        DataField = 'TotalCyp'
        DataPipeline = SenderInvoicePIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        OnFormat = FormatFloatValue
        DataPipelineName = 'SenderInvoicePIP'
        mmHeight = 3175
        mmLeft = 159544
        mmTop = 33073
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
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
    Left = 416
    Top = 153
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Active = True
    Left = 465
    Top = 133
  end
  object SenderInvoiceSRC: TIBCDataSource
    DataSet = SenderInvoiceSQL
    Left = 128
    Top = 104
  end
end
