object TestUnitFRM: TTestUnitFRM
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'TestUnitFRM'
  ClientHeight = 399
  ClientWidth = 785
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
  object Button1: TButton
    Left = 48
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 280
    Width = 75
    Height = 25
    Caption = 'commit'
    TabOrder = 9
  end
  object wwDBNavigator1: TwwDBNavigator
    Left = 48
    Top = 35
    Width = 350
    Height = 25
    DataSource = TableSRC
    RepeatInterval.InitialDelay = 500
    RepeatInterval.Interval = 100
    object wwDBNavigator1First: TwwNavButton
      Left = 0
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move to first record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1First'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 0
      Style = nbsFirst
    end
    object wwDBNavigator1PriorPage: TwwNavButton
      Left = 25
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move backward 10 records'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1PriorPage'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 1
      Style = nbsPriorPage
    end
    object wwDBNavigator1Prior: TwwNavButton
      Left = 50
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move to prior record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Prior'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 2
      Style = nbsPrior
    end
    object wwDBNavigator1Next: TwwNavButton
      Left = 75
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move to next record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Next'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 3
      Style = nbsNext
    end
    object wwDBNavigator1NextPage: TwwNavButton
      Left = 100
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move forward 10 records'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1NextPage'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 4
      Style = nbsNextPage
    end
    object wwDBNavigator1Last: TwwNavButton
      Left = 125
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move to last record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Last'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 5
      Style = nbsLast
    end
    object wwDBNavigator1Insert: TwwNavButton
      Left = 150
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Insert new record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Insert'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsInsert
    end
    object wwDBNavigator1Delete: TwwNavButton
      Left = 175
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Delete current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Delete'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsDelete
    end
    object wwDBNavigator1Edit: TwwNavButton
      Left = 200
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Edit current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Edit'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 8
      Style = nbsEdit
    end
    object wwDBNavigator1Post: TwwNavButton
      Left = 225
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Post changes of current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Post'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 9
      Style = nbsPost
    end
    object wwDBNavigator1Cancel: TwwNavButton
      Left = 250
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Cancel changes made to current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Cancel'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 10
      Style = nbsCancel
    end
    object wwDBNavigator1Refresh: TwwNavButton
      Left = 275
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Refresh the contents of the dataset'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Refresh'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 11
      Style = nbsRefresh
    end
    object wwDBNavigator1SaveBookmark: TwwNavButton
      Left = 300
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Bookmark current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1SaveBookmark'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 12
      Style = nbsSaveBookmark
    end
    object wwDBNavigator1RestoreBookmark: TwwNavButton
      Left = 325
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Go back to saved bookmark'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1RestoreBookmark'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 13
      Style = nbsRestoreBookmark
    end
  end
  object Button3: TButton
    Left = 248
    Top = 198
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 10
    OnClick = Button3Click
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 380
    Width = 785
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 4
    VisualStyle = vsGradient
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 0
    Width = 785
    Height = 29
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 0
    VisualStyle = vsGradient
  end
  object wwDBEdit1: TwwDBEdit
    Left = 112
    Top = 80
    Width = 121
    Height = 21
    DataField = 'SERIAL_NUMBER'
    DataSource = TableSRC
    TabOrder = 1
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit2: TwwDBEdit
    Left = 610
    Top = 35
    Width = 121
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    DataField = 'HAB_ID'
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit3: TwwDBEdit
    Left = 112
    Top = 120
    Width = 121
    Height = 21
    DataField = 'XML_CODE'
    DataSource = TableSRC
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 209
    Width = 75
    Height = 25
    Caption = 'edit'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object Button4: TButton
    Left = 8
    Top = 66
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 7
  end
  object HawbFLD: TwwDBEdit
    Left = 610
    Top = 62
    Width = 121
    Height = 21
    BiDiMode = bdLeftToRight
    CharCase = ecUpperCase
    ParentBiDiMode = False
    DataField = 'HAB_ID'
    DataSource = HawbSRC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Picture.PictureMask = '*9[#]{0,1,2,3,4,5,6}'
    Picture.AutoFill = False
    TabOrder = 11
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    NumbersOnly = True
  end
  object wwDBDateTimePicker1: TwwDBDateTimePicker
    Left = 624
    Top = 80
    Width = 121
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 12
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 344
    Width = 785
    HotTrack = True
    TabOrder = 13
  end
  object TableSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_UNIT_MEASURE'
    SQLInsert.Strings = (
      'INSERT INTO UNIT_MEASURE'
      '  (SERIAL_NUMBER, UNIT, DESCRIPTION, ORDER_NUMBER, XML_CODE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :UNIT, :DESCRIPTION, :ORDER_NUMBER, :XML_CODE' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM UNIT_MEASURE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE UNIT_MEASURE'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, UNIT = :UNIT, DESCRIPTION = :D' +
        'ESCRIPTION, ORDER_NUMBER = :ORDER_NUMBER, XML_CODE = :XML_CODE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, UNIT, DESCRIPTION, ORDER_NUMBER, XML_CODE ' +
        'FROM UNIT_MEASURE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM UNIT_MEASURE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM UNIT_MEASURE'
      ''
      ') q')
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from Unit_measure'
      'where serial_number=:serial')
    AutoCommit = False
    Left = 472
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serial'
        Value = nil
      end>
    object TableSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object TableSQLUNIT: TStringField
      FieldName = 'UNIT'
      FixedChar = True
      Size = 3
    end
    object TableSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 15
    end
    object TableSQLORDER_NUMBER: TFloatField
      FieldName = 'ORDER_NUMBER'
    end
    object TableSQLXML_CODE: TStringField
      FieldName = 'XML_CODE'
      FixedChar = True
      Size = 3
    end
  end
  object TableSRC: TIBCDataSource
    DataSet = TableSQL
    Left = 520
    Top = 40
  end
  object MakeSQL: TIBCQuery
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO UNIT_MEASURE'
      '  (SERIAL_NUMBER, UNIT, DESCRIPTION, ORDER_NUMBER, XML_CODE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :UNIT, :DESCRIPTION, :ORDER_NUMBER, :XML_CODE' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM UNIT_MEASURE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE UNIT_MEASURE'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, UNIT = :UNIT, DESCRIPTION = :D' +
        'ESCRIPTION, ORDER_NUMBER = :ORDER_NUMBER, XML_CODE = :XML_CODE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, UNIT, DESCRIPTION, ORDER_NUMBER, XML_CODE ' +
        'FROM UNIT_MEASURE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM UNIT_MEASURE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM UNIT_MEASURE'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = MainFRM.read
    UpdateTransaction = MainFRM.write
    SQL.Strings = (
      'select * from unit_measure')
    ReadOnly = True
    Left = 585
    Top = 37
  end
  object Make2SQL: TIBCSQL
    Connection = ClairDML.CabCOnnection
    Left = 496
    Top = 96
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 416
    Top = 160
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 424
    Top = 104
  end
  object HawbSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'HAWB_SERIAL_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      
        '  (HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARING_STATE, FK_INVOICE_S' +
        'TATUS, DESCRIPTION, FK_CUSTOMER_CODE, WEIGHT, FK_CURRENCY, EXCHA' +
        'NGE_RATE, INVOICE_TOTAL, FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, O' +
        'THER_CHARGE_AMOUNT, OTHER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_I' +
        'NVOICABLE, SERIAL_NUMBER, CUSTOMS_VALUE, INVOICE_SERIAL, COURIER' +
        '_INVOICE_SERIAL, COURIER_INVOICE_VALUE, HIGH_VALUE, FK_SEC_MAWB_' +
        'REFER_NUMBER, EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES, DATE_' +
        'INVOICED, SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED, TOTAL_NUM_OF_PIEC' +
        'ES, FK_CLEARANCE_TYPE, FK_DELIVERY_TERM, ORIGIN_STATION, EC2_NUM' +
        'BER_DATE, SENDERS_INV_NO, NUMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT' +
        ', DISTRICT, DELIVERY_ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT, FK_OTHE' +
        'R2_CHARGE_CODE, POSOSTOSIS, TOTAL_DUTIES, CLEARANCE_WAITING_CODE' +
        ', CLEARANCE_WAITING_REASON, DATE_CLEARED, DATE_REGISTERED, FACTO' +
        'R, FK_COUNTRY_ORIGIN, CHARGE_TRL, CHARGE_VAT, CHARGE_EXCISE, CHA' +
        'RGE_IMPORT, INVOICABLE, TOTAL_CHARGES, CUSTOMER_NAME, EDE_COMMEN' +
        'TS, FK_MAWB_ID, SIGNATORY_NAME, XML_HOUSE_ID, SENDER_NAME, SENDE' +
        'R_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRESS_3, IS_PRIVATE, DEL' +
        'IVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT, FK_OTHER4_CHARGE, IS_PAID,' +
        ' PARTIAL_FLAG, PARTIAL_WEIGHT, PARTIAL_DELIVERY_ORDER_ID, PARTIA' +
        'L_MAWB_ID, PARTIAL_PIECES, PARTIAL_MAWB_REFER_NUMBER, STATUS_C, ' +
        'IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHARGED_DELIVERY, IS_VALID, IS_PR' +
        'EPAID, OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE, FK_CLEARANCE_INSTR' +
        'UCTION, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY)'
      'VALUES'
      
        '  (:HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CLEARING_STATE, :FK_INVOI' +
        'CE_STATUS, :DESCRIPTION, :FK_CUSTOMER_CODE, :WEIGHT, :FK_CURRENC' +
        'Y, :EXCHANGE_RATE, :INVOICE_TOTAL, :FREIGHT_AMOUNT, :FK_OTHER_CH' +
        'ARGE_CODE, :OTHER_CHARGE_AMOUNT, :OTHER_CHARGE_PAID, :STAMPS_AMO' +
        'UNT, :EXPS_NON_INVOICABLE, :SERIAL_NUMBER, :CUSTOMS_VALUE, :INVO' +
        'ICE_SERIAL, :COURIER_INVOICE_SERIAL, :COURIER_INVOICE_VALUE, :HI' +
        'GH_VALUE, :FK_SEC_MAWB_REFER_NUMBER, :EDE_STORAGE_EXPENSES, :EDE' +
        '_DELIVERY_EXPENSES, :DATE_INVOICED, :SENT_TO_HEAD, :NUM_OF_PIECE' +
        'S_ARRIVED, :TOTAL_NUM_OF_PIECES, :FK_CLEARANCE_TYPE, :FK_DELIVER' +
        'Y_TERM, :ORIGIN_STATION, :EC2_NUMBER_DATE, :SENDERS_INV_NO, :NUM' +
        'BER_OF_PARCELS, :FK_CUSTOMER_ACCOUNT, :DISTRICT, :DELIVERY_ORDER' +
        '_AMOUNT, :OTHER2_CHARGE_AMOUNT, :FK_OTHER2_CHARGE_CODE, :POSOSTO' +
        'SIS, :TOTAL_DUTIES, :CLEARANCE_WAITING_CODE, :CLEARANCE_WAITING_' +
        'REASON, :DATE_CLEARED, :DATE_REGISTERED, :FACTOR, :FK_COUNTRY_OR' +
        'IGIN, :CHARGE_TRL, :CHARGE_VAT, :CHARGE_EXCISE, :CHARGE_IMPORT, ' +
        ':INVOICABLE, :TOTAL_CHARGES, :CUSTOMER_NAME, :EDE_COMMENTS, :FK_' +
        'MAWB_ID, :SIGNATORY_NAME, :XML_HOUSE_ID, :SENDER_NAME, :SENDER_A' +
        'DDRESS_1, :SENDER_ADDRESS_2, :SENDER_ADDRESS_3, :IS_PRIVATE, :DE' +
        'LIVERY_ORDER_ID, :OTHER4_CHARGE_AMOUNT, :FK_OTHER4_CHARGE, :IS_P' +
        'AID, :PARTIAL_FLAG, :PARTIAL_WEIGHT, :PARTIAL_DELIVERY_ORDER_ID,' +
        ' :PARTIAL_MAWB_ID, :PARTIAL_PIECES, :PARTIAL_MAWB_REFER_NUMBER, ' +
        ':STATUS_C, :IS_MEDIUM, :MEDIUM_VAT_RATE, :IS_CHARGED_DELIVERY, :' +
        'IS_VALID, :IS_PREPAID, :OTHER5_CHARGE_AMOUNT, :FK_DUTY_RELIEVE, ' +
        ':FK_CLEARANCE_INSTRUCTION, :SENDER_POST_CODE, :SENDER_CITY, :SEN' +
        'DER_COUNTRY)'
      'RETURNING '
      
        '  HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARING_STATE, FK_INVOICE_ST' +
        'ATUS, DESCRIPTION, FK_CUSTOMER_CODE, WEIGHT, FK_CURRENCY, EXCHAN' +
        'GE_RATE, INVOICE_TOTAL, FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, OT' +
        'HER_CHARGE_AMOUNT, OTHER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_IN' +
        'VOICABLE, SERIAL_NUMBER, CUSTOMS_VALUE, INVOICE_SERIAL, COURIER_' +
        'INVOICE_SERIAL, COURIER_INVOICE_VALUE, HIGH_VALUE, FK_SEC_MAWB_R' +
        'EFER_NUMBER, EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES, DATE_I' +
        'NVOICED, SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED, TOTAL_NUM_OF_PIECE' +
        'S, FK_CLEARANCE_TYPE, FK_DELIVERY_TERM, ORIGIN_STATION, EC2_NUMB' +
        'ER_DATE, SENDERS_INV_NO, NUMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT,' +
        ' DISTRICT, DELIVERY_ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT, FK_OTHER' +
        '2_CHARGE_CODE, POSOSTOSIS, TOTAL_DUTIES, CLEARANCE_WAITING_CODE,' +
        ' CLEARANCE_WAITING_REASON, DATE_CLEARED, DATE_REGISTERED, FACTOR' +
        ', FK_COUNTRY_ORIGIN, CHARGE_TRL, CHARGE_VAT, CHARGE_EXCISE, CHAR' +
        'GE_IMPORT, INVOICABLE, TOTAL_CHARGES, CUSTOMER_NAME, EDE_COMMENT' +
        'S, FK_MAWB_ID, SIGNATORY_NAME, XML_HOUSE_ID, SENDER_NAME, SENDER' +
        '_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRESS_3, IS_PRIVATE, DELI' +
        'VERY_ORDER_ID, OTHER4_CHARGE_AMOUNT, FK_OTHER4_CHARGE, IS_PAID, ' +
        'PARTIAL_FLAG, PARTIAL_WEIGHT, PARTIAL_DELIVERY_ORDER_ID, PARTIAL' +
        '_MAWB_ID, PARTIAL_PIECES, PARTIAL_MAWB_REFER_NUMBER, STATUS_C, I' +
        'S_MEDIUM, MEDIUM_VAT_RATE, IS_CHARGED_DELIVERY, IS_VALID, IS_PRE' +
        'PAID, OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE, FK_CLEARANCE_INSTRU' +
        'CTION, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      
        '  HAB_ID = :HAB_ID, FK_MAWB_REFER_NUMBER = :FK_MAWB_REFER_NUMBER' +
        ', FK_CLEARING_STATE = :FK_CLEARING_STATE, FK_INVOICE_STATUS = :F' +
        'K_INVOICE_STATUS, DESCRIPTION = :DESCRIPTION, FK_CUSTOMER_CODE =' +
        ' :FK_CUSTOMER_CODE, WEIGHT = :WEIGHT, FK_CURRENCY = :FK_CURRENCY' +
        ', EXCHANGE_RATE = :EXCHANGE_RATE, INVOICE_TOTAL = :INVOICE_TOTAL' +
        ', FREIGHT_AMOUNT = :FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE = :FK_O' +
        'THER_CHARGE_CODE, OTHER_CHARGE_AMOUNT = :OTHER_CHARGE_AMOUNT, OT' +
        'HER_CHARGE_PAID = :OTHER_CHARGE_PAID, STAMPS_AMOUNT = :STAMPS_AM' +
        'OUNT, EXPS_NON_INVOICABLE = :EXPS_NON_INVOICABLE, SERIAL_NUMBER ' +
        '= :SERIAL_NUMBER, CUSTOMS_VALUE = :CUSTOMS_VALUE, INVOICE_SERIAL' +
        ' = :INVOICE_SERIAL, COURIER_INVOICE_SERIAL = :COURIER_INVOICE_SE' +
        'RIAL, COURIER_INVOICE_VALUE = :COURIER_INVOICE_VALUE, HIGH_VALUE' +
        ' = :HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER = :FK_SEC_MAWB_REFER_NU' +
        'MBER, EDE_STORAGE_EXPENSES = :EDE_STORAGE_EXPENSES, EDE_DELIVERY' +
        '_EXPENSES = :EDE_DELIVERY_EXPENSES, DATE_INVOICED = :DATE_INVOIC' +
        'ED, SENT_TO_HEAD = :SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED = :NUM_O' +
        'F_PIECES_ARRIVED, TOTAL_NUM_OF_PIECES = :TOTAL_NUM_OF_PIECES, FK' +
        '_CLEARANCE_TYPE = :FK_CLEARANCE_TYPE, FK_DELIVERY_TERM = :FK_DEL' +
        'IVERY_TERM, ORIGIN_STATION = :ORIGIN_STATION, EC2_NUMBER_DATE = ' +
        ':EC2_NUMBER_DATE, SENDERS_INV_NO = :SENDERS_INV_NO, NUMBER_OF_PA' +
        'RCELS = :NUMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT = :FK_CUSTOMER_A' +
        'CCOUNT, DISTRICT = :DISTRICT, DELIVERY_ORDER_AMOUNT = :DELIVERY_' +
        'ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT = :OTHER2_CHARGE_AMOUNT, FK_O' +
        'THER2_CHARGE_CODE = :FK_OTHER2_CHARGE_CODE, POSOSTOSIS = :POSOST' +
        'OSIS, TOTAL_DUTIES = :TOTAL_DUTIES, CLEARANCE_WAITING_CODE = :CL' +
        'EARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON = :CLEARANCE_WAIT' +
        'ING_REASON, DATE_CLEARED = :DATE_CLEARED, DATE_REGISTERED = :DAT' +
        'E_REGISTERED, FACTOR = :FACTOR, FK_COUNTRY_ORIGIN = :FK_COUNTRY_' +
        'ORIGIN, CHARGE_TRL = :CHARGE_TRL, CHARGE_VAT = :CHARGE_VAT, CHAR' +
        'GE_EXCISE = :CHARGE_EXCISE, CHARGE_IMPORT = :CHARGE_IMPORT, INVO' +
        'ICABLE = :INVOICABLE, TOTAL_CHARGES = :TOTAL_CHARGES, CUSTOMER_N' +
        'AME = :CUSTOMER_NAME, EDE_COMMENTS = :EDE_COMMENTS, FK_MAWB_ID =' +
        ' :FK_MAWB_ID, SIGNATORY_NAME = :SIGNATORY_NAME, XML_HOUSE_ID = :' +
        'XML_HOUSE_ID, SENDER_NAME = :SENDER_NAME, SENDER_ADDRESS_1 = :SE' +
        'NDER_ADDRESS_1, SENDER_ADDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADD' +
        'RESS_3 = :SENDER_ADDRESS_3, IS_PRIVATE = :IS_PRIVATE, DELIVERY_O' +
        'RDER_ID = :DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT = :OTHER4_CHA' +
        'RGE_AMOUNT, FK_OTHER4_CHARGE = :FK_OTHER4_CHARGE, IS_PAID = :IS_' +
        'PAID, PARTIAL_FLAG = :PARTIAL_FLAG, PARTIAL_WEIGHT = :PARTIAL_WE' +
        'IGHT, PARTIAL_DELIVERY_ORDER_ID = :PARTIAL_DELIVERY_ORDER_ID, PA' +
        'RTIAL_MAWB_ID = :PARTIAL_MAWB_ID, PARTIAL_PIECES = :PARTIAL_PIEC' +
        'ES, PARTIAL_MAWB_REFER_NUMBER = :PARTIAL_MAWB_REFER_NUMBER, STAT' +
        'US_C = :STATUS_C, IS_MEDIUM = :IS_MEDIUM, MEDIUM_VAT_RATE = :MED' +
        'IUM_VAT_RATE, IS_CHARGED_DELIVERY = :IS_CHARGED_DELIVERY, IS_VAL' +
        'ID = :IS_VALID, IS_PREPAID = :IS_PREPAID, OTHER5_CHARGE_AMOUNT =' +
        ' :OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE = :FK_DUTY_RELIEVE, FK_C' +
        'LEARANCE_INSTRUCTION = :FK_CLEARANCE_INSTRUCTION, SENDER_POST_CO' +
        'DE = :SENDER_POST_CODE, SENDER_CITY = :SENDER_CITY, SENDER_COUNT' +
        'RY = :SENDER_COUNTRY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARING_STATE, FK_INVOI' +
        'CE_STATUS, DESCRIPTION, FK_CUSTOMER_CODE, WEIGHT, FK_CURRENCY, E' +
        'XCHANGE_RATE, INVOICE_TOTAL, FREIGHT_AMOUNT, FK_OTHER_CHARGE_COD' +
        'E, OTHER_CHARGE_AMOUNT, OTHER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_N' +
        'ON_INVOICABLE, SERIAL_NUMBER, CUSTOMS_VALUE, INVOICE_SERIAL, COU' +
        'RIER_INVOICE_SERIAL, COURIER_INVOICE_VALUE, HIGH_VALUE, FK_SEC_M' +
        'AWB_REFER_NUMBER, EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES, D' +
        'ATE_INVOICED, SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED, TOTAL_NUM_OF_' +
        'PIECES, FK_CLEARANCE_TYPE, FK_DELIVERY_TERM, ORIGIN_STATION, EC2' +
        '_NUMBER_DATE, SENDERS_INV_NO, NUMBER_OF_PARCELS, FK_CUSTOMER_ACC' +
        'OUNT, DISTRICT, DELIVERY_ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT, FK_' +
        'OTHER2_CHARGE_CODE, POSOSTOSIS, TOTAL_DUTIES, CLEARANCE_WAITING_' +
        'CODE, CLEARANCE_WAITING_REASON, DATE_CLEARED, DATE_REGISTERED, F' +
        'ACTOR, FK_COUNTRY_ORIGIN, CHARGE_TRL, CHARGE_VAT, CHARGE_EXCISE,' +
        ' CHARGE_IMPORT, INVOICABLE, TOTAL_CHARGES, CUSTOMER_NAME, EDE_CO' +
        'MMENTS, FK_MAWB_ID, SIGNATORY_NAME, XML_HOUSE_ID, SENDER_NAME, S' +
        'ENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRESS_3, IS_PRIVATE,' +
        ' DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT, FK_OTHER4_CHARGE, IS_P' +
        'AID, PARTIAL_FLAG, PARTIAL_WEIGHT, PARTIAL_DELIVERY_ORDER_ID, PA' +
        'RTIAL_MAWB_ID, PARTIAL_PIECES, PARTIAL_MAWB_REFER_NUMBER, STATUS' +
        '_C, IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHARGED_DELIVERY, IS_VALID, I' +
        'S_PREPAID, OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE, FK_CLEARANCE_I' +
        'NSTRUCTION, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY FROM H' +
        'AWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    SQL.Strings = (
      'Select '
      '* '
      'From'
      '  Hawb'
      'where '
      '  SERIAL_NUMBER= :SerialNumber')
    FetchAll = True
    Left = 320
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SerialNumber'
        Value = nil
      end>
    object HawbSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
    end
    object HawbSQLFK_CLEARING_STATE: TStringField
      FieldName = 'FK_CLEARING_STATE'
      Size = 1
    end
    object HawbSQLFK_INVOICE_STATUS: TStringField
      FieldName = 'FK_INVOICE_STATUS'
      Size = 1
    end
    object HawbSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object HawbSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
    end
    object HawbSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object HawbSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Size = 3
    end
    object HawbSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
    end
    object HawbSQLINVOICE_TOTAL: TFloatField
      FieldName = 'INVOICE_TOTAL'
    end
    object HawbSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
    end
    object HawbSQLFK_OTHER_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER_CHARGE_CODE'
      Size = 6
    end
    object HawbSQLOTHER_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER_CHARGE_AMOUNT'
    end
    object HawbSQLOTHER_CHARGE_PAID: TStringField
      FieldName = 'OTHER_CHARGE_PAID'
      Size = 1
    end
    object HawbSQLSTAMPS_AMOUNT: TFloatField
      FieldName = 'STAMPS_AMOUNT'
    end
    object HawbSQLEXPS_NON_INVOICABLE: TFloatField
      FieldName = 'EXPS_NON_INVOICABLE'
    end
    object HawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object HawbSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
    end
    object HawbSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
    end
    object HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField
      FieldName = 'COURIER_INVOICE_SERIAL'
    end
    object HawbSQLCOURIER_INVOICE_VALUE: TFloatField
      FieldName = 'COURIER_INVOICE_VALUE'
    end
    object HawbSQLHIGH_VALUE: TStringField
      FieldName = 'HIGH_VALUE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_SEC_MAWB_REFER_NUMBER'
    end
    object HawbSQLEDE_STORAGE_EXPENSES: TFloatField
      FieldName = 'EDE_STORAGE_EXPENSES'
    end
    object HawbSQLEDE_DELIVERY_EXPENSES: TFloatField
      FieldName = 'EDE_DELIVERY_EXPENSES'
    end
    object HawbSQLDATE_INVOICED: TDateField
      FieldName = 'DATE_INVOICED'
    end
    object HawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      DisplayLabel = 'Pieces Arrived'
      FieldName = 'NUM_OF_PIECES_ARRIVED'
      Required = True
    end
    object HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
    end
    object HawbSQLFK_CLEARANCE_TYPE: TStringField
      FieldName = 'FK_CLEARANCE_TYPE'
      Size = 12
    end
    object HawbSQLORIGIN_STATION: TStringField
      FieldName = 'ORIGIN_STATION'
      Size = 12
    end
    object HawbSQLEC2_NUMBER_DATE: TStringField
      FieldName = 'EC2_NUMBER_DATE'
      Size = 40
    end
    object HawbSQLSENDERS_INV_NO: TStringField
      FieldName = 'SENDERS_INV_NO'
      Size = 50
    end
    object HawbSQLNUMBER_OF_PARCELS: TIntegerField
      DisplayLabel = 'Pieces Total'
      FieldName = 'NUMBER_OF_PARCELS'
      Required = True
    end
    object HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField
      FieldName = 'FK_CUSTOMER_ACCOUNT'
    end
    object HawbSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      FixedChar = True
      Size = 3
    end
    object HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField
      FieldName = 'DELIVERY_ORDER_AMOUNT'
    end
    object HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER2_CHARGE_AMOUNT'
    end
    object HawbSQLFK_OTHER2_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER2_CHARGE_CODE'
      FixedChar = True
      Size = 6
    end
    object HawbSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      FixedChar = True
      Size = 1
    end
    object HawbSQLTOTAL_DUTIES: TFloatField
      FieldName = 'TOTAL_DUTIES'
    end
    object HawbSQLCLEARANCE_WAITING_CODE: TStringField
      FieldName = 'CLEARANCE_WAITING_CODE'
      FixedChar = True
      Size = 5
    end
    object HawbSQLCLEARANCE_WAITING_REASON: TStringField
      FieldName = 'CLEARANCE_WAITING_REASON'
      FixedChar = True
      Size = 40
    end
    object HawbSQLDATE_CLEARED: TDateField
      FieldName = 'DATE_CLEARED'
    end
    object HawbSQLDATE_REGISTERED: TDateField
      FieldName = 'DATE_REGISTERED'
    end
    object HawbSQLFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object HawbSQLFK_COUNTRY_ORIGIN: TIntegerField
      DisplayLabel = 'Origin Country'
      FieldName = 'FK_COUNTRY_ORIGIN'
      Required = True
    end
    object HawbSQLCHARGE_TRL: TFloatField
      FieldName = 'CHARGE_TRL'
    end
    object HawbSQLCHARGE_VAT: TFloatField
      FieldName = 'CHARGE_VAT'
    end
    object HawbSQLCHARGE_EXCISE: TFloatField
      FieldName = 'CHARGE_EXCISE'
    end
    object HawbSQLCHARGE_IMPORT: TFloatField
      FieldName = 'CHARGE_IMPORT'
    end
    object HawbSQLINVOICABLE: TStringField
      FieldName = 'INVOICABLE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
    end
    object HawbSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object HawbSQLEDE_COMMENTS: TStringField
      FieldName = 'EDE_COMMENTS'
      Size = 100
    end
    object HawbSQLFK_MAWB_ID: TStringField
      FieldName = 'FK_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object HawbSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      FixedChar = True
      Size = 50
    end
    object HawbSQLXML_HOUSE_ID: TStringField
      FieldName = 'XML_HOUSE_ID'
      FixedChar = True
      Size = 13
    end
    object HawbSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      FixedChar = True
      Size = 60
    end
    object HawbSQLIS_PRIVATE: TStringField
      FieldName = 'IS_PRIVATE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLDELIVERY_ORDER_ID: TStringField
      FieldName = 'DELIVERY_ORDER_ID'
      FixedChar = True
      Size = 10
    end
    object HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER4_CHARGE_AMOUNT'
    end
    object HawbSQLFK_OTHER4_CHARGE: TStringField
      FieldName = 'FK_OTHER4_CHARGE'
      FixedChar = True
      Size = 3
    end
    object HawbSQLIS_PAID: TStringField
      FieldName = 'IS_PAID'
      FixedChar = True
      Size = 1
    end
    object HawbSQLPARTIAL_FLAG: TStringField
      FieldName = 'PARTIAL_FLAG'
      FixedChar = True
      Size = 1
    end
    object HawbSQLPARTIAL_WEIGHT: TFloatField
      FieldName = 'PARTIAL_WEIGHT'
    end
    object HawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField
      FieldName = 'PARTIAL_DELIVERY_ORDER_ID'
      Size = 10
    end
    object HawbSQLPARTIAL_MAWB_ID: TStringField
      FieldName = 'PARTIAL_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object HawbSQLPARTIAL_PIECES: TIntegerField
      FieldName = 'PARTIAL_PIECES'
    end
    object HawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'PARTIAL_MAWB_REFER_NUMBER'
    end
    object HawbSQLSTATUS_C: TStringField
      FieldName = 'STATUS_C'
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_MEDIUM: TStringField
      FieldName = 'IS_MEDIUM'
      FixedChar = True
      Size = 1
    end
    object HawbSQLMEDIUM_VAT_RATE: TFloatField
      FieldName = 'MEDIUM_VAT_RATE'
    end
    object HawbSQLIS_CHARGED_DELIVERY: TStringField
      FieldName = 'IS_CHARGED_DELIVERY'
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_VALID: TStringField
      FieldName = 'IS_VALID'
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_PREPAID: TStringField
      FieldName = 'IS_PREPAID'
      FixedChar = True
      Size = 1
    end
    object HawbSQLOTHER5_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER5_CHARGE_AMOUNT'
    end
    object HawbSQLFK_DUTY_RELIEVE: TStringField
      FieldName = 'FK_DUTY_RELIEVE'
      FixedChar = True
      Size = 5
    end
    object HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      FixedChar = True
      Size = 5
    end
    object HawbSQLFK_DELIVERY_TERM: TStringField
      DisplayLabel = 'Incoterm'
      FieldName = 'FK_DELIVERY_TERM'
      Size = 3
    end
    object HawbSQLSENDER_POST_CODE: TStringField
      FieldName = 'SENDER_POST_CODE'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_CITY: TStringField
      FieldName = 'SENDER_CITY'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_COUNTRY: TStringField
      FieldName = 'SENDER_COUNTRY'
      FixedChar = True
      Size = 60
    end
  end
  object HawbSRC: TIBCDataSource
    DataSet = HawbSQL
    Left = 400
    Top = 32
  end
  object IdSMTP1: TIdSMTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    SASLMechanisms = <>
    Left = 32
    Top = 104
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 56
    Top = 152
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':25'
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 104
    Top = 152
  end
  object XMLDocument1: TXMLDocument
    Left = 400
    Top = 272
    DOMVendorDesc = 'MSXML'
  end
end
