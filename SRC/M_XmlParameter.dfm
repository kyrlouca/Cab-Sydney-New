object M_XMLParameterFRM: TM_XMLParameterFRM
  Left = 638
  Top = 104
  Width = 767
  Height = 859
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 749
    Height = 65
    Align = alTop
    Caption = 'XML Parameters'
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
    Top = 761
    Width = 749
    Height = 53
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 9
      Top = 9
      Width = 88
      Height = 40
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 749
    Height = 48
    Align = alTop
    TabOrder = 2
    object wwDBNavigator1: TwwDBNavigator
      Left = 1
      Top = 9
      Width = 246
      Height = 32
      AutosizeStyle = asSizeNavButtons
      DataSource = GeneralParameterSRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      object wwDBNavigator1Prior: TwwNavButton
        Left = 0
        Top = 0
        Width = 31
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
        Left = 31
        Top = 0
        Width = 31
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
        Left = 62
        Top = 0
        Width = 31
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
        Left = 93
        Top = 0
        Width = 31
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
        Left = 124
        Top = 0
        Width = 31
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
        Left = 155
        Top = 0
        Width = 31
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
        Left = 186
        Top = 0
        Width = 30
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
        Style = nbsCustom
      end
      object wwDBNavigator1SearchDialog: TwwNavButton
        Left = 216
        Top = 0
        Width = 30
        Height = 32
        Hint = 'Search the dataset'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1SearchDialog'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        OnClick = wwDBNavigator1SearchDialogClick
        Index = 7
        Style = nbsSearchDialog
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 113
    Width = 749
    Height = 648
    Align = alClient
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 32
      Top = 16
      Width = 545
      Height = 231
      Caption = 'GroupBox1'
      TabOrder = 0
      object Label1: TLabel
        Left = 32
        Top = 32
        Width = 33
        Height = 16
        Caption = 'Code'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 32
        Top = 159
        Width = 35
        Height = 16
        Caption = 'Value'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 32
        Top = 96
        Width = 68
        Height = 16
        Caption = 'Description'
        FocusControl = DBEdit4
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 57
        Width = 144
        Height = 24
        CharCase = ecUpperCase
        DataField = 'CODE'
        DataSource = GeneralParameterSRC
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 32
        Top = 185
        Width = 417
        Height = 24
        DataField = 'TEXT_1'
        DataSource = GeneralParameterSRC
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 32
        Top = 122
        Width = 417
        Height = 24
        DataField = 'TEXT_2'
        DataSource = GeneralParameterSRC
        TabOrder = 2
      end
    end
    object wwDBGrid1: TwwDBGrid
      Left = 32
      Top = 256
      Width = 545
      Height = 265
      Selected.Strings = (
        'CODE'#9'5'#9'CODE'
        'TEXT_2'#9'37'#9'Description'
        'TEXT_1'#9'19'#9'Value'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = GeneralParameterSRC
      ReadOnly = True
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      IndicatorColor = icBlack
    end
  end
  object GeneralParameterSQL: TIBCQuery
    Transaction = ClairDML.UsedForReadOnlyTrans
    UpdateTransaction = ClairDML.UpdateTrans
    SQL.Strings = (
      'Select * from General_parameter order by Code')
    FetchAll = True
    BeforeInsert = GeneralParameterSQLBeforeInsert
    BeforeEdit = GeneralParameterSQLBeforeEdit
    Left = 392
    Top = 73
    object GeneralParameterSQLCODE: TStringField
      DisplayWidth = 5
      FieldName = 'CODE'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.CODE'
      FixedChar = True
      Size = 3
    end
    object GeneralParameterSQLTEXT_2: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 37
      FieldName = 'TEXT_2'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.TEXT_2'
      FixedChar = True
      Size = 40
    end
    object GeneralParameterSQLTEXT_1: TStringField
      DisplayLabel = 'Value'
      DisplayWidth = 19
      FieldName = 'TEXT_1'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.TEXT_1'
      FixedChar = True
      Size = 40
    end
    object GeneralParameterSQLNUMERIC_1: TFloatField
      DisplayWidth = 10
      FieldName = 'NUMERIC_1'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.NUMERIC_1'
      Visible = False
    end
    object GeneralParameterSQLNUMERIC_2: TFloatField
      DisplayWidth = 10
      FieldName = 'NUMERIC_2'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.NUMERIC_2'
      Visible = False
    end
    object GeneralParameterSQLINTEGER_1: TIntegerField
      DisplayWidth = 10
      FieldName = 'INTEGER_1'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.INTEGER_1'
      Visible = False
    end
    object GeneralParameterSQLINTEGER_2: TIntegerField
      DisplayWidth = 10
      FieldName = 'INTEGER_2'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.INTEGER_2'
      Visible = False
    end
    object GeneralParameterSQLDATE_1: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATE_1'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.DATE_1'
      Visible = False
    end
  end
  object GeneralParameterSRC: TDataSource
    DataSet = GeneralParameterSQL
    Left = 464
    Top = 73
  end
end
