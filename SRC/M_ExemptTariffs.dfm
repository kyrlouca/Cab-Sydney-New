object M_exemptTariffsFRM: TM_exemptTariffsFRM
  Left = 0
  Top = 0
  Caption = 'M_exemptTariffsFRM'
  ClientHeight = 627
  ClientWidth = 1204
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1204
    Height = 65
    Align = alTop
    Caption = 'Tariffs Exempted'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -33
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitWidth = 1050
    object Button1: TButton
      Left = 880
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1204
    Height = 40
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -294
    ExplicitWidth = 1344
    object Label2: TLabel
      Left = 15
      Top = 13
      Width = 60
      Height = 16
      Caption = 'Tariff Code'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object CountLbl: TRzLabel
      Left = 733
      Top = -10
      Width = 46
      Height = 23
      Caption = 'Count'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Nav1: TwwDBNavigator
      Left = 121
      Top = 6
      Width = 200
      Height = 26
      AutosizeStyle = asSizeNavButtons
      DataSource = BucketsSRC
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      BackgroundOptions.IndentX = 0
      BackgroundOptions.IndentY = 0
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
      object Nav1Insert: TwwNavButton
        Left = 68
        Top = 0
        Width = 33
        Height = 26
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Insert'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsInsert
      end
      object Nav1Delete: TwwNavButton
        Left = 101
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
        Index = 3
        Style = nbsDelete
      end
      object Nav1Post: TwwNavButton
        Left = 134
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
        Index = 4
        Style = nbsPost
      end
      object Nav1Cancel: TwwNavButton
        Left = 167
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
        Index = 5
        Style = nbsCancel
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 105
    Width = 1204
    Height = 522
    Align = alClient
    TabOrder = 2
    ExplicitLeft = -294
    ExplicitTop = -76
    ExplicitWidth = 1344
    ExplicitHeight = 703
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 1202
      Height = 16
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 1342
    end
    object Panel5: TPanel
      Left = 1
      Top = 17
      Width = 57
      Height = 504
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      ExplicitHeight = 685
      object Panel7: TPanel
        Left = 0
        Top = 345
        Width = 57
        Height = 159
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel5'
        TabOrder = 0
        ExplicitTop = 526
      end
    end
    object Panel8: TPanel
      Left = 58
      Top = 17
      Width = 992
      Height = 504
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 287
      ExplicitTop = 9
      object SelectAllBTN: TRzBitBtn
        Left = 584
        Top = 14
        Width = 97
        Height = 34
        Alignment = taLeftJustify
        Caption = 'Select All'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = SelectAllBTNClick
        NumGlyphs = 2
        Spacing = 8
      end
      object DeleteRBTN: TRzBitBtn
        AlignWithMargins = True
        Left = 552
        Top = 96
        Width = 169
        Height = 34
        Alignment = taLeftJustify
        Caption = 'Delete Selected'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = DeleteRBTNClick
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
        Spacing = 8
      end
      object Grid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 409
        Height = 504
        Selected.Strings = (
          'TARIFF_CODE'#9'13'#9'TARIFF_CODE'#9'F'
          'DESCRIPTION'#9'28'#9'Description'#9#9)
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alLeft
        Color = 12713983
        DataSource = BucketsSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
  end
  object BucketsSRC: TDataSource
    DataSet = BucketsSQL
    Left = 256
    Top = 9
  end
  object BucketsSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO TARIFFS_MEDIUM'
      '  (TARIFF_CODE, STATUS, DESCRIPTION)'
      'VALUES'
      '  (:TARIFF_CODE, :STATUS, :DESCRIPTION)')
    SQLDelete.Strings = (
      'DELETE FROM TARIFFS_MEDIUM'
      'WHERE'
      '  TARIFF_CODE = :Old_TARIFF_CODE')
    SQLUpdate.Strings = (
      'UPDATE TARIFFS_MEDIUM'
      'SET'
      
        '  TARIFF_CODE = :TARIFF_CODE, STATUS = :STATUS, DESCRIPTION = :D' +
        'ESCRIPTION'
      'WHERE'
      '  TARIFF_CODE = :Old_TARIFF_CODE')
    SQLRefresh.Strings = (
      'SELECT TARIFF_CODE, STATUS, DESCRIPTION FROM TARIFFS_MEDIUM'
      'WHERE'
      '  TARIFF_CODE = :TARIFF_CODE')
    SQLLock.Strings = (
      'SELECT NULL FROM TARIFFS_MEDIUM'
      'WHERE'
      'TARIFF_CODE = :Old_TARIFF_CODE'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM TARIFFS_MEDIUM'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    SQL.Strings = (
      'Select * from tariffs_medium')
    Left = 344
    Top = 24
    object BucketsSQLTARIFF_CODE: TStringField
      DisplayWidth = 13
      FieldName = 'TARIFF_CODE'
      Required = True
      Size = 10
    end
    object BucketsSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 28
      FieldName = 'DESCRIPTION'
      Size = 80
    end
    object BucketsSQLSTATUS: TStringField
      FieldName = 'STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
end
