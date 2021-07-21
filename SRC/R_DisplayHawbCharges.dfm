object R_DisplayHawbChargesFRM: TR_DisplayHawbChargesFRM
  Left = 365
  Top = 153
  BorderStyle = bsDialog
  Caption = 'Instructor'
  ClientHeight = 321
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 33
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 578
      Height = 25
      Align = alClient
      Alignment = taCenter
      Caption = 'Hawb Charges'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 124
      ExplicitHeight = 22
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 586
    Height = 252
    Align = alClient
    TabOrder = 1
    object Grid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 584
      Height = 250
      Selected.Strings = (
        'FK_TARIFF_USAGE'#9'5'#9'Usage'#9#9
        'DUTY_TYPE'#9'4'#9'Type'#9#9
        'TARIFF_CODE'#9'13'#9'Tariff'#9#9
        'TARIFF_CHARGING_METHOD'#9'5'#9'Method'#9#9
        'CUSTOMS_VALUE'#9'10'#9'Customs Val'#9#9
        'QUANTITY'#9'3'#9'Qty'#9#9
        'WEIGHT'#9'6'#9'Weight'#9#9
        'TARIFF_UNIT_RATE'#9'10'#9'Tariff Rate'#9#9
        'AMOUNT_RELIEVED'#9'7'#9'Relieved'#9#9
        'AMOUNT_NET'#9'7'#9'Charge'#9#9)
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Color = 12713983
      DataSource = HawbChargeSRC
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnUpdateFooter = Grid1UpdateFooter
      FooterColor = clSilver
      FooterCellColor = clGradientInactiveCaption
    end
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 285
    Width = 586
    HotTrack = True
    TabOrder = 2
    OnClick = RzDialogButtons1Click
  end
  object HawbChargeSRC: TDataSource
    DataSet = HawbChargeSQL
    Left = 112
    Top = 65529
  end
  object HawbChargeSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO DUTY_TYPE'
      
        '  (DUTY_CODE, IS_ACTIVE, DESCRIPTION, XML_CODE, IS_VAT, DHL_GLOB' +
        'AL_CODE)'
      'VALUES'
      
        '  (:DUTY_CODE, :IS_ACTIVE, :DESCRIPTION, :XML_CODE, :IS_VAT, :DH' +
        'L_GLOBAL_CODE)')
    SQLDelete.Strings = (
      'DELETE FROM DUTY_TYPE'
      'WHERE'
      '  DUTY_CODE = :Old_DUTY_CODE')
    SQLUpdate.Strings = (
      'UPDATE DUTY_TYPE'
      'SET'
      
        '  DUTY_CODE = :DUTY_CODE, IS_ACTIVE = :IS_ACTIVE, DESCRIPTION = ' +
        ':DESCRIPTION, XML_CODE = :XML_CODE, IS_VAT = :IS_VAT, DHL_GLOBAL' +
        '_CODE = :DHL_GLOBAL_CODE'
      'WHERE'
      '  DUTY_CODE = :Old_DUTY_CODE')
    SQLRefresh.Strings = (
      
        'SELECT DUTY_CODE, IS_ACTIVE, DESCRIPTION, XML_CODE, IS_VAT, DHL_' +
        'GLOBAL_CODE FROM DUTY_TYPE'
      'WHERE'
      '  DUTY_CODE = :DUTY_CODE')
    SQLLock.Strings = (
      'SELECT NULL FROM DUTY_TYPE'
      'WHERE'
      'DUTY_CODE = :Old_DUTY_CODE'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM DUTY_TYPE'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'hawb_charge'
      'where '
      'fk_hawb= :hawbSerial'
      'order by tariff_code, fk_tariff_usage desc, duty_type')
    ReadOnly = True
    Active = True
    Left = 33
    Top = 61
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hawbSerial'
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
      DisplayLabel = 'Type'
      DisplayWidth = 4
      FieldName = 'DUTY_TYPE'
      FixedChar = True
      Size = 3
    end
    object HawbChargeSQLTARIFF_CODE: TStringField
      DisplayLabel = 'Tariff'
      DisplayWidth = 13
      FieldName = 'TARIFF_CODE'
      FixedChar = True
      Size = 17
    end
    object HawbChargeSQLTARIFF_CHARGING_METHOD: TStringField
      DisplayLabel = 'Method'
      DisplayWidth = 5
      FieldName = 'TARIFF_CHARGING_METHOD'
      FixedChar = True
      Size = 3
    end
    object HawbChargeSQLCUSTOMS_VALUE: TFloatField
      DisplayLabel = 'Customs Val'
      DisplayWidth = 10
      FieldName = 'CUSTOMS_VALUE'
    end
    object HawbChargeSQLQUANTITY: TIntegerField
      DisplayLabel = 'Qty'
      DisplayWidth = 3
      FieldName = 'QUANTITY'
    end
    object HawbChargeSQLWEIGHT: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 6
      FieldName = 'WEIGHT'
      DisplayFormat = '0.00'
    end
    object HawbChargeSQLTARIFF_UNIT_RATE: TFloatField
      DisplayLabel = 'Tariff Rate'
      DisplayWidth = 10
      FieldName = 'TARIFF_UNIT_RATE'
      DisplayFormat = '0.00'
    end
    object HawbChargeSQLAMOUNT_RELIEVED: TFloatField
      DisplayLabel = 'Relieved'
      DisplayWidth = 7
      FieldName = 'AMOUNT_RELIEVED'
      DisplayFormat = '0.00'
    end
    object HawbChargeSQLAMOUNT_NET: TFloatField
      DisplayLabel = 'Charge'
      DisplayWidth = 7
      FieldName = 'AMOUNT_NET'
      DisplayFormat = '0.00'
    end
    object HawbChargeSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 5
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object HawbChargeSQLVAT_RATE: TFloatField
      DisplayLabel = 'Vat'
      DisplayWidth = 5
      FieldName = 'VAT_RATE'
      Visible = False
    end
    object HawbChargeSQLFK_HAWB: TIntegerField
      DisplayLabel = 'Hawb'
      DisplayWidth = 7
      FieldName = 'FK_HAWB'
      Required = True
      Visible = False
    end
    object HawbChargeSQLFK_HAWB_ITEM: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_HAWB_ITEM'
      Visible = False
    end
    object HawbChargeSQLFK_TARIFF_LINE: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_TARIFF_LINE'
      Visible = False
    end
    object HawbChargeSQLPRE_DISCOUNT_AMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'PRE_DISCOUNT_AMOUNT'
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
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 209
    Top = 125
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 248
    Top = 105
  end
end
