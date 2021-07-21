object V_HawbFRM: TV_HawbFRM
  Left = 48
  Top = 105
  BorderStyle = bsSingle
  Caption = 'Hawb'
  ClientHeight = 810
  ClientWidth = 1360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 120
  TextHeight = 14
  object Label31: TLabel
    Left = 29
    Top = 180
    Width = 34
    Height = 15
    Caption = 'Gross'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object MainPNL: TRzPanel
    Left = 0
    Top = 0
    Width = 1360
    Height = 761
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    object DetailsPNL: TRzPanel
      Left = 0
      Top = 51
      Width = 1360
      Height = 451
      Align = alTop
      BorderOuter = fsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object ClearLbl: TRzLabel
        Left = 303
        Top = 408
        Width = 281
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ready'
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object StateOfTokenLbl: TRzLabel
        Left = 601
        Top = 408
        Width = 309
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Caption = 'Send/Cleared/Error'
        Color = 42495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object CustomerPNL: TGroupBox
        Left = 597
        Top = 4
        Width = 300
        Height = 183
        Caption = 'Consignee'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        TabStop = True
        object Label6: TLabel
          Left = 15
          Top = 55
          Width = 34
          Height = 15
          Caption = 'Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 269
          Top = 53
          Width = 21
          Height = 19
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
        object Label9: TLabel
          Left = 29
          Top = 80
          Width = 20
          Height = 15
          Caption = 'S/N'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object CustomerSerialFLD: TRzDBLabel
          Left = 55
          Top = 78
          Width = 58
          Height = 19
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          BorderOuter = fsGroove
          DataField = 'FK_CUSTOMER_CODE'
          DataSource = V_HawbDataDML.HawbSRC
        end
        object Label35: TLabel
          Left = 3
          Top = 143
          Width = 69
          Height = 15
          Caption = 'Duty Account'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object SelectNameFLd: TSearchBox
          Left = 55
          Top = 24
          Width = 234
          Height = 23
          AutoSize = False
          CharCase = ecUpperCase
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 0
          Text = 'CUSTOMER NAME'
          OnEnter = SelectNameFLdEnter
          OnInvokeSearch = SelectNameFLdInvokeSearch
        end
        object CustomerCodeFLD: TwwDBEdit
          Left = 19
          Top = 26
          Width = 19
          Height = 23
          DataField = 'FK_CUSTOMER_CODE'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          Visible = False
          WantReturns = False
          WordWrap = False
          OnChange = CustomerCodeFLDChange
        end
        object SavedNameFLD: TwwDBEdit
          Left = 55
          Top = 53
          Width = 208
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clBtnFace
          DataField = 'CUSTOMER_NAME'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object DutyAccFLD: TwwDBEdit
          Left = 78
          Top = 141
          Width = 211
          Height = 23
          AutoSize = False
          DataField = 'DUTY_BILLING_ACCOUNT'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Picture.PictureMask = '*9{#,&}'
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object SenderDLG: TGroupBox
        Left = 604
        Top = 193
        Width = 298
        Height = 197
        Caption = 'Sender'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = True
        object Label24: TLabel
          Left = 15
          Top = 19
          Width = 34
          Height = 15
          Caption = 'Name'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label40: TLabel
          Left = 3
          Top = 46
          Width = 46
          Height = 15
          Caption = 'Address'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 57
          Top = 126
          Width = 58
          Height = 15
          Caption = 'Post Code'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label5: TLabel
          Left = 121
          Top = 126
          Width = 20
          Height = 15
          Caption = 'City'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label8: TLabel
          Left = 241
          Top = 126
          Width = 42
          Height = 15
          Caption = 'Country'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object SenderNameFLD: TwwDBEdit
          Left = 55
          Top = 16
          Width = 231
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SENDER_NAME'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit1: TwwDBEdit
          Left = 55
          Top = 43
          Width = 231
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SENDER_ADDRESS_1'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit2: TwwDBEdit
          Left = 57
          Top = 143
          Width = 60
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SENDER_POST_CODE'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit3: TwwDBEdit
          Left = 121
          Top = 143
          Width = 104
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SENDER_CITY'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit5: TwwDBEdit
          Left = 241
          Top = 143
          Width = 45
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SENDER_COUNTRY'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit4: TwwDBEdit
          Left = 55
          Top = 70
          Width = 231
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SENDER_ADDRESS_2'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit6: TwwDBEdit
          Left = 55
          Top = 97
          Width = 231
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SENDER_ADDRESS_3'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object DHLChargesPNL: TGroupBox
        Left = 908
        Top = 128
        Width = 371
        Height = 131
        Caption = 'DHL Charges'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object DhlChargeGRD: TwwDBGrid
          Left = 2
          Top = 35
          Width = 334
          Height = 94
          TabStop = False
          PictureMasks.Strings = (
            'TARIFF_UNIT_RATE'#9'%0.00'#9'T'#9'T')
          Selected.Strings = (
            'TARIFF_CODE'#9'14'#9'Tariff'
            'DUTY_TYPE'#9'4'#9'Duty'
            'TARIFF_CHARGING_METHOD'#9'6'#9'Method'
            'TARIFF_UNIT_RATE'#9'8'#9'Rate'
            'AMOUNT_NET'#9'10'#9'Charge')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = False
          ShowVertScrollBar = False
          Align = alClient
          BorderStyle = bsNone
          Color = clInfoBk
          DataSource = V_HawbDataDML.HawbChargeDhlSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDblClick = CusChargeGRDDblClick
        end
        object Panel4: TPanel
          Left = 2
          Top = 17
          Width = 367
          Height = 18
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object DefaultDhlBTN: TwwDBNavigator
            Left = 0
            Top = 0
            Width = 168
            Height = 18
            AutosizeStyle = asSizeNavButtons
            DataSource = V_HawbDataDML.HawbChargeDhlSRC
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            BackgroundOptions.IndentX = 0
            BackgroundOptions.IndentY = 0
            Align = alLeft
            object wwNavButton1: TwwNavButton
              Left = 0
              Top = 0
              Width = 34
              Height = 18
              Hint = 'Move to prior record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Prior'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsPrior
            end
            object wwNavButton2: TwwNavButton
              Left = 34
              Top = 0
              Width = 34
              Height = 18
              Hint = 'Move to next record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Next'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsNext
            end
            object wwNavButton3: TwwNavButton
              Left = 68
              Top = 0
              Width = 34
              Height = 18
              Hint = 'Insert new record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Insert'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = wwNavButton3Click
              Index = 2
              Style = nbsInsert
            end
            object wwNavButton4: TwwNavButton
              Left = 102
              Top = 0
              Width = 33
              Height = 18
              Hint = 'Delete current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Delete'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 3
              Style = nbsDelete
            end
            object wwNavButton5: TwwNavButton
              Left = 135
              Top = 0
              Width = 33
              Height = 18
              Hint = 'Refresh the contents of the dataset'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Refresh'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 4
              Style = nbsRefresh
            end
          end
        end
        object RzPanel3: TRzPanel
          Left = 336
          Top = 35
          Width = 33
          Height = 94
          Align = alRight
          BorderOuter = fsNone
          TabOrder = 2
          object chDHLChargeBTN: TSpeedButton
            Left = 0
            Top = 1
            Width = 21
            Height = 20
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
            OnClick = chDHLChargeBTNClick
          end
        end
      end
      object InvoicePNL: TRzGroupBox
        Left = 302
        Top = 4
        Width = 282
        Height = 183
        Caption = 'Invoice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label17: TLabel
          Left = 2
          Top = 96
          Width = 67
          Height = 15
          Caption = 'Freight Euro'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label27: TLabel
          Left = 19
          Top = 20
          Width = 45
          Height = 15
          Alignment = taRightJustify
          Caption = 'Invoice#'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label57: TLabel
          Left = 27
          Top = 71
          Width = 38
          Height = 15
          Caption = 'Freight'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label56: TLabel
          Left = 5
          Top = 47
          Width = 59
          Height = 15
          Caption = 'Inv Amount'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label51: TLabel
          Left = 12
          Top = 124
          Width = 55
          Height = 15
          Caption = 'Insurance'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object CustomsValueFLD: TRzDBLabel
          Left = 206
          Top = 94
          Width = 66
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          BorderOuter = fsGroove
          DataField = 'CUSTOMS_VALUE'
          DataSource = V_HawbDataDML.SenderInvoiceSRC
        end
        object FactorFLD: TRzDBLabel
          Left = 206
          Top = 68
          Width = 66
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          BorderOuter = fsGroove
          DataField = 'FACTOR_NUMERIC'
          DataSource = V_HawbDataDML.SenderInvoiceSRC
        end
        object InsurCurFLD: TRzDBLabel
          Left = 138
          Top = 121
          Width = 54
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          BorderOuter = fsGroove
          DataField = 'CURRENCY'
          DataSource = V_HawbDataDML.SenderInvoiceSRC
        end
        object FreightCurrFLD: TRzDBLabel
          Left = 138
          Top = 68
          Width = 54
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          BorderOuter = fsGroove
          DataField = 'CURRENCY'
          DataSource = V_HawbDataDML.SenderInvoiceSRC
        end
        object ExchangeRateFLD: TRzDBLabel
          Left = 206
          Top = 42
          Width = 66
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          BorderOuter = fsGroove
          DataField = 'EXCHANGE_RATE'
          DataSource = V_HawbDataDML.SenderInvoiceSRC
        end
        object FreightEuroFLD: TwwDBEdit
          Left = 70
          Top = 94
          Width = 62
          Height = 23
          AutoSize = False
          DataField = 'FREIGHT_CYP_AMOUNT'
          DataSource = V_HawbDataDML.SenderInvoiceSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object INvoiceNumFLD: TwwDBEdit
          Left = 70
          Top = 16
          Width = 62
          Height = 23
          AutoSize = False
          DataField = 'INVOICE_NUMBER'
          DataSource = V_HawbDataDML.SenderInvoiceSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object FreightForeignFLD: TwwDBEdit
          Left = 70
          Top = 68
          Width = 62
          Height = 23
          AutoSize = False
          DataField = 'FREIGHT_AMOUNT'
          DataSource = V_HawbDataDML.SenderInvoiceSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object InvAmountFLD: TwwDBEdit
          Left = 70
          Top = 42
          Width = 62
          Height = 23
          AutoSize = False
          DataField = 'PRE_DISCOUNT_AMOUNT'
          DataSource = V_HawbDataDML.SenderInvoiceSRC
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
        object InsuranceFLD: TwwDBEdit
          Left = 70
          Top = 121
          Width = 62
          Height = 23
          AutoSize = False
          DataField = 'INSURANCE_AMOUNT'
          DataSource = V_HawbDataDML.SenderInvoiceSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object InvoiceCurrencyFLD: TwwDBComboBox
          Left = 138
          Top = 42
          Width = 54
          Height = 23
          ShowButton = True
          Style = csDropDownList
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          AutoSize = False
          DataField = 'CURRENCY'
          DataSource = V_HawbDataDML.SenderInvoiceSRC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          Sorted = False
          TabOrder = 2
          UnboundDataType = wwDefault
          OnCloseUp = InvoiceCurrencyFLDCloseUp
        end
      end
      object ClearancePNL: TRzGroupBox
        Left = 303
        Top = 193
        Width = 282
        Height = 198
        Caption = 'Clearance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label43: TLabel
          Left = 124
          Top = 76
          Width = 54
          Height = 30
          Alignment = taRightJustify
          Caption = 'Customs Status'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label2: TLabel
          Left = 137
          Top = 28
          Width = 41
          Height = 15
          Caption = 'Relieve'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object ClearanceRGP: TRzDBRadioGroup
          Left = 1
          Top = 16
          Width = 117
          Height = 181
          DataField = 'FK_CLEARANCE_INSTRUCTION'
          DataSource = V_HawbDataDML.HawbSRC
          Items.Strings = (
            'hello1 DO'
            'hell02 DTP')
          Values.Strings = (
            'DO'
            'DTP')
          OnChange = ClearanceRGPChange
          Align = alLeft
          BorderSides = []
          Caption = ''
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          GroupStyle = gsTopLine
          ItemHeight = 13
          ParentFont = False
          StartYPos = 1
          TabOrder = 0
          VisualStyle = vsClassic
          OnChanging = ClearanceRGPChanging
        end
        object RelievedFLD: TwwDBComboBox
          Left = 184
          Top = 25
          Width = 89
          Height = 23
          ShowButton = True
          Style = csOwnerDrawFixed
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          DataField = 'FK_DUTY_RELIEVE'
          DataSource = V_HawbDataDML.HawbSRC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          Picture.PictureMask = '*!'
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
        end
        object WaitingReasonFLD: TwwDBComboBox
          Left = 184
          Top = 77
          Width = 89
          Height = 23
          ShowButton = True
          Style = csDropDownList
          MapList = False
          AllowClearKey = True
          AutoDropDown = True
          ShowMatchText = True
          AutoFillDate = False
          AutoSize = False
          DataField = 'CLEARANCE_WAITING_CODE'
          DataSource = V_HawbDataDML.HawbSRC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          Sorted = False
          TabOrder = 3
          UnboundDataType = wwDefault
          OnCloseUp = WaitingReasonFLDCloseUp
        end
        object DtpFLD: TRzDBCheckBox
          Left = 151
          Top = 54
          Width = 43
          Height = 17
          DataField = 'IS_PREPAID'
          DataSource = V_HawbDataDML.HawbSRC
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
          Alignment = taLeftJustify
          Caption = 'DTP'
          TabOrder = 2
          OnKeyUp = DtpFLDKeyUp
        end
        object RzDBCheckBox4: TRzDBCheckBox
          Left = 71
          Top = 176
          Width = 137
          Height = 17
          DataField = 'IS_OVERRIDE_MEDIUM'
          DataSource = V_HawbDataDML.HawbSRC
          ValueChecked = 'Y'
          ValueUnchecked = 'N'
          Alignment = taLeftJustify
          Caption = 'Charge NormalTariffs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          TabStop = False
          Visible = False
        end
      end
      object HawbPNL: TGroupBox
        Left = 23
        Top = 4
        Width = 278
        Height = 441
        Caption = 'Hawb Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        StyleElements = []
        object Label4: TLabel
          Left = 34
          Top = 54
          Width = 46
          Height = 15
          Caption = 'Hawb ID'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 80
          Top = 67
          Width = 3
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 31
          Top = 204
          Width = 55
          Height = 15
          Alignment = taRightJustify
          Caption = 'Incoterms'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label28: TLabel
          Left = 42
          Top = 305
          Width = 38
          Height = 15
          Caption = 'Pieces'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label52: TLabel
          Left = 136
          Top = 308
          Width = 13
          Height = 15
          AutoSize = False
          Caption = '/'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label7: TLabel
          Left = 20
          Top = 375
          Width = 60
          Height = 15
          Caption = 'Net Weight'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label16: TLabel
          Left = 57
          Top = 166
          Width = 29
          Height = 15
          Alignment = taRightJustify
          Caption = 'Desc'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object SerialFLD: TRzDBLabel
          Left = 190
          Top = 51
          Width = 75
          Height = 23
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BorderOuter = fsGroove
          DataField = 'SERIAL_NUMBER'
          DataSource = V_HawbDataDML.HawbSRC
        end
        object Label22: TLabel
          Left = 22
          Top = 108
          Width = 58
          Height = 15
          Caption = 'Delivery ID'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object RzDBLabel5: TRzDBLabel
          Left = 193
          Top = 303
          Width = 52
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          BorderOuter = fsGroove
          DataField = 'ORIGIN_STATION'
          DataSource = V_HawbDataDML.HawbSRC
        end
        object GuidRefLBL: TRzDBLabel
          Left = 86
          Top = 85
          Width = 3
          Height = 14
          AutoSize = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          DataField = 'BUCKET_REFERENCE_NUMBER'
          DataSource = V_HawbDataDML.HawbSRC
        end
        object Label26: TLabel
          Left = 61
          Top = 83
          Width = 19
          Height = 15
          Caption = 'Ref'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label30: TLabel
          Left = 5
          Top = 346
          Width = 75
          Height = 15
          Caption = 'Gross Weight'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label32: TLabel
          Left = 29
          Top = 233
          Width = 57
          Height = 15
          Alignment = taRightJustify
          Caption = 'Procedure'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label33: TLabel
          Left = 58
          Top = 260
          Width = 28
          Height = 15
          Alignment = taRightJustify
          Caption = 'IOSS'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label12: TLabel
          Left = 47
          Top = 136
          Width = 33
          Height = 15
          Caption = 'Origin'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object HawbFLD: TwwDBEdit
          Left = 90
          Top = 51
          Width = 94
          Height = 23
          BiDiMode = bdLeftToRight
          CharCase = ecUpperCase
          ParentBiDiMode = False
          DataField = 'HAB_ID'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Picture.PictureMaskFromDataSet = False
          Picture.PictureMask = '*9{#}{0,1,2,3,4,5,6}'
          Picture.AutoFill = False
          RegexMask.Mask = '\d{9}[0-6]'
          RegexMask.CaseSensitive = False
          RegexMask.ErrorMessage = 'Invalid Hawb Id. Require 10 digits '
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnChange = HawbFLDChange
          OnExit = HawbFLDExit
          NumbersOnly = True
        end
        object ParcelsOnDocumentFLD: TwwDBEdit
          Left = 144
          Top = 304
          Width = 43
          Height = 23
          DataField = 'NUMBER_OF_PARCELS'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnChange = ShippedPiecesArrivedFLDChange
        end
        object ShippedPiecesArrivedFLD: TwwDBEdit
          Left = 90
          Top = 304
          Width = 45
          Height = 23
          DataField = 'NUM_OF_PIECES_ARRIVED'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnChange = ShippedPiecesArrivedFLDChange
        end
        object WeightEB: TwwDBEdit
          Left = 90
          Top = 372
          Width = 96
          Height = 23
          DataField = 'WEIGHT'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object DescriptionFLD: TwwDBEdit
          Left = 90
          Top = 163
          Width = 185
          Height = 23
          CharCase = ecUpperCase
          DataField = 'DESCRIPTION'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object IncoFLD: TwwDBComboBox
          Left = 90
          Top = 202
          Width = 96
          Height = 21
          ShowButton = True
          Style = csDropDownList
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          DataField = 'FK_DELIVERY_TERM'
          DataSource = V_HawbDataDML.HawbSRC
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
        object RzToolbar1: TRzToolbar
          Left = 2
          Top = 17
          Width = 274
          Height = 28
          AutoResize = False
          CustomizeCaptions.Title = 'Customize Toolbar'
          CustomizeCaptions.Hint = 'Uncheck to hide control'
          CustomizeCaptions.Close = 'Close'
          CustomizeCaptions.MoveUp = 'Move Up'
          CustomizeCaptions.MoveDown = 'Move Down'
          CustomizeCaptions.TextOptions = 'Text Options'
          CustomizeCaptions.NoTextLabels = 'No text labels'
          CustomizeCaptions.ShowTextLabels = 'sdf'
          CustomizeCaptions.SelectiveTextOnRight = 'Selective text on right'
          Images = DbImages
          ButtonWidth = 40
          TextOptions = ttoCustom
          BorderInner = fsNone
          BorderOuter = fsGroove
          BorderSides = [sdTop]
          BorderWidth = 0
          Caption = 'mnb'
          Color = clBlue
          GradientColorStart = clSilver
          GradientColorStop = clSkyBlue
          TabOrder = 0
          VisualStyle = vsGradient
          ToolbarControls = (
            BtnLeft
            BtnRight
            BtnPost
            BtnRefresh)
          object BtnLeft: TRzToolButton
            Left = 4
            Top = 2
            Hint = 'Left'
            DisabledIndex = 9
            ImageIndex = 8
            Caption = 'Left'
            OnClick = BtnLeftClick
          end
          object BtnRight: TRzToolButton
            Left = 44
            Top = 2
            Hint = 'Right'
            DisabledIndex = 11
            ImageIndex = 10
            Images = DbImages
            Caption = 'Right'
            OnClick = BtnRightClick
          end
          object BtnPost: TRzToolButton
            Left = 84
            Top = 2
            Hint = 'Post'
            DisabledIndex = 13
            ImageIndex = 12
            Caption = 'Post'
            OnClick = BtnPostClick
          end
          object BtnRefresh: TRzToolButton
            Left = 124
            Top = 2
            Hint = 'Refresh'
            DisabledIndex = 15
            ImageIndex = 14
            Caption = 'Refresh'
            OnClick = BtnRefreshClick
          end
        end
        object DeliveryIdFLD: TwwDBEdit
          Left = 90
          Top = 105
          Width = 185
          Height = 23
          TabStop = False
          AutoSize = False
          Color = clBtnFace
          DataField = 'XML_HOUSE_ID'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object DatePassedFLD: TwwDBDateTimePicker
          Left = 90
          Top = 401
          Width = 96
          Height = 23
          TabStop = False
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Arial'
          CalendarAttributes.Font.Style = []
          Color = clBtnFace
          DataField = 'DATE_REGISTERED'
          DataSource = V_HawbDataDML.HawbSRC
          Epoch = 1950
          ButtonWidth = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ShowButton = True
          TabOrder = 12
          DisplayFormat = 'dd/mm/yyyy'
          Visible = False
        end
        object GrossFLD: TwwDBEdit
          Left = 90
          Top = 343
          Width = 96
          Height = 23
          DataField = 'WEIGHT_GROSS'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object OriginCountryHawbFLD: TwwDBLookupCombo
          Left = 90
          Top = 134
          Width = 185
          Height = 23
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          CharCase = ecUpperCase
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NAME'#9'40'#9'NAME'#9'F'
            'CODE'#9'3'#9'CODE'#9'F'
            'NUMBER'#9'10'#9'NUMBER'#9'F')
          DataField = 'FK_COUNTRY_ORIGIN'
          DataSource = V_HawbDataDML.HawbSRC
          LookupTable = V_HawbDataDML.CountrySQL
          LookupField = 'NUMBER'
          Style = csDropDownList
          ParentFont = False
          TabOrder = 3
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object ProcedureFLD: TwwDBComboBox
          Left = 90
          Top = 229
          Width = 96
          Height = 21
          ShowButton = True
          Style = csDropDownList
          MapList = True
          AllowClearKey = True
          AutoDropDown = True
          ShowMatchText = True
          DataField = 'PROCEDURE_CODE'
          DataSource = V_HawbDataDML.HawbSRC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          Sorted = False
          TabOrder = 6
          UnboundDataType = wwDefault
        end
        object IossFLD: TwwDBEdit
          Left = 90
          Top = 256
          Width = 96
          Height = 23
          CharCase = ecUpperCase
          DataField = 'IOSS'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          Picture.PictureMaskFromDataSet = False
          Picture.PictureMask = '&&*10{#}'
          RegexMask.CaseSensitive = False
          ShowHint = False
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit7: TwwDBEdit
          Left = 89
          Top = 81
          Width = 186
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clBtnFace
          DataField = 'BUCKET_REFERENCE_NUMBER'
          DataSource = V_HawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object CustomChargesPNL: TGroupBox
        Left = 910
        Top = 6
        Width = 371
        Height = 105
        Caption = 'Custom Charges'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        object RzDBLabel1: TRzDBLabel
          Left = 272
          Top = -32
          Width = 65
          Height = 17
        end
        object CusChargeGRD: TwwDBGrid
          Left = 2
          Top = 35
          Width = 334
          Height = 68
          TabStop = False
          Selected.Strings = (
            'TARIFF_CODE'#9'13'#9'Tariff'
            'DUTY_TYPE'#9'5'#9'Duty'
            'TARIFF_CHARGING_METHOD'#9'6'#9'Method'
            'TARIFF_UNIT_RATE'#9'8'#9'Rate'
            'AMOUNT_NET'#9'10'#9'Charge')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = False
          ShowVertScrollBar = False
          Align = alClient
          BorderStyle = bsNone
          Color = clInfoBk
          DataSource = V_HawbDataDML.HawbChargeCustomsSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDblClick = CusChargeGRDDblClick
        end
        object Panel2: TPanel
          Left = 2
          Top = 17
          Width = 367
          Height = 18
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object wwDBNavigator2: TwwDBNavigator
            Left = 0
            Top = 0
            Width = 168
            Height = 18
            AutosizeStyle = asSizeNavButtons
            DataSource = V_HawbDataDML.HawbChargeCustomsSRC
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            BackgroundOptions.IndentX = 0
            BackgroundOptions.IndentY = 0
            Align = alLeft
            object wwNavButton11: TwwNavButton
              Left = 0
              Top = 0
              Width = 34
              Height = 18
              Hint = 'Move to prior record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Prior'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsPrior
            end
            object wwNavButton12: TwwNavButton
              Left = 34
              Top = 0
              Width = 34
              Height = 18
              Hint = 'Move to next record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Next'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsNext
            end
            object wwNavButton13: TwwNavButton
              Left = 68
              Top = 0
              Width = 34
              Height = 18
              Hint = 'Insert new record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Insert'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = wwNavButton13Click
              Index = 2
              Style = nbsInsert
            end
            object wwNavButton14: TwwNavButton
              Left = 102
              Top = 0
              Width = 33
              Height = 18
              Hint = 'Delete current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Delete'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 3
              Style = nbsDelete
            end
            object wwNavButton15: TwwNavButton
              Left = 135
              Top = 0
              Width = 33
              Height = 18
              Hint = 'Refresh the contents of the dataset'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Refresh'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 4
              Style = nbsRefresh
            end
          end
        end
        object RzPanel2: TRzPanel
          Left = 336
          Top = 35
          Width = 33
          Height = 68
          Align = alRight
          BorderOuter = fsNone
          TabOrder = 2
          object chCusChargeBTN: TSpeedButton
            Left = 2
            Top = 1
            Width = 21
            Height = 20
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
            OnClick = chCusChargeBTNClick
          end
        end
      end
      object wwDBGrid1: TwwDBGrid
        Left = 908
        Top = 265
        Width = 444
        Height = 168
        Selected.Strings = (
          'ERROR_MESSAGE'#9'60'#9'message'#9'F'
          'ERROR_PROPERTY_NAME'#9'160'#9'Property'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = V_HawbDataDML.FailedLineSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object RzPanel4: TRzPanel
      Left = 0
      Top = 546
      Width = 1360
      Height = 215
      Align = alClient
      TabOrder = 1
      object GridPanelPnl: TRzPanel
        Left = 2
        Top = 2
        Width = 847
        Height = 211
        Align = alLeft
        BorderOuter = fsNone
        Caption = 'Grid Panel'
        TabOrder = 0
        object RzDBStateStatus1: TRzDBStateStatus
          Left = 456
          Top = -24
        end
        object ItemsGRD: TwwDBGrid
          Left = 0
          Top = 27
          Width = 817
          Height = 184
          ControlType.Strings = (
            'FK_COUNTRY_ORIGIN;CustomEdit;ItemCountryFLD;F')
          Selected.Strings = (
            'SERIAL_NUMBER'#9'10'#9'S/N'#9#9
            'FK_TARIFF_CODE'#9'17'#9'Tariff'#9#9
            'DESCRIPTION'#9'20'#9'Desc.'#9#9
            'FK_COUNTRY_ORIGIN'#9'12'#9'Origin'#9#9
            'NET_QUANTITY'#9'10'#9'Units'#9#9
            'WEIGHT_GROSS'#9'10'#9'Gross Weight'
            'WEIGHT_NET'#9'8'#9'Weight'#9'F'#9
            'PRE_DISCOUNT_AMOUNT'#9'11'#9'Invoice Amnt'#9#9)
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alLeft
          Color = clBtnFace
          Ctl3D = False
          DataSource = V_HawbDataDML.HawbItemSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = ItemsGRDCalcCellColors
          OnTitleButtonClick = ItemsGRDTitleButtonClick
          OnDblClick = ItemsGRDDblClick
          ExplicitTop = 29
          object ItemCountryFLD: TwwDBComboBox
            Left = 376
            Top = 91
            Width = 121
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            DataField = 'FK_COUNTRY_ORIGIN'
            DataSource = V_HawbDataDML.HawbItemSRC
            DropDownCount = 8
            ItemHeight = 0
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
          end
        end
        object wwDBComboBox2: TwwDBComboBox
          Left = 328
          Top = -24
          Width = 121
          Height = 22
          ShowButton = True
          Style = csDropDown
          MapList = False
          AllowClearKey = False
          DropDownCount = 8
          ItemHeight = 0
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 847
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label25: TLabel
            Left = 0
            Top = 0
            Width = 31
            Height = 27
            Align = alLeft
            Caption = 'Items'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 15
          end
          object wwDBNavigator3: TwwDBNavigator
            Left = 31
            Top = 0
            Width = 127
            Height = 27
            AutosizeStyle = asSizeNavButtons
            DataSource = V_HawbDataDML.HawbItemSRC
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            BackgroundOptions.IndentX = 0
            BackgroundOptions.IndentY = 0
            Align = alLeft
            object wwNavButton16: TwwNavButton
              Left = 0
              Top = 0
              Width = 32
              Height = 27
              Hint = 'Move to prior record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'HawbNavigatorNVGPrior'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsPrior
            end
            object wwNavButton17: TwwNavButton
              Left = 32
              Top = 0
              Width = 32
              Height = 27
              Hint = 'Move to next record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'HawbNavigatorNVGNext'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsNext
            end
            object wwNavButton20: TwwNavButton
              Left = 64
              Top = 0
              Width = 32
              Height = 27
              Hint = 'Cancel changes made to current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'HawbNavigatorNVGButton'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = wwNavButton20Click
              Index = 2
              Style = nbsDelete
            end
            object wwNavButton21: TwwNavButton
              Left = 96
              Top = 0
              Width = 31
              Height = 27
              Hint = 'Refresh the contents of the dataset'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator1Button'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 3
              Style = nbsRefresh
            end
          end
        end
      end
      object CommentsPNL: TRzPanel
        Left = 969
        Top = 2
        Width = 389
        Height = 211
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 1
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 389
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label11: TLabel
            Left = 0
            Top = 0
            Width = 62
            Height = 27
            Align = alLeft
            Caption = 'Comments'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 15
          end
          object wwDBNavigator1: TwwDBNavigator
            Left = 62
            Top = 0
            Width = 152
            Height = 27
            AutosizeStyle = asSizeNavButtons
            DataSource = V_HawbDataDML.HawbCommentSRC
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            BackgroundOptions.IndentX = 0
            BackgroundOptions.IndentY = 0
            Align = alLeft
            object wwNavButton6: TwwNavButton
              Left = 0
              Top = 0
              Width = 26
              Height = 27
              Hint = 'Move to prior record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'HawbNavigatorNVGPrior'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsPrior
            end
            object wwNavButton7: TwwNavButton
              Left = 26
              Top = 0
              Width = 26
              Height = 27
              Hint = 'Move to next record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'HawbNavigatorNVGNext'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsNext
            end
            object wwNavButton8: TwwNavButton
              Left = 52
              Top = 0
              Width = 25
              Height = 27
              Hint = 'Insert new record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'HawbNavigatorNVGInsert'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 2
              Style = nbsInsert
            end
            object wwNavButton9: TwwNavButton
              Left = 77
              Top = 0
              Width = 25
              Height = 27
              Hint = 'Post changes of current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'HawbNavigatorNVGPost'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 3
              Style = nbsPost
            end
            object wwNavButton10: TwwNavButton
              Left = 102
              Top = 0
              Width = 25
              Height = 27
              Hint = 'Cancel changes made to current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'HawbNavigatorNVGButton'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 4
              Style = nbsCancel
            end
            object wwDBNavigator1Button: TwwNavButton
              Left = 127
              Top = 0
              Width = 25
              Height = 27
              Hint = 'Refresh the contents of the dataset'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator1Button'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 5
              Style = nbsRefresh
            end
          end
        end
        object CommentsGRD: TwwDBGrid
          Left = 0
          Top = 27
          Width = 389
          Height = 184
          Selected.Strings = (
            'USER_ID'#9'5'#9'User Id'#9#9
            'THE_TIMESTAMP'#9'18'#9'time'#9#9
            'THE_COMMENTS'#9'105'#9'comments'#9#9)
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 2
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = V_HawbDataDML.HawbCommentSRC
          Options = [dgEditing, dgAlwaysShowEditor, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 1
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
        end
      end
      object SpPNL: TRzPanel
        Left = 849
        Top = 2
        Width = 120
        Height = 211
        Align = alLeft
        BorderOuter = fsNone
        TabOrder = 2
        object Delete2BTN: TRzBitBtn
          Left = 6
          Top = 33
          Width = 87
          Alignment = taLeftJustify
          Caption = 'Delete'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Visible = False
          OnClick = Delete2BTNClick
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
          Margin = -1
          NumGlyphs = 2
          Spacing = 8
        end
      end
    end
    object TitlePNL: TRzPanel
      Left = 0
      Top = 0
      Width = 1360
      Height = 51
      Align = alTop
      BorderOuter = fsGroove
      Caption = 'House Airway Bill - (Hawb)'
      Color = 14675967
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -23
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object RzPanel1: TRzPanel
        Left = 2
        Top = 2
        Width = 173
        Height = 47
        Align = alLeft
        BorderSides = []
        TabOrder = 0
        Transparent = True
        object llFLD: TRzLabel
          Left = 0
          Top = 0
          Width = 173
          Height = 27
          Align = alTop
          Caption = ' --'
          Transparent = True
          ExplicitWidth = 22
        end
      end
      object Panel3: TPanel
        Left = 1143
        Top = 2
        Width = 215
        Height = 47
        Align = alRight
        Alignment = taRightJustify
        BevelOuter = bvNone
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
        TabOrder = 1
        object RzDBLabel2: TRzDBLabel
          Left = 135
          Top = 6
          Width = 74
          Height = 17
          Alignment = taRightJustify
          Color = 16767897
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          DataField = 'FK_MAWB_REFER_NUMBER'
          DataSource = V_HawbDataDML.HawbSRC
        end
        object RzDBLabel3: TRzDBLabel
          Left = 135
          Top = 26
          Width = 74
          Height = 17
          Color = 16767897
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          DataField = 'MAWB_ID'
          DataSource = V_HawbDataDML.MawbSRC
        end
        object RzDBCheckBox1: TRzDBCheckBox
          Left = 18
          Top = 5
          Width = 54
          Height = 17
          DataField = 'FK_CLEARING_STATE'
          DataSource = V_HawbDataDML.HawbSRC
          ReadOnly = True
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption = 'Ready'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          LightTextStyle = True
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = True
          TransparentColor = clMaroon
        end
        object RzDBCheckBox2: TRzDBCheckBox
          Left = 18
          Top = 22
          Width = 64
          Height = 17
          DataField = 'FK_INVOICE_STATUS'
          DataSource = V_HawbDataDML.HawbSRC
          ReadOnly = True
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption = 'Invoiced'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Transparent = True
          TransparentColor = clMaroon
        end
      end
    end
    object InsertLinePNL: TRzPanel
      Left = 0
      Top = 502
      Width = 1360
      Height = 44
      Align = alTop
      BorderOuter = fsGroove
      Color = 13231089
      TabOrder = 3
      object Label13: TLabel
        Left = 850
        Top = 0
        Width = 32
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Origin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 249
        Top = 0
        Width = 64
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 615
        Top = 0
        Width = 28
        Height = 13
        AutoSize = False
        Caption = 'Unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 541
        Top = 0
        Width = 68
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Quantity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 751
        Top = 0
        Width = 53
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Net'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 438
        Top = 0
        Width = 33
        Height = 13
        AutoSize = False
        Caption = 'Crncy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 10
        Top = 0
        Width = 121
        Height = 13
        AutoSize = False
        Caption = 'Tariff Search'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object FindTariffBTN: TSpeedButton
        Left = 127
        Top = 16
        Width = 21
        Height = 21
        Hint = 'Find Hawb in this Mawb'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
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
        OnClick = FindTariffBTNClick
      end
      object Label1: TLabel
        Left = 477
        Top = 0
        Width = 67
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 691
        Top = 0
        Width = 53
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Gross'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ItemOriginFLD: TwwDBLookupCombo
        Left = 850
        Top = 15
        Width = 57
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'XML_COUNTRY'#9'2'#9'Code'#9'F'
          'NAME'#9'40'#9'Country'#9'F')
        LookupTable = V_HawbDataDML.OriginCountrySQL
        LookupField = 'NUMBER'
        Options = [loColLines, loRowLines, loTitles]
        Style = csDropDownList
        ParentFont = False
        TabOrder = 9
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object TariffDescriptionFLD: TwwDBEdit
        Left = 249
        Top = 15
        Width = 176
        Height = 23
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object SelectTariffFLD: TwwDBEdit
        Left = 10
        Top = 15
        Width = 111
        Height = 23
        CharCase = ecUpperCase
        Color = clMenuBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyDown = SelectTariffFLDKeyDown
      end
      object AmountFLD: TwwDBEdit
        Left = 477
        Top = 15
        Width = 67
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Picture.PictureMask = '*6[#][.][#][#]'
        Picture.AutoFill = False
        TabOrder = 4
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object ItemCurrencyFLD: TwwDBEdit
        Left = 438
        Top = 15
        Width = 33
        Height = 23
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object QtyFLD: TwwDBEdit
        Left = 564
        Top = 15
        Width = 45
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Picture.PictureMask = '#*#'
        TabOrder = 5
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object ItemWeightFLD: TwwDBEdit
        Left = 748
        Top = 15
        Width = 56
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Picture.PictureMask = '*6[#][.][#][#]'
        Picture.AutoFill = False
        TabOrder = 8
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object TariffCodeFDL: TwwDBEdit
        Left = 157
        Top = 15
        Width = 86
        Height = 23
        TabStop = False
        Color = 13231089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object UnitsFLD: TwwDBComboBox
        Left = 618
        Top = 15
        Width = 65
        Height = 22
        ShowButton = True
        Style = csOwnerDrawFixed
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        CharCase = ecUpperCase
        DropDownCount = 8
        ItemHeight = 0
        Sorted = False
        TabOrder = 6
        UnboundDataType = wwDefault
      end
      object Add2BTN: TRzBitBtn
        Left = 938
        Top = 13
        Alignment = taLeftJustify
        Caption = 'Add'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 10
        OnClick = Add2BTNClick
        OnKeyDown = Add2BTNKeyDown
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
        Margin = -1
        NumGlyphs = 2
        Spacing = 6
      end
      object RzBitBtn1: TRzBitBtn
        Left = 1041
        Top = 13
        Alignment = taLeftJustify
        Caption = 'Clear'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 11
        TabStop = False
        OnClick = RzBitBtn1Click
        Margin = -1
        NumGlyphs = 2
        Spacing = 6
      end
      object ItemGrossWeightFLD: TwwDBEdit
        Left = 689
        Top = 15
        Width = 56
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Picture.PictureMask = '*6[#][.][#][#]'
        Picture.AutoFill = False
        TabOrder = 7
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object ButtonsPNL: TRzPanel
    Left = 0
    Top = 761
    Width = 1360
    Height = 49
    Align = alBottom
    TabOrder = 1
    object AcceptBTN: TBitBtn
      Left = 16
      Top = 6
      Width = 84
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
      TabStop = False
      OnClick = AcceptBTNClick
    end
    object CancelBTN: TBitBtn
      Left = 106
      Top = 6
      Width = 84
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
    object RzBitBtn3: TRzBitBtn
      Left = 551
      Top = 6
      Width = 84
      Height = 37
      Alignment = taLeftJustify
      Caption = 'SMS'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      LightTextStyle = True
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnClick = RzBitBtn3Click
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
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB39E81B29C7EAF997BAF9879AF997BAF997BAF997BAF997BAF997B
        AF997BAF997BAF997BAF997BAF997BAF997BAF997BAF997BAF997BAF997BAF98
        79AF997BAF997BFFFFFFFFFFFFB19B7DFFFFFFFBFAF9F7F4F1F7F4F1F3F0EBF1
        EDE7EDE8E1EDE8E1EDE8E1EFEAE3EFEAE3EEE9E2EEE9E2EFEAE3F1EEE9F3F0EB
        F5F3EFF5F3EFF7F5F3FFFFFFAD9777FFFFFFFFFFFFAF9879FFFFFFFFFFFFE0D8
        CCE5DDD3E8E1D8E7E0D7E7E0D7E8E1D8E8E1D8E8E1D8E7E0D7E7E0D7E7E0D7E8
        E1D8E8E1D8E7E0D7E5DDD3E2DACEFFFFFFFFFFFFAA9270FFFFFFFFFFFFAE9778
        FFFFFFF3F0EBFFFFFFE2DACEE6DED5E7E0D7E6DFD6E6DFD6E7E0D7E8E2D9E9E3
        DBE7E0D7E7E0D7E6DFD6E6DFD6E6DED5E2DBCFFFFFFFF5F3EFFFFFFFA8906EFF
        FFFFFFFFFFAE9778FFFFFFE6DED5F4F1ECFFFFFFE8E1D8E9E3DBEAE4DCEEE9E2
        F1EEE9EDE8E1EEE9E2F0ECE6EDE8E1EAE4DCE9E3DBE6DED5FFFFFFF5F3EFE8E1
        D8FFFFFFA8906EFFFFFFFFFFFFAE9778FFFFFFEFEBE5E8E1D8F4F1ECFFFFFFEB
        E5DDF4F1ECF4F2EECFC2AFB9A68BBCAA90D0C3B0F4F1ECF4F1ECECE6DFFFFFFF
        F7F5F3E9E3DBEFEAE3FFFFFFA8906EFFFFFFFFFFFFAE9778FFFFFFF4F2EEF1EE
        E9ECE7E0F7F5F3FFFFFFEDE8E1BCA98FD3C6B5FFFFFFFFFFFFD5C9B9BFAD93FF
        FFFFFFFFFFFAF8F6ECE7E0F1EDE7F2EFEAFFFFFFA8906EFFFFFFFFFFFFAE9778
        FFFFFFF8F6F4F4F2EEFAF8F6FDFCFBDFD7CBC7B8A3E7E0D7FFFFFFE2DBCFE2DA
        CEFFFFFFE8E1D8CCBEAAE2DACEFAF9F7FAF8F6F5F3EFF6F3F0FFFFFFA8906EFF
        FFFFFFFFFFAE9778FFFFFFFEFDFDFEFDFDF8F6F4CDBFABC6B6A0FFFFFFFFFFFF
        ECE6DFF2EFEAF0ECE6ECE7E0FFFFFFFFFFFFCDBFABD0C3B0F7F5F3FFFFFFFBFA
        F9FFFFFFA8906EFFFFFFFFFFFFAE9778FFFFFFFFFFFFEFEBE5C9BAA5FFFFFFFF
        FFFFFEFDFDF8F6F4FBFAF9FAF9F7FAF9F7FAF9F7F8F6F4FEFDFDFFFFFFDFD7CB
        CBBDA9F1EDE7FFFFFFFFFFFFA8906EFFFFFFFFFFFFAF9879FFFFFFF5F3EFDBD1
        C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF5F3EFDDD4C7F4F1ECFFFFFFA9916FFFFFFFFFFFFFB19B7D
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD9777FF
        FFFFFFFFFFB39E81B29C7EAF997BAF9879AF9879AF9879AE9778AE9778AE9778
        AE9778AE9778AE9778AE9778AE9778AE9778AE9778AF9879AF9879AF9879AF98
        79AF997BAF997BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Margin = -1
    end
    object ViewDutyBTN: TRzBitBtn
      Left = 401
      Top = 6
      Width = 84
      Height = 37
      Alignment = taLeftJustify
      Caption = 'View Duties'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      LightTextStyle = True
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 3
      OnClick = ViewDutyBTNClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF926544926544926644926644926643926544926644
        9266449265439266439266439265449266449265439266449266439266439266
        43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF946744E3CAACE4CAACE3CBACE3
        CBACE3CBACE4CAADE3CAADE4CAADE4CBACE4CAADE4CAACE4CBACE3CBACE3CBAC
        E4CAACE3CAAC936644FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF956845E5CC
        AFE4CCAFE4CCAFE5CCAFE5CCAFE4CCAEE4CCAFE4CCAFE4CCAFE4CCAFE4CCAFE4
        CDAFE4CDAFE4CCAFE4CCAFE4CDAF956745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF976945E5CFB2E5CEB2A9764FA8744DB1825DDBBEA1B98D6AA8744DA874
        4DA8744DA8744DA8744DA8744DA8744DE5CEB2E5CEB2976945FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF996A46E6D1B6E6D1B5E6D1B6E6D0B6E6D0B6E6D1B6
        E6D0B6E6D0B6E6D0B5E6D0B6E6D0B6E6D0B6E6D1B6E6D1B6E6D0B5E6D1B5996A
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A6C47E7D3BAE7D3BAE7D3B9E7
        D3BAE7D3BAE7D3BAE7D3B9E7D3BAE7D4BAE7D3B9E7D3BAE7D3BAE7D3B9E7D3B9
        E7D3BAE7D3BA9B6C46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D6D48E8D6
        BEE8D6BEA9764FA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8
        744DA8744DA8744DE9D6BEE8D6BE9C6C48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9F6E49E9D9C3E9D9C2E9D9C3E9D9C3E9D9C3E9D9C3EAD9C3E9D8C3E9D8
        C2E9D8C3E9D9C2E9D8C2EAD8C3EAD9C3E9D9C3E9D9C39F6E48FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA1704AEBDBC8EBDCC9EADBC8EADCC8EADAC8E8DAC5
        E7D8C5E7D8C4E7D9C4E7D9C5E8D9C5E9DAC7EADCC9EADCC9EBDCC8EBDCC9A16F
        49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3724AEBDECDEADDCCA8754EA5
        724CA3714BA16F4AA16F4AA06E49A16F4AA2704AA4714BDBC5B0BD9878A8744D
        ECDECDEBDECDA4714AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6734BE9DD
        CFE6DBCBE2D7C8E0D5C5DCD1C1D9CFBED7CCBCD5CCBCD6CCBCD9CEBFDED3C3E3
        D8C9E6DCCCE9DECFEBE0D0EDE2D1A6724CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA8744CE4DBCDDFD6C9D9D0C3D4CBBECFC5B9CBC2B5C4BDB3B5B1AFB7B4
        B0C9C1B6D3CABDDAD1C3E1D8CAE6DECEE9E0D2ECE2D4A8744DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA17049DBD4C8D5CEC1906544885F417E5D4A795B4A
        705A50265F95265F95755C50885F419164439769459E6D48E8E1D4EBE3D7A976
        4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E6D47CDC9BEB6B7B5A9AAAB98
        9DA32761962D62992D629987B4E487B4E4286196999EA6B2B2B1C9C3BBD9D3C9
        E5DED4E9E3D9AC764DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF956947A8AC
        B129639830659B30659B88B5E488B5E430659B8BB5E28BB5E235669D31659B29
        6398A6AAB0CECAC2E0DBD2E8E3D9AC774DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8A684F2B669A8AB6E58AB6E533689D8DB7E38DB7E331679C7BA2D27BA2
        D233679D8AB6E58AB6E52B669A83624CDBD9D0E4E1D8AC764DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF876750336C9F91B9E591B9E5336B9F7FA4D47FA4D4
        336B9F9EC3EB9EC3EB336C9F91B9E591B9E5336C9FB2B8B9D9D7CFE3E0D9AB76
        4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF866650366EA183A8D683A8D636
        6EA1A5C9EEA5C9EE366FA1B1D3F5B1D3F5366EA183A8D683A8D6366EA1B1B7B9
        D7D6CFE2E0D9AD774EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8867513873
        A4ACCFF0ACCFF03873A4B8D8F8B8D8F83873A4BBDAF9BBDAF93873A4ACCFF0AC
        CFF03873A48867519F6E48A7734BAE784EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE7EEF53B76A6C1DFFBC1DFFB3B76A6C3E0FCC3E0FC3B76A6C4E1FCC4E1
        FC3B76A6C1DFFBC1DFFB3B76A67BA2D291B9E591B9E55483B5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFEBF0F73574A3CBE5FFCBE5FF3775A4CBE5FFCBE5FF
        3775A4CBE5FFCBE5FF3775A4CBE5FFCBE5FF3574A35483B55483B55483B5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFEDDE7F13676A43676A4CC
        DBEA3676A43676A4CCDBEA3676A43676A4CCDBEA3676A43676A4DDE7F1FCFDFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD
        FEEBF1F7EBF1F7F9FBFDEBF1F7EBF1F7F9FBFDEBF1F7EBF1F7F9FBFDEBF1F7EB
        F1F7FCFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Margin = -1
    end
    object Panel11: TRzPanel
      Left = 1186
      Top = 2
      Width = 172
      Height = 45
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 4
      Transparent = True
      object BitBtn1: TBitBtn
        Left = 83
        Top = 2
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
    object ClearBTN: TRzBitBtn
      Left = 751
      Top = 6
      Width = 84
      Height = 37
      Alignment = taLeftJustify
      Caption = 'Make Ready'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      LightTextStyle = True
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 5
      OnClick = ClearBTNClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF5D945D2F782FFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF588D580CAC29307530FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF588D580BA42411B633
        82AB82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5890580B
        A12517D2480EAB2990B590FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF5891580BA62716CE4716CD47049119CFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5893580BA82B16CE4A15CA4417CD4700810CB3CDB3D0E0D07BA6
        7B83AC833074302F782FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF5895580BAA2E16D04E15CC4915C94616CE47028411
        00810C0491190CAA2812B83552CB675D935DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5899580BAD3116D24F15CE4915CB4915
        CB4815CA4716CD4716CE4815CC451BD24A59C56B588B58FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF589C580BAE3417D35514CF
        5114CD4E15CD4815CB4915CB4815C94614C8451AD14C5AC86B588E58FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A0580EB13B
        15D75A14D15415CE5114CE5014CD4E15CD4B15CD4914CA471AD14F5ECA6F5890
        58FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58
        A35A0EB43F15D85F14D35614D25514D05315D05114CE5014CD4E14CD4A1AD452
        60CE76589158FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF58A85D0EBA4315DD6314D75B14D35A14D25614D25514D05315D05114
        CD4F1AD45664CF79589458FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF5AAD600EBE4813E06A14DB6114D86114D65A14D35A14D3
        5814D25512D2551AD75967D380589858FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF5BB0650EC34D13E46F12DE6912DB6514DA61
        14D86114D65A14D65A12D2571ADA5C68D785589B58FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CB5660EC65710E47512E16E12
        DF6A12DD6812DB6514DA6314D86012D85D1ADE626BD88A58A058FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EB96B0DCE5B11EB
        7C10E57310E27312E06D12DF6A12DD6812DD6610DB621ADE676FDC8D58A358FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FC16E
        0DD3640EF2830BF57F0EF57E0FEE770FE37310E06C12DF6C10DC6718E26D70E1
        9558A75AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF69C97B0AD4660CF38811E37E48363C6450571C5F3C0FEE7A10E2720EDF6C
        16E57474E39A58AC5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF33CE5F45FFB403F385369F6BFFFFFFFFFFFF7461690E
        F57F0FE37416E97A6FFBA958B062FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67CF7E70F9A93FFFAE21C377FFFF
        FFFFFFFF46353B0AF78013ED7E6FFBA958B464FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CCB73
        70FBA93CFFAF21C377369F6B10E5800FF2886FFBA95ABB69FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF5CCC7370FBA93FFFAE00F3830EF48C6FFBA95BC06BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CCC736FFBA95FFFC66FFBA95C
        C571FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67D1
        7D32D05F68CF7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Margin = -1
    end
    object UnclearBTN: TRzBitBtn
      Left = 858
      Top = 6
      Width = 84
      Height = 37
      Alignment = taLeftJustify
      Caption = 'Undo'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      LightTextStyle = True
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 6
      OnClick = UnclearBTNClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF5D99E02F7CD8FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5893DD008EFB307BD7FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5896DE008DF90096FF
        82B0E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5899DF00
        90F900A9FF008FFC90B9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF589BE10097F900AEFF00A9FF0085F0CFE2F6FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF589EE1009CFB00B5FF00ADFF00ADFF007EE7B3D1F1D0E3F77BAD
        E683B1E7307BD62F7CD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF58A1E400A4FA00BCFF00B3FF00B1FF00AFFF0081E9
        007EE70085F0008FFB0097FF27AAFE5D98E0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A4E500A7FA00C2FF00BAFF00B8FF00
        B3FF00B1FF00AFFF00ACFF00A7FF00A8FF49BBFB5895DEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A6E700ACFB00C8FF00C0
        FF00BEFF00BAFF00B7FF00B3FF00B0FF00ACFF00ACFF4CC0FC5899DFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A9E800B3FB
        00CEFF00C8FF00C4FF00C0FF00BCFF00BAFF00B7FF00B1FF00B3FF4EC4FC589B
        E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D
        ABEA00BAF900D6FF00CFFF00C9FF00C7FF00C3FF00BFFF00BCFF00B9FF00BAFF
        4EC6FD589EE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF5FAFEA00BDFA00DCFF00D3FF00D0FF00CEFF00C9FF00C6FF00C3FF00
        BFFF00C1FF51CAFC58A1E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF63B2ED00C5FA00E2FF00DAFF00D6FF00D2FF00D0FF00CB
        FF00C9FF00C6FF00C7FF57CCFE58A4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF65B4EE00CAF900E6FF00E1FF00DBFF00D9FF
        00D6FF00D2FF00D0FF00CAFF00CDFF59D3FE58A6E7FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF68B7EF00D2F900EEFF00E8FF00
        E2FF00DFFF00DBFF00D9FF00D5FF00D2FF00D4FF00E6FF58AAE8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6ABAF000D5F900F6
        FF00EEFF00E9FF00E6FF00E1FF00DFFF00DAFF00D7FF00DAFF00E6FF5AABE9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DBEF2
        00DBFC00FFFF00FFFF00FEFF00F4FF00EAFF00E6FF00E1FF00DEFF00DFFF00F4
        FF5CAEEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF77C6F600DDFB00FFFF00F1F6503F3E4629261C707800F4FF00E8FF00E5FF
        00E6FF00F4FF60B2EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF37BFF617FFFF00FDFF28A5AAFFFFFFFFFFFF45282600
        FDFF00EBFF00EDFF00FEFF62B5EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77CAF657E6FF15FFFF0ACCD4FFFF
        FFFFFFFF52424000FEFF00F4FF14FFFF65B7EEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FC5F5
        56E6FF12FFFF0ACCD428A5AA00EDF600FEFF14FFFF68BAF0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF6FC5F556E6FF14FFFF00FDFF00FFFF14FFFF6ABFF2FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FC5F556E6FF2FFFFF14FFFF6C
        C2F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77C9
        F637C2F878CAF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Margin = -1
    end
    object SendCustomsBTN: TRzBitBtn
      Left = 1065
      Top = 6
      Width = 115
      Height = 37
      Alignment = taLeftJustify
      Caption = 'Send To Customs'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      LightTextStyle = True
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 7
      OnClick = SendCustomsBTNClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00993300009933000099330000993300009933
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00999999009999990099999900999999009999
        9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099330000CC660000CC660000CC6600009933
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099999900CCCCCC00CCCCCC00CCCCCC009999
        9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099330000CC660000CC660000CC6600009933
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099999900CCCCCC00CCCCCC00CCCCCC009999
        9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099330000CC660000CC660000CC6600009933
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099999900CCCCCC00CCCCCC00CCCCCC009999
        9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099330000CC660000CC660000CC6600009933
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099999900CCCCCC00CCCCCC00CCCCCC009999
        9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099330000CC660000CC660000CC6600009933
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099999900CCCCCC00CCCCCC00CCCCCC009999
        9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0099330000993300009933000099330000CC660000CC660000CC6600009933
        0000993300009933000099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC009999
        9900999999009999990099999900FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0099330000CC660000CC660000CC660000CC660000CC660000CC660000CC66
        0000CC660000CC66000099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00CCCCCC0099999900FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0099330000CC660000CC660000CC660000CC660000CC660000CC660000CC66
        0000CC660000CC66000099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00CCCCCC0099999900FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0099330000CC660000CC660000CC660000CC660000CC660000CC66
        0000CC66000099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC0099999900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0099330000CC660000CC660000CC660000CC660000CC66
        000099330000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC0099999900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099330000CC660000CC660000CC6600009933
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0099999900CCCCCC00CCCCCC00CCCCCC009999
        9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0099330000CC66000099330000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0099999900CCCCCC0099999900FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0099330000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0099999900FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Margin = -1
      NumGlyphs = 2
    end
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 464
    Top = 65529
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 393
    Top = 65533
  end
  object DbImages: TImageList
    Left = 250
    Top = 5
    Bitmap = {
      494C010110008800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      00009933000099330000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000CC660000CC66
      00009933000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC009999990099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC6600009933
      0000000000000000000099330000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900000000000000000099999900CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000993300000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099999900999999000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000000000000B2B2B20099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC009999990000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC660000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000B2B2B2009999990099999900CCCCCC009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999009999990099999900CCCCCC00CCCCCC0099999900B2B2
      B20099999900CCCCCC0099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      0000000000009933000099330000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00CCCCCC009999990099999900000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200999999009999990099999900B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900B2B2B2000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      00009933000099330000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      00009933000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC009999990099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC6600009933
      0000000000000000000099330000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900000000000000000099999900CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000000000000B2B2B20099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000993300000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099999900999999000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      99000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC660000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000B2B2B2009999990099999900CCCCCC009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999009999990099999900CCCCCC00CCCCCC0099999900B2B2
      B20099999900CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      0000000000009933000099330000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00CCCCCC009999990099999900000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200999999009999990099999900B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F3FFF3FFF0FFF0FFE1FFE1FFE0FFE0FFC0FFC0FFC0FFC0FF807F807F83018301
      803F803F870187018C1F8C1F8F818F819E0F9E0F87818781FF07FF0782018201
      FF83FF83C001C001FFC3FFC3E039E039FFE3FFE3F07FF07FFFF3FFF3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC7FFC7FFE3FFE3FF87FF87FFE1FFE1FF07FF07FFE0FFE0F
      E001E00180078007C001C001800380038001800180018001C001C00180038003
      E001E00180078007F07FF07FFE0FFE0FF87FF87FFE1FFE1FFC7FFC7FFE3FFE3F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F0FFF0FFF3FFF3FFE0FFE0FFE1FFE1FFC0FFC0FFC0FFC0FF83018301807F807F
      87018701803F803F8F818F818C1F8C1F878187819E0F9E0F82018201FF07FF07
      C001C001FF83FF83E039E039FFC3FFC3F07FF07FFFE3FFE3FFFFFFFFFFF3FFF3
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC7FFC7FFE3FFE3FF87FF87FFE1FFE1FF07FF07FFE0FFE0F
      E001E00180078007C001C001800380038001800180018001C001C00180038003
      E001E00180078007F07FF07FFE0FFE0FF87FF87FFE1FFE1FFC7FFC7FFE3FFE3F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object MainMenu1: TMainMenu
    Left = 304
    object PrintSelection1: TMenuItem
      Caption = 'Print'
      object DeliverySelected1: TMenuItem
        Caption = 'EDE Form'
        OnClick = DeliverySelected1Click
      end
      object EDESelected1: TMenuItem
        Caption = 'EDE Delivery'
        OnClick = EDESelected1Click
      end
      object WorksheetSelected1: TMenuItem
        Caption = 'EDE Worksheet'
        OnClick = WorksheetSelected1Click
      end
      object Invoice1: TMenuItem
        Caption = 'Invoice'
        OnClick = Invoice1Click
      end
    end
    object XML1: TMenuItem
      Caption = 'XML'
      object CreateWarehouseXML1: TMenuItem
        Caption = 'Create Warehouse XML'
        OnClick = CreateWarehouseXML1Click
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = V_HawbDataDML.HawbSQL
    ScopeMappings = <>
    Left = 120
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkPropertyToFieldFK_CLEARING_STATE: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'FK_CLEARING_STATE'
      Component = ClearLbl
      ComponentProperty = 'StyleName'
      OnAssignedValue = LinkPropertyToFieldFK_CLEARING_STATEAssignedValue
    end
  end
end
