object C_CustomsPaymentFRM: TC_CustomsPaymentFRM
  Left = 90
  Top = 121
  Caption = 'Customs Payment'
  ClientHeight = 813
  ClientWidth = 1182
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Titlelbl: TPanel
    Left = 0
    Top = 0
    Width = 1182
    Height = 53
    Align = alTop
    Caption = 'Make Customs Payment'
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
    Top = 759
    Width = 1182
    Height = 54
    Align = alBottom
    TabOrder = 1
    object AcceptBTN: TBitBtn
      Left = 8
      Top = 11
      Width = 84
      Height = 36
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
      Left = 126
      Top = 11
      Width = 84
      Height = 36
      Cancel = True
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 53
    Width = 1182
    Height = 706
    Align = alClient
    TabOrder = 2
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1180
      Height = 344
      Align = alTop
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 58
        Top = 20
        Width = 537
        Height = 195
        Caption = 'Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object AmountLBL: TLabel
          Left = 45
          Top = 133
          Width = 58
          Height = 14
          Caption = 'Comments'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 25
          Top = 77
          Width = 78
          Height = 14
          Caption = 'Payment Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 14
          Top = 32
          Width = 89
          Height = 14
          Caption = 'Cheque Number'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object AmountRecLbl: TLabel
          Left = 33
          Top = 105
          Width = 70
          Height = 14
          Caption = 'Amount Paid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ChequeFLD: TwwDBEdit
          Left = 109
          Top = 29
          Width = 227
          Height = 22
          Color = clWhite
          DataField = 'CHEQUE_NUMBER'
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
        object AmountReceivedFLD: TwwDBEdit
          Left = 109
          Top = 102
          Width = 63
          Height = 22
          Color = clWhite
          DataField = 'AMOUNT'
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
        object CommentsFLD: TwwDBEdit
          Left = 109
          Top = 130
          Width = 368
          Height = 22
          Color = clWhite
          DataField = 'COMMENTS'
          DataSource = TableSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object PaymentDateFLD: TwwDBDateTimePicker
          Left = 109
          Top = 75
          Width = 96
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATE_PAYMENT'
          DataSource = TableSRC
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 1
          DisplayFormat = 'dd/mm/yyyy'
        end
      end
    end
  end
  object TableSRC: TDataSource
    DataSet = TablexSQL
    Left = 544
    Top = 17
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 433
    Top = 165
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Active = True
    Left = 488
    Top = 169
  end
  object DoSQL: TIBCSQL
    Connection = ClairDML.CabCOnnection
    Transaction = WriteTrans
    AutoCommit = True
    Left = 736
    Top = 432
  end
  object MakeSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Left = 816
    Top = 338
  end
  object IBCSQL1: TIBCSQL
    Connection = ClairDML.CabCOnnection
    Transaction = WriteTrans
    AutoCommit = True
    Left = 64
    Top = 296
  end
  object CollectionScanSRC: TIBCDataSource
    DataSet = CollectionScanSQL
    Left = 360
    Top = 778
  end
  object CollectionScanSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO COLLECTION_SCAN_VIEW'
      
        '  (SERIAL_NUMBER, INVOICE_NUMBER, HAWB, INVOICE_TYPE, PAYMENT_ME' +
        'THOD, STATUS, USER_ID, USER_STATION, USER_TIME, IS_VALID, FK_COL' +
        'LECTION_BATCH, FK_ACCOUNTING_BATCH, CONSIGNEE, INVOICE_AMOUNT, C' +
        'OLLECTED_AMOUNT)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :INVOICE_NUMBER, :HAWB, :INVOICE_TYPE, :PAYME' +
        'NT_METHOD, :STATUS, :USER_ID, :USER_STATION, :USER_TIME, :IS_VAL' +
        'ID, :FK_COLLECTION_BATCH, :FK_ACCOUNTING_BATCH, :CONSIGNEE, :INV' +
        'OICE_AMOUNT, :COLLECTED_AMOUNT)')
    SQLDelete.Strings = (
      'DELETE FROM COLLECTION_SCAN'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE COLLECTION_SCAN'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, INVOICE_NUMBER = :INVOICE_NUMB' +
        'ER, HAWB = :HAWB, FK_DELIVERED_OPMS = :FK_DELIVERED_OPMS, STATUS' +
        ' = :STATUS, USER_ID = :USER_ID, USER_STATION = :USER_STATION, US' +
        'ER_TIME = :USER_TIME, IS_VALID = :IS_VALID, FK_COLLECTION_BATCH ' +
        '= :FK_COLLECTION_BATCH'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, INVOICE_NUMBER, HAWB, FK_DELIVERED_OPMS, S' +
        'TATUS, USER_ID, USER_STATION, USER_TIME, IS_VALID, FK_COLLECTION' +
        '_BATCH FROM COLLECTION_SCAN'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM COLLECTION_SCAN'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM COLLECTION_SCAN_VIEW'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from Collection_scan_View order by serial_number')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_COLLECTION_BATCH'
    MasterSource = TableSRC
    Left = 704
    Top = 346
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object CollectionScanSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 5
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object CollectionScanSQLINVOICE_NUMBER: TStringField
      DisplayLabel = 'Invoice'
      DisplayWidth = 15
      FieldName = 'INVOICE_NUMBER'
      FixedChar = True
      Size = 15
    end
    object CollectionScanSQLHAWB: TStringField
      DisplayWidth = 10
      FieldName = 'HAWB'
      FixedChar = True
      Size = 10
    end
    object CollectionScanSQLCONSIGNEE: TStringField
      DisplayLabel = 'Consignee'
      DisplayWidth = 40
      FieldName = 'CONSIGNEE'
      FixedChar = True
      Size = 30
    end
    object CollectionScanSQLPAYMENT_METHOD: TStringField
      DisplayLabel = 'Pay Method'
      DisplayWidth = 5
      FieldName = 'PAYMENT_METHOD'
      FixedChar = True
      Size = 5
    end
    object CollectionScanSQLINVOICE_AMOUNT: TFloatField
      DisplayLabel = 'Invoice Amnt'
      DisplayWidth = 13
      FieldName = 'INVOICE_AMOUNT'
      DisplayFormat = '0.00'
    end
    object CollectionScanSQLCOLLECTED_AMOUNT: TFloatField
      DisplayLabel = 'Collected Amnt'
      DisplayWidth = 12
      FieldName = 'COLLECTED_AMOUNT'
    end
    object CollectionScanSQLINVOICE_TYPE: TStringField
      DisplayLabel = 'Pay Method'
      DisplayWidth = 10
      FieldName = 'INVOICE_TYPE'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object CollectionScanSQLUSER_TIME: TDateTimeField
      DisplayLabel = 'TimeStamp'
      DisplayWidth = 18
      FieldName = 'USER_TIME'
      Visible = False
    end
    object CollectionScanSQLSTATUS: TStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CollectionScanSQLFK_COLLECTION_BATCH: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_COLLECTION_BATCH'
      Required = True
      Visible = False
    end
    object CollectionScanSQLUSER_ID: TStringField
      DisplayWidth = 5
      FieldName = 'USER_ID'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object CollectionScanSQLUSER_STATION: TStringField
      DisplayWidth = 10
      FieldName = 'USER_STATION'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object CollectionScanSQLIS_VALID: TStringField
      DisplayWidth = 1
      FieldName = 'IS_VALID'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CollectionScanSQLFK_ACCOUNTING_BATCH: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_ACCOUNTING_BATCH'
      Visible = False
    end
  end
  object TablexSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'CUSTOMS_PAYMENT_GEN'
    SQLInsert.Strings = (
      'INSERT INTO CUSTOMS_PAYMENT'
      
        '  (SERIAL_NUMBER, USER_TIMESTAMP, USER_ID, STATUS, AMOUNT, COMME' +
        'NTS, CHEQUE_NUMBER, DATE_PAYMENT)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :USER_TIMESTAMP, :USER_ID, :STATUS, :AMOUNT, ' +
        ':COMMENTS, :CHEQUE_NUMBER, :DATE_PAYMENT)')
    SQLDelete.Strings = (
      'DELETE FROM CUSTOMS_PAYMENT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE CUSTOMS_PAYMENT'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, USER_TIMESTAMP = :USER_TIMESTA' +
        'MP, USER_ID = :USER_ID, STATUS = :STATUS, AMOUNT = :AMOUNT, COMM' +
        'ENTS = :COMMENTS, CHEQUE_NUMBER = :CHEQUE_NUMBER, DATE_PAYMENT =' +
        ' :DATE_PAYMENT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, USER_TIMESTAMP, USER_ID, STATUS, AMOUNT, C' +
        'OMMENTS, CHEQUE_NUMBER, DATE_PAYMENT FROM CUSTOMS_PAYMENT'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM CUSTOMS_PAYMENT'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CUSTOMS_PAYMENT'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from Customs_Payment where serial_number= :serial')
    LocalConstraints = False
    OnNewRecord = TablexSQLNewRecord
    Left = 185
    Top = 18
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serial'
        Value = nil
      end>
    object TablexSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object TablexSQLUSER_ID: TStringField
      FieldName = 'USER_ID'
      FixedChar = True
      Size = 5
    end
    object TablexSQLSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object TablexSQLAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object TablexSQLCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 80
    end
    object TablexSQLCHEQUE_NUMBER: TStringField
      FieldName = 'CHEQUE_NUMBER'
      FixedChar = True
      Size = 60
    end
    object TablexSQLDATE_PAYMENT: TDateField
      FieldName = 'DATE_PAYMENT'
    end
    object TablexSQLUSER_TIMESTAMP: TDateTimeField
      FieldName = 'USER_TIMESTAMP'
    end
  end
  object IBCSQL2: TIBCSQL
    Connection = ClairDML.CabCOnnection
    Transaction = WriteTrans
    AutoCommit = True
    Left = 856
    Top = 217
  end
end
