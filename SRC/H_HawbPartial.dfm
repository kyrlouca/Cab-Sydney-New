object H_hawbPartialFRM: TH_hawbPartialFRM
  Left = 700
  Top = 191
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'H_hawbPartialFRM'
  ClientHeight = 600
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 65
    Align = alTop
    Caption = ' Partial Hawb Details'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -33
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 687
    Height = 494
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 369
      Height = 169
      Caption = 'Existing Hawb'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 12
        Top = 21
        Width = 32
        Height = 16
        Caption = 'Hawb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 132
        Top = 17
        Width = 34
        Height = 16
        Caption = 'Mawb'
        FocusControl = OldMawbFLD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 20
        Top = 77
        Width = 56
        Height = 16
        Caption = 'Customer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Description: TLabel
        Left = 9
        Top = 105
        Width = 65
        Height = 16
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 35
        Top = 133
        Width = 40
        Height = 16
        Caption = 'Pieces'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 84
        Top = 101
        Width = 257
        Height = 24
        Color = clBtnFace
        DataField = 'DESCRIPTION'
        DataSource = OriginalSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object OldMawbFLD: TDBEdit
        Left = 132
        Top = 37
        Width = 113
        Height = 24
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'MAWB_ID'
        DataSource = OriginalSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object HawbFLD: TwwDBEdit
        Left = 12
        Top = 37
        Width = 105
        Height = 24
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'HAB_ID'
        DataSource = OriginalSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UsePictureMask = False
        WantReturns = False
        WordWrap = False
      end
      object CustomerNameFLD: TDBEdit
        Left = 84
        Top = 73
        Width = 257
        Height = 24
        AutoSize = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'CUSTOMER_NAME'
        DataSource = OriginalSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 84
        Top = 129
        Width = 73
        Height = 24
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'NUM_OF_PIECES_ARRIVED'
        DataSource = OriginalSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit3: TDBEdit
        Left = 172
        Top = 129
        Width = 73
        Height = 24
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'NUMBER_OF_PARCELS'
        DataSource = OriginalSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 251
        Top = 37
        Width = 90
        Height = 24
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'FK_MAWB_REFER_NUMBER'
        DataSource = OriginalSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    object GroupBox2: TGroupBox
      Left = 25
      Top = 197
      Width = 369
      Height = 185
      Caption = 'New Partial hawb'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label12: TLabel
        Left = 33
        Top = 134
        Width = 41
        Height = 16
        Caption = 'Weight'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 9
        Top = 73
        Width = 61
        Height = 16
        Caption = 'Delivery ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 33
        Top = 98
        Width = 40
        Height = 16
        Caption = 'Pieces'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 9
        Top = 41
        Width = 65
        Height = 16
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object NWeightFLD: TDBEdit
        Left = 80
        Top = 134
        Width = 73
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PARTIAL_WEIGHT'
        DataSource = PartialHawbSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object NDeliveryFLD: TDBEdit
        Left = 82
        Top = 69
        Width = 73
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PARTIAL_DELIVERY_ORDER_ID'
        DataSource = PartialHawbSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object NPiecesFLD: TDBEdit
        Left = 82
        Top = 98
        Width = 73
        Height = 24
        CharCase = ecUpperCase
        DataField = 'PARTIAL_PIECES'
        DataSource = PartialHawbSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 82
        Top = 39
        Width = 231
        Height = 24
        CharCase = ecUpperCase
        DataField = 'DESCRIPTION'
        DataSource = PartialHawbSRC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 559
    Width = 687
    Height = 41
    Align = alBottom
    BorderOuter = fsGroove
    TabOrder = 2
    object AcceptBTN: TBitBtn
      Left = 16
      Top = 4
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
      Top = 4
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
  end
  object PartialHawbSRC: TDataSource
    DataSet = ThePartialHawbSQL
    Left = 440
    Top = 49
  end
  object OriginalHawbSQL: TIBCQuery
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
        'VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT, IS_LOW)'
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
        '_LOW)')
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
        'IS_LOW'
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
        'MER_VAT_ID, CUSTOMER_AUTHORITY_TO_AGENT, IS_LOW FROM HAWB'
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
      'Select ha.*, ma.mawb_id '
      'from Hawb ha'
      'left outer join mawb ma'
      'on ha.FK_MAWB_REFER_NUMBER=ma.reference_number'
      'where ha.serial_number= :HawbSerial')
    UniDirectional = True
    Left = 56
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'HawbSerial'
        ParamType = ptInput
        Value = 0
      end>
    object OriginalHawbSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Origin = 'CLAIRDB.HAWB.HAB_ID'
      Size = 10
    end
    object OriginalHawbSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Origin = 'CLAIRDB.HAWB.FK_MAWB_REFER_NUMBER'
    end
    object OriginalHawbSQLFK_CLEARING_STATE: TStringField
      FieldName = 'FK_CLEARING_STATE'
      Origin = 'CLAIRDB.HAWB.FK_CLEARING_STATE'
      Size = 1
    end
    object OriginalHawbSQLFK_INVOICE_STATUS: TStringField
      FieldName = 'FK_INVOICE_STATUS'
      Origin = 'CLAIRDB.HAWB.FK_INVOICE_STATUS'
      Size = 1
    end
    object OriginalHawbSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'CLAIRDB.HAWB.DESCRIPTION'
      Size = 200
    end
    object OriginalHawbSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
      Origin = 'CLAIRDB.HAWB.FK_CUSTOMER_CODE'
    end
    object OriginalHawbSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
      Origin = 'CLAIRDB.HAWB.WEIGHT'
    end
    object OriginalHawbSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Origin = 'CLAIRDB.HAWB.FK_CURRENCY'
      Size = 3
    end
    object OriginalHawbSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Origin = 'CLAIRDB.HAWB.EXCHANGE_RATE'
    end
    object OriginalHawbSQLINVOICE_TOTAL: TFloatField
      FieldName = 'INVOICE_TOTAL'
      Origin = 'CLAIRDB.HAWB.INVOICE_TOTAL'
    end
    object OriginalHawbSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
      Origin = 'CLAIRDB.HAWB.FREIGHT_AMOUNT'
    end
    object OriginalHawbSQLFK_OTHER_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER_CHARGE_CODE'
      Origin = 'CLAIRDB.HAWB.FK_OTHER_CHARGE_CODE'
      Size = 6
    end
    object OriginalHawbSQLOTHER_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER_CHARGE_AMOUNT'
      Origin = 'CLAIRDB.HAWB.OTHER_CHARGE_AMOUNT'
    end
    object OriginalHawbSQLOTHER_CHARGE_PAID: TStringField
      FieldName = 'OTHER_CHARGE_PAID'
      Origin = 'CLAIRDB.HAWB.OTHER_CHARGE_PAID'
      Size = 1
    end
    object OriginalHawbSQLSTAMPS_AMOUNT: TFloatField
      FieldName = 'STAMPS_AMOUNT'
      Origin = 'CLAIRDB.HAWB.STAMPS_AMOUNT'
    end
    object OriginalHawbSQLEXPS_NON_INVOICABLE: TFloatField
      FieldName = 'EXPS_NON_INVOICABLE'
      Origin = 'CLAIRDB.HAWB.EXPS_NON_INVOICABLE'
    end
    object OriginalHawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'CLAIRDB.HAWB.SERIAL_NUMBER'
    end
    object OriginalHawbSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
      Origin = 'CLAIRDB.HAWB.CUSTOMS_VALUE'
    end
    object OriginalHawbSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
      Origin = 'CLAIRDB.HAWB.INVOICE_SERIAL'
    end
    object OriginalHawbSQLCOURIER_INVOICE_SERIAL: TIntegerField
      FieldName = 'COURIER_INVOICE_SERIAL'
      Origin = 'CLAIRDB.HAWB.COURIER_INVOICE_SERIAL'
    end
    object OriginalHawbSQLCOURIER_INVOICE_VALUE: TFloatField
      FieldName = 'COURIER_INVOICE_VALUE'
      Origin = 'CLAIRDB.HAWB.COURIER_INVOICE_VALUE'
    end
    object OriginalHawbSQLHIGH_VALUE: TStringField
      FieldName = 'HIGH_VALUE'
      Origin = 'CLAIRDB.HAWB.HIGH_VALUE'
      FixedChar = True
      Size = 1
    end
    object OriginalHawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_SEC_MAWB_REFER_NUMBER'
      Origin = 'CLAIRDB.HAWB.FK_SEC_MAWB_REFER_NUMBER'
    end
    object OriginalHawbSQLEDE_STORAGE_EXPENSES: TFloatField
      FieldName = 'EDE_STORAGE_EXPENSES'
      Origin = 'CLAIRDB.HAWB.EDE_STORAGE_EXPENSES'
    end
    object OriginalHawbSQLEDE_DELIVERY_EXPENSES: TFloatField
      FieldName = 'EDE_DELIVERY_EXPENSES'
      Origin = 'CLAIRDB.HAWB.EDE_DELIVERY_EXPENSES'
    end
    object OriginalHawbSQLDATE_INVOICED: TDateTimeField
      FieldName = 'DATE_INVOICED'
      Origin = 'CLAIRDB.HAWB.DATE_INVOICED'
    end
    object OriginalHawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Origin = 'CLAIRDB.HAWB.SENT_TO_HEAD'
      FixedChar = True
      Size = 1
    end
    object OriginalHawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
      Origin = 'CLAIRDB.HAWB.NUM_OF_PIECES_ARRIVED'
    end
    object OriginalHawbSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
      Origin = 'CLAIRDB.HAWB.TOTAL_NUM_OF_PIECES'
    end
    object OriginalHawbSQLFK_CLEARANCE_TYPE: TStringField
      FieldName = 'FK_CLEARANCE_TYPE'
      Origin = 'CLAIRDB.HAWB.FK_CLEARANCE_TYPE'
      Size = 12
    end
    object OriginalHawbSQLFK_DELIVERY_TERM: TStringField
      FieldName = 'FK_DELIVERY_TERM'
      Origin = 'CLAIRDB.HAWB.FK_DELIVERY_TERM'
      Size = 3
    end
    object OriginalHawbSQLORIGIN_STATION: TStringField
      FieldName = 'ORIGIN_STATION'
      Origin = 'CLAIRDB.HAWB.ORIGIN_STATION'
      Size = 12
    end
    object OriginalHawbSQLEC2_NUMBER_DATE: TStringField
      FieldName = 'EC2_NUMBER_DATE'
      Origin = 'CLAIRDB.HAWB.EC2_NUMBER_DATE'
      Size = 40
    end
    object OriginalHawbSQLSENDERS_INV_NO: TStringField
      FieldName = 'SENDERS_INV_NO'
      Origin = 'CLAIRDB.HAWB.SENDERS_INV_NO'
      Size = 50
    end
    object OriginalHawbSQLNUMBER_OF_PARCELS: TIntegerField
      FieldName = 'NUMBER_OF_PARCELS'
      Origin = 'CLAIRDB.HAWB.NUMBER_OF_PARCELS'
    end
    object OriginalHawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField
      FieldName = 'FK_CUSTOMER_ACCOUNT'
      Origin = 'CLAIRDB.HAWB.FK_CUSTOMER_ACCOUNT'
    end
    object OriginalHawbSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      Origin = 'CLAIRDB.HAWB.DISTRICT'
      FixedChar = True
      Size = 3
    end
    object OriginalHawbSQLDELIVERY_ORDER_AMOUNT: TFloatField
      FieldName = 'DELIVERY_ORDER_AMOUNT'
      Origin = 'CLAIRDB.HAWB.DELIVERY_ORDER_AMOUNT'
    end
    object OriginalHawbSQLOTHER2_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER2_CHARGE_AMOUNT'
      Origin = 'CLAIRDB.HAWB.OTHER2_CHARGE_AMOUNT'
    end
    object OriginalHawbSQLFK_OTHER2_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER2_CHARGE_CODE'
      Origin = 'CLAIRDB.HAWB.FK_OTHER2_CHARGE_CODE'
      FixedChar = True
      Size = 6
    end
    object OriginalHawbSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      Origin = 'CLAIRDB.HAWB.POSOSTOSIS'
      FixedChar = True
      Size = 1
    end
    object OriginalHawbSQLTOTAL_DUTIES: TFloatField
      FieldName = 'TOTAL_DUTIES'
      Origin = 'CLAIRDB.HAWB.TOTAL_DUTIES'
    end
    object OriginalHawbSQLCLEARANCE_WAITING_CODE: TStringField
      FieldName = 'CLEARANCE_WAITING_CODE'
      Origin = 'CLAIRDB.HAWB.CLEARANCE_WAITING_CODE'
      FixedChar = True
      Size = 3
    end
    object OriginalHawbSQLCLEARANCE_WAITING_REASON: TStringField
      FieldName = 'CLEARANCE_WAITING_REASON'
      Origin = 'CLAIRDB.HAWB.CLEARANCE_WAITING_REASON'
      FixedChar = True
      Size = 40
    end
    object OriginalHawbSQLDATE_CLEARED: TDateTimeField
      FieldName = 'DATE_CLEARED'
      Origin = 'CLAIRDB.HAWB.DATE_CLEARED'
    end
    object OriginalHawbSQLDATE_REGISTERED: TDateTimeField
      FieldName = 'DATE_REGISTERED'
      Origin = 'CLAIRDB.HAWB.DATE_REGISTERED'
    end
    object OriginalHawbSQLFACTOR: TFloatField
      FieldName = 'FACTOR'
      Origin = 'CLAIRDB.HAWB.FACTOR'
    end
    object OriginalHawbSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
      Origin = 'CLAIRDB.HAWB.FK_COUNTRY_ORIGIN'
    end
    object OriginalHawbSQLCHARGE_TRL: TFloatField
      FieldName = 'CHARGE_TRL'
      Origin = 'CLAIRDB.HAWB.CHARGE_TRL'
    end
    object OriginalHawbSQLCHARGE_VAT: TFloatField
      FieldName = 'CHARGE_VAT'
      Origin = 'CLAIRDB.HAWB.CHARGE_VAT'
    end
    object OriginalHawbSQLCHARGE_EXCISE: TFloatField
      FieldName = 'CHARGE_EXCISE'
      Origin = 'CLAIRDB.HAWB.CHARGE_EXCISE'
    end
    object OriginalHawbSQLCHARGE_IMPORT: TFloatField
      FieldName = 'CHARGE_IMPORT'
      Origin = 'CLAIRDB.HAWB.CHARGE_IMPORT'
    end
    object OriginalHawbSQLINVOICABLE: TStringField
      FieldName = 'INVOICABLE'
      Origin = 'CLAIRDB.HAWB.INVOICABLE'
      FixedChar = True
      Size = 1
    end
    object OriginalHawbSQLTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
      Origin = 'CLAIRDB.HAWB.TOTAL_CHARGES'
    end
    object OriginalHawbSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CLAIRDB.HAWB.CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object OriginalHawbSQLEDE_COMMENTS: TStringField
      FieldName = 'EDE_COMMENTS'
      Origin = 'CLAIRDB.HAWB.EDE_COMMENTS'
      Size = 100
    end
    object OriginalHawbSQLFK_MAWB_ID: TStringField
      FieldName = 'FK_MAWB_ID'
      Origin = 'CLAIRDB.HAWB.FK_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object OriginalHawbSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      Origin = 'CLAIRDB.HAWB.SIGNATORY_NAME'
      FixedChar = True
      Size = 50
    end
    object OriginalHawbSQLXML_HOUSE_ID: TStringField
      FieldName = 'XML_HOUSE_ID'
      Origin = 'CLAIRDB.HAWB.XML_HOUSE_ID'
      FixedChar = True
      Size = 13
    end
    object OriginalHawbSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      Origin = 'CLAIRDB.HAWB.SENDER_NAME'
      FixedChar = True
      Size = 60
    end
    object OriginalHawbSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      Origin = 'CLAIRDB.HAWB.SENDER_ADDRESS_1'
      FixedChar = True
      Size = 60
    end
    object OriginalHawbSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      Origin = 'CLAIRDB.HAWB.SENDER_ADDRESS_2'
      FixedChar = True
      Size = 60
    end
    object OriginalHawbSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      Origin = 'CLAIRDB.HAWB.SENDER_ADDRESS_3'
      FixedChar = True
      Size = 60
    end
    object OriginalHawbSQLIS_PRIVATE: TStringField
      FieldName = 'IS_PRIVATE'
      Origin = 'CLAIRDB.HAWB.IS_PRIVATE'
      FixedChar = True
      Size = 1
    end
    object OriginalHawbSQLDELIVERY_ORDER_ID: TStringField
      FieldName = 'DELIVERY_ORDER_ID'
      Origin = 'CLAIRDB.HAWB.DELIVERY_ORDER_ID'
      FixedChar = True
      Size = 10
    end
    object OriginalHawbSQLOTHER4_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER4_CHARGE_AMOUNT'
      Origin = 'CLAIRDB.HAWB.OTHER4_CHARGE_AMOUNT'
    end
    object OriginalHawbSQLFK_OTHER4_CHARGE: TStringField
      FieldName = 'FK_OTHER4_CHARGE'
      Origin = 'CLAIRDB.HAWB.FK_OTHER4_CHARGE'
      FixedChar = True
      Size = 3
    end
    object OriginalHawbSQLIS_PAID: TStringField
      FieldName = 'IS_PAID'
      Origin = 'CLAIRDB.HAWB.IS_PAID'
      FixedChar = True
      Size = 1
    end
    object OriginalHawbSQLPARTIAL_FLAG: TStringField
      FieldName = 'PARTIAL_FLAG'
      Origin = 'CLAIRDB.HAWB.PARTIAL_FLAG'
      FixedChar = True
      Size = 1
    end
    object OriginalHawbSQLPARTIAL_WEIGHT: TFloatField
      FieldName = 'PARTIAL_WEIGHT'
      Origin = 'CLAIRDB.HAWB.PARTIAL_WEIGHT'
      Required = True
      DisplayFormat = '###.###'
    end
    object OriginalHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField
      FieldName = 'PARTIAL_DELIVERY_ORDER_ID'
      Origin = 'CLAIRDB.HAWB.PARTIAL_DELIVERY_ORDER_ID'
      Required = True
      Size = 10
    end
    object OriginalHawbSQLPARTIAL_MAWB_ID: TStringField
      FieldName = 'PARTIAL_MAWB_ID'
      Origin = 'CLAIRDB.HAWB.PARTIAL_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object OriginalHawbSQLPARTIAL_PIECES: TIntegerField
      FieldName = 'PARTIAL_PIECES'
      Origin = 'CLAIRDB.HAWB.PARTIAL_PIECES'
    end
    object OriginalHawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'PARTIAL_MAWB_REFER_NUMBER'
      Origin = 'CLAIRDB.HAWB.PARTIAL_MAWB_REFER_NUMBER'
    end
    object OriginalHawbSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      ReadOnly = True
      Size = 15
    end
  end
  object ThePartialHawbSQL: TIBCQuery
    KeyFields = 'Serial_number'
    KeyGenerator = 'HAWB_PARTIAL_GENERATOR'
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'Select'
      '*'
      'from'
      '    hawb_partial'
      'where'
      '     SERIAL_NUMBER = 0;'
      ''
      ' ')
    Left = 288
    Top = 40
    object ThePartialHawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'CLAIRDB.HAWB_PARTIAL.SERIAL_NUMBER'
      Required = True
    end
    object ThePartialHawbSQLFK_MAWB_SERIAL_ORIGINAL: TIntegerField
      FieldName = 'FK_MAWB_SERIAL_ORIGINAL'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_MAWB_SERIAL_ORIGINAL'
      Required = True
    end
    object ThePartialHawbSQLFK_MAWB_ID_ORIGINAL: TStringField
      FieldName = 'FK_MAWB_ID_ORIGINAL'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_MAWB_ID_ORIGINAL'
      Required = True
      FixedChar = True
      Size = 15
    end
    object ThePartialHawbSQLFK_MAWB_SERIAL_ARRIVED: TIntegerField
      FieldName = 'FK_MAWB_SERIAL_ARRIVED'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_MAWB_SERIAL_ARRIVED'
      Required = True
    end
    object ThePartialHawbSQLFK_HAWB_SERIAL_ORIGINAL: TIntegerField
      FieldName = 'FK_HAWB_SERIAL_ORIGINAL'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_HAWB_SERIAL_ORIGINAL'
      Required = True
    end
    object ThePartialHawbSQLFK_HAWB_ID_ORIGINAL: TStringField
      FieldName = 'FK_HAWB_ID_ORIGINAL'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_HAWB_ID_ORIGINAL'
      Required = True
      Size = 10
    end
    object ThePartialHawbSQLPARTIAL_PIECES: TIntegerField
      FieldName = 'PARTIAL_PIECES'
      Origin = 'CLAIRDB.HAWB_PARTIAL.PARTIAL_PIECES'
      Required = True
    end
    object ThePartialHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField
      FieldName = 'PARTIAL_DELIVERY_ORDER_ID'
      Origin = 'CLAIRDB.HAWB_PARTIAL.PARTIAL_DELIVERY_ORDER_ID'
      Required = True
      FixedChar = True
      Size = 15
    end
    object ThePartialHawbSQLPARTIAL_WEIGHT: TFloatField
      FieldName = 'PARTIAL_WEIGHT'
      Origin = 'CLAIRDB.HAWB_PARTIAL.PARTIAL_WEIGHT'
      Required = True
    end
    object ThePartialHawbSQLFK_MAWB_ID_ARRIVED: TStringField
      FieldName = 'FK_MAWB_ID_ARRIVED'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_MAWB_ID_ARRIVED'
      Required = True
      FixedChar = True
      Size = 15
    end
    object ThePartialHawbSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'CLAIRDB.HAWB_PARTIAL.DESCRIPTION'
      FixedChar = True
      Size = 60
    end
  end
  object HAWB_PARTIAL_SP: TIBCStoredProc
    StoredProcName = 'GENERATE_HAWB_PARTIAL'
    Left = 472
    Top = 208
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 416
    Top = 120
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 488
    Top = 120
  end
  object OriginalSRC: TIBCDataSource
    DataSet = OriginalHawbSQL
    Left = 120
    Top = 32
  end
end
