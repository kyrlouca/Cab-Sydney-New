object M_BaseTariffFRM: TM_BaseTariffFRM
  Left = 384
  Top = 53
  Caption = 'Country'
  ClientHeight = 478
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 637
    Height = 53
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 530
    object TitleLbl: TLabel
      Left = 1
      Top = 1
      Width = 635
      Height = 51
      Align = alClient
      Alignment = taCenter
      Caption = 'Default Tariff Lines'
      ExplicitWidth = 249
      ExplicitHeight = 32
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 435
    Width = 637
    Height = 43
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 448
    ExplicitWidth = 530
    object BitBtn3: TBitBtn
      Left = 7
      Top = 4
      Width = 89
      Height = 34
      Caption = 'Accept'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      OnClick = BitBtn2Click
    end
    object CanelBTN: TBitBtn
      Left = 111
      Top = 4
      Width = 89
      Height = 34
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      OnClick = CanelBTNClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 637
    Height = 39
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 530
    object Nav1: TwwDBNavigator
      Left = 1
      Top = 7
      Width = 200
      Height = 26
      AutosizeStyle = asSizeNavButtons
      DataSource = TableSRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      object Nav1Prior: TwwNavButton
        Left = 0
        Top = 0
        Width = 34
        Height = 26
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
      object Nav1Next: TwwNavButton
        Left = 34
        Top = 0
        Width = 34
        Height = 26
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
      object Nav1Delete: TwwNavButton
        Left = 68
        Top = 0
        Width = 33
        Height = 26
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Delete'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsDelete
      end
      object Nav1Post: TwwNavButton
        Left = 101
        Top = 0
        Width = 33
        Height = 26
        Hint = 'Post changes of current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Post'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsPost
      end
      object Nav1Cancel: TwwNavButton
        Left = 134
        Top = 0
        Width = 33
        Height = 26
        Hint = 'Cancel changes made to current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Cancel'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsCancel
      end
      object Nav1Refresh: TwwNavButton
        Left = 167
        Top = 0
        Width = 33
        Height = 26
        Hint = 'Refresh the contents of the dataset'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Refresh'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsRefresh
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 92
    Width = 637
    Height = 343
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 530
    ExplicitHeight = 356
    object GroupBox1: TGroupBox
      Left = 17
      Top = 6
      Width = 488
      Height = 524
      Caption = 'Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      object Label2: TLabel
        Left = 71
        Top = 87
        Width = 60
        Height = 14
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 102
        Top = 18
        Width = 28
        Height = 14
        Caption = 'Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 67
        Top = 227
        Width = 64
        Height = 14
        Caption = 'VAT applies'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 44
        Top = 255
        Width = 87
        Height = 14
        Caption = 'Can be Releived'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 89
        Top = 117
        Width = 42
        Height = 14
        Caption = 'Sort No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 38
        Top = 158
        Width = 93
        Height = 14
        Caption = 'Charging Method'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 73
        Top = 59
        Width = 58
        Height = 14
        Caption = 'Duty Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 212
        Top = 255
        Width = 228
        Height = 14
        Caption = 'apply relieve if Goverment, Semi-Gov,ect)'
      end
      object Label1: TLabel
        Left = 74
        Top = 185
        Width = 57
        Height = 14
        Caption = 'Tariff Rate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DescFLD: TwwDBEdit
        Left = 137
        Top = 84
        Width = 209
        Height = 21
        BorderStyle = bsNone
        DataField = 'DESCRIPTION'
        DataSource = TableSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameSingle
        Frame.NonFocusStyle = efsFrameSunken
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object StationIdFLD: TwwDBEdit
        Left = 136
        Top = 15
        Width = 52
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CODE'
        DataSource = TableSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameSingle
        Frame.NonFocusStyle = efsFrameSunken
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object VatAppliesFLD: TwwDBComboBox
        Left = 137
        Top = 224
        Width = 57
        Height = 22
        ShowButton = True
        Style = csOwnerDrawFixed
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        CharCase = ecUpperCase
        DataField = 'IS_VAT_APPLIES'
        DataSource = TableSRC
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Y'#9'Y'
          'N')
        Picture.PictureMask = '{Y,N}'
        Sorted = False
        TabOrder = 5
        UnboundDataType = wwDefault
      end
      object RelFLD: TwwDBComboBox
        Left = 137
        Top = 252
        Width = 57
        Height = 22
        ShowButton = True
        Style = csOwnerDrawFixed
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        CharCase = ecUpperCase
        DataField = 'CAN_BE_RELIEVED'
        DataSource = TableSRC
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Y'#9'Y'
          'N')
        ItemIndex = 1
        Picture.PictureMask = '{Y,N}'
        Sorted = False
        TabOrder = 6
        UnboundDataType = wwDefault
      end
      object SortFLD: TwwDBEdit
        Left = 137
        Top = 114
        Width = 52
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ORDER_NUMBER'
        DataSource = TableSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameSingle
        Frame.NonFocusStyle = efsFrameSunken
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object ChargingFLD: TwwDBComboBox
        Left = 137
        Top = 155
        Width = 144
        Height = 22
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        DataField = 'CHARGING_METHOD'
        DataSource = TableSRC
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          '')
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
      object RateFLD: TwwDBEdit
        Left = 136
        Top = 182
        Width = 52
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'TARIFF_RATE'
        DataSource = TableSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameSingle
        Frame.NonFocusStyle = efsFrameSunken
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object DutyTypeFLD: TwwDBComboBox
        Left = 137
        Top = 56
        Width = 144
        Height = 22
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        DataField = 'FK_DUTY_TYPE'
        DataSource = TableSRC
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          '')
        Sorted = False
        TabOrder = 7
        UnboundDataType = wwDefault
      end
    end
    object HelpFDL: TwwDBRichEdit
      Left = 384
      Top = -14
      Width = 240
      Height = 140
      AutoURLDetect = False
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GutterWidth = 3
      HideSelection = False
      ParentFont = False
      PrintJobName = 'TariffsProject - RAD Studio 10.2 - LN_ListDutyEntries2 [Built]'
      TabOrder = 1
      Visible = False
      EditorOptions = [reoShowLoad, reoShowSaveExit, reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowZoomCombo]
      EditorCaption = 'Edit Rich Text'
      EditorPosition.Left = 0
      EditorPosition.Top = 0
      EditorPosition.Width = 0
      EditorPosition.Height = 0
      MeasurementUnits = muInches
      PrintMargins.Top = 1.000000000000000000
      PrintMargins.Bottom = 1.000000000000000000
      PrintMargins.Left = 1.000000000000000000
      PrintMargins.Right = 1.000000000000000000
      PrintHeader.VertMargin = 0.500000000000000000
      PrintHeader.Font.Charset = DEFAULT_CHARSET
      PrintHeader.Font.Color = clWindowText
      PrintHeader.Font.Height = -11
      PrintHeader.Font.Name = 'Tahoma'
      PrintHeader.Font.Style = []
      PrintFooter.VertMargin = 0.500000000000000000
      PrintFooter.Font.Charset = DEFAULT_CHARSET
      PrintFooter.Font.Color = clWindowText
      PrintFooter.Font.Height = -11
      PrintFooter.Font.Name = 'Tahoma'
      PrintFooter.Font.Style = []
      DoubleBuffered = False
      ParentDoubleBuffered = False
      RichEditVersion = 2
      Data = {
        370100007B5C727466315C616E73695C616E7369637067313235335C64656666
        305C6465666C616E67313033327B5C666F6E7474626C7B5C66305C6673776973
        735C66636861727365743020417269616C3B7D7B5C66315C666E696C5C666368
        6172736574313631204D532053616E732053657269663B7D7D0D0A5C76696577
        6B696E64345C7563315C706172645C6C616E67313033335C625C66305C667332
        382044656661756C7420546172696666204C696E65735C62305C667331365C70
        61720D0A4372656174652074686520746172696666206C696E65732074686174
        2077696C6C2062652063726561746564206175746F6D61746963616C6C792077
        68656E207468652075736572206973206372656174696E672061206E65772054
        61726966665C6C616E67313033325C66315C7061720D0A7D0D0A00}
    end
  end
  object TableSRC: TDataSource
    DataSet = TableSQL
    OnStateChange = TableSRCStateChange
    Left = 448
    Top = 9
  end
  object TableSQL: TIBCQuery
    UpdatingTable = 'BASE_TARIFF'
    KeyFields = 'serial_number'
    KeyGenerator = 'GEN_BASE_TARIFF'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO BASE_TARIFF'
      
        '  (SERIAL_NUMBER, FK_DUTY_TYPE, CODE, DESCRIPTION, ACCOUNT_CATEG' +
        'ORY, REGIONAL_CODE, TARIFF_USAGE, CHARGING_METHOD, IS_BY_DEFAULT' +
        ', IS_VAT_APPLIES, CAN_BE_RELIEVED, ORDER_NUMBER, IS_ACTIVE, TARI' +
        'FF_RATE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_DUTY_TYPE, :CODE, :DESCRIPTION, :ACCOUNT_' +
        'CATEGORY, :REGIONAL_CODE, :TARIFF_USAGE, :CHARGING_METHOD, :IS_B' +
        'Y_DEFAULT, :IS_VAT_APPLIES, :CAN_BE_RELIEVED, :ORDER_NUMBER, :IS' +
        '_ACTIVE, :TARIFF_RATE)')
    SQLDelete.Strings = (
      'DELETE FROM BASE_TARIFF'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE BASE_TARIFF'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_DUTY_TYPE = :FK_DUTY_TYPE, ' +
        'CODE = :CODE, DESCRIPTION = :DESCRIPTION, ACCOUNT_CATEGORY = :AC' +
        'COUNT_CATEGORY, REGIONAL_CODE = :REGIONAL_CODE, TARIFF_USAGE = :' +
        'TARIFF_USAGE, CHARGING_METHOD = :CHARGING_METHOD, IS_BY_DEFAULT ' +
        '= :IS_BY_DEFAULT, IS_VAT_APPLIES = :IS_VAT_APPLIES, CAN_BE_RELIE' +
        'VED = :CAN_BE_RELIEVED, ORDER_NUMBER = :ORDER_NUMBER, IS_ACTIVE ' +
        '= :IS_ACTIVE, TARIFF_RATE = :TARIFF_RATE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_DUTY_TYPE, CODE, DESCRIPTION, ACCOUNT_C' +
        'ATEGORY, REGIONAL_CODE, TARIFF_USAGE, CHARGING_METHOD, IS_BY_DEF' +
        'AULT, IS_VAT_APPLIES, CAN_BE_RELIEVED, ORDER_NUMBER, IS_ACTIVE, ' +
        'TARIFF_RATE FROM BASE_TARIFF'
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
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'BASE_TARIFF'
      'Order by ORDER_NUmber')
    AfterInsert = TableSQLAfterInsert
    AfterPost = TableSQLAfterPost
    Left = 329
    Top = 37
    object TableSQLCODE: TStringField
      DisplayWidth = 6
      FieldName = 'CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object TableSQLORDER_NUMBER: TFloatField
      DisplayLabel = 'Order No'
      DisplayWidth = 7
      FieldName = 'ORDER_NUMBER'
    end
    object TableSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 10
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 15
    end
    object TableSQLCAN_BE_RELIEVED: TStringField
      DisplayLabel = 'Can Releive'
      DisplayWidth = 9
      FieldName = 'CAN_BE_RELIEVED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLREGIONAL_CODE: TStringField
      DisplayLabel = 'Regional'
      DisplayWidth = 6
      FieldName = 'REGIONAL_CODE'
      FixedChar = True
      Size = 2
    end
    object TableSQLACCOUNT_CATEGORY: TStringField
      DisplayLabel = 'Account'
      DisplayWidth = 6
      FieldName = 'ACCOUNT_CATEGORY'
      Required = True
      FixedChar = True
      Size = 2
    end
    object TableSQLIS_ACTIVE: TStringField
      DisplayLabel = 'Active'
      DisplayWidth = 5
      FieldName = 'IS_ACTIVE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Visible = False
    end
    object TableSQLFK_DUTY_TYPE: TStringField
      FieldName = 'FK_DUTY_TYPE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object TableSQLIS_VAT_APPLIES: TStringField
      FieldName = 'IS_VAT_APPLIES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLCHARGING_METHOD: TStringField
      FieldName = 'CHARGING_METHOD'
      FixedChar = True
      Size = 3
    end
    object TableSQLIS_BY_DEFAULT: TStringField
      FieldName = 'IS_BY_DEFAULT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLTARIFF_USAGE: TStringField
      FieldName = 'TARIFF_USAGE'
      FixedChar = True
      Size = 3
    end
    object TableSQLTARIFF_RATE: TFloatField
      FieldName = 'TARIFF_RATE'
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 609
    Top = 165
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 592
    Top = 297
  end
  object MakeSQL: TIBCQuery
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO BASE_TARIFF'
      
        '  (SERIAL_NUMBER, CODE, DESCRIPTION, ACCOUNT_CATEGORY, REGIONAL_' +
        'CODE, IS_CUSTOMS, IS_BASIC, IS_VAT_APPLY, CAN_BE_RELIEVED, IS_TH' +
        'E_VAT, IS_PERCENTAGE, ORDER_NUMBER)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :CODE, :DESCRIPTION, :ACCOUNT_CATEGORY, :REGI' +
        'ONAL_CODE, :IS_CUSTOMS, :IS_BASIC, :IS_VAT_APPLY, :CAN_BE_RELIEV' +
        'ED, :IS_THE_VAT, :IS_PERCENTAGE, :ORDER_NUMBER)')
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
        'ED, IS_THE_VAT = :IS_THE_VAT, IS_PERCENTAGE = :IS_PERCENTAGE, OR' +
        'DER_NUMBER = :ORDER_NUMBER'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, CODE, DESCRIPTION, ACCOUNT_CATEGORY, REGIO' +
        'NAL_CODE, IS_CUSTOMS, IS_BASIC, IS_VAT_APPLY, CAN_BE_RELIEVED, I' +
        'S_THE_VAT, IS_PERCENTAGE, ORDER_NUMBER FROM BASE_TARIFF'
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
    Left = 617
    Top = 29
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 40
    object Help1: TMenuItem
      Caption = 'Help'
      OnClick = Help1Click
    end
  end
end
