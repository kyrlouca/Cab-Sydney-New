object M_ParametersFRM: TM_ParametersFRM
  Left = 240
  Top = 197
  Caption = 'M_ParametersFRM'
  ClientHeight = 851
  ClientWidth = 1010
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1010
    Height = 65
    Align = alTop
    Caption = 'System Parameters'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -33
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel4: TPanel
    Left = 0
    Top = 798
    Width = 1010
    Height = 53
    Align = alBottom
    TabOrder = 1
    object RzPanel1: TRzPanel
      Left = 909
      Top = 1
      Width = 100
      Height = 51
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 0
      object CloseBtn: TRzBitBtn
        Left = 14
        Top = 5
        Width = 73
        Height = 37
        Caption = 'Close'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = CloseBtnClick
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
        Margin = -1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1010
    Height = 48
    Align = alTop
    TabOrder = 2
    object wwDBNavigator1: TwwDBNavigator
      Left = 1
      Top = 9
      Width = 246
      Height = 32
      AutosizeStyle = asSizeNavButtons
      DataSource = SystemParametersSRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      BackgroundOptions.IndentX = 0
      BackgroundOptions.IndentY = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      object wwDBNavigator1Prior: TwwNavButton
        Left = 0
        Top = 0
        Width = 36
        Height = 32
        Hint = 'Move to prior record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Prior'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsPrior
      end
      object wwDBNavigator1Next: TwwNavButton
        Left = 36
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Move to next record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Next'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsNext
      end
      object wwDBNavigator1Insert: TwwNavButton
        Left = 71
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Insert'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsInsert
      end
      object wwDBNavigator1Delete: TwwNavButton
        Left = 106
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Delete'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsDelete
      end
      object wwDBNavigator1Post: TwwNavButton
        Left = 141
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Post changes of current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Post'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsPost
      end
      object wwDBNavigator1Cancel: TwwNavButton
        Left = 176
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Cancel changes made to current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Cancel'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsCancel
      end
      object wwDBNavigator1Button: TwwNavButton
        Left = 211
        Top = 0
        Width = 35
        Height = 32
        Hint = 'Refresh the contents of the dataset'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Button'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = wwDBNavigator1ButtonClick
        Index = 6
        Style = nbsRefresh
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 113
    Width = 1010
    Height = 685
    Align = alClient
    TabOrder = 3
    object wwDBGrid1: TwwDBGrid
      Left = 40
      Top = 435
      Width = 1009
      Height = 174
      Selected.Strings = (
        'PARAMETER_ID'#9'6'#9'PAR_ID'
        'INT_1'#9'9'#9'INT_1'
        'STR_1'#9'19'#9'STR_1'
        'STR_2'#9'20'#9'STR_2'
        'STR_3'#9'20'#9'STR_3'
        'STR_4'#9'20'#9'STR_4'
        'STR_5'#9'20'#9'STR_5')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = SystemParametersSRC
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'arial'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 24
      Width = 1057
      Height = 405
      Caption = 'Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object idlbl: TLabel
        Left = 158
        Top = 30
        Width = 90
        Height = 15
        Caption = 'PARAMETER_ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object int1lbl: TLabel
        Left = 210
        Top = 61
        Width = 33
        Height = 15
        Alignment = taRightJustify
        Caption = 'INT_1'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Str1lbl: TLabel
        Left = 205
        Top = 161
        Width = 38
        Height = 15
        Alignment = taRightJustify
        Caption = 'STR_1'
        FocusControl = Str1FLD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object str2lbl: TLabel
        Left = 205
        Top = 187
        Width = 38
        Height = 15
        Alignment = taRightJustify
        Caption = 'STR_2'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object str3lbl: TLabel
        Left = 205
        Top = 218
        Width = 38
        Height = 15
        Alignment = taRightJustify
        Caption = 'STR_3'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object str4lbl: TLabel
        Left = 205
        Top = 242
        Width = 38
        Height = 15
        Alignment = taRightJustify
        Caption = 'STR_4'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object str5lbl: TLabel
        Left = 205
        Top = 275
        Width = 38
        Height = 15
        Alignment = taRightJustify
        Caption = 'STR_5'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object int2lbl: TLabel
        Left = 210
        Top = 88
        Width = 33
        Height = 15
        Alignment = taRightJustify
        Caption = 'int2lbl'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Num1Lbl: TLabel
        Left = 202
        Top = 118
        Width = 41
        Height = 15
        Alignment = taRightJustify
        Caption = 'NUM_1'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object FolderBTN: TSpeedButton
        Left = 675
        Top = 155
        Width = 27
        Height = 23
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
        Visible = False
        OnClick = FolderBTNClick
      end
      object DBEdit2: TDBEdit
        Left = 254
        Top = 57
        Width = 74
        Height = 23
        DataField = 'INT_1'
        DataSource = SystemParametersSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Str1FLD: TDBEdit
        Left = 254
        Top = 155
        Width = 417
        Height = 23
        DataField = 'STR_1'
        DataSource = SystemParametersSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 254
        Top = 184
        Width = 417
        Height = 23
        DataField = 'STR_2'
        DataSource = SystemParametersSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 254
        Top = 213
        Width = 417
        Height = 23
        DataField = 'STR_3'
        DataSource = SystemParametersSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 254
        Top = 243
        Width = 417
        Height = 23
        DataField = 'STR_4'
        DataSource = SystemParametersSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 254
        Top = 274
        Width = 417
        Height = 23
        DataField = 'STR_5'
        DataSource = SystemParametersSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 254
        Top = 84
        Width = 74
        Height = 23
        DataField = 'INT_2'
        DataSource = SystemParametersSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 254
        Top = 110
        Width = 74
        Height = 23
        DataField = 'NUM_1'
        DataSource = SystemParametersSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object RzGroupBox1: TRzGroupBox
        Left = 705
        Top = 18
        Width = 185
        Height = 368
        Caption = 'Selection'
        TabOrder = 8
        object SystemSelectBTN: TRzButton
          Left = 11
          Top = 23
          Width = 166
          Height = 29
          Alignment = taLeftJustify
          Caption = 'System'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 0
          OnClick = SystemSelectBTNClick
        end
        object EmailBTN: TRzButton
          Left = 11
          Top = 90
          Width = 166
          Height = 29
          Alignment = taLeftJustify
          Caption = 'Email/SMS'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 1
          OnClick = EmailBTNClick
        end
        object DhlInvoiceBTN: TRzButton
          Left = 11
          Top = 124
          Width = 166
          Height = 29
          Alignment = taLeftJustify
          Caption = 'Create XML Invoices '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = DhlInvoiceBTNClick
        end
        object RzButton1: TRzButton
          Left = 11
          Top = 259
          Width = 166
          Height = 29
          Alignment = taLeftJustify
          Caption = 'Read XML Hawbs File'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 3
          OnClick = RzButton1Click
        end
        object DHlGlobalBTN: TRzButton
          Left = 11
          Top = 293
          Width = 166
          Height = 29
          Alignment = taLeftJustify
          Caption = 'Read DHL Global Invoices '
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 4
          OnClick = DHlGlobalBTNClick
        end
        object WarehouseBTN: TRzButton
          Left = 11
          Top = 225
          Width = 166
          Height = 29
          Alignment = taLeftJustify
          Caption = 'Create XML Warehouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = WarehouseBTNClick
        end
        object WaveBTN: TRzButton
          Left = 11
          Top = 56
          Width = 166
          Height = 29
          Alignment = taLeftJustify
          Caption = 'Medium Value'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 6
          OnClick = WaveBTNClick
        end
        object CabTDidBTN: TRzButton
          Left = 11
          Top = 327
          Width = 166
          Height = 29
          Alignment = taLeftJustify
          Caption = 'Read Cabex TDID HTML'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 7
          OnClick = CabTDidBTNClick
        end
        object TextInvoicesBTN: TRzButton
          Left = 11
          Top = 191
          Width = 166
          Height = 29
          Alignment = taLeftJustify
          Caption = 'Create Text Invoices'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = TextInvoicesBTNClick
        end
        object InvoiceXMLBTN: TRzButton
          Left = 11
          Top = 158
          Width = 166
          Height = 29
          Alignment = taLeftJustify
          Caption = '* Create TEST XML Invoices '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = InvoiceXMLBTNClick
        end
      end
      object DBEdit9: TDBEdit
        Left = 254
        Top = 27
        Width = 144
        Height = 23
        CharCase = ecUpperCase
        DataField = 'PARAMETER_ID'
        DataSource = SystemParametersSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object RzButton2: TRzButton
        Left = 21
        Top = 55
        Width = 124
        Height = 98
        Caption = 'Create Bucket Mawb'
        TabOrder = 10
        OnClick = RzButton2Click
      end
    end
  end
  object GetFolderBTN: TRzBitBtn
    Left = 123
    Top = 464
    Width = 142
    Caption = 'Get a folder'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = GetFolderBTNClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFF1F92D4148BD2148BD2148BD214
      8BD2148BD2148BD2148BD2148BD2148BD2148BD2148BD2148BD2148BD2148BD2
      148BD2148BD21F94D5ADD6EFFFFFFFFFFFFFFFFFFFFFFFFF52A9DEA2F7FB86F5
      FF48E1FF49E2FF45E1FF42E0FF40E0FF3DDFFF3BDEFF38DEFF36DDFF33DCFF31
      DCFF2FDBFF2BDBFF2ADAFF30DCFF80DDF31F94D5FFFFFFFFFFFFFFFFFF6BB6E3
      148BD2BAFFFF42DEFF34DAFF32D9FF2FD8FF2AD7FF27D6FF24D5FF21D5FF1DD4
      FF1AD3FF17D2FF14D1FF11D0FF0DCFFF0ACEFF02CCFF96EEFA148BD2FFFFFFFF
      FFFFFFFFFF2195D6148BD2B8FFFF51E1FF44DEFF42DEFF3FDDFF3ADCFF38DBFF
      35DAFF32D8FF2DD7FF2BD8FF28D7FF25D6FF20D5FF1ED4FF1BD3FF13D0FF96EE
      FA148BD2FFFFFFFFFFFFFFFFFF148BD2148BD2B9FFFF5DE4FF52E1FF50E0FF4B
      E1FF49E0FF46DFFF43DEFF3EDDFF3CDCFF39DAFF36D9FF33DAFF2ED9FF2CD8FF
      29D7FF21D4FF96EEFA148BD2FFFFFFFFFFFFFFFFFF148BD2148BD2BAFFFF6BE9
      FF60E5FF5EE5FF59E3FF57E2FF54E3FF51E2FF4CE1FF4AE0FF47DFFF44DEFF41
      DCFF3CDBFF3ADCFF37DBFF30D8FF96EEFA148BD2FFFFFFFFFFFFFFFFFF148BD2
      148BD2BCFFFF77ECFF6EE9FF6CE9FF67E8FF65E7FF62E5FF5FE4FF5AE3FF58E4
      FF55E3FF52E2FF4DE1FF4BE0FF48DEFF45DFFF3EDCFF96EEFA148BD2FFFFFFFF
      FFFFFFFFFF148BD2148BD2BDFFFF83EFFF7CECFF7AEDFF75ECFF73EBFF70EAFF
      6DE9FF68E8FF66E6FF63E5FF60E6FF5BE5FF59E4FF56E3FF53E1FF4BDFFF96EE
      FA148BD2FFFFFFFFFFFFFFFFFF148BD2148BD2BFFFFF91F2FF8AF0FF86EFFF84
      EEFF81EFFF7EEEFF7BEDFF76ECFF74EBFF71EAFF6EE8FF69E7FF67E8FF64E7FF
      61E6FF5AE4FF96EEFA148BD2FFFFFFFFFFFFFFFFFF148BD2148BD2C0FFFF9DF6
      FF98F4FF94F4FF92F3FF8FF1FF8CF2FF87F1FF85F0FF82EFFF7FEEFF7CEDFF77
      ECFF75EAFF72EBFF6DEAFF68E8FF96EEFA148BD2FFFFFFFFFFFFFFFFFF148BD2
      148BD2C1FFFFABF9FFA7F9FFA2F8FFA0F7FF9DF6FF9AF4FF95F3FF93F4FF90F3
      FF8DF2FF88F1FF86F0FF83EFFF80EDFF7BECFF76ECFF96EEFA148BD2FFFFFFFF
      FFFFFFFFFF148BD2148BD2C4FFFFB8FCFFB4FDFFB1FCFFAEFBFFABFAFFA8F9FF
      A3F8FFA1F6FF9EF5FF9BF6FF96F5FF94F4FF91F3FF8EF2FF89F1FF85EFFF96EE
      FA148BD2FFFFFFFFFFFFFFFFFF148BD20F90D6C0FFFEBFFFFFBFFFFFBEFFFFBD
      FFFFBAFFFFB7FEFFB4FDFFB1FCFFADFBFFAAFAFFA6F9FFA3F9FFA0F8FF9DF7FF
      98F5FF96F5FF9DF1FB148BD2FFFFFFFFFFFFFFFFFF148BD200BFF755B5E19AE4
      F497E2F397E2F396E2F397E2F397E2F396E2F396E2F396E2F396E2F395E2F396
      E2F396E2F396E2F393E2F390E2F489DDF2148BD1FFFFFFFFFFFFFFFFFF148BD2
      00CCFF00C5FA0F95D9148BD2148BD2148BD2148BD2148BD2148BD2148BD2148B
      D2148BD2148BD2148BD2148BD2148BD2148BD2148BD23FA0D9148BD2FFFFFFFF
      FFFFFFFFFF148BD22EDAFF00CBFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF
      00CBFF00CAFF00CAFF00CAFF00CAFF00CAFF00CAFF00CAFF00C9FF4CE2FF92E5
      F4148BD2FFFFFFFFFFFFFFFFFF148BD22EDAFF00CBFF01CCFF01CCFF01CCFF01
      CCFF01CCFF00CAFF4CE3FF95F7FF90F5FF90F5FF90F5FF8FF5FF8FF5FF8FF5FF
      8DF5FFBCFFFF148BD2EEF7FCFFFFFFFFFFFFFFFFFF148BD22FDAFF00C9FF00CA
      FF00CAFF00CAFF00CAFF00CAFF00CCFF24A1DF54AADD148BD2148BD2148BD214
      8BD2148BD2148BD2148BD2148BD2DBEDF8FFFFFFFFFFFFFFFFFFFFFFFF148BD2
      AFFDFF7AEFFF7CEFFF7CEFFF7CEFFF7CEFFF7CEFFF7EF3FF58B2E2FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF1F91D42497D6148BD2148BD2148BD2148BD2148BD2148BD22295D5
      B7DBF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object FolderFLD: TwwDBEdit
    Left = 271
    Top = 465
    Width = 417
    Height = 24
    TabOrder = 5
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object SystemParametersSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO SYSTEM_PARAMETERS'
      
        '  (PARAMETER_ID, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, NUM_1' +
        ', NUM_2, DATE_1, DATE_2, STR_5)'
      'VALUES'
      
        '  (:PARAMETER_ID, :INT_1, :INT_2, :STR_1, :STR_2, :STR_3, :STR_4' +
        ', :NUM_1, :NUM_2, :DATE_1, :DATE_2, :STR_5)')
    SQLDelete.Strings = (
      'DELETE FROM SYSTEM_PARAMETERS'
      'WHERE'
      '  PARAMETER_ID = :Old_PARAMETER_ID')
    SQLUpdate.Strings = (
      'UPDATE SYSTEM_PARAMETERS'
      'SET'
      
        '  PARAMETER_ID = :PARAMETER_ID, INT_1 = :INT_1, INT_2 = :INT_2, ' +
        'STR_1 = :STR_1, STR_2 = :STR_2, STR_3 = :STR_3, STR_4 = :STR_4, ' +
        'NUM_1 = :NUM_1, NUM_2 = :NUM_2, DATE_1 = :DATE_1, DATE_2 = :DATE' +
        '_2, STR_5 = :STR_5'
      'WHERE'
      '  PARAMETER_ID = :Old_PARAMETER_ID')
    SQLRefresh.Strings = (
      
        'SELECT PARAMETER_ID, INT_1, INT_2, STR_1, STR_2, STR_3, STR_4, N' +
        'UM_1, NUM_2, DATE_1, DATE_2, STR_5 FROM SYSTEM_PARAMETERS'
      'WHERE'
      '  PARAMETER_ID = :PARAMETER_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM SYSTEM_PARAMETERS'
      'WHERE'
      'PARAMETER_ID = :Old_PARAMETER_ID'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SYSTEM_PARAMETERS'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from system_parameters where'
      'parameter_id starting with '#39'S_'#39)
    FetchAll = True
    BeforeInsert = SystemParametersSQLBeforeInsert
    BeforeEdit = SystemParametersSQLBeforeEdit
    Left = 600
    Top = 153
    object SystemParametersSQLPARAMETER_ID: TStringField
      FieldName = 'PARAMETER_ID'
      Required = True
      FixedChar = True
    end
    object SystemParametersSQLINT_1: TIntegerField
      FieldName = 'INT_1'
    end
    object SystemParametersSQLINT_2: TIntegerField
      FieldName = 'INT_2'
    end
    object SystemParametersSQLSTR_1: TStringField
      FieldName = 'STR_1'
      Size = 80
    end
    object SystemParametersSQLSTR_2: TStringField
      FieldName = 'STR_2'
      Size = 80
    end
    object SystemParametersSQLSTR_3: TStringField
      FieldName = 'STR_3'
      Size = 80
    end
    object SystemParametersSQLSTR_4: TStringField
      FieldName = 'STR_4'
      Size = 80
    end
    object SystemParametersSQLNUM_1: TFloatField
      FieldName = 'NUM_1'
    end
    object SystemParametersSQLNUM_2: TFloatField
      FieldName = 'NUM_2'
    end
    object SystemParametersSQLDATE_1: TDateField
      FieldName = 'DATE_1'
    end
    object SystemParametersSQLDATE_2: TDateField
      FieldName = 'DATE_2'
    end
    object SystemParametersSQLSTR_5: TStringField
      FieldName = 'STR_5'
      Size = 80
    end
  end
  object SystemParametersSRC: TDataSource
    DataSet = SystemParametersSQL
    Left = 488
    Top = 137
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 529
    Top = 253
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 608
    Top = 257
  end
  object DialogDLG: TRzSelectFolderDialog
    Left = 656
    Top = 225
  end
end
