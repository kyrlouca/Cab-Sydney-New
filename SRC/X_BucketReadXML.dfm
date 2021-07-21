object X_BucketreadFileFRM: TX_BucketreadFileFRM
  Left = 0
  Top = 0
  Caption = 'X_BucketReadFileFRM'
  ClientHeight = 623
  ClientWidth = 1175
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1175
    Height = 53
    Align = alTop
    BorderOuter = fsGroove
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 1165
      Height = 43
      Align = alClient
      Alignment = taCenter
      Caption = 'Read New XML Files'
      Color = clYellow
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      ExplicitWidth = 266
      ExplicitHeight = 32
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 53
    Width = 1175
    Height = 527
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    object Label2: TLabel
      Left = 424
      Top = 160
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object RzLabel1: TRzLabel
      Left = 568
      Top = 208
      Width = 43
      Height = 13
      Caption = 'RzLabel1'
    end
    object RzPanel3: TRzPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 527
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
      object activeLbl: TRzLabel
        Left = 22
        Top = 107
        Width = 147
        Height = 38
        Alignment = taCenter
        AutoSize = False
        Caption = 'Processing Files'
        Color = clBtnHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        BorderShadow = clNone
      end
      object RzBitBtn2: TRzBitBtn
        Left = 22
        Top = 57
        Width = 147
        Height = 44
        Cancel = True
        Caption = 'Start'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = RzBitBtn2Click
        Margin = -1
      end
    end
    object RzPanel4: TRzPanel
      Left = 185
      Top = 0
      Width = 990
      Height = 527
      Align = alClient
      BorderOuter = fsNone
      TabOrder = 1
      object RzFieldStatus1: TRzFieldStatus
        Left = 344
        Top = 296
        Caption = ''
      end
      object MessagesMemo: TRzMemo
        Left = 0
        Top = 41
        Width = 990
        Height = 486
        Align = alClient
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 0
      end
      object RzPanel5: TRzPanel
        Left = 0
        Top = 0
        Width = 990
        Height = 41
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 1
      end
    end
  end
  object Panel2: TRzPanel
    Left = 0
    Top = 580
    Width = 1175
    Height = 43
    Align = alBottom
    BorderOuter = fsGroove
    TabOrder = 0
    object RzPanel1: TRzPanel
      Left = 1073
      Top = 2
      Width = 100
      Height = 39
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 0
      object CloseBtn: TRzBitBtn
        Left = 6
        Top = 4
        Width = 73
        Height = 34
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
    object Button1: TButton
      Left = 22
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Delete Mawb'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 112
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Delete hawbs'
      TabOrder = 2
      Visible = False
      OnClick = Button2Click
    end
    object ValueFLD: TwwDBEdit
      Left = 209
      Top = 6
      Width = 112
      Height = 21
      TabOrder = 3
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object All: TButton
      Left = 360
      Top = 6
      Width = 75
      Height = 25
      Caption = 'All'
      TabOrder = 4
      Visible = False
      OnClick = AllClick
    end
  end
  object XMLDocument1: TXMLDocument
    Left = 216
    Top = 128
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 272
    Top = 136
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 208
    Top = 88
  end
  object HawbSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'HAWB_SERIAL_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      
        '  (SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CUSTOMER_CODE' +
        ', FK_CLEARANCE_INSTRUCTION, DESCRIPTION, WEIGHT, FK_CLEARING_STA' +
        'TE, FK_INVOICE_STATUS, FK_CURRENCY, EXCHANGE_RATE, INVOICE_TOTAL' +
        ', FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT, OTH' +
        'ER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_INVOICABLE, CUSTOMS_VALU' +
        'E, INVOICE_SERIAL, COURIER_INVOICE_SERIAL, COURIER_INVOICE_VALUE' +
        ', HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER, EDE_STORAGE_EXPENSES, ED' +
        'E_DELIVERY_EXPENSES, DATE_INVOICED, SENT_TO_HEAD, NUM_OF_PIECES_' +
        'ARRIVED, TOTAL_NUM_OF_PIECES, FK_CLEARANCE_TYPE, FK_DELIVERY_TER' +
        'M, ORIGIN_STATION, EC2_NUMBER_DATE, SENDERS_INV_NO, NUMBER_OF_PA' +
        'RCELS, FK_CUSTOMER_ACCOUNT, DISTRICT, DELIVERY_ORDER_AMOUNT, OTH' +
        'ER2_CHARGE_AMOUNT, FK_OTHER2_CHARGE_CODE, POSOSTOSIS, TOTAL_DUTI' +
        'ES, CLEARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON, DATE_CLEAR' +
        'ED, DATE_REGISTERED, FACTOR, FK_COUNTRY_ORIGIN, CHARGE_TRL, CHAR' +
        'GE_VAT, CHARGE_EXCISE, CHARGE_IMPORT, INVOICABLE, TOTAL_CHARGES,' +
        ' CUSTOMER_NAME, EDE_COMMENTS, FK_MAWB_ID, SIGNATORY_NAME, XML_HO' +
        'USE_ID, SENDER_NAME, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SENDER_' +
        'ADDRESS_3, IS_PRIVATE, DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT, ' +
        'FK_OTHER4_CHARGE, IS_PAID, PARTIAL_FLAG, PARTIAL_WEIGHT, PARTIAL' +
        '_DELIVERY_ORDER_ID, PARTIAL_MAWB_ID, PARTIAL_PIECES, PARTIAL_MAW' +
        'B_REFER_NUMBER, STATUS_C, IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHARGED' +
        '_DELIVERY, IS_VALID, IS_PREPAID, OTHER5_CHARGE_AMOUNT, FK_DUTY_R' +
        'ELIEVE, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY, CUSTOMER_' +
        'VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT, IS_LOW, DESTINATION_STATION' +
        ', IS_OVERRIDE_MEDIUM, IS_FROM_BUCKET, BUCKET_REFERENCE_NUMBER, W' +
        'EIGHT_GROSS, PROCEDURE_CODE, IOSS, DUTY_BILLING_ACCOUNT, IS_LOCK' +
        'ED, FILE_NAME)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CUSTOMER_' +
        'CODE, :FK_CLEARANCE_INSTRUCTION, :DESCRIPTION, :WEIGHT, :FK_CLEA' +
        'RING_STATE, :FK_INVOICE_STATUS, :FK_CURRENCY, :EXCHANGE_RATE, :I' +
        'NVOICE_TOTAL, :FREIGHT_AMOUNT, :FK_OTHER_CHARGE_CODE, :OTHER_CHA' +
        'RGE_AMOUNT, :OTHER_CHARGE_PAID, :STAMPS_AMOUNT, :EXPS_NON_INVOIC' +
        'ABLE, :CUSTOMS_VALUE, :INVOICE_SERIAL, :COURIER_INVOICE_SERIAL, ' +
        ':COURIER_INVOICE_VALUE, :HIGH_VALUE, :FK_SEC_MAWB_REFER_NUMBER, ' +
        ':EDE_STORAGE_EXPENSES, :EDE_DELIVERY_EXPENSES, :DATE_INVOICED, :' +
        'SENT_TO_HEAD, :NUM_OF_PIECES_ARRIVED, :TOTAL_NUM_OF_PIECES, :FK_' +
        'CLEARANCE_TYPE, :FK_DELIVERY_TERM, :ORIGIN_STATION, :EC2_NUMBER_' +
        'DATE, :SENDERS_INV_NO, :NUMBER_OF_PARCELS, :FK_CUSTOMER_ACCOUNT,' +
        ' :DISTRICT, :DELIVERY_ORDER_AMOUNT, :OTHER2_CHARGE_AMOUNT, :FK_O' +
        'THER2_CHARGE_CODE, :POSOSTOSIS, :TOTAL_DUTIES, :CLEARANCE_WAITIN' +
        'G_CODE, :CLEARANCE_WAITING_REASON, :DATE_CLEARED, :DATE_REGISTER' +
        'ED, :FACTOR, :FK_COUNTRY_ORIGIN, :CHARGE_TRL, :CHARGE_VAT, :CHAR' +
        'GE_EXCISE, :CHARGE_IMPORT, :INVOICABLE, :TOTAL_CHARGES, :CUSTOME' +
        'R_NAME, :EDE_COMMENTS, :FK_MAWB_ID, :SIGNATORY_NAME, :XML_HOUSE_' +
        'ID, :SENDER_NAME, :SENDER_ADDRESS_1, :SENDER_ADDRESS_2, :SENDER_' +
        'ADDRESS_3, :IS_PRIVATE, :DELIVERY_ORDER_ID, :OTHER4_CHARGE_AMOUN' +
        'T, :FK_OTHER4_CHARGE, :IS_PAID, :PARTIAL_FLAG, :PARTIAL_WEIGHT, ' +
        ':PARTIAL_DELIVERY_ORDER_ID, :PARTIAL_MAWB_ID, :PARTIAL_PIECES, :' +
        'PARTIAL_MAWB_REFER_NUMBER, :STATUS_C, :IS_MEDIUM, :MEDIUM_VAT_RA' +
        'TE, :IS_CHARGED_DELIVERY, :IS_VALID, :IS_PREPAID, :OTHER5_CHARGE' +
        '_AMOUNT, :FK_DUTY_RELIEVE, :SENDER_POST_CODE, :SENDER_CITY, :SEN' +
        'DER_COUNTRY, :CUSTOMER_VAT_ID, :CUSTOMER_AUTHORITY_TO_AGENT, :IS' +
        '_LOW, :DESTINATION_STATION, :IS_OVERRIDE_MEDIUM, :IS_FROM_BUCKET' +
        ', :BUCKET_REFERENCE_NUMBER, :WEIGHT_GROSS, :PROCEDURE_CODE, :IOS' +
        'S, :DUTY_BILLING_ACCOUNT, :IS_LOCKED, :FILE_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, HAB_ID = :HAB_ID, FK_MAWB_REFE' +
        'R_NUMBER = :FK_MAWB_REFER_NUMBER, FK_CUSTOMER_CODE = :FK_CUSTOME' +
        'R_CODE, FK_CLEARANCE_INSTRUCTION = :FK_CLEARANCE_INSTRUCTION, DE' +
        'SCRIPTION = :DESCRIPTION, WEIGHT = :WEIGHT, FK_CLEARING_STATE = ' +
        ':FK_CLEARING_STATE, FK_INVOICE_STATUS = :FK_INVOICE_STATUS, FK_C' +
        'URRENCY = :FK_CURRENCY, EXCHANGE_RATE = :EXCHANGE_RATE, INVOICE_' +
        'TOTAL = :INVOICE_TOTAL, FREIGHT_AMOUNT = :FREIGHT_AMOUNT, FK_OTH' +
        'ER_CHARGE_CODE = :FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT = :O' +
        'THER_CHARGE_AMOUNT, OTHER_CHARGE_PAID = :OTHER_CHARGE_PAID, STAM' +
        'PS_AMOUNT = :STAMPS_AMOUNT, EXPS_NON_INVOICABLE = :EXPS_NON_INVO' +
        'ICABLE, CUSTOMS_VALUE = :CUSTOMS_VALUE, INVOICE_SERIAL = :INVOIC' +
        'E_SERIAL, COURIER_INVOICE_SERIAL = :COURIER_INVOICE_SERIAL, COUR' +
        'IER_INVOICE_VALUE = :COURIER_INVOICE_VALUE, HIGH_VALUE = :HIGH_V' +
        'ALUE, FK_SEC_MAWB_REFER_NUMBER = :FK_SEC_MAWB_REFER_NUMBER, EDE_' +
        'STORAGE_EXPENSES = :EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES ' +
        '= :EDE_DELIVERY_EXPENSES, DATE_INVOICED = :DATE_INVOICED, SENT_T' +
        'O_HEAD = :SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED = :NUM_OF_PIECES_A' +
        'RRIVED, TOTAL_NUM_OF_PIECES = :TOTAL_NUM_OF_PIECES, FK_CLEARANCE' +
        '_TYPE = :FK_CLEARANCE_TYPE, FK_DELIVERY_TERM = :FK_DELIVERY_TERM' +
        ', ORIGIN_STATION = :ORIGIN_STATION, EC2_NUMBER_DATE = :EC2_NUMBE' +
        'R_DATE, SENDERS_INV_NO = :SENDERS_INV_NO, NUMBER_OF_PARCELS = :N' +
        'UMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT = :FK_CUSTOMER_ACCOUNT, DI' +
        'STRICT = :DISTRICT, DELIVERY_ORDER_AMOUNT = :DELIVERY_ORDER_AMOU' +
        'NT, OTHER2_CHARGE_AMOUNT = :OTHER2_CHARGE_AMOUNT, FK_OTHER2_CHAR' +
        'GE_CODE = :FK_OTHER2_CHARGE_CODE, POSOSTOSIS = :POSOSTOSIS, TOTA' +
        'L_DUTIES = :TOTAL_DUTIES, CLEARANCE_WAITING_CODE = :CLEARANCE_WA' +
        'ITING_CODE, CLEARANCE_WAITING_REASON = :CLEARANCE_WAITING_REASON' +
        ', DATE_CLEARED = :DATE_CLEARED, DATE_REGISTERED = :DATE_REGISTER' +
        'ED, FACTOR = :FACTOR, FK_COUNTRY_ORIGIN = :FK_COUNTRY_ORIGIN, CH' +
        'ARGE_TRL = :CHARGE_TRL, CHARGE_VAT = :CHARGE_VAT, CHARGE_EXCISE ' +
        '= :CHARGE_EXCISE, CHARGE_IMPORT = :CHARGE_IMPORT, INVOICABLE = :' +
        'INVOICABLE, TOTAL_CHARGES = :TOTAL_CHARGES, CUSTOMER_NAME = :CUS' +
        'TOMER_NAME, EDE_COMMENTS = :EDE_COMMENTS, FK_MAWB_ID = :FK_MAWB_' +
        'ID, SIGNATORY_NAME = :SIGNATORY_NAME, XML_HOUSE_ID = :XML_HOUSE_' +
        'ID, SENDER_NAME = :SENDER_NAME, SENDER_ADDRESS_1 = :SENDER_ADDRE' +
        'SS_1, SENDER_ADDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADDRESS_3 = :' +
        'SENDER_ADDRESS_3, IS_PRIVATE = :IS_PRIVATE, DELIVERY_ORDER_ID = ' +
        ':DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT = :OTHER4_CHARGE_AMOUNT' +
        ', FK_OTHER4_CHARGE = :FK_OTHER4_CHARGE, IS_PAID = :IS_PAID, PART' +
        'IAL_FLAG = :PARTIAL_FLAG, PARTIAL_WEIGHT = :PARTIAL_WEIGHT, PART' +
        'IAL_DELIVERY_ORDER_ID = :PARTIAL_DELIVERY_ORDER_ID, PARTIAL_MAWB' +
        '_ID = :PARTIAL_MAWB_ID, PARTIAL_PIECES = :PARTIAL_PIECES, PARTIA' +
        'L_MAWB_REFER_NUMBER = :PARTIAL_MAWB_REFER_NUMBER, STATUS_C = :ST' +
        'ATUS_C, IS_MEDIUM = :IS_MEDIUM, MEDIUM_VAT_RATE = :MEDIUM_VAT_RA' +
        'TE, IS_CHARGED_DELIVERY = :IS_CHARGED_DELIVERY, IS_VALID = :IS_V' +
        'ALID, IS_PREPAID = :IS_PREPAID, OTHER5_CHARGE_AMOUNT = :OTHER5_C' +
        'HARGE_AMOUNT, FK_DUTY_RELIEVE = :FK_DUTY_RELIEVE, SENDER_POST_CO' +
        'DE = :SENDER_POST_CODE, SENDER_CITY = :SENDER_CITY, SENDER_COUNT' +
        'RY = :SENDER_COUNTRY, CUSTOMER_VAT_ID = :CUSTOMER_VAT_ID, CUSTOM' +
        'ER_AUTHORITY_TO_AGENT = :CUSTOMER_AUTHORITY_TO_AGENT, IS_LOW = :' +
        'IS_LOW, DESTINATION_STATION = :DESTINATION_STATION, IS_OVERRIDE_' +
        'MEDIUM = :IS_OVERRIDE_MEDIUM, IS_FROM_BUCKET = :IS_FROM_BUCKET, ' +
        'BUCKET_REFERENCE_NUMBER = :BUCKET_REFERENCE_NUMBER, WEIGHT_GROSS' +
        ' = :WEIGHT_GROSS, PROCEDURE_CODE = :PROCEDURE_CODE, IOSS = :IOSS' +
        ', DUTY_BILLING_ACCOUNT = :DUTY_BILLING_ACCOUNT, IS_LOCKED = :IS_' +
        'LOCKED, FILE_NAME = :FILE_NAME'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, HAB_ID, FK_MAWB_REFER_NUMBER, FK_CUSTOMER_' +
        'CODE, FK_CLEARANCE_INSTRUCTION, DESCRIPTION, WEIGHT, FK_CLEARING' +
        '_STATE, FK_INVOICE_STATUS, FK_CURRENCY, EXCHANGE_RATE, INVOICE_T' +
        'OTAL, FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, OTHER_CHARGE_AMOUNT,' +
        ' OTHER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_INVOICABLE, CUSTOMS_' +
        'VALUE, INVOICE_SERIAL, COURIER_INVOICE_SERIAL, COURIER_INVOICE_V' +
        'ALUE, HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER, EDE_STORAGE_EXPENSES' +
        ', EDE_DELIVERY_EXPENSES, DATE_INVOICED, SENT_TO_HEAD, NUM_OF_PIE' +
        'CES_ARRIVED, TOTAL_NUM_OF_PIECES, FK_CLEARANCE_TYPE, FK_DELIVERY' +
        '_TERM, ORIGIN_STATION, EC2_NUMBER_DATE, SENDERS_INV_NO, NUMBER_O' +
        'F_PARCELS, FK_CUSTOMER_ACCOUNT, DISTRICT, DELIVERY_ORDER_AMOUNT,' +
        ' OTHER2_CHARGE_AMOUNT, FK_OTHER2_CHARGE_CODE, POSOSTOSIS, TOTAL_' +
        'DUTIES, CLEARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON, DATE_C' +
        'LEARED, DATE_REGISTERED, FACTOR, FK_COUNTRY_ORIGIN, CHARGE_TRL, ' +
        'CHARGE_VAT, CHARGE_EXCISE, CHARGE_IMPORT, INVOICABLE, TOTAL_CHAR' +
        'GES, CUSTOMER_NAME, EDE_COMMENTS, FK_MAWB_ID, SIGNATORY_NAME, XM' +
        'L_HOUSE_ID, SENDER_NAME, SENDER_ADDRESS_1, SENDER_ADDRESS_2, SEN' +
        'DER_ADDRESS_3, IS_PRIVATE, DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOU' +
        'NT, FK_OTHER4_CHARGE, IS_PAID, PARTIAL_FLAG, PARTIAL_WEIGHT, PAR' +
        'TIAL_DELIVERY_ORDER_ID, PARTIAL_MAWB_ID, PARTIAL_PIECES, PARTIAL' +
        '_MAWB_REFER_NUMBER, STATUS_C, IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHA' +
        'RGED_DELIVERY, IS_VALID, IS_PREPAID, OTHER5_CHARGE_AMOUNT, FK_DU' +
        'TY_RELIEVE, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY, CUSTO' +
        'MER_VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT, IS_LOW, DESTINATION_STA' +
        'TION, IS_OVERRIDE_MEDIUM, IS_FROM_BUCKET, BUCKET_REFERENCE_NUMBE' +
        'R, WEIGHT_GROSS, PROCEDURE_CODE, IOSS, DUTY_BILLING_ACCOUNT, IS_' +
        'LOCKED, FILE_NAME FROM HAWB'
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
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select * from hawb where serial_number=-1')
    Left = 352
    Top = 152
    object HawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object HawbSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
    end
    object HawbSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
    end
    object HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      FixedChar = True
      Size = 5
    end
    object HawbSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object HawbSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object HawbSQLFK_CLEARING_STATE: TStringField
      FieldName = 'FK_CLEARING_STATE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object HawbSQLFK_INVOICE_STATUS: TStringField
      FieldName = 'FK_INVOICE_STATUS'
      Required = True
      FixedChar = True
      Size = 1
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
      FixedChar = True
      Size = 1
    end
    object HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
    end
    object HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
    end
    object HawbSQLFK_CLEARANCE_TYPE: TStringField
      FieldName = 'FK_CLEARANCE_TYPE'
      Size = 12
    end
    object HawbSQLFK_DELIVERY_TERM: TStringField
      FieldName = 'FK_DELIVERY_TERM'
      Size = 3
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
      FieldName = 'NUMBER_OF_PARCELS'
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
      FieldName = 'FK_COUNTRY_ORIGIN'
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
    object HawbSQLCUSTOMER_VAT_ID: TStringField
      FieldName = 'CUSTOMER_VAT_ID'
      FixedChar = True
      Size = 30
    end
    object HawbSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField
      FieldName = 'CUSTOMER_AUTHORITY_TO_AGENT'
      FixedChar = True
    end
    object HawbSQLIS_LOW: TStringField
      FieldName = 'IS_LOW'
      FixedChar = True
      Size = 1
    end
    object HawbSQLDESTINATION_STATION: TStringField
      FieldName = 'DESTINATION_STATION'
      FixedChar = True
    end
    object HawbSQLIS_OVERRIDE_MEDIUM: TStringField
      FieldName = 'IS_OVERRIDE_MEDIUM'
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_FROM_BUCKET: TStringField
      FieldName = 'IS_FROM_BUCKET'
      FixedChar = True
      Size = 1
    end
    object HawbSQLBUCKET_REFERENCE_NUMBER: TStringField
      FieldName = 'BUCKET_REFERENCE_NUMBER'
      Size = 80
    end
    object HawbSQLWEIGHT_GROSS: TFloatField
      FieldName = 'WEIGHT_GROSS'
    end
    object HawbSQLPROCEDURE_CODE: TStringField
      FieldName = 'PROCEDURE_CODE'
      Size = 10
    end
    object HawbSQLIOSS: TStringField
      FieldName = 'IOSS'
      FixedChar = True
    end
    object HawbSQLDUTY_BILLING_ACCOUNT: TStringField
      FieldName = 'DUTY_BILLING_ACCOUNT'
      Size = 50
    end
    object HawbSQLIS_LOCKED: TStringField
      FieldName = 'IS_LOCKED'
      FixedChar = True
      Size = 1
    end
    object HawbSQLFILE_NAME: TStringField
      FieldName = 'FILE_NAME'
      Size = 400
    end
  end
  object MawbSQL: TIBCQuery
    KeyFields = 'reference_number'
    KeyGenerator = 'MAWB_KEY_GENERATOR'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO MAWB'
      
        '  (REFERENCE_NUMBER, MAWB_ID, DATE_ARRIVED, FK_COUNTRY_CONSIGNEE' +
        ', REFERENCE_YEAR, FK_PORT_IMPORTATION, SIGNATORY_NAME, FORM_DATE' +
        ', FLIGHT_NUMBER, PASSED, ROTATION_NUMBER, ROTATION_YEAR, FK_PORT' +
        '_CLEARING, GOODS_NUMBER, GOODS_DESCRIPTION, CBOOK_NUMBER, INVOIC' +
        'ED, SENT_TO_HEAD, CUSTOMS_OVERTIME_HOURS, CUSTOMS_OVERTIME_RATE,' +
        ' STORAGE_EXPENSES, DELIVERY_EXPENSES, AMOUNT_NOT_INVOICED, AMOUN' +
        'T_INVOICED, DATE_PASSED, GOODS_WEIGHT, HAWBS_CLEARED_FIRST_TIME,' +
        ' HAWBS_IN_MAWB, DOCS_NUMBER, DOCS_WEIGHT, HIGH_VALUE_NUMBER, HIG' +
        'H_VALUE_WEIGHT, MEDIUM_VALUE_NUMBER, MEDIUM_VALUE_WEIGHT, LOW_VA' +
        'LUE_NUMBER, LOW_VALUE_WEIGHT, CUSTOMS_OVERTIME_RATE_TYPE, XML_CO' +
        'NSOLIDATED_ID, ROTATION_2, HMSD, LOW_VALUE_TDID, STATUSC_NUMBER,' +
        ' STATUSC_WEIGHT, TDID_NEW, F63, STATUSC, TDID_MEDIUM, DHL_EQUIPM' +
        'ENT_ID, FILE_NAME_XML, MSG_TIME, MOVEMENT_NUMBER, DATE_DEPART, I' +
        'S_BUCKET, DATETIME_ARRIVED, DATETIME_DEPART)'
      'VALUES'
      
        '  (:REFERENCE_NUMBER, :MAWB_ID, :DATE_ARRIVED, :FK_COUNTRY_CONSI' +
        'GNEE, :REFERENCE_YEAR, :FK_PORT_IMPORTATION, :SIGNATORY_NAME, :F' +
        'ORM_DATE, :FLIGHT_NUMBER, :PASSED, :ROTATION_NUMBER, :ROTATION_Y' +
        'EAR, :FK_PORT_CLEARING, :GOODS_NUMBER, :GOODS_DESCRIPTION, :CBOO' +
        'K_NUMBER, :INVOICED, :SENT_TO_HEAD, :CUSTOMS_OVERTIME_HOURS, :CU' +
        'STOMS_OVERTIME_RATE, :STORAGE_EXPENSES, :DELIVERY_EXPENSES, :AMO' +
        'UNT_NOT_INVOICED, :AMOUNT_INVOICED, :DATE_PASSED, :GOODS_WEIGHT,' +
        ' :HAWBS_CLEARED_FIRST_TIME, :HAWBS_IN_MAWB, :DOCS_NUMBER, :DOCS_' +
        'WEIGHT, :HIGH_VALUE_NUMBER, :HIGH_VALUE_WEIGHT, :MEDIUM_VALUE_NU' +
        'MBER, :MEDIUM_VALUE_WEIGHT, :LOW_VALUE_NUMBER, :LOW_VALUE_WEIGHT' +
        ', :CUSTOMS_OVERTIME_RATE_TYPE, :XML_CONSOLIDATED_ID, :ROTATION_2' +
        ', :HMSD, :LOW_VALUE_TDID, :STATUSC_NUMBER, :STATUSC_WEIGHT, :TDI' +
        'D_NEW, :F63, :STATUSC, :TDID_MEDIUM, :DHL_EQUIPMENT_ID, :FILE_NA' +
        'ME_XML, :MSG_TIME, :MOVEMENT_NUMBER, :DATE_DEPART, :IS_BUCKET, :' +
        'DATETIME_ARRIVED, :DATETIME_DEPART)')
    SQLDelete.Strings = (
      'DELETE FROM MAWB'
      'WHERE'
      '  REFERENCE_NUMBER = :Old_REFERENCE_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE MAWB'
      'SET'
      
        '  REFERENCE_NUMBER = :REFERENCE_NUMBER, MAWB_ID = :MAWB_ID, DATE' +
        '_ARRIVED = :DATE_ARRIVED, FK_COUNTRY_CONSIGNEE = :FK_COUNTRY_CON' +
        'SIGNEE, REFERENCE_YEAR = :REFERENCE_YEAR, FK_PORT_IMPORTATION = ' +
        ':FK_PORT_IMPORTATION, SIGNATORY_NAME = :SIGNATORY_NAME, FORM_DAT' +
        'E = :FORM_DATE, FLIGHT_NUMBER = :FLIGHT_NUMBER, PASSED = :PASSED' +
        ', ROTATION_NUMBER = :ROTATION_NUMBER, ROTATION_YEAR = :ROTATION_' +
        'YEAR, FK_PORT_CLEARING = :FK_PORT_CLEARING, GOODS_NUMBER = :GOOD' +
        'S_NUMBER, GOODS_DESCRIPTION = :GOODS_DESCRIPTION, CBOOK_NUMBER =' +
        ' :CBOOK_NUMBER, INVOICED = :INVOICED, SENT_TO_HEAD = :SENT_TO_HE' +
        'AD, CUSTOMS_OVERTIME_HOURS = :CUSTOMS_OVERTIME_HOURS, CUSTOMS_OV' +
        'ERTIME_RATE = :CUSTOMS_OVERTIME_RATE, STORAGE_EXPENSES = :STORAG' +
        'E_EXPENSES, DELIVERY_EXPENSES = :DELIVERY_EXPENSES, AMOUNT_NOT_I' +
        'NVOICED = :AMOUNT_NOT_INVOICED, AMOUNT_INVOICED = :AMOUNT_INVOIC' +
        'ED, DATE_PASSED = :DATE_PASSED, GOODS_WEIGHT = :GOODS_WEIGHT, HA' +
        'WBS_CLEARED_FIRST_TIME = :HAWBS_CLEARED_FIRST_TIME, HAWBS_IN_MAW' +
        'B = :HAWBS_IN_MAWB, DOCS_NUMBER = :DOCS_NUMBER, DOCS_WEIGHT = :D' +
        'OCS_WEIGHT, HIGH_VALUE_NUMBER = :HIGH_VALUE_NUMBER, HIGH_VALUE_W' +
        'EIGHT = :HIGH_VALUE_WEIGHT, MEDIUM_VALUE_NUMBER = :MEDIUM_VALUE_' +
        'NUMBER, MEDIUM_VALUE_WEIGHT = :MEDIUM_VALUE_WEIGHT, LOW_VALUE_NU' +
        'MBER = :LOW_VALUE_NUMBER, LOW_VALUE_WEIGHT = :LOW_VALUE_WEIGHT, ' +
        'CUSTOMS_OVERTIME_RATE_TYPE = :CUSTOMS_OVERTIME_RATE_TYPE, XML_CO' +
        'NSOLIDATED_ID = :XML_CONSOLIDATED_ID, ROTATION_2 = :ROTATION_2, ' +
        'HMSD = :HMSD, LOW_VALUE_TDID = :LOW_VALUE_TDID, STATUSC_NUMBER =' +
        ' :STATUSC_NUMBER, STATUSC_WEIGHT = :STATUSC_WEIGHT, TDID_NEW = :' +
        'TDID_NEW, F63 = :F63, STATUSC = :STATUSC, TDID_MEDIUM = :TDID_ME' +
        'DIUM, DHL_EQUIPMENT_ID = :DHL_EQUIPMENT_ID, FILE_NAME_XML = :FIL' +
        'E_NAME_XML, MSG_TIME = :MSG_TIME, MOVEMENT_NUMBER = :MOVEMENT_NU' +
        'MBER, DATE_DEPART = :DATE_DEPART, IS_BUCKET = :IS_BUCKET, DATETI' +
        'ME_ARRIVED = :DATETIME_ARRIVED, DATETIME_DEPART = :DATETIME_DEPA' +
        'RT'
      'WHERE'
      '  REFERENCE_NUMBER = :Old_REFERENCE_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT REFERENCE_NUMBER, MAWB_ID, DATE_ARRIVED, FK_COUNTRY_CONSI' +
        'GNEE, REFERENCE_YEAR, FK_PORT_IMPORTATION, SIGNATORY_NAME, FORM_' +
        'DATE, FLIGHT_NUMBER, PASSED, ROTATION_NUMBER, ROTATION_YEAR, FK_' +
        'PORT_CLEARING, GOODS_NUMBER, GOODS_DESCRIPTION, CBOOK_NUMBER, IN' +
        'VOICED, SENT_TO_HEAD, CUSTOMS_OVERTIME_HOURS, CUSTOMS_OVERTIME_R' +
        'ATE, STORAGE_EXPENSES, DELIVERY_EXPENSES, AMOUNT_NOT_INVOICED, A' +
        'MOUNT_INVOICED, DATE_PASSED, GOODS_WEIGHT, HAWBS_CLEARED_FIRST_T' +
        'IME, HAWBS_IN_MAWB, DOCS_NUMBER, DOCS_WEIGHT, HIGH_VALUE_NUMBER,' +
        ' HIGH_VALUE_WEIGHT, MEDIUM_VALUE_NUMBER, MEDIUM_VALUE_WEIGHT, LO' +
        'W_VALUE_NUMBER, LOW_VALUE_WEIGHT, CUSTOMS_OVERTIME_RATE_TYPE, XM' +
        'L_CONSOLIDATED_ID, ROTATION_2, HMSD, LOW_VALUE_TDID, STATUSC_NUM' +
        'BER, STATUSC_WEIGHT, TDID_NEW, F63, STATUSC, TDID_MEDIUM, DHL_EQ' +
        'UIPMENT_ID, FILE_NAME_XML, MSG_TIME, MOVEMENT_NUMBER, DATE_DEPAR' +
        'T, IS_BUCKET, DATETIME_ARRIVED, DATETIME_DEPART FROM MAWB'
      'WHERE'
      '  REFERENCE_NUMBER = :REFERENCE_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM MAWB'
      'WHERE'
      'REFERENCE_NUMBER = :Old_REFERENCE_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM MAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from mawb where reference_number= :serialNumber')
    Left = 368
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serialNumber'
        Value = nil
      end>
    object MawbSQLREFERENCE_NUMBER: TIntegerField
      FieldName = 'REFERENCE_NUMBER'
    end
    object MawbSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      Size = 15
    end
    object MawbSQLDATE_ARRIVED: TDateField
      FieldName = 'DATE_ARRIVED'
    end
    object MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField
      FieldName = 'FK_COUNTRY_CONSIGNEE'
    end
    object MawbSQLREFERENCE_YEAR: TSmallintField
      FieldName = 'REFERENCE_YEAR'
      Required = True
    end
    object MawbSQLFK_PORT_IMPORTATION: TIntegerField
      FieldName = 'FK_PORT_IMPORTATION'
    end
    object MawbSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      Size = 50
    end
    object MawbSQLFORM_DATE: TDateField
      FieldName = 'FORM_DATE'
    end
    object MawbSQLFLIGHT_NUMBER: TStringField
      FieldName = 'FLIGHT_NUMBER'
      Size = 10
    end
    object MawbSQLPASSED: TStringField
      FieldName = 'PASSED'
      FixedChar = True
      Size = 1
    end
    object MawbSQLROTATION_NUMBER: TIntegerField
      FieldName = 'ROTATION_NUMBER'
    end
    object MawbSQLROTATION_YEAR: TSmallintField
      FieldName = 'ROTATION_YEAR'
    end
    object MawbSQLFK_PORT_CLEARING: TIntegerField
      FieldName = 'FK_PORT_CLEARING'
    end
    object MawbSQLGOODS_NUMBER: TIntegerField
      FieldName = 'GOODS_NUMBER'
    end
    object MawbSQLGOODS_DESCRIPTION: TStringField
      FieldName = 'GOODS_DESCRIPTION'
    end
    object MawbSQLCBOOK_NUMBER: TStringField
      FieldName = 'CBOOK_NUMBER'
      Size = 10
    end
    object MawbSQLINVOICED: TStringField
      FieldName = 'INVOICED'
      FixedChar = True
      Size = 1
    end
    object MawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      FixedChar = True
      Size = 1
    end
    object MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField
      FieldName = 'CUSTOMS_OVERTIME_HOURS'
    end
    object MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField
      FieldName = 'CUSTOMS_OVERTIME_RATE'
    end
    object MawbSQLSTORAGE_EXPENSES: TFloatField
      FieldName = 'STORAGE_EXPENSES'
    end
    object MawbSQLDELIVERY_EXPENSES: TFloatField
      FieldName = 'DELIVERY_EXPENSES'
    end
    object MawbSQLAMOUNT_NOT_INVOICED: TFloatField
      FieldName = 'AMOUNT_NOT_INVOICED'
    end
    object MawbSQLAMOUNT_INVOICED: TFloatField
      FieldName = 'AMOUNT_INVOICED'
    end
    object MawbSQLDATE_PASSED: TDateField
      FieldName = 'DATE_PASSED'
    end
    object MawbSQLGOODS_WEIGHT: TIntegerField
      FieldName = 'GOODS_WEIGHT'
    end
    object MawbSQLHAWBS_CLEARED_FIRST_TIME: TIntegerField
      FieldName = 'HAWBS_CLEARED_FIRST_TIME'
    end
    object MawbSQLHAWBS_IN_MAWB: TIntegerField
      FieldName = 'HAWBS_IN_MAWB'
    end
    object MawbSQLDOCS_NUMBER: TIntegerField
      FieldName = 'DOCS_NUMBER'
    end
    object MawbSQLDOCS_WEIGHT: TFloatField
      FieldName = 'DOCS_WEIGHT'
    end
    object MawbSQLHIGH_VALUE_NUMBER: TIntegerField
      FieldName = 'HIGH_VALUE_NUMBER'
    end
    object MawbSQLHIGH_VALUE_WEIGHT: TFloatField
      FieldName = 'HIGH_VALUE_WEIGHT'
    end
    object MawbSQLMEDIUM_VALUE_NUMBER: TIntegerField
      FieldName = 'MEDIUM_VALUE_NUMBER'
    end
    object MawbSQLMEDIUM_VALUE_WEIGHT: TFloatField
      FieldName = 'MEDIUM_VALUE_WEIGHT'
    end
    object MawbSQLLOW_VALUE_NUMBER: TIntegerField
      FieldName = 'LOW_VALUE_NUMBER'
    end
    object MawbSQLLOW_VALUE_WEIGHT: TFloatField
      FieldName = 'LOW_VALUE_WEIGHT'
    end
    object MawbSQLCUSTOMS_OVERTIME_RATE_TYPE: TStringField
      FieldName = 'CUSTOMS_OVERTIME_RATE_TYPE'
      FixedChar = True
      Size = 3
    end
    object MawbSQLXML_CONSOLIDATED_ID: TStringField
      FieldName = 'XML_CONSOLIDATED_ID'
      FixedChar = True
      Size = 13
    end
    object MawbSQLROTATION_2: TStringField
      FieldName = 'ROTATION_2'
      FixedChar = True
      Size = 2
    end
    object MawbSQLHMSD: TStringField
      FieldName = 'HMSD'
      FixedChar = True
    end
    object MawbSQLLOW_VALUE_TDID: TStringField
      FieldName = 'LOW_VALUE_TDID'
      FixedChar = True
    end
    object MawbSQLSTATUSC_NUMBER: TIntegerField
      FieldName = 'STATUSC_NUMBER'
    end
    object MawbSQLSTATUSC_WEIGHT: TIntegerField
      FieldName = 'STATUSC_WEIGHT'
    end
    object MawbSQLTDID_NEW: TStringField
      FieldName = 'TDID_NEW'
      FixedChar = True
      Size = 15
    end
    object MawbSQLF63: TStringField
      FieldName = 'F63'
      FixedChar = True
      Size = 15
    end
    object MawbSQLSTATUSC: TStringField
      FieldName = 'STATUSC'
      FixedChar = True
      Size = 15
    end
    object MawbSQLTDID_MEDIUM: TStringField
      FieldName = 'TDID_MEDIUM'
      FixedChar = True
      Size = 15
    end
    object MawbSQLDHL_EQUIPMENT_ID: TStringField
      FieldName = 'DHL_EQUIPMENT_ID'
      FixedChar = True
      Size = 15
    end
    object MawbSQLFILE_NAME_XML: TStringField
      FieldName = 'FILE_NAME_XML'
      Size = 80
    end
    object MawbSQLMSG_TIME: TDateTimeField
      FieldName = 'MSG_TIME'
    end
    object MawbSQLMOVEMENT_NUMBER: TStringField
      FieldName = 'MOVEMENT_NUMBER'
      FixedChar = True
    end
    object MawbSQLDATE_DEPART: TDateField
      FieldName = 'DATE_DEPART'
    end
    object MawbSQLIS_BUCKET: TStringField
      FieldName = 'IS_BUCKET'
      FixedChar = True
      Size = 1
    end
    object MawbSQLDATETIME_ARRIVED: TDateTimeField
      FieldName = 'DATETIME_ARRIVED'
    end
    object MawbSQLDATETIME_DEPART: TDateTimeField
      FieldName = 'DATETIME_DEPART'
    end
  end
  object SenderInvoiceSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO SENDER_INVOICE'
      
        '  (FK_HAWB_SERIAL, INVOICE_SERIAL, INVOICE_NUMBER, FK_HAWB_ID, I' +
        'NVOICE_AMOUNT, FREIGHT_AMOUNT, DISCOUNT_AMOUNT, INSURANCE_AMOUNT' +
        ', OTHER_CHARGES_AMOUNT, TOTAL_AMOUNT, CURRENCY, EXCHANGE_RATE, F' +
        'ACTOR, FREIGHT_CYP_AMOUNT, CUSTOMS_VALUE, FK_MAWB_SERIAL, IS_VAL' +
        'ID, NUMBER_OF_HAWB_ITEMS, PRE_DISCOUNT_AMOUNT, DISCOUNT_RATE, FA' +
        'CTOR_NUMERIC)'
      'VALUES'
      
        '  (:FK_HAWB_SERIAL, :INVOICE_SERIAL, :INVOICE_NUMBER, :FK_HAWB_I' +
        'D, :INVOICE_AMOUNT, :FREIGHT_AMOUNT, :DISCOUNT_AMOUNT, :INSURANC' +
        'E_AMOUNT, :OTHER_CHARGES_AMOUNT, :TOTAL_AMOUNT, :CURRENCY, :EXCH' +
        'ANGE_RATE, :FACTOR, :FREIGHT_CYP_AMOUNT, :CUSTOMS_VALUE, :FK_MAW' +
        'B_SERIAL, :IS_VALID, :NUMBER_OF_HAWB_ITEMS, :PRE_DISCOUNT_AMOUNT' +
        ', :DISCOUNT_RATE, :FACTOR_NUMERIC)')
    SQLDelete.Strings = (
      'DELETE FROM SENDER_INVOICE'
      'WHERE'
      
        '  FK_HAWB_SERIAL = :Old_FK_HAWB_SERIAL AND INVOICE_SERIAL = :Old' +
        '_INVOICE_SERIAL')
    SQLUpdate.Strings = (
      'UPDATE SENDER_INVOICE'
      'SET'
      
        '  FK_HAWB_SERIAL = :FK_HAWB_SERIAL, INVOICE_SERIAL = :INVOICE_SE' +
        'RIAL, INVOICE_NUMBER = :INVOICE_NUMBER, FK_HAWB_ID = :FK_HAWB_ID' +
        ', INVOICE_AMOUNT = :INVOICE_AMOUNT, FREIGHT_AMOUNT = :FREIGHT_AM' +
        'OUNT, DISCOUNT_AMOUNT = :DISCOUNT_AMOUNT, INSURANCE_AMOUNT = :IN' +
        'SURANCE_AMOUNT, OTHER_CHARGES_AMOUNT = :OTHER_CHARGES_AMOUNT, TO' +
        'TAL_AMOUNT = :TOTAL_AMOUNT, CURRENCY = :CURRENCY, EXCHANGE_RATE ' +
        '= :EXCHANGE_RATE, FACTOR = :FACTOR, FREIGHT_CYP_AMOUNT = :FREIGH' +
        'T_CYP_AMOUNT, CUSTOMS_VALUE = :CUSTOMS_VALUE, FK_MAWB_SERIAL = :' +
        'FK_MAWB_SERIAL, IS_VALID = :IS_VALID, NUMBER_OF_HAWB_ITEMS = :NU' +
        'MBER_OF_HAWB_ITEMS, PRE_DISCOUNT_AMOUNT = :PRE_DISCOUNT_AMOUNT, ' +
        'DISCOUNT_RATE = :DISCOUNT_RATE, FACTOR_NUMERIC = :FACTOR_NUMERIC'
      'WHERE'
      
        '  FK_HAWB_SERIAL = :Old_FK_HAWB_SERIAL AND INVOICE_SERIAL = :Old' +
        '_INVOICE_SERIAL')
    SQLRefresh.Strings = (
      
        'SELECT FK_HAWB_SERIAL, INVOICE_SERIAL, INVOICE_NUMBER, FK_HAWB_I' +
        'D, INVOICE_AMOUNT, FREIGHT_AMOUNT, DISCOUNT_AMOUNT, INSURANCE_AM' +
        'OUNT, OTHER_CHARGES_AMOUNT, TOTAL_AMOUNT, CURRENCY, EXCHANGE_RAT' +
        'E, FACTOR, FREIGHT_CYP_AMOUNT, CUSTOMS_VALUE, FK_MAWB_SERIAL, IS' +
        '_VALID, NUMBER_OF_HAWB_ITEMS, PRE_DISCOUNT_AMOUNT, DISCOUNT_RATE' +
        ', FACTOR_NUMERIC FROM SENDER_INVOICE'
      'WHERE'
      
        '  FK_HAWB_SERIAL = :FK_HAWB_SERIAL AND INVOICE_SERIAL = :INVOICE' +
        '_SERIAL')
    SQLLock.Strings = (
      'SELECT NULL FROM SENDER_INVOICE'
      'WHERE'
      
        'FK_HAWB_SERIAL = :Old_FK_HAWB_SERIAL AND INVOICE_SERIAL = :Old_I' +
        'NVOICE_SERIAL'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SENDER_INVOICE'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from sender_invoice where fk_hawb_serial = :hawbSerial')
    Left = 304
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hawbSerial'
        Value = nil
      end>
    object SenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField
      FieldName = 'FK_HAWB_SERIAL'
      Required = True
    end
    object SenderInvoiceSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
      Required = True
    end
    object SenderInvoiceSQLINVOICE_NUMBER: TStringField
      FieldName = 'INVOICE_NUMBER'
      FixedChar = True
    end
    object SenderInvoiceSQLFK_HAWB_ID: TStringField
      FieldName = 'FK_HAWB_ID'
      FixedChar = True
      Size = 10
    end
    object SenderInvoiceSQLINVOICE_AMOUNT: TFloatField
      FieldName = 'INVOICE_AMOUNT'
    end
    object SenderInvoiceSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
    end
    object SenderInvoiceSQLDISCOUNT_AMOUNT: TFloatField
      FieldName = 'DISCOUNT_AMOUNT'
    end
    object SenderInvoiceSQLINSURANCE_AMOUNT: TFloatField
      FieldName = 'INSURANCE_AMOUNT'
    end
    object SenderInvoiceSQLOTHER_CHARGES_AMOUNT: TFloatField
      FieldName = 'OTHER_CHARGES_AMOUNT'
    end
    object SenderInvoiceSQLTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
    end
    object SenderInvoiceSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SenderInvoiceSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
    end
    object SenderInvoiceSQLFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object SenderInvoiceSQLFREIGHT_CYP_AMOUNT: TFloatField
      FieldName = 'FREIGHT_CYP_AMOUNT'
    end
    object SenderInvoiceSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
    end
    object SenderInvoiceSQLFK_MAWB_SERIAL: TIntegerField
      FieldName = 'FK_MAWB_SERIAL'
    end
    object SenderInvoiceSQLIS_VALID: TStringField
      FieldName = 'IS_VALID'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SenderInvoiceSQLNUMBER_OF_HAWB_ITEMS: TIntegerField
      FieldName = 'NUMBER_OF_HAWB_ITEMS'
    end
    object SenderInvoiceSQLPRE_DISCOUNT_AMOUNT: TFloatField
      FieldName = 'PRE_DISCOUNT_AMOUNT'
    end
    object SenderInvoiceSQLDISCOUNT_RATE: TFloatField
      FieldName = 'DISCOUNT_RATE'
    end
    object SenderInvoiceSQLFACTOR_NUMERIC: TFloatField
      FieldName = 'FACTOR_NUMERIC'
    end
    object SenderInvoiceSQLINVOICE_AMOUNT_CYP: TFloatField
      FieldName = 'INVOICE_AMOUNT_CYP'
    end
  end
  object HawbItemSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'HAWB_ITEM_KEY_GENERATOR'
    GeneratorMode = gmInsert
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
      'select * from hawb_item where serial_number = :serialNumber')
    Left = 304
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serialNumber'
        Value = nil
      end>
    object HawbItemSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object HawbItemSQLFK_HAWB_SERIAL: TIntegerField
      FieldName = 'FK_HAWB_SERIAL'
      Required = True
    end
    object HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
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
    object HawbItemSQLNET_QUANTITY: TIntegerField
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
    object HawbItemSQLFK_MAWB: TIntegerField
      FieldName = 'FK_MAWB'
    end
    object HawbItemSQLFK_VAT_CODE: TIntegerField
      FieldName = 'FK_VAT_CODE'
    end
    object HawbItemSQLFK_TARIFF_C_CODE: TStringField
      FieldName = 'FK_TARIFF_C_CODE'
      FixedChar = True
      Size = 17
    end
    object HawbItemSQLFK_TARIFF_CODE: TStringField
      FieldName = 'FK_TARIFF_CODE'
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
    object HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField
      FieldName = 'FK_SENDER_INVOICE_SERIAL'
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
    object HawbItemSQLEURO_PENDING: TStringField
      FieldName = 'EURO_PENDING'
      FixedChar = True
      Size = 1
    end
    object HawbItemSQLVAT_CODE: TStringField
      FieldName = 'VAT_CODE'
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
  end
  object OpenFileDLG: TOpenDialog
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 184
    Top = 245
  end
  object OpenfileDLGoLD: TRzOpenDialog
    Left = 408
    Top = 189
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 712
    Top = 176
  end
end
