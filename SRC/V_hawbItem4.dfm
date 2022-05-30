object V_hawbItemFRM4: TV_hawbItemFRM4
  Left = 236
  Top = 130
  BorderStyle = bsSingle
  Caption = 'Hawb Item'
  ClientHeight = 694
  ClientWidth = 1021
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  PixelsPerInch = 120
  TextHeight = 14
  object Panel1: TRzPanel
    Left = 0
    Top = 51
    Width = 1021
    Height = 606
    Align = alTop
    BorderOuter = fsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object wwButton1: TwwButton
      Left = 866
      Top = 328
      Width = 75
      Height = 25
      Caption = 'Open'
      Color = clWindowText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      DitherColor = clWhite
      DitherStyle = wwdsDither
      ParentFont = False
      ShadeStyle = wwbsNormal
      TabOrder = 0
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      Visible = False
      OnClick = wwButton1Click
      ImageIndex = -1
    end
    object ChargesGRD: TwwDBGrid
      Left = 0
      Top = 441
      Width = 913
      Height = 165
      ControlType.Strings = (
        'TARIFF_IS_PER_UNIT;CheckBox;Y;N')
      Selected.Strings = (
        'TARIFF_CODE'#9'17'#9'Tariff'
        'DUTY_TYPE'#9'9'#9'Duty Type'
        'DESCRIPTION'#9'15'#9'Charge Method'
        'TARIFF_UNIT_RATE'#9'10'#9'Tariff Rate'
        'AMOUNT_RELIEVED'#9'10'#9'Relieved'
        'AMOUNT_NET'#9'11'#9'Charges')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clInactiveCaption
      FixedCols = 0
      ShowHorzScrollBar = True
      ShowVertScrollBar = False
      Align = alLeft
      BorderStyle = bsNone
      Color = 12319739
      DataSource = HawbChargeSRC
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyOptions = []
      Options = [dgAlwaysShowEditor, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = ChargesGRDDblClick
      OnUpdateFooter = ChargesGRDUpdateFooter
      FooterColor = clWhite
      FooterCellColor = clSilver
    end
    object UpperPanelPNL: TRzPanel
      Left = 0
      Top = 0
      Width = 1021
      Height = 441
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 2
      object TariffDetailsGroup: TGroupBox
        Left = 4
        Top = 23
        Width = 455
        Height = 146
        Caption = '`'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 225
          Top = 23
          Width = 22
          Height = 21
          Hint = 'Find Hawb in this Mawb'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object Label62: TLabel
          Left = 18
          Top = 54
          Width = 65
          Height = 13
          AutoSize = False
          Caption = 'Tariff Search'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 225
          Top = 50
          Width = 21
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            D6000000424DD60000000000000076000000280000000C0000000C0000000100
            0400000000006000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
            0000F00FF00FF00F0000F00FF00FF00F0000FFFFFFFFFFFF0000FFFFFFFFFFFF
            0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000}
          Layout = blGlyphBottom
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object Label12: TLabel
          Left = 18
          Top = 96
          Width = 65
          Height = 13
          AutoSize = False
          Caption = 'Bucket Tariff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TariffCodeDescFLD: TwwDBEdit
          Left = 252
          Top = 50
          Width = 189
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'DESCRIPTION'
          DataSource = TariffSRC
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object SelectTariffFLD: TwwDBEdit
          Left = 88
          Top = 23
          Width = 131
          Height = 21
          CharCase = ecUpperCase
          Color = 16773862
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyUp = SelectTariffFLDKeyUp
        end
        object TariffCodeFLD: TwwDBEdit
          Left = 89
          Top = 50
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'FK_TARIFF_CODE'
          DataSource = HawbItemSrC
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnChange = TariffCodeFLDChange
        end
        object wwDBEdit3: TwwDBEdit
          Left = 89
          Top = 93
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          DataField = 'BUCKET_TARIFF'
          DataSource = HawbItemSrC
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnChange = TariffCodeFLDChange
        end
      end
      object DescriptionGroup: TRzGroupBox
        Left = 4
        Top = 175
        Width = 461
        Height = 82
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 55
          Top = 51
          Width = 28
          Height = 13
          Caption = 'Origin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 30
          Top = 24
          Width = 53
          Height = 13
          Caption = 'Description'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 326
          Top = 48
          Width = 73
          Height = 13
          Caption = 'Status of Entry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object TariffDescriptionFLD: TwwDBEdit
          Left = 89
          Top = 21
          Width = 231
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRIPTION'
          DataSource = HawbItemSrC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object CivilFLD: TwwDBComboBox
          Left = 324
          Top = 21
          Width = 24
          Height = 21
          ShowButton = True
          Style = csDropDownList
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          DataField = 'FK_IMPORT_TYPE'
          DataSource = HawbItemSrC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
          Visible = False
        end
        object OriginFLD: TwwDBComboBox
          Left = 89
          Top = 48
          Width = 231
          Height = 21
          ShowButton = True
          Style = csDropDownList
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          DataField = 'FK_COUNTRY_ORIGIN'
          DataSource = HawbItemSrC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          Sorted = False
          TabOrder = 2
          UnboundDataType = wwDefault
        end
      end
      object ItemDetailsGroup: TGroupBox
        Left = 7
        Top = 255
        Width = 461
        Height = 180
        Caption = 'Item Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label7: TLabel
          Left = 13
          Top = 48
          Width = 70
          Height = 13
          Caption = 'Customs Value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 19
          Top = 23
          Width = 64
          Height = 13
          Caption = 'Invoice Value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 21
          Top = 75
          Width = 62
          Height = 13
          Caption = 'Net Quantity'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 163
          Top = 48
          Width = 20
          Height = 13
          Caption = 'EUR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 19
          Top = 100
          Width = 64
          Height = 13
          Caption = 'Gross Weight'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 28
          Top = 128
          Width = 54
          Height = 13
          Caption = 'Net Weight'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object NetFLD: TwwDBEdit
          Left = 89
          Top = 72
          Width = 68
          Height = 21
          DataField = 'NET_QUANTITY'
          DataSource = HawbItemSrC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object InvoiceValueFLD: TwwDBEdit
          Left = 89
          Top = 20
          Width = 68
          Height = 21
          DataField = 'PRE_DISCOUNT_AMOUNT'
          DataSource = HawbItemSrC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = InvoiceValueFLDExit
        end
        object FactorFLD: TwwDBEdit
          Left = 199
          Top = 20
          Width = 62
          Height = 21
          Color = clBtnFace
          DataField = 'FACTOR_NUMERIC'
          DataSource = HawbItemSrC
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object FCurrencyFLD: TwwDBEdit
          Left = 161
          Top = 20
          Width = 32
          Height = 21
          TabStop = False
          DataField = 'CURRENCYINV'
          DataSource = HawbItemSrC
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object GrossWeightFLD: TwwDBEdit
          Left = 89
          Top = 98
          Width = 68
          Height = 21
          DataField = 'WEIGHT_GROSS'
          DataSource = HawbItemSrC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object CustomsValueFLD: TwwDBEdit
          Left = 89
          Top = 45
          Width = 68
          Height = 21
          Color = clBtnFace
          DataField = 'CUSTOMS_VALUE'
          DataSource = HawbItemSrC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object MUnitFLD: TwwDBComboBox
          Left = 163
          Top = 74
          Width = 98
          Height = 21
          ShowButton = True
          Style = csDropDownList
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          DataField = 'UNIT'
          DataSource = HawbItemSrC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          Sorted = False
          TabOrder = 5
          UnboundDataType = wwDefault
        end
        object NetWeightFLD: TwwDBEdit
          Left = 88
          Top = 125
          Width = 68
          Height = 21
          DataField = 'WEIGHT_NET'
          DataSource = HawbItemSrC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object CertificateGroup: TGroupBox
        Left = 486
        Top = 22
        Width = 415
        Height = 336
        Caption = '`'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label3: TLabel
          Left = 20
          Top = 28
          Width = 25
          Height = 13
          Caption = 'Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 91
          Top = 28
          Width = 37
          Height = 13
          Caption = 'Number'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 143
          Top = 28
          Width = 26
          Height = 13
          Caption = 'Value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object wwDBGrid1: TwwDBGrid
          Left = 20
          Top = 79
          Width = 285
          Height = 81
          Cursor = crDrag
          Selected.Strings = (
            'C_CODE'#9'10'#9'Code'
            'C_NUMBER'#9'10'#9'Number'
            'C_VALUE'#9'17'#9'Value')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = HiCertificateSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
        end
        object CCodeFLD: TwwDBEdit
          Left = 20
          Top = 45
          Width = 52
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Picture.PictureMask = '&'
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object CNumberFLD: TwwDBEdit
          Left = 91
          Top = 45
          Width = 46
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Picture.PictureMask = '#[#][#]'
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object CValueFLD: TwwDBEdit
          Left = 143
          Top = 45
          Width = 163
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Picture.PictureMask = '*20[!]'
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object AddCert1BTN: TRzBitBtn
          Left = 327
          Top = 39
          Width = 74
          Height = 32
          Alignment = taLeftJustify
          Caption = 'Add'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = AddCert1BTNClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333333333333333300003333333344C3333333333333337FF3333333
            00003333333A224333333333333338733F33333300003333333A224333333333
            333338733F33333300003333333A224333333333333338733F33333300003333
            333A224333333333333338733F33333300003333333A22433333333333333873
            3F33333300003344444422444444C3337FFF787337FFFFF300003A2222222222
            22224338733333333333333F00003A222222222222224338733333333333333F
            000033AAAAAA222AAAAA3338777777733377777700003333333A224333333337
            888888733788888300003333333A224333333333333338733F33333300003333
            333A224333333333333338733F33333300003333333A22433333333333333873
            3F33333300003333333A2243333333333333387337333333000033333333AA33
            3333333333333877733333330000333333333333333333333333338883333333
            0000}
          NumGlyphs = 2
          Spacing = 5
        end
        object DelCert1BTN: TRzBitBtn
          Left = 327
          Top = 79
          Width = 74
          Height = 32
          Alignment = taLeftJustify
          Caption = 'Delete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = DelCert1BTNClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333333333333333
            0000333333333333333333333333333333333333000033333333333333333333
            3333333333333333000033333333333333333333333333333333333300003333
            3333333333333333333333333333333300003333333333333333333333333333
            3333333300003388888888888888333333333333333333330000391111111111
            111193337FFFFFFFFFFFFFF30000391111111111111193387333333333333378
            0000339999999999999933387777777777777778000033333333333333333333
            8888888888888883000033333333333333333333333333333333333300003333
            3333333333333333333333333333333300003333333333333333333333333333
            3333333300003333333333333333333333333333333333330000333333333333
            3333333333333333333333330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          Spacing = 5
        end
      end
    end
  end
  object TitlePNL: TRzPanel
    Left = 0
    Top = 0
    Width = 1021
    Height = 51
    Align = alTop
    BorderOuter = fsGroove
    Caption = 'Hawb Item'
    Color = 14675967
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -23
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Panel8: TRzPanel
      Left = 761
      Top = 2
      Width = 258
      Height = 47
      Align = alRight
      Alignment = taRightJustify
      BorderOuter = fsNone
      Color = 33023
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -23
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      Transparent = True
      object Label10: TLabel
        Left = 118
        Top = 5
        Width = 20
        Height = 15
        Caption = 'S/N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 105
        Top = 27
        Width = 35
        Height = 15
        Caption = 'HAWB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object wwDBEdit1: TwwDBEdit
        Left = 144
        Top = 2
        Width = 92
        Height = 20
        AutoSize = False
        Color = clBtnFace
        DataField = 'SERIAL_NUMBER'
        DataSource = HawbItemSrC
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 144
        Top = 24
        Width = 92
        Height = 23
        Color = clBtnFace
        DataField = 'FK_HAWB_SERIAL'
        DataSource = HawbItemSrC
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object ButtonsPNL: TRzPanel
    Left = 0
    Top = 648
    Width = 1021
    Height = 46
    Align = alBottom
    BorderOuter = fsGroove
    TabOrder = 2
    object AcceptBTN: TBitBtn
      Left = 7
      Top = 4
      Width = 72
      Height = 37
      Caption = 'Accept'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05793AEDF8F2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E8245
        63CE9D108447EFF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0D844472D1A76DD0A466CE9F0F8747E8F4ECFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0D864480D7B07ED5AE76D2A96DD0A465CD9F108947EBF6EEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF04823D8FDAB98FDAB986D8B37DD5AE74D2A86ACF
        A261CC9D0F8B48EEF7F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C88469CDFC19FE0C398DDBF8EDBB8
        85D7B27AD4AB6FD1A665CE9F5CCB9A0F8D4AEEF7F1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF098C47A5E1C6ADE4CCA7
        E2C89FDFC395DCBC8AD9B67ED6AE72D1A868CEA05ECB9A57C9970E904CCBE3CC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF099048A7E2
        C8B8E7D2B5E6D0AEE4CCA4E1C699DDBF26B46688D9B475D2A96ACFA260CC9B57
        C99651C794048C41D5E9D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        079347A1E1C4B8E7D2BEE9D6B7E7D3AFE5CDA3E0C60D964AFFFFFF1FAD5F83D7
        B26BD0A260CC9C58C99651C89351C7930E974DDAECDBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF0291438FDBB9AEE4CCB4E6D0B8E7D2B5E6D0A7E2C80B974BFFFFFF
        FFFFFFFFFFFF1FAD5F7CD5AD60CC9C57CA9651C89350C79251C7920E984EDDEE
        DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF19A359A0E0C3AEE4CCB0E4CDA4E1C51D
        A35BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23B16373D1A856C99650C7924FC791
        4FC79251C791119C51DEEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1CA75C9DDF
        C2A6E2C7109F51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23B1636B
        D0A24FC7924FC79250C79250C79250C791139E53E3F2E5FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF1AA85A16A557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF24B36563CD9E50C7924FC79250C79250C79251C7920C9B4DFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20AF615FCC9A4FC79250C79251C8
        93088D46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1BAA5C
        5ACA9853C8940A964BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF11A052139F53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 0
      OnClick = AcceptBTNClick
    end
    object CancelBTN: TBitBtn
      Left = 82
      Top = 4
      Width = 72
      Height = 37
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E2616BF9616BF93842E0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0616BF9
        616BF93B46E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
        FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
        42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFF3842E0
        4C54EA6169F66972FC757FFE848DFE636DFA3842E0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF3842E0636DFA848DFE757FFE6972FC6169F64C54EA3842E0FFFFFFFF
        FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
        FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
        E73741DFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851E85C64F3646CF96A73FD74
        7DFE7B85FE5D67F73B46E2FFFFFF3B46E25D67F77B85FE747DFE6A73FD646CF9
        5C64F34851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
        E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
        6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3741DF4750E75860F15D65F4616AF7646DF96770FB6770FB6770
        FB646DF9616AF75D65F45860F14750E73741DFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
        5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE4E
        55E9575FF05A62F25C64F35C64F35C64F35A62F2575FF04E55E93640DEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF3640DE575FF05A62F25C64F35C64F35C64F35A62F2575FF036
        40DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF3640DE4E55E9575FF05A62F25C64F35C64F35C64
        F35A62F2575FF04E55E93640DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
        5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4750E75860F15D
        65F4616AF7646DF96770FB6770FB6770FB646DF9616AF75D65F45860F14750E7
        3741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
        E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
        6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        3741DF4851E85C64F3646CF96A73FD747DFE7B85FE5D67F73B46E2FFFFFF3B46
        E25D67F77B85FE747DFE6A73FD646CF95C64F34851E83741DFFFFFFFFFFFFFFF
        FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
        FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
        E73741DFFFFFFFFFFFFFFFFFFF3842E04C54EA6169F66972FC757FFE848DFE63
        6DFA3842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0636DFA848DFE757FFE
        6972FC6169F64C54EA3842E0FFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
        FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
        42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF3B46E2616BF9616BF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF3842E0616BF9616BF93B46E2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 1
      OnClick = CancelBTNClick
    end
    object SaveTariffBTN: TBitBtn
      Left = 193
      Top = 4
      Width = 95
      Height = 37
      Caption = 'Save Tariff'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF4646463D3D3D4141416B6B6BA5A5A5ADADADA9
        A9A9A8A8A8A6A6A6A4A4A4A2A2A2A0A0A09E9E9E9D9D9D9A9A9A9999999A9A9A
        9191916363633D3D3D353535414141FFFFFFFFFFFF4040409494944B4B4B8888
        88128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF312
        8BF3128BF3128BF3128BF37878787F7F7F505050343434FFFFFFFFFFFF454545
        AEAEAE99999985858525A5F725A5F725A5F725A5F725A5F725A5F725A5F725A5
        F725A5F725A5F725A5F725A5F725A5F725A5F7777777929292A4A4A4353535FF
        FFFFFFFFFF4747473E3E3E414141868686F0F0F0FFFFFFFFFFFFFDFDFDFAFAFA
        F6F6F6F3F3F3F0F0F0EEEEEEEAEAEAE7E7E7E4E4E4E7E7E7D5D5D57979793030
        30212121353535FFFFFFFFFFFF4A4A4A424242444444878787EFEFEFFFFFFFFF
        FFFFFFFFFFFEFEFEFBFBFBF8F8F8F5F5F5F3F3F3EFEFEFECECECE9E9E9ECECEC
        D9D9D9797979303030212121353535FFFFFFFFFFFF4D4D4D4747474747478787
        87EFEFEFCEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CE
        BDB5CEBDB5CEBDB5DEDEDE7B7B7B2F2F2F212121353535FFFFFFFFFFFF4F4F4F
        4C4C4C4B4B4B878787EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEFCFCFCF8F8F8F5F5F5F1F1F1F5F5F5E2E2E27D7D7D2F2F2F212121353535FF
        FFFFFFFFFF5353535151514E4E4E888888EFEFEFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF6F6F6FBFBFBE6E6E67D7D7D2F2F
        2F212121353535FFFFFFFFFFFF575757575757515151898989EFEFEFCEBDB5CE
        BDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5
        ECECEC8080802F2F2F212121353535FFFFFFFFFFFF5959595B5B5B5555558B8B
        8BF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF0F0F08484842F2F2F212121353535FFFFFFFFFFFF5B5B5B
        606060595959888888E9E9E9FCFCFCF5F5F5F4F4F4F4F4F4F4F4F4F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5F6F6F6FFFFFFEAEAEA808080313131222222353535FF
        FFFFFFFFFF5E5E5E6767676060606767678787878C8C8C888888868686848484
        8282828282828181818181818181817F7F7F8080808181817979794F4F4F3232
        32272727373737FFFFFFFFFFFF6262626B6B6B6A6A6A65656562626260606056
        56564E4E4E4A4A4A4747474545454242424040403D3D3D3A3A3A393939373737
        3737373737373434342D2D2D3A3A3AFFFFFFFFFFFF6868687070706A6A6A6464
        645E5E5E5A5A5A5B5B5B6060606161615C5C5C5959595555555353535353534F
        4F4F4848484242423B3B3B3838383838383333333D3D3DFFFFFFFFFFFF6F6F6F
        7373735454544747474848483E3E3E797979B9B9B9BFBFBFB1B1B1ADADADA8A8
        A8A4A4A4A1A1A19C9C9C9898988C8C8C6B6B6B4141413C3C3C383838404040FF
        FFFFFFFFFF7575757575754141412C2C2C303030202020909090FFFFFFFFFFFF
        F1F1F1ECECECEAEAEAD5D5D5B1B1B1B3B3B3CECECEC7C7C78D8D8D4848484040
        403D3D3D434343FFFFFFFFFFFF7A7A7A7A7A7A4444443030303434342525258E
        8E8EF7F7F7FAFAFAE7E7E7E3E3E3E6E6E6B9B9B95D5D5D707070BDBDBDC3C3C3
        8989894C4C4C444444414141464646FFFFFFFFFFFF7E7E7E7D7D7D4747473131
        313535352626268D8D8DF6F6F6FAFAFAE6E6E6E2E2E2E7E7E7B5B5B54A4A4A62
        6262BABABAC3C3C38B8B8B505050484848454545494949FFFFFFFFFFFF838383
        8282824848483131313434342727278E8E8EF5F5F5FAFAFAE6E6E6E2E2E2E6E6
        E6B6B6B6515151676767BABABAC2C2C28C8C8C5353534C4C4C4A4A4A4D4D4DFF
        FFFFFFFFFF8A8A8A8888884545452B2B2B2F2F2F212121919191FFFFFFFFFFFF
        F0F0F0ECECECEAEAEAD0D0D09B9B9BA2A2A2C9C9C9C6C6C69393935858585050
        504E4E4E797979FFFFFFFFFFFF8686868484845B5B5B4B4B4B4E4E4E45454585
        8585C5C5C5C7C7C7BABABAB6B6B6B3B3B3AEAEAEA5A5A5A2A2A2A3A3A39C9C9C
        8080805F5F5F5A5A5A797979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object Panel11: TRzPanel
      Left = 869
      Top = 2
      Width = 150
      Height = 42
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 3
      Transparent = True
      object BitBtn1: TBitBtn
        Left = 75
        Top = 3
        Width = 73
        Height = 37
        Caption = 'Close'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFF0004450004450004450004450004450004450004450004450004450004
          45000445000445000445000445000445000445000445000445FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000A4D3461A53F70B44B7DC15789CE5F91D66396DB
          6396DB6396DB6598DD6295DA6295DA5D90D55688CD4C7EC24374B83765A9000A
          4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0011563B6DB14174B84B7EC256
          89CE5E91D66396DB6396DB6396DB6598DD6295DA6295DA5D90D55689CE4D80C4
          4477BB3E70B4001156FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0018613869
          AE3366A72B5EA22B5EA22B5EA22B5EA22B5EA2497CCE6396DB3164A52B5EA22B
          5EA22B5EA22B5EA22D60A43869AE001861FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF001F6A3A6CB02C5FA32B5EA22B5EA22B5EA22B5EA22B5EA24779CA6093
          D8295CA02B5EA22B5EA22B5EA22B5EA22E61A53A6CB0001F6AFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF00226D3B6DB128579B2B5EA22B5EA22B5EA22B5EA2
          2B5EA24274C45B8ED42554982B5EA22B5EA22B5EA22B5EA22E61A53B6DB10022
          6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0024703D6FB42451952B5EA22B
          5EA22B5EA22B5EA22B5EA23F70BE578ACF214E922B5EA22B5EA22B5EA22B5EA2
          2E61A53D6FB4002470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0026723E70
          B51E498E2A5CA02B5EA22B5EA22B5EA22B5EA23B6BB95285CB1D478C2A5CA02B
          5EA22B5EA22B5EA22D60A43E70B5002672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0028754072B7183F842451962B5EA22B5EA22B5EA22B5EA23766B44E81
          C7173D812451962B5EA22B5EA22B5EA22D60A44072B7002875FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF002A784274B9133479193F84224F9328599D2B5EA2
          2B5EA23463AF4A7DC2113176193F84224F9328599D2B5EA22E61A54274B9002A
          78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002C7A4376BB0C296F0F307415
          3A7E1A43871D488C214F933261AD487BC00B276B0F3074153A7E1A43871D488C
          2451964376BB002C7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002E7D4578
          BD477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF47
          7ABF477ABF477ABF142669142669002E7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF002F7F477ABF3260AC3260AC3160AC325FAB325FAC3160AB3463AE477A
          BF3260AC3260AC3160AB325FAC3160AB3166B45287D1002F7FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF003182497CC13265A6285B9F285B9F285B9F285B9F
          285B9F3462AF4A7DC22E61A2285B9F285B9F285B9F285B9F70A3EB84B7FC0031
          82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033844B7EC3295CA0275A9E27
          5A9E275A9E275A9E275A9E3A6AB85184CA26589C275A9E275A9E275A9E275A9E
          2B5EA24B7EC3003384FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0035864D80
          C525549826599D26599D26599D26599D26599D4172C2598CD2214F9326599D26
          599D26599D26599D2B5EA24D80C5003586FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0036894E81C7204D9125589C25589C25589C25589C25589C497BCE6295
          DB1D488C25589C25589C25589C25589C2A5DA14E81C7003689FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF00388B5083C91C458A23559924579B24579B24579B
          24579B5286DC6C9FE518418423559924579B24579B24579B295CA05083C90038
          8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00398C5084CA163C7F1D4A8D23
          569A23569A23569A23569A5B90E675A8ED1337791D4A8D23569A23569A23569A
          295CA05084CA00398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003B8E5286
          CC0F2F7213397A1A478A1F5094225599225599629AF17DB0F50C2A6B13397A1A
          478A1F5094225599285B9F5286CC003B8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF003C905387CD0A266A0C2869123576153D7F1942851C488B67A0F882B5
          FA0722620C2A6B123576153D7F174083214E925387CD003C90FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF003D91598DD25F92D7699CE174A7EC7DB0F584B7FC
          84B7FC84B7FC82B5FA82B5FA82B5FA7CAFF473A6EB6A9DE26194D95B8FD4003D
          91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003E935085CC5D91D7689CE173
          A6EC7EB1F684B7FC84B7FC84B7FC82B5FA82B5FA82B5FA7BAEF373A6EC699DE2
          6093D95388CF003E93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003F94003F
          94003F94003F94003F94003F94003F94003F94003F94003F94003F94003F9400
          3F94003F94003F94003F94003F94003F94FFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
    end
    object TaxesBTN: TBitBtn
      Left = 411
      Top = 4
      Width = 110
      Height = 37
      Caption = 'Calc Duties'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFB0B0B07A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A
        7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7AB0B0B0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF7C7C7CD0D0D1D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
        D1D1D1D1D0D0D1D1D1D0D0D0D0D0D0D0D0D0D0D0D0D1D0D0D0D1D0D1D0D0D1D0
        D07C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7ED2D1D292929292929292
        9292D2D1D2929292929292929292D1D2D2929292929292929292D2D2D25AB370
        5AB2705AB271D2D1D17E7E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF818181D4D4
        D3A4A3A4ECECECA4A4A3D3D4D3A4A3A4ECECECA4A4A3D4D4D3A4A3A4ECECECA4
        A4A3D4D3D45FB5756FD2895FB575D3D3D4818181FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF848484D5D5D5BBBBBBBBBCBCBCBCBBD5D6D5BBBBBBBBBCBCBCBCBBD5D5
        D6BBBBBBBBBCBCBCBCBBD5D6D566B87B6FD28965B87BD6D5D5848484FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF878787D7D7D7D7D7D7D7D8D7D7D7D7D7D7D7D7D7D7
        D7D7D8D7D7D7D7D7D7D8D7D7D7D8D7D7D7D7D8D7D76DBB816FD2896DBC81D7D7
        D7878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B8B8BDAD9D9D9D9D9D9D9DAD9
        D9D9D9D9D9DAD9D9D9D9D9D9D9DADAD9D9D9D9D9DADAD9DAD9DAD9D9D974BF88
        6FD28974BE87D9D9D98B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8E8EDBDC
        DB929292929292929292DBDBDB929292929292929292DCDBDC92929292929292
        9292DBDCDB7BC18C6FD2897BC28DDBDCDB8E8E8EFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF929292DEDEDEA4A3A4ECECECA4A4A3DEDDDEA4A3A4ECECECA4A4A3DDDE
        DDA4A3A4ECECECA4A4A3DDDEDE80C4916FD28980C591DDDDDD929292FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF969696DFE0E0BBBBBBBBBCBCBCBCBBDFE0E0BBBBBB
        BBBCBCBCBCBBE0E0E0BBBBBBBBBCBCBCBCBBE0E0E084C79584C79584C795E0E0
        E0969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9AE3E2E2E2E2E2E2E2E3E2
        E2E2E3E2E3E2E3E2E2E3E2E2E2E3E2E2E2E2E3E2E3E3E2E2E2E2E2E2E2E2E2E2
        E3E2E2E2E3E2E2E3E29A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EE5E4
        E5E5E4E5E4E5E5E4E4E5E4E4E4E4E5E5E5E5E4E5E5E4E4E4E4E5E4E4E5E4E5E4
        E5E5E5E5E5E5E5E5E5E5E4E5E5E5E5E5E59E9E9EFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA1A1A1E7E7E7929292929292929292E6E7E7929292929292929292E7E7
        E7929292929292929292E6E7E74D4CE74D4CE74C4CE8E7E7E7A1A1A1FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA5A5A5E9E9E9A4A3A4ECECECA4A4A3E9E9E9A4A3A4
        ECECECA4A4A3E9E9E9A4A3A4ECECECA4A4A3E9E9E96767DF0000FF6767DFEAE9
        E9A5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9ECECECBBBBBBBBBCBCBC
        BCBBEBECEBBBBBBBBBBCBCBCBCBBECECEBBBBBBBBBBCBCBCBCBBECEBEC7B7AD8
        7B7BD87A7AD8EBEBECA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADADEEEE
        EDEEEEEEEDEEEEEDEEEDEEEEEEEEEEEEEEEDEEEEEEEEEDEDEEEEEDEEEDEDEDEE
        EEEEEDEEEEEDEDEDEEEDEEEEEEEEEEEEEEADADADFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB0B0B0EFEFF0EFF0F0F0F0F0EFEFEFF0EFF0EFF0F0F0F0F0F0F0F0F0EF
        F0F0EFF0F0F0F0F0EFF0F0F0F0F0F0EFF0EFEFF0F0F0F0F0F0B0B0B0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB4B4B4F2F1F1326637326637326637326637326637
        326637326637326637326637326637326637326637326637326637326637F2F2
        F1B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B7F4F4F4326637E5F6E9E5
        F6E9DEF2E3D1ECD8C1E4CBAFDCBB9ED3AC8CC99C7BC18E6DB98261B47960B578
        5EB276326637F4F4F4B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABAF6F6
        F5326637EBFBEFEBFBEFE8F9ECDDF4E3CEECD6BBE4C7A9DAB696D1A684C89774
        BF8967B87E60B57860B578326637F5F5F6BABABAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFBDBDBDF7F7F7326637EBFBEFEBFBEFEBFBEFE1F6E7D4EFDBC2E7CDB0DE
        BC9DD4AC8ACB9C7AC28E6BBB8261B57960B578326637F7F7F7BDBDBDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBFBFBFF9F8F9326637326637326637326637326637
        326637326637326637326637326637326637326637326637326637326637F9F9
        F9BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1FAFAFAFAFAFAFAFAFAFA
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF9FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
        FAFAFAFAFAFAFAFAFAC1C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCC3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3DCDCDCFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 4
      OnClick = TaxesBTNClick
    end
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 104
    Top = 9
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 49
    Top = 13
  end
  object HawbItemSrC: TIBCDataSource
    DataSet = HawbItemSQL
    OnDataChange = HawbItemSrCDataChange
    Left = 264
    Top = 8
  end
  object TariffSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO S_TARIFF'
      
        '  (TARIFF_CODE, FK_TARIFF_USAGE, FK_VAT_CODE, DESCRIPTION, ACTIV' +
        'E, USER_KEYWORD, VAT_APPLIES)'
      'VALUES'
      
        '  (:TARIFF_CODE, :FK_TARIFF_USAGE, :FK_VAT_CODE, :DESCRIPTION, :' +
        'ACTIVE, :USER_KEYWORD, :VAT_APPLIES)')
    SQLDelete.Strings = (
      'DELETE FROM S_TARIFF'
      'WHERE'
      '  TARIFF_CODE = :Old_TARIFF_CODE')
    SQLUpdate.Strings = (
      'UPDATE S_TARIFF'
      'SET'
      
        '  TARIFF_CODE = :TARIFF_CODE, FK_TARIFF_USAGE = :FK_TARIFF_USAGE' +
        ', FK_VAT_CODE = :FK_VAT_CODE, DESCRIPTION = :DESCRIPTION, ACTIVE' +
        ' = :ACTIVE, USER_KEYWORD = :USER_KEYWORD, VAT_APPLIES = :VAT_APP' +
        'LIES'
      'WHERE'
      '  TARIFF_CODE = :Old_TARIFF_CODE')
    SQLRefresh.Strings = (
      
        'SELECT TARIFF_CODE, FK_TARIFF_USAGE, FK_VAT_CODE, DESCRIPTION, A' +
        'CTIVE, USER_KEYWORD, VAT_APPLIES FROM S_TARIFF'
      'WHERE'
      '  TARIFF_CODE = :TARIFF_CODE')
    SQLLock.Strings = (
      'SELECT NULL FROM S_TARIFF'
      'WHERE'
      'TARIFF_CODE = :Old_TARIFF_CODE'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM S_TARIFF'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from S_Tariff')
    MasterFields = 'FK_TARIFF_CODE'
    DetailFields = 'TARIFF_CODE'
    MasterSource = HawbItemSrC
    Left = 696
    Top = 392
    ParamData = <
      item
        DataType = ftString
        Name = 'FK_TARIFF_CODE'
        ParamType = ptInput
        Value = nil
      end>
    object TariffSQLTARIFF_CODE: TStringField
      FieldName = 'TARIFF_CODE'
      FixedChar = True
      Size = 17
    end
    object TariffSQLFK_VAT_CODE: TStringField
      FieldName = 'FK_VAT_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object TariffSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object TariffSQLACTIVE: TStringField
      FieldName = 'ACTIVE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TariffSQLUSER_KEYWORD: TStringField
      FieldName = 'USER_KEYWORD'
      FixedChar = True
    end
    object TariffSQLFK_TARIFF_USAGE: TStringField
      FieldName = 'FK_TARIFF_USAGE'
      FixedChar = True
      Size = 3
    end
    object TariffSQLVAT_APPLIES: TStringField
      FieldName = 'VAT_APPLIES'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object TariffSRC: TIBCDataSource
    DataSet = TariffSQL
    Left = 711
    Top = 484
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
      'select * '
      'from Hawb_charge ha'
      'left outer join charging_method cm'
      'on ha.tariff_charging_method=cm.charging_code'
      'where '
      'fk_tariff_usage='#39'TRF'#39
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
    SQL.Strings = (
      'select * '
      'from Hawb_charge ha'
      'left outer join charging_method cm'
      'on ha.tariff_charging_method=cm.charging_code')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_HAWB_ITEM'
    MasterSource = HawbItemSrC
    ReadOnly = True
    Left = 320
    Top = 528
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object HawbChargeSQLTARIFF_CODE: TStringField
      DisplayLabel = 'Tariff'
      DisplayWidth = 17
      FieldName = 'TARIFF_CODE'
      FixedChar = True
      Size = 17
    end
    object HawbChargeSQLDUTY_TYPE: TStringField
      DisplayLabel = 'Duty Type'
      DisplayWidth = 9
      FieldName = 'DUTY_TYPE'
      FixedChar = True
      Size = 3
    end
    object HawbChargeSQLDESCRIPTION: TStringField
      DisplayLabel = 'Charge Method'
      DisplayWidth = 15
      FieldName = 'DESCRIPTION'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object HawbChargeSQLTARIFF_UNIT_RATE: TFloatField
      DisplayLabel = 'Tariff Rate'
      DisplayWidth = 10
      FieldName = 'TARIFF_UNIT_RATE'
      OnGetText = HawbChargeSQLTARIFF_UNIT_RATEGetText
      DisplayFormat = '0.00%'
    end
    object HawbChargeSQLAMOUNT_RELIEVED: TFloatField
      DisplayLabel = 'Relieved'
      DisplayWidth = 10
      FieldName = 'AMOUNT_RELIEVED'
      DisplayFormat = '0.00'
    end
    object HawbChargeSQLAMOUNT_NET: TFloatField
      DisplayLabel = 'Charges'
      DisplayWidth = 11
      FieldName = 'AMOUNT_NET'
      DisplayFormat = '0.00'
    end
    object HawbChargeSQLTARIFF_UNIT_INCREMENT: TIntegerField
      DisplayLabel = 'PerUnit'
      DisplayWidth = 6
      FieldName = 'TARIFF_UNIT_INCREMENT'
      Visible = False
    end
    object HawbChargeSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
    object HawbChargeSQLQUANTITY: TIntegerField
      DisplayLabel = 'Units'
      DisplayWidth = 10
      FieldName = 'QUANTITY'
      Visible = False
    end
    object HawbChargeSQLVAT_RATE: TFloatField
      DisplayLabel = 'VAT'
      DisplayWidth = 9
      FieldName = 'VAT_RATE'
      Visible = False
      DisplayFormat = '0.00%'
    end
    object HawbChargeSQLTARIFF_RELIEVED_RATE: TFloatField
      DisplayLabel = 'Relieved'
      DisplayWidth = 9
      FieldName = 'TARIFF_RELIEVED_RATE'
      Visible = False
      DisplayFormat = '0.00%;#'
    end
    object HawbChargeSQLFK_TARIFF_LINE: TIntegerField
      FieldName = 'FK_TARIFF_LINE'
      Visible = False
    end
    object HawbChargeSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
      Visible = False
    end
    object HawbChargeSQLTARIFF_UNIT: TStringField
      FieldName = 'TARIFF_UNIT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object HawbChargeSQLVAT_CODE: TStringField
      FieldName = 'VAT_CODE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object HawbChargeSQLFK_HAWB: TIntegerField
      FieldName = 'FK_HAWB'
      Required = True
      Visible = False
    end
    object HawbChargeSQLFK_HAWB_ITEM: TIntegerField
      FieldName = 'FK_HAWB_ITEM'
      Visible = False
    end
    object HawbChargeSQLTARIFF_CHARGING_METHOD: TStringField
      FieldName = 'TARIFF_CHARGING_METHOD'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object HawbChargeSQLTARIFF_UNITS_NOT_CHARGED: TIntegerField
      FieldName = 'TARIFF_UNITS_NOT_CHARGED'
      Visible = False
    end
    object HawbChargeSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
      Visible = False
    end
  end
  object HawbChargeSRC: TIBCDataSource
    DataSet = HawbChargeSQL
    Left = 216
    Top = 536
  end
  object MakeSQL: TIBCQuery
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO BASE_TARIFF'
      
        '  (SERIAL_NUMBER, CODE, DESCRIPTION, ACCOUNT_CATEGORY, REGIONAL_' +
        'CODE, IS_CUSTOMS, IS_BASIC, IS_VAT_APPLY, CAN_BE_RELIEVED, IS_TH' +
        'E_VAT, IS_PER_UNIT, ORDER_NUMBER, IS_ACTIVE, UNIT_TYPE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :CODE, :DESCRIPTION, :ACCOUNT_CATEGORY, :REGI' +
        'ONAL_CODE, :IS_CUSTOMS, :IS_BASIC, :IS_VAT_APPLY, :CAN_BE_RELIEV' +
        'ED, :IS_THE_VAT, :IS_PER_UNIT, :ORDER_NUMBER, :IS_ACTIVE, :UNIT_' +
        'TYPE)')
    SQLDelete.Strings = (
      'DELETE FROM BASE_TARIFF'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE BASE_TARIFF'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, CODE = :CODE, DESCRIPTION = :D' +
        'ESCRIPTION, ACCOUNT_CATEGORY = :ACCOUNT_CATEGORY, REGIONAL_CODE ' +
        '= :REGIONAL_CODE, IS_CUSTOMS = :IS_CUSTOMS, IS_BASIC = :IS_BASIC' +
        ', IS_VAT_APPLY = :IS_VAT_APPLY, CAN_BE_RELIEVED = :CAN_BE_RELIEV' +
        'ED, IS_THE_VAT = :IS_THE_VAT, IS_PER_UNIT = :IS_PER_UNIT, ORDER_' +
        'NUMBER = :ORDER_NUMBER, IS_ACTIVE = :IS_ACTIVE, UNIT_TYPE = :UNI' +
        'T_TYPE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, CODE, DESCRIPTION, ACCOUNT_CATEGORY, REGIO' +
        'NAL_CODE, IS_CUSTOMS, IS_BASIC, IS_VAT_APPLY, CAN_BE_RELIEVED, I' +
        'S_THE_VAT, IS_PER_UNIT, ORDER_NUMBER, IS_ACTIVE, UNIT_TYPE FROM ' +
        'BASE_TARIFF'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM BASE_TARIFF'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM BASE_TARIFF'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    ReadOnly = True
    Left = 745
    Top = 21
  end
  object HiCertificateSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'HAWB_ITEM_CERITIFICATE_GENER'
    SQLInsert.Strings = (
      'INSERT INTO HAWB_ITEM_CERTIFICATE'
      '  (SERIAL_NUMBER, C_CODE, C_NUMBER, C_VALUE, FK_HAWB_ITEM)'
      'VALUES'
      '  (:SERIAL_NUMBER, :C_CODE, :C_NUMBER, :C_VALUE, :FK_HAWB_ITEM)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB_ITEM_CERTIFICATE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB_ITEM_CERTIFICATE'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, C_CODE = :C_CODE, C_NUMBER = :' +
        'C_NUMBER, C_VALUE = :C_VALUE, FK_HAWB_ITEM = :FK_HAWB_ITEM'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, C_CODE, C_NUMBER, C_VALUE, FK_HAWB_ITEM FR' +
        'OM HAWB_ITEM_CERTIFICATE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB_ITEM_CERTIFICATE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB_ITEM_CERTIFICATE'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ClairDML.UsedForReadOnlyTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * From hawb_item_certificate')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_HAWB_ITEM'
    MasterSource = HawbItemSrC
    Left = 560
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object HiCertificateSQLC_CODE: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 10
      FieldName = 'C_CODE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object HiCertificateSQLC_NUMBER: TStringField
      DisplayLabel = 'Number'
      DisplayWidth = 10
      FieldName = 'C_NUMBER'
      Required = True
      FixedChar = True
      Size = 3
    end
    object HiCertificateSQLC_VALUE: TStringField
      DisplayLabel = 'Value'
      DisplayWidth = 17
      FieldName = 'C_VALUE'
      Required = True
      FixedChar = True
    end
    object HiCertificateSQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Visible = False
    end
    object HiCertificateSQLFK_HAWB_ITEM: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_HAWB_ITEM'
      Required = True
      Visible = False
    end
  end
  object HiCertificateSRC: TIBCDataSource
    DataSet = HiCertificateSQL
    Left = 622
    Top = 244
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
      'select '
      
        ' hi.*,si.factor_numeric,si.currency as CurrencyINV, FK_CLEARANCE' +
        '_INSTRUCTION'
      'from             hawb_item hi'
      'left outer  join  sender_invoice si'
      
        'on  hi.fk_hawb_serial = si.fk_hawb_serial and hi.fk_sender_invoi' +
        'ce_serial=si.invoice_serial'
      'left outer join hawb ha on ha.serial_number = hi.fk_hawb_serial'
      ' where'
      'hi.serial_number= :ItemSerial')
    Active = True
    OnCalcFields = HawbItemSQLCalcFields
    Left = 201
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemSerial'
        Value = nil
      end>
    object HawbItemSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object HawbItemSQLFK_MAWB: TIntegerField
      FieldName = 'FK_MAWB'
    end
    object HawbItemSQLFK_HAWB_SERIAL: TIntegerField
      FieldName = 'FK_HAWB_SERIAL'
      Required = True
    end
    object HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField
      FieldName = 'FK_SENDER_INVOICE_SERIAL'
    end
    object HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
    end
    object HawbItemSQLFK_TARIFF_CODE: TStringField
      FieldName = 'FK_TARIFF_CODE'
      Size = 17
    end
    object HawbItemSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 40
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
    object HawbItemSQLINVOICE_VALUE: TFloatField
      FieldName = 'INVOICE_VALUE'
    end
    object HawbItemSQLDUTY_TYPE: TStringField
      FieldName = 'DUTY_TYPE'
      FixedChar = True
      Size = 1
    end
    object HawbItemSQLTARIFF_DESCRIPTION: TStringField
      FieldName = 'TARIFF_DESCRIPTION'
      Size = 50
    end
    object HawbItemSQLNET_QUANTITY: TFloatField
      FieldName = 'NET_QUANTITY'
    end
    object HawbItemSQLIMPORT_DUTY_RATE: TFloatField
      FieldName = 'IMPORT_DUTY_RATE'
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
    object HawbItemSQLTRL_RATE: TFloatField
      FieldName = 'TRL_RATE'
    end
    object HawbItemSQLTRL_RELEIVED: TFloatField
      FieldName = 'TRL_RELEIVED'
    end
    object HawbItemSQLVAT_CODE: TStringField
      FieldName = 'VAT_CODE'
      FixedChar = True
      Size = 3
    end
    object HawbItemSQLVAT_RATE: TFloatField
      FieldName = 'VAT_RATE'
    end
    object HawbItemSQLVAT_RELEIVED: TFloatField
      FieldName = 'VAT_RELEIVED'
    end
    object HawbItemSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
    end
    object HawbItemSQLCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
    end
    object HawbItemSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      FixedChar = True
      Size = 3
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
    object HawbItemSQLDUTY_IMPORT_PAY: TFloatField
      FieldName = 'DUTY_IMPORT_PAY'
    end
    object HawbItemSQLDUTY_TRL_PAY: TFloatField
      FieldName = 'DUTY_TRL_PAY'
    end
    object HawbItemSQLDUTY_EXCISE_PAY: TFloatField
      FieldName = 'DUTY_EXCISE_PAY'
    end
    object HawbItemSQLDUTY_VAT_PAY: TFloatField
      FieldName = 'DUTY_VAT_PAY'
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
      FixedChar = True
      Size = 1
    end
    object HawbItemSQLEURO_PENDING: TStringField
      FieldName = 'EURO_PENDING'
      FixedChar = True
      Size = 1
    end
    object HawbItemSQLMULTI_ITEMS_INVOICE: TStringField
      FieldName = 'MULTI_ITEMS_INVOICE'
      FixedChar = True
      Size = 1
    end
    object HawbItemSQLINVOICE_LINE: TIntegerField
      FieldName = 'INVOICE_LINE'
    end
    object HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField
      FieldName = 'PRE_DISCOUNT_AMOUNT'
    end
    object HawbItemSQLWEIGHT_NET: TFloatField
      FieldName = 'WEIGHT_NET'
    end
    object HawbItemSQLUNIT: TStringField
      FieldName = 'UNIT'
      FixedChar = True
      Size = 3
    end
    object HawbItemSQLBUCKET_TARIFF: TStringField
      FieldName = 'BUCKET_TARIFF'
      Size = 10
    end
    object HawbItemSQLWEIGHT_GROSS: TFloatField
      FieldName = 'WEIGHT_GROSS'
    end
    object HawbItemSQLFACTOR_NUMERIC: TFloatField
      FieldName = 'FACTOR_NUMERIC'
      ReadOnly = True
    end
    object HawbItemSQLCURRENCYINV: TStringField
      FieldName = 'CURRENCYINV'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object HawbItemSQLFK_CLEARANCE_INSTRUCTION: TStringField
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
  end
end
