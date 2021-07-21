object C_CustomsHawbPaymentFRM: TC_CustomsHawbPaymentFRM
  Left = 293
  Top = 74
  ClientHeight = 486
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 53
    Align = alTop
    Caption = 'Custom Hawb Payment '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel4: TPanel
    Left = 0
    Top = 429
    Width = 687
    Height = 57
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 11
      Top = 12
      Width = 77
      Height = 40
      Caption = 'Accept'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 106
      Top = 12
      Width = 77
      Height = 40
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 53
    Width = 687
    Height = 376
    Align = alClient
    TabOrder = 2
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 685
      Height = 676
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 11
        Top = 15
        Width = 607
        Height = 304
        Caption = 'Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 57
          Top = 26
          Width = 38
          Height = 14
          Caption = 'XML ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 55
          Top = 175
          Width = 44
          Height = 14
          Caption = 'Amount'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 447
          Top = 18
          Width = 47
          Height = 14
          Caption = 'Serial No'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 50
          Top = 65
          Width = 47
          Height = 14
          Caption = 'Hawb ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 10
          Top = 91
          Width = 87
          Height = 14
          Caption = 'Customer Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 28
          Top = 118
          Width = 70
          Height = 14
          Caption = 'Date Cleared'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 36
          Top = 143
          Width = 63
          Height = 14
          Caption = 'Hawb Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 440
          Top = 41
          Width = 52
          Height = 14
          Caption = 'MAWB ID'
          FocusControl = DBEdit9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit3: TDBEdit
          Left = 501
          Top = 13
          Width = 78
          Height = 22
          TabStop = False
          Color = clBtnFace
          DataField = 'HAWB_SERIAL'
          DataSource = TableSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit9: TDBEdit
          Left = 501
          Top = 39
          Width = 104
          Height = 22
          TabStop = False
          Color = clBtnFace
          DataField = 'MAWB_ID'
          DataSource = TableSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object PaymentDateFLD: TwwDBDateTimePicker
          Left = 113
          Top = 115
          Width = 95
          Height = 22
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATE_CLEARED'
          DataSource = TableSRC
          Epoch = 1950
          Font.Charset = GREEK_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 3
          DisplayFormat = 'dd/mm/yyyy'
        end
        object CustFLD: TwwDBEdit
          Left = 113
          Top = 88
          Width = 261
          Height = 22
          DataField = 'CUSTOMER_NAME'
          DataSource = TableSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object AmountFLD: TwwDBEdit
          Left = 113
          Top = 171
          Width = 95
          Height = 22
          DataField = 'AMOUNT_CUSTOMS'
          DataSource = TableSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object KeyIdFLD: TwwDBEdit
          Left = 113
          Top = 23
          Width = 108
          Height = 22
          DataField = 'XML_ID'
          DataSource = TableSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object HawbFLD: TwwDBEdit
          Left = 113
          Top = 62
          Width = 108
          Height = 22
          DataField = 'HAWB_ID'
          DataSource = TableSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object TypeFLD: TwwDBComboBox
          Left = 113
          Top = 143
          Width = 98
          Height = 22
          ShowButton = True
          Style = csOwnerDrawFixed
          MapList = False
          AllowClearKey = False
          DataField = 'HAWB_TYPE'
          DataSource = TableSRC
          DropDownCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          Sorted = False
          TabOrder = 7
          UnboundDataType = wwDefault
        end
      end
    end
  end
  object TableSRC: TDataSource
    DataSet = TableSQL
    OnStateChange = TableSRCStateChange
    Left = 544
    Top = 17
  end
  object TableSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'CUSTOMS_PAYMENT_HAWB_GEN'
    SQLInsert.Strings = (
      'INSERT INTO CUSTOMS_PAYMENT_HAWB'
      
        '  (SERIAL_NUMBER, XML_ID, AMOUNT_CUSTOMS, AMOUNT_DHL, HAWB_SERIA' +
        'L, HAWB_ID, FK_CUSTOMS_SERIAL, CUSTOMER_NAME, DATE_CLEARED, HAWB' +
        '_TYPE, MAWB_ID, FFHAWB_TYPE, FFMAWB_ID)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :XML_ID, :AMOUNT_CUSTOMS, :AMOUNT_DHL, :HAWB_' +
        'SERIAL, :HAWB_ID, :FK_CUSTOMS_SERIAL, :CUSTOMER_NAME, :DATE_CLEA' +
        'RED, :HAWB_TYPE, :MAWB_ID, :FFHAWB_TYPE, :FFMAWB_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CUSTOMS_PAYMENT_HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE CUSTOMS_PAYMENT_HAWB'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, XML_ID = :XML_ID, AMOUNT_CUSTO' +
        'MS = :AMOUNT_CUSTOMS, AMOUNT_DHL = :AMOUNT_DHL, HAWB_SERIAL = :H' +
        'AWB_SERIAL, HAWB_ID = :HAWB_ID, FK_CUSTOMS_SERIAL = :FK_CUSTOMS_' +
        'SERIAL, CUSTOMER_NAME = :CUSTOMER_NAME, DATE_CLEARED = :DATE_CLE' +
        'ARED, HAWB_TYPE = :HAWB_TYPE, MAWB_ID = :MAWB_ID, FFHAWB_TYPE = ' +
        ':FFHAWB_TYPE, FFMAWB_ID = :FFMAWB_ID'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, XML_ID, AMOUNT_CUSTOMS, AMOUNT_DHL, HAWB_S' +
        'ERIAL, HAWB_ID, FK_CUSTOMS_SERIAL, CUSTOMER_NAME, DATE_CLEARED, ' +
        'HAWB_TYPE, MAWB_ID, FFHAWB_TYPE, FFMAWB_ID FROM CUSTOMS_PAYMENT_' +
        'HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM CUSTOMS_PAYMENT_HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CUSTOMS_PAYMENT_HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      ' customs_payment_hawb'
      'where '
      '  SERIAL_NUMBER= :SerialNumber')
    Active = True
    AfterInsert = TableSQLAfterInsert
    BeforePost = TableSQLBeforePost
    Left = 321
    Top = 93
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SerialNumber'
        Value = nil
      end>
    object TableSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object TableSQLXML_ID: TStringField
      FieldName = 'XML_ID'
      FixedChar = True
      Size = 13
    end
    object TableSQLAMOUNT_CUSTOMS: TFloatField
      FieldName = 'AMOUNT_CUSTOMS'
    end
    object TableSQLAMOUNT_DHL: TFloatField
      FieldName = 'AMOUNT_DHL'
    end
    object TableSQLHAWB_SERIAL: TIntegerField
      FieldName = 'HAWB_SERIAL'
    end
    object TableSQLHAWB_ID: TStringField
      FieldName = 'HAWB_ID'
      Size = 10
    end
    object TableSQLFK_CUSTOMS_SERIAL: TIntegerField
      FieldName = 'FK_CUSTOMS_SERIAL'
      Required = True
    end
    object TableSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 60
    end
    object TableSQLDATE_CLEARED: TDateField
      FieldName = 'DATE_CLEARED'
    end
    object TableSQLHAWB_TYPE: TStringField
      FieldName = 'HAWB_TYPE'
      FixedChar = True
      Size = 2
    end
    object TableSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object TableSQLFFHAWB_TYPE: TStringField
      FieldName = 'FFHAWB_TYPE'
      FixedChar = True
      Size = 2
    end
    object TableSQLFFMAWB_ID: TStringField
      FieldName = 'FFMAWB_ID'
      FixedChar = True
      Size = 15
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 593
    Top = 181
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 592
    Top = 297
  end
  object MakeSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Left = 504
    Top = 258
  end
end
