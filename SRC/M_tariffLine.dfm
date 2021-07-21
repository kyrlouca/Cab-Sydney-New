object M_tariffLineFRM: TM_tariffLineFRM
  Left = 288
  Top = 237
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Stariff'
  ClientHeight = 474
  ClientWidth = 691
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
    Width = 691
    Height = 53
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 478
    object TitleLbl: TLabel
      Left = 1
      Top = 1
      Width = 689
      Height = 51
      Align = alClient
      Alignment = taCenter
      Caption = 'Tariff Line'
      ExplicitWidth = 133
      ExplicitHeight = 32
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 431
    Width = 691
    Height = 43
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 478
    object AcceptBTN: TBitBtn
      Left = 1
      Top = 6
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
      OnClick = AcceptBTNClick
    end
    object CanelBTN: TBitBtn
      Left = 96
      Top = 6
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
    Width = 691
    Height = 39
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 478
  end
  object Panel3: TPanel
    Left = 0
    Top = 92
    Width = 691
    Height = 339
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 478
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 689
      Height = 344
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 476
      object GroupBox1: TGroupBox
        Left = 15
        Top = 5
        Width = 347
        Height = 284
        Caption = 'Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 13
          Top = 28
          Width = 94
          Height = 15
          Caption = 'Charging Method'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 55
          Top = 52
          Width = 52
          Height = 15
          Caption = 'Duty Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Ratelbl: TLabel
          Left = 37
          Top = 119
          Width = 70
          Height = 15
          Alignment = taRightJustify
          Caption = 'Rate/Charge'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object PerLbl: TLabel
          Left = 225
          Top = 118
          Width = 19
          Height = 15
          Alignment = taRightJustify
          Caption = 'Per'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object UnitsLbl: TLabel
          Left = 177
          Top = 145
          Width = 54
          Height = 15
          Caption = 'Units/Kgs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object minlbl: TLabel
          Left = 16
          Top = 146
          Width = 91
          Height = 15
          Caption = 'When more than'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object percentlbl: TLabel
          Left = 175
          Top = 119
          Width = 40
          Height = 15
          Caption = '%/Euro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object minChargelbl: TLabel
          Left = 44
          Top = 186
          Width = 63
          Height = 15
          Caption = 'Min Charge'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object maxChargeLbl: TLabel
          Left = 42
          Top = 213
          Width = 65
          Height = 15
          Caption = 'Max Charge'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object XmlLbl: TLabel
          Left = 51
          Top = 78
          Width = 56
          Height = 15
          Caption = 'XML Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object wwDBEdit1: TwwDBEdit
          Left = 113
          Top = 115
          Width = 60
          Height = 21
          BorderStyle = bsNone
          DataField = 'TARIFF_UNIT_RATE'
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
        object unitsFLD: TwwDBEdit
          Left = 250
          Top = 116
          Width = 52
          Height = 21
          BorderStyle = bsNone
          DataField = 'TARIFF_UNIT_INCREMENT'
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
        object MinFLD: TwwDBEdit
          Left = 113
          Top = 143
          Width = 58
          Height = 21
          BorderStyle = bsNone
          DataField = 'UNITS_NOT_CHARGED'
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
        object ChargingMethodFLD: TwwDBComboBox
          Left = 113
          Top = 21
          Width = 144
          Height = 23
          ShowButton = True
          Style = csDropDownList
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          CharCase = ecUpperCase
          DataField = 'CHARGING_METHOD'
          DataSource = TableSRC
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
          OnCloseUp = ChargingMethodFLDCloseUp
        end
        object DutyTypeFLD: TwwDBLookupCombo
          Left = 113
          Top = 49
          Width = 144
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'DUTY_CODE'#9'15'#9'DUTY_CODE'#9'F'
            'DESCRIPTION'#9'30'#9'DESCRIPTION'#9'F')
          DataField = 'DUTY_TYPE'
          DataSource = TableSRC
          LookupTable = DutyTypeSQL
          LookupField = 'DUTY_CODE'
          Style = csDropDownList
          ParentFont = False
          TabOrder = 4
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
        object MinChargeFLD: TwwDBEdit
          Left = 113
          Top = 183
          Width = 58
          Height = 21
          BorderStyle = bsNone
          DataField = 'MIN_CHARGE'
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
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object MaxChargeFLD: TwwDBEdit
          Left = 113
          Top = 210
          Width = 58
          Height = 21
          BorderStyle = bsNone
          DataField = 'MAX_CHARGE'
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
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object XmlFld: TwwDBEdit
          Left = 113
          Top = 77
          Width = 56
          Height = 21
          BorderStyle = bsNone
          DataField = 'XML_CODE'
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
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
  end
  object TableSRC: TDataSource
    DataSet = TableSQL
    OnStateChange = TableSRCStateChange
    OnDataChange = TableSRCDataChange
    Left = 272
    Top = 57
  end
  object TableSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'GEN_S_TARIFF_LINE'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO S_TARIFF_LINE'
      
        '  (FK_S_TARIFF_CODE, SERIAL_NUMBER, DUTY_TYPE, FK_BASE, DESCRIPT' +
        'ION, TARIFF_UNIT, TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE, CAN_B' +
        'E_RELIEVED, CHARGING_METHOD, UNITS_NOT_CHARGED, MIN_CHARGE, MAX_' +
        'CHARGE, XML_CODE)'
      'VALUES'
      
        '  (:FK_S_TARIFF_CODE, :SERIAL_NUMBER, :DUTY_TYPE, :FK_BASE, :DES' +
        'CRIPTION, :TARIFF_UNIT, :TARIFF_UNIT_INCREMENT, :TARIFF_UNIT_RAT' +
        'E, :CAN_BE_RELIEVED, :CHARGING_METHOD, :UNITS_NOT_CHARGED, :MIN_' +
        'CHARGE, :MAX_CHARGE, :XML_CODE)')
    SQLDelete.Strings = (
      'DELETE FROM S_TARIFF_LINE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE S_TARIFF_LINE'
      'SET'
      
        '  FK_S_TARIFF_CODE = :FK_S_TARIFF_CODE, SERIAL_NUMBER = :SERIAL_' +
        'NUMBER, DUTY_TYPE = :DUTY_TYPE, FK_BASE = :FK_BASE, DESCRIPTION ' +
        '= :DESCRIPTION, TARIFF_UNIT = :TARIFF_UNIT, TARIFF_UNIT_INCREMEN' +
        'T = :TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE = :TARIFF_UNIT_RATE' +
        ', CAN_BE_RELIEVED = :CAN_BE_RELIEVED, CHARGING_METHOD = :CHARGIN' +
        'G_METHOD, UNITS_NOT_CHARGED = :UNITS_NOT_CHARGED, MIN_CHARGE = :' +
        'MIN_CHARGE, MAX_CHARGE = :MAX_CHARGE, XML_CODE = :XML_CODE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT FK_S_TARIFF_CODE, SERIAL_NUMBER, DUTY_TYPE, FK_BASE, DESC' +
        'RIPTION, TARIFF_UNIT, TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE, C' +
        'AN_BE_RELIEVED, CHARGING_METHOD, UNITS_NOT_CHARGED, MIN_CHARGE, ' +
        'MAX_CHARGE, XML_CODE FROM S_TARIFF_LINE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM S_TARIFF_LINE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM S_TARIFF_LINE'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      'stl.*,star.tariff_code'
      'FROM'
      '  S_Tariff_line stl'
      'left outer join'
      '  S_Tariff star'
      'on star.tariff_code=stl.fk_s_tariff_code'
      'where '
      ' stl.serial_number = :serialNumber')
    Active = True
    AfterInsert = TableSQLAfterInsert
    AfterPost = TableSQLAfterPost
    Left = 225
    Top = 53
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serialNumber'
        Value = nil
      end>
    object TableSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 5
      FieldName = 'SERIAL_NUMBER'
    end
    object TableSQLDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 32
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 15
    end
    object TableSQLDUTY_TYPE: TStringField
      FieldName = 'DUTY_TYPE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 3
    end
    object TableSQLFK_BASE: TIntegerField
      FieldName = 'FK_BASE'
      Visible = False
    end
    object TableSQLTARIFF_UNIT: TStringField
      FieldName = 'TARIFF_UNIT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object TableSQLTARIFF_UNIT_INCREMENT: TIntegerField
      FieldName = 'TARIFF_UNIT_INCREMENT'
      Visible = False
    end
    object TableSQLTARIFF_UNIT_RATE: TFloatField
      FieldName = 'TARIFF_UNIT_RATE'
      Visible = False
      DisplayFormat = '0.00'
    end
    object TableSQLCAN_BE_RELIEVED: TStringField
      FieldName = 'CAN_BE_RELIEVED'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLCHARGING_METHOD: TStringField
      FieldName = 'CHARGING_METHOD'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object TableSQLUNITS_NOT_CHARGED: TIntegerField
      FieldName = 'UNITS_NOT_CHARGED'
      Visible = False
    end
    object TableSQLTARIFF_CODE: TStringField
      FieldName = 'TARIFF_CODE'
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 17
    end
    object TableSQLMIN_CHARGE: TFloatField
      FieldName = 'MIN_CHARGE'
      Visible = False
      DisplayFormat = '0.00'
    end
    object TableSQLMAX_CHARGE: TFloatField
      FieldName = 'MAX_CHARGE'
      Visible = False
      DisplayFormat = '0.00'
    end
    object TableSQLFK_S_TARIFF_CODE: TStringField
      FieldName = 'FK_S_TARIFF_CODE'
      FixedChar = True
      Size = 17
    end
    object TableSQLXML_CODE: TStringField
      FieldName = 'XML_CODE'
      FixedChar = True
      Size = 15
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 25
    Top = 65533
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 72
    Top = 1
  end
  object MakeSQL: TIBCQuery
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO S_TARIFF_LINE'
      
        '  (SERIAL_NUMBER, DUTY_TYPE, FK_S_TARIFF, FK_BASE, DESCRIPTION, ' +
        'TARIFF_UNIT, TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE, IS_VAT_APP' +
        'LIES, CAN_BE_RELIEVED, CHARGING_METHOD, UNITS_NOT_CHARGED)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :DUTY_TYPE, :FK_S_TARIFF, :FK_BASE, :DESCRIPT' +
        'ION, :TARIFF_UNIT, :TARIFF_UNIT_INCREMENT, :TARIFF_UNIT_RATE, :I' +
        'S_VAT_APPLIES, :CAN_BE_RELIEVED, :CHARGING_METHOD, :UNITS_NOT_CH' +
        'ARGED)')
    SQLDelete.Strings = (
      'DELETE FROM S_TARIFF_LINE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE S_TARIFF_LINE'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, DUTY_TYPE = :DUTY_TYPE, FK_S_T' +
        'ARIFF = :FK_S_TARIFF, FK_BASE = :FK_BASE, DESCRIPTION = :DESCRIP' +
        'TION, TARIFF_UNIT = :TARIFF_UNIT, TARIFF_UNIT_INCREMENT = :TARIF' +
        'F_UNIT_INCREMENT, TARIFF_UNIT_RATE = :TARIFF_UNIT_RATE, IS_VAT_A' +
        'PPLIES = :IS_VAT_APPLIES, CAN_BE_RELIEVED = :CAN_BE_RELIEVED, CH' +
        'ARGING_METHOD = :CHARGING_METHOD, UNITS_NOT_CHARGED = :UNITS_NOT' +
        '_CHARGED'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, DUTY_TYPE, FK_S_TARIFF, FK_BASE, DESCRIPTI' +
        'ON, TARIFF_UNIT, TARIFF_UNIT_INCREMENT, TARIFF_UNIT_RATE, IS_VAT' +
        '_APPLIES, CAN_BE_RELIEVED, CHARGING_METHOD, UNITS_NOT_CHARGED FR' +
        'OM S_TARIFF_LINE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM S_TARIFF_LINE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM S_TARIFF_LINE'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    ReadOnly = True
    AfterInsert = TableSQLAfterInsert
    AfterPost = TableSQLAfterPost
    Left = 281
    Top = 285
  end
  object DutyTypeSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO DUTY_TYPE'
      '  (DUTY_CODE, IS_ACTIVE, DESCRIPTION, XML_CODE, IS_VAT)'
      'VALUES'
      '  (:DUTY_CODE, :IS_ACTIVE, :DESCRIPTION, :XML_CODE, :IS_VAT)')
    SQLDelete.Strings = (
      'DELETE FROM DUTY_TYPE'
      'WHERE'
      '  DUTY_CODE = :Old_DUTY_CODE')
    SQLUpdate.Strings = (
      'UPDATE DUTY_TYPE'
      'SET'
      
        '  DUTY_CODE = :DUTY_CODE, IS_ACTIVE = :IS_ACTIVE, DESCRIPTION = ' +
        ':DESCRIPTION, XML_CODE = :XML_CODE, IS_VAT = :IS_VAT'
      'WHERE'
      '  DUTY_CODE = :Old_DUTY_CODE')
    SQLRefresh.Strings = (
      
        'SELECT DUTY_CODE, IS_ACTIVE, DESCRIPTION, XML_CODE, IS_VAT FROM ' +
        'DUTY_TYPE'
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
    SQL.Strings = (
      'Select * from DUTY_Type where is_vat <>'#39'Y'#39)
    MasterFields = 'DUTY_TYPE'
    DetailFields = 'FK_DUTY_TYPE'
    ReadOnly = True
    Left = 353
    Top = 277
    object DutyTypeSQLDUTY_CODE: TStringField
      DisplayWidth = 15
      FieldName = 'DUTY_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object DutyTypeSQLDESCRIPTION: TStringField
      DisplayWidth = 30
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 60
    end
    object DutyTypeSQLIS_ACTIVE: TStringField
      DisplayWidth = 1
      FieldName = 'IS_ACTIVE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object DutyTypeSQLXML_CODE: TStringField
      DisplayWidth = 10
      FieldName = 'XML_CODE'
      Visible = False
      Size = 10
    end
    object DutyTypeSQLIS_VAT: TStringField
      DisplayWidth = 1
      FieldName = 'IS_VAT'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
end
