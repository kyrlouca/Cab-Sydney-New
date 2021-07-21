object R_MediumNewFRM: TR_MediumNewFRM
  Left = 0
  Top = 0
  Caption = 'R_MediumNewFRM'
  ClientHeight = 487
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 536
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object MawbSQL: TIBCQuery
    DMLRefresh = True
    Connection = ClairDML.CabCOnnection
    SQL.Strings = (
      'SELECT'
      
        'ma.reference_number, MA.FK_COUNTRY_CONSIGNEE, MA.XML_CONSOLIDATE' +
        'D_ID,ma.FLIGHT_NUMBER, ma.TDID_MEDIUM,ma.HMSD,ma.mawb_id, ma.dat' +
        'e_arrived'
      'from'
      '  MAWB ma'
      'where '
      'reference_number= :MawbSerial;')
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    Active = True
    AutoCalcFields = False
    Left = 112
    Top = 188
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MawbSerial'
        Value = nil
      end>
    object MawbSQLREFERENCE_NUMBER: TIntegerField
      FieldName = 'REFERENCE_NUMBER'
      Required = True
    end
    object MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField
      FieldName = 'FK_COUNTRY_CONSIGNEE'
    end
    object MawbSQLXML_CONSOLIDATED_ID: TStringField
      FieldName = 'XML_CONSOLIDATED_ID'
      FixedChar = True
      Size = 13
    end
    object MawbSQLFLIGHT_NUMBER: TStringField
      FieldName = 'FLIGHT_NUMBER'
      Size = 10
    end
    object MawbSQLTDID_MEDIUM: TStringField
      FieldName = 'TDID_MEDIUM'
      FixedChar = True
      Size = 15
    end
    object MawbSQLHMSD: TStringField
      FieldName = 'HMSD'
      FixedChar = True
    end
    object MawbSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      Size = 15
    end
    object MawbSQLDATE_ARRIVED: TDateField
      FieldName = 'DATE_ARRIVED'
    end
  end
  object mediumSimpleSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    SQL.Strings = (
      'select'
      
        '    ha.hab_id, ha.serial_number, ha.fk_mawb_refer_number, ha.fk_' +
        'clearing_State,fk_invoice_status, ha.Description,'
      '    ha.customer_name,'
      
        '    ha.sender_name, ha.fk_country_origin , ha.NUM_OF_PIECES_ARRI' +
        'VED,ha.FK_CUstomer_code,HA.WEIGHT,'
      '    ha.medium_vat_rate, ssi.pre_discount_amount,ssi.currency,'
      '    exr.rate , (ssi.pre_discount_amount /exr.rate ) as EuroVal'
      'from'
      '    hawb ha'
      
        'left outer join sender_invoice ssi on ha.serial_number= ssi.fk_h' +
        'awb_serial'
      
        'left outer join exchange_rate exr on ssi.currency = exr.fk_curre' +
        'ncy_code'
      'where'
      'ha.fk_clearance_instruction ='#39'MED'#39
      'and ha.fk_mawb_refer_number = :mawbSerial')
    Active = True
    AutoCalcFields = False
    Left = 32
    Top = 196
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mawbSerial'
        Value = nil
      end>
    object mediumSimpleSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object mediumSimpleSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object mediumSimpleSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
    end
    object mediumSimpleSQLFK_CLEARING_STATE: TStringField
      FieldName = 'FK_CLEARING_STATE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object mediumSimpleSQLFK_INVOICE_STATUS: TStringField
      FieldName = 'FK_INVOICE_STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object mediumSimpleSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object mediumSimpleSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object mediumSimpleSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 60
    end
    object mediumSimpleSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
    end
    object mediumSimpleSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
    end
    object mediumSimpleSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
    end
    object mediumSimpleSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object mediumSimpleSQLMEDIUM_VAT_RATE: TFloatField
      FieldName = 'MEDIUM_VAT_RATE'
    end
    object mediumSimpleSQLPRE_DISCOUNT_AMOUNT: TFloatField
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      ReadOnly = True
    end
    object mediumSimpleSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object mediumSimpleSQLRATE: TFloatField
      FieldName = 'RATE'
      ReadOnly = True
    end
    object mediumSimpleSQLEUROVAL: TFloatField
      FieldName = 'EUROVAL'
      ReadOnly = True
    end
  end
  object HawbMediumValueSRC: TIBCDataSource
    DataSet = mediumSimpleSQL
    Left = 92
    Top = 292
  end
  object MawbSRC: TIBCDataSource
    DataSet = MawbSQL
    Left = 32
    Top = 276
  end
  object MawbPIP: TppDBPipeline
    DataSource = MawbSRC
    UserName = 'MawbPIP'
    Left = 496
    Top = 105
    object MawbPIPppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERENCE_NUMBER'
      FieldName = 'REFERENCE_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object MawbPIPppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_COUNTRY_CONSIGNEE'
      FieldName = 'FK_COUNTRY_CONSIGNEE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object MawbPIPppField3: TppField
      FieldAlias = 'XML_CONSOLIDATED_ID'
      FieldName = 'XML_CONSOLIDATED_ID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 2
    end
    object MawbPIPppField4: TppField
      FieldAlias = 'FLIGHT_NUMBER'
      FieldName = 'FLIGHT_NUMBER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object MawbPIPppField5: TppField
      FieldAlias = 'TDID_MEDIUM'
      FieldName = 'TDID_MEDIUM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object MawbPIPppField6: TppField
      FieldAlias = 'HMSD'
      FieldName = 'HMSD'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object MawbPIPppField7: TppField
      FieldAlias = 'MAWB_ID'
      FieldName = 'MAWB_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object MawbPIPppField8: TppField
      FieldAlias = 'DATE_ARRIVED'
      FieldName = 'DATE_ARRIVED'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
  end
  object HawbMediumPIP: TppDBPipeline
    UserName = 'HawbMediumPIP'
    Left = 384
    Top = 89
  end
  object MediumRPT: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '6350'
      '72116'
      '137882')
    DataPipeline = HawbMediumPIP
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\dhl\programs\R_UnclearedHawbs.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.OAuth2 = {0E010C5265646972656374506F727402000000}
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 360
    Top = 257
    Version = '21.0'
    mmColumnWidth = 65766
    DataPipelineName = 'HawbMediumPIP'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 69003
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Style = bsClear
        mmHeight = 24342
        mmLeft = 2963
        mmTop = 19050
        mmWidth = 189177
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = #913#961'. '#934#959#961#964#969#964#953#954#942#962' (MAWB) :'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 6085
        mmTop = 24077
        mmWidth = 49403
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = #919#956#949#961#959#956'.:'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 6138
        mmTop = 31115
        mmWidth = 17018
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = #927#957'. '#917#964#945#953#961#949#943#945#962' : DHL '
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 141605
        mmTop = 31115
        mmWidth = 38523
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FLIGHT_NUMBER'
        DataPipeline = MawbPIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPIP'
        mmHeight = 5027
        mmLeft = 96309
        mmTop = 31221
        mmWidth = 39952
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'MAWB_ID'
        DataPipeline = MawbPIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPIP'
        mmHeight = 5027
        mmLeft = 28575
        mmTop = 31221
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = #922#945#964#940#963#964#945#963#951' '#917#956#960#959#961#949#965#956#940#964#969#957' Status C'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9737
        mmLeft = 50165
        mmTop = 3810
        mmWidth = 96520
        BandType = 0
        LayerName = Foreground
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image4'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Border.mmPadding = 0
        Picture.Data = {
          0A544A504547496D61676535100000FFD8FFE000104A46494600010101007800
          780000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC000110800C800C803012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2BCB3C55F1AEC3C3
          DAFCFA5DA698751F23E59665B9F2D43F751F29CE3D7D7358BFF0D0D1FF00D0B2
          DFF81DFF00DAE803DB68AF12FF0086868FFE8596FF00C0EFFED747FC34347FF4
          2CB7FE077FF6BA00F6DA2BC4BFE1A1A3FF00A165BFF03BFF00B5D6AE89F1E344
          BFBA58353B09F4D0C7025DFE6A0FAE0023F2A00F58A29914B1CF124B13AC91B8
          0CAEA72181E841AC7F15F89ECBC23A0CDAA5E9DDB7E58A1070D2B9E8A3FC7B0A
          00DBA2BC4BFE1A1A3FFA165BFF0003BFFB5D3A2FDA07CE95228BC2D23C8EC155
          16F72589E800F2FAD007B5D1552CEE667D322BAD4204B294C7BE68BCDDE22E32
          416C0E9DCE2BC9B51F8FF656DA8DC4167A1BDDDBC6E5639CDD6CF300EFB761C7
          E7401EC9457897FC34347FF42CB7FE077FF6BAF43F0478BAEFC5DA4CBA9CFA39
          D36D01C44F24FBCCB8EA47CA3007AFD7D2803AAA2BC7B56F8F96363AADCDAD96
          8CD7B6F13944B9175B0498EE06C3C7E354FF00E1A1A3FF00A165BFF03BFF00B5
          D007B6D15C1780FE22DD78E6F2758BC3ED69676EBFBCB96BADE371E8A06C193F
          8F15DED001451450014514500145611F1B78581C1F11697FF8169FE349FF0009
          B785BFE862D2FF00F02D3FC68037AB1BC5106B575A05C5B68125BC57F30D8B34
          EC5446A7AB0C03CE3A7E7517FC26DE16FF00A18B4BFF00C0B4FF001AB363E27D
          0753BA5B5B1D66C2E6E1812B14370AEC40EBC03401E0973F03BC4B0452DD5D6A
          5A4C71A02F24B24EE001D4924AD627FC2BC5FF00A1C3C2DFF81E7FF89AEBFE33
          F8FF00EDD72DE19D2E7CDB42DFE99221FF0058E3F833E83BFBFD2BC72819DA7F
          C2BC5FFA1C3C2DFF0081FF00FD8D6EA7C08F13488AE97DA53230C861339047AF
          DCAE67E1FE8BA46B1E244FEDDD46D6CF4FB7025916794279DCF08327BF7F6AF7
          2F1A7882C755F0C49A67877C53A15A4D2E237796F426D8B1C852B9C1E83E99A0
          0F9AAFAD7EC37F3DAF9D14FE4C853CD84E51B071907B8AAF5DB7FC2B9FFA9BFC
          2DFF00830FFEC6BA4F077C1E3A8EAD0DDDDEB1A55FE950BFEF858CE642C40C84
          CE001DB3ED405CF4AF85B35CD8FC2EB1B8D5E4F2A28A39244790FDD8012549F6
          C74F6C5786FC46F1BCBE34D7CC9133AE9B6D94B588F191DDC8F53FA0C0AF5BF8
          9971FDB560BE1ED2BC45A069F6D19DB771DC5E88DF2BD23DA01C018E7F2AF28F
          F8573FF537F85BFF00061FFD8D008E26BBDF863A9F85740D59B58F105C49F698
          78B585602E14F7724771D07E7E95634EF83BAB6AE923E9BAE68378B1901CDBDD
          338527A0385A6EA3F08753D21A35D4B5FD02CDA404A0B8BB28580EB8CAD00741
          F137E2CDA6B9A32E91E1E925F26E33F6B99D0A12BFDC00F63DFF002EE6BC72BB
          6FF8573FF537F85BFF00061FFD8D4D6BF0BEE2FAE63B6B4F14786A79E43848A2
          BE2CCC7D805A00A1F0F7C153F8D3C42B6E4325841892EE51D97B28F73FE27B57
          A5FC5CF1B5BE87A5A783F416489FCB0971E4F4862C7118C74278CFB7D6BADB0D
          374FF86FE0B1A75ADFE9B6FA9CC8584D7D3089269B8CB1EF81C71EC3D6BC5AEB
          C073DF5DCB7575E34F0C4B3CCE5E491F51C9663D49F9680383AD5F0E68179E26
          D76DB4AB15CCB3372C7A22F763EC05743FF0AE7FEA6FF0B7FE0C3FFB1AF52F86
          D65E12F0469D2BDCF893469F55B8389A58EED4AAA8E8AB93D3B93DFF0001405C
          F43F0EE8165E19D0EDB4AB04C430AF2DDDD8F563EE4D6A5617FC26BE16FF00A1
          8B4BFF00C0A4FF001AB165E27D0752BA5B5B1D62C6E6E1B256286757638EBC03
          408D5A2B167F17F86ED6E24B7B8D7B4D8A68D8ABA3DCA06523A8233C1A8FFE13
          6F0B7FD0C5A5FF00E05A7F8D006F515843C6DE162703C45A5FFE05A7F8D1401E
          38D716E589127C31EBDE17FF000A4FB441FDFF00861FF7E5FF00C2BDD3FB1B4B
          FF00A06D9FFDF85FF0A3FB1B4BFF00A06D9FFDF85FF0A00F0C13C2C4056F8624
          9E00103F3FA56BF893584F87BE1629F62D12DBC53A82B2236976FB04309FE239
          F9B3E9EFF4AF5D5D234D460CBA7DA2B0390442A083F953E7D3ACAE64F32E2CED
          E57C6374912B1C7D48A00F8A9999D8B33166272493924D257DA5FD8DA5FF00D0
          36CFFEFC2FF851FD8DA5FF00D036CFFEFC2FF8503B9F16D001270064D7DA5FD8
          DA5FFD036CFF00EFC2FF00853E2D32C207DF1595B46DEA91283FCA80B9F33F83
          BE146BDE26B88A5BA824D3F4DC82F3CCBB5997FD853C93EFD2BD5BC6DE21D33E
          1878362D1742548AFA54D96F1820B203F7A56F53D79EE7E95E9955A7D3ECAE64
          F32E2CEDE57C6374912B1C7D48A047C54EED23B3BB1676396663924FA9ABFA26
          8D7BE20D62DB4BB088C9713BED1E8A3BB1F400726BEC2FEC6D2FFE81B67FF7E1
          7FC2A4834EB2B693CCB7B3B789F18DD1C4AA71F50281DCC1B0B3D1BE1B782B6B
          C823B4B48F7CD29FBD2C87A9F724F007D057CC5E2CF135E78B3C4171AA5DB11B
          CE228FB4718E8A3FCF2735F604F6F0DCC7E5DC431CA99CED91430CFD0D56FEC6
          D2FF00E81B67FF007E17FC2811F16D7D1FF07FC07FF08F695FDB5A8C38D4EF17
          E4561CC311E83D89EA7DB03D6BD0FF00B1F4C07FE41B67FF007E17FC2AED03B9
          F317C641AC1F1EDD3EA2930B50156C9987C9E5E07DD3D3AE73DF35E7B5F6DCD0
          43709B278A3957FBAEA187EB55BFB1B4BFFA06D9FF00DF85FF000A02E7C5B457
          DA5FD8DA5FFD036CFF00EFC2FF00851FD8DA5FFD036CFF00EFC2FF00850173E2
          D009381C9AF71F0B6950FC3BF0C8BC9EF748B4F14EA318644D4E52AB0C39E985
          19C9E323D78ED5EC4BA4698AC1974EB4041C82205E3F4A7CFA7595CC9E65C59D
          BCAF8C6E9225638FA91405CF097BB8A4767797E18B3B12599A272493DCF14DFB
          441FDFF861FF007E5FFC2BDD3FB1B4BFFA06D9FF00DF85FF000A3FB1B4BFFA06
          D9FF00DF85FF000A047862DC5B8604C9F0C7AF685FFC28AF73FEC6D2FF00E81B
          67FF007E17FC28A00CFF00B2D87FD012E7FEF91FFC551F65B0FF00A01DCFFDF2
          3FF8AAD7F264FF009F997F24FF00E268F264FF009FA97F24FF00E2680323ECB6
          1FF403B9FF00BE47FF001547D96C3FE80773FF007C8FFE2AB5FC993FE7EA5FC9
          3FF89A3C993FE7EA5FC93FF89A00C8FB2D87FD00EE7FEF91FF00C551F65B0FFA
          01DCFF00DF23FF008AAD7F264FF9FA97F24FFE268F264FF9FA97F24FFE268032
          3ECB61FF00403B9FFBE47FF1547D96C3FE80973FF7C8FF00E2AB5FC993FE7EA5
          FC93FF0089A3C993FE7EA5FC93FF0089A00AFAB6AB69A269336A176C52189470
          065989E1540EE492001EF5C268FA44BE23BDBABBF1668DAB5BDCBEE93CC7BC31
          410C60E163411C99381C9247273ED5D6F883C310F8865B2926D4750B56B37F36
          2FB2BA28DF8C063B94E4819C7A66924F0BDBDCDB5B5B5FDFDFDF5BC392D0DCCA
          0ACE739CC9851BB1D874E3A50071DA7EA9717FF112FECBC37709F64FECC81127
          94B34712ABB296453F7CF400E7071C93556664BED627D3E0B6D7755D3ADC9FB5
          5C5B960750BA191B4CA0AAA227A29033F4E7BBB9F0A595C6A979A8A5C5DDBDC5
          D590B16303AA848C1CFCBF29C1F7AD1B4D32DB4FD263D32C54DB5BC517951797
          D50631919CF3DF9EF401E4135DDDE85A6B68973FDA775A6A5E799A9BDACE5CDB
          9723CAB4491981EEBBD81CF3EF5A2F06ADE1FF00B7E91A5A5F4B7BA9B24AF676
          B70676D36D47CA583C8D8F31F271CE3238C85AEE9BC1DA6368D65A5033ADB5AD
          CA5D121C6E9A456DD99091F365B93D2A1B5F064567ADCFAA45ADEB1E65C4E279
          E23326C908E8A7E4CED038033D280396D634B3E1EF07BEBFA1E91A8D9DF20C4E
          2E6F1A5960839F31C06764DDB471D719A35C45D1BC250F8A3C356B7E4DD468F7
          B7125C334F1DB1F99D956462BBF80338E2BAC97C1F0DDCD21D4357D5AFAD6490
          BB59CF32F927273B4AAA8257FD9248A6FF00C2196D3498D4355D5350B5DFBC5A
          5CCCBE4F5C8055557728EC0E4714013787344D22D638F56D3A2BA57BC8158B5C
          4F23B15386E4331C1F5A7B5AD86E39D12E09CF5DA39FFC7AB70000000600A87C
          993FE7E65FC97FF89A00C8FB2D87FD00EE7FEF91FF00C551F65B0FFA01DCFF00
          DF23FF008AAD7F264FF9FA97F24FFE268F264FF9FA97F24FFE2680323ECB61FF
          00403B9FFBE47FF1547D96C3FE80773FF7C8FF00E2AB5FC993FE7EA5FC93FF00
          89A3C993FE7EA5FC93FF0089A00C8FB2D87FD00EE7FEF91FFC551F65B0FF00A0
          1DCFFDF23FF8AAD7F264FF009FA97F24FF00E268F264FF009FA97F24FF00E268
          0323ECB61FF404B9FF00BE47FF0015456BF9327FCFCCBF927FF1345004D45145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          007FFFD9}
        mmHeight = 17145
        mmLeft = 149649
        mmTop = 847
        mmWidth = 42333
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'TDID :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 6138
        mmTop = 38735
        mmWidth = 12277
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'LOW_VALUE_TDID'
        DataPipeline = MawbPIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPIP'
        mmHeight = 4498
        mmLeft = 28575
        mmTop = 38629
        mmWidth = 31485
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'MAWB_ID'
        DataPipeline = MawbPIP
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPIP'
        mmHeight = 4498
        mmLeft = 61913
        mmTop = 24077
        mmWidth = 54769
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'HAB_ID'
        DataPipeline = HawbMediumPIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'HawbMediumPIP'
        mmHeight = 3810
        mmLeft = 13335
        mmTop = 1693
        mmWidth = 21378
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'NUM_OF_PIECES_ARRIVED'
        DataPipeline = HawbMediumPIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'HawbMediumPIP'
        mmHeight = 3810
        mmLeft = 35560
        mmTop = 1693
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'NUMBER_OF_PARCELS'
        DataPipeline = HawbMediumPIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'HawbMediumPIP'
        mmHeight = 3810
        mmLeft = 45720
        mmTop = 1693
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Inc1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        CalcType = veDataPipelineTraversal
        DataType = dtInteger
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 5503
        mmTop = 1693
        mmWidth = 5503
        BandType = 4
        LayerName = Foreground
        CalcDataPipelineName = 'HawbMediumPIP'
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 28840
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 178097
        mmTop = 23072
        mmWidth = 14520
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = #919#956#949#961#959#956#951#957#943#945' : ............................'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 3704
        mmTop = 8731
        mmWidth = 59267
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 
          #923#949#953#964#959#965#961#947#972#962' '#934#965#963#953#954#959#973' '#917#955#941#947#967#959#965'. '#908#957#959#956#945':..............................' +
          '..........................'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 3598
        mmTop = 14817
        mmWidth = 137753
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = #933#960#959#947#961#945#966#942' : ......................'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4868
        mmLeft = 143722
        mmTop = 14817
        mmWidth = 49742
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Pieces........:'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 160655
        mmTop = 3387
        mmWidth = 20066
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Documents:'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 160655
        mmTop = 8255
        mmWidth = 20320
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'DOCS_NUMBER'
        DataPipeline = HawbMediumPIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'HawbMediumPIP'
        mmHeight = 4233
        mmLeft = 181187
        mmTop = 8255
        mmWidth = 11642
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'NUM_OF_PIECES_ARRIVED'
        DataPipeline = HawbMediumPIP
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'HawbMediumPIP'
        mmHeight = 4022
        mmLeft = 181187
        mmTop = 3598
        mmWidth = 11642
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppPageStyle2: TppPageStyle
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 270405
      mmPrintPosition = 0
      object ppRegion2: TppRegion
        DesignLayer = ppDesignLayer2
        UserName = 'Region1'
        Caption = 'Region1'
        Pen.Style = psClear
        mmHeight = 210609
        mmLeft = 1693
        mmTop = 46778
        mmWidth = 60113
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppShape3: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape5'
          Brush.Style = bsClear
          mmHeight = 201719
          mmLeft = 2963
          mmTop = 52705
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line201'
          Border.mmPadding = 0
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.500000000000000000
          mmHeight = 187960
          mmLeft = 47413
          mmTop = 66251
          mmWidth = 1905
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line3'
          Border.mmPadding = 0
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.500000000000000000
          mmHeight = 201719
          mmLeft = 34925
          mmTop = 52704
          mmWidth = 1905
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line67'
          Border.mmPadding = 0
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.500000000000000000
          mmHeight = 201719
          mmLeft = 12700
          mmTop = 52704
          mmWidth = 1905
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label2'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = 'A/A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 4868
          mmLeft = 4233
          mmTop = 54821
          mmWidth = 6138
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Border.mmPadding = 0
          Caption = #934#959#961#964#969#964#953#954#942' (HAWB)'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 9948
          mmLeft = 13123
          mmTop = 54821
          mmWidth = 20955
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label31'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = #913#961#953#952#956#972#962' '
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 4233
          mmLeft = 41487
          mmTop = 54821
          mmWidth = 13547
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line68'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 72813
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line69'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 79374
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine6: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line70'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 85936
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line71'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 92498
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine8: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line101'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 99271
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine9: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line73'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 105833
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine10: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line74'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 112395
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line75'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 119168
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine12: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line76'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 125730
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine13: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line77'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 132291
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine14: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line78'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 138853
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine15: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line79'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 145415
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine16: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line80'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 152188
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine17: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line81'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 158750
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine19: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line82'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 165311
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine20: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line83'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 172085
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine22: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line84'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 178646
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine23: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line85'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 185208
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine24: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line301'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 191770
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine25: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line87'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 198543
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine26: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line88'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 205105
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine27: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line89'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 211666
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine28: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line90'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 218228
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine29: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line91'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 224790
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine30: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line92'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 231563
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine31: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line93'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 238125
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine32: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line94'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 2963
          mmTop = 244686
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine33: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line95'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1693
          mmLeft = 2963
          mmTop = 66251
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label32'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = #922#959#956#956#945#964#953#974#957
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 4191
          mmLeft = 38523
          mmTop = 59690
          mmWidth = 18669
          BandType = 10
          LayerName = PageLayer1
        end
      end
      object ppRegion5: TppRegion
        DesignLayer = ppDesignLayer2
        UserName = 'Region3'
        Caption = 'Region3'
        Pen.Style = psClear
        mmHeight = 210609
        mmLeft = 133562
        mmTop = 46778
        mmWidth = 60113
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppShape4: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape6'
          Brush.Style = bsClear
          mmHeight = 201719
          mmLeft = 134832
          mmTop = 52704
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine34: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line96'
          Border.mmPadding = 0
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.500000000000000000
          mmHeight = 187960
          mmLeft = 179282
          mmTop = 66251
          mmWidth = 1905
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine35: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line97'
          Anchors = [atLeft, atBottom]
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.500000000000000000
          mmHeight = 201613
          mmLeft = 166794
          mmTop = 52652
          mmWidth = 1905
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine36: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line98'
          Border.mmPadding = 0
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.500000000000000000
          mmHeight = 201719
          mmLeft = 144569
          mmTop = 52704
          mmWidth = 1905
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label34'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = 'A/A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 4868
          mmLeft = 136102
          mmTop = 54821
          mmWidth = 6138
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel28: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label35'
          HyperlinkEnabled = False
          AutoSize = False
          Border.mmPadding = 0
          Caption = #934#959#961#964#969#964#953#954#942' (HAWB)'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 9948
          mmLeft = 144992
          mmTop = 54821
          mmWidth = 20955
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label36'
          HyperlinkEnabled = False
          Anchors = [atLeft, atBottom]
          Border.mmPadding = 0
          Caption = #913#961#953#952#956#972#962' '
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 4233
          mmLeft = 172509
          mmTop = 54769
          mmWidth = 13494
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine37: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line99'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 72813
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine38: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line100'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 79374
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine39: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line1'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 85936
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine40: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line102'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 92498
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine41: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line103'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 99271
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine42: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line104'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 105833
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine43: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line105'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 112395
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine44: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line106'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 119168
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine45: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line107'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 125730
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine46: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line108'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 132291
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine47: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line109'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 138853
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine48: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line110'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 145415
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine49: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line111'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 152188
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine50: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line112'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 158750
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine51: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line113'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 165311
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine52: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line114'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 172085
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine53: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line115'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 178646
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine54: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line116'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 185208
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine55: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line202'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 191770
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine56: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line118'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 198543
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine57: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line119'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 205105
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine58: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line120'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 211666
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine59: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line121'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 218228
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine60: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line122'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 224790
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine61: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line123'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 231563
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine62: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line124'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 238125
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine63: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line125'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 134832
          mmTop = 244686
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine64: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line126'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1693
          mmLeft = 134832
          mmTop = 66251
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel30: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label37'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = #922#959#956#956#945#964#953#974#957
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 4191
          mmLeft = 170392
          mmTop = 59689
          mmWidth = 18669
          BandType = 10
          LayerName = PageLayer1
        end
      end
      object ppRegion6: TppRegion
        DesignLayer = ppDesignLayer2
        UserName = 'Region4'
        Caption = 'Region4'
        Pen.Style = psClear
        mmHeight = 210080
        mmLeft = 69427
        mmTop = 48472
        mmWidth = 60113
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppShape8: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape7'
          Brush.Style = bsClear
          mmHeight = 201719
          mmLeft = 69003
          mmTop = 52704
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine65: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line127'
          Border.mmPadding = 0
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.500000000000000000
          mmHeight = 187960
          mmLeft = 113453
          mmTop = 66251
          mmWidth = 1905
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine66: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line128'
          Anchors = [atLeft, atBottom]
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.500000000000000000
          mmHeight = 201613
          mmLeft = 100013
          mmTop = 52652
          mmWidth = 1852
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine158: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line129'
          Border.mmPadding = 0
          Position = lpLeft
          StretchWithParent = True
          Weight = 0.500000000000000000
          mmHeight = 201719
          mmLeft = 78740
          mmTop = 52704
          mmWidth = 1905
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label38'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = 'A/A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 4868
          mmLeft = 70273
          mmTop = 54821
          mmWidth = 6138
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel42: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label39'
          HyperlinkEnabled = False
          AutoSize = False
          Border.mmPadding = 0
          Caption = #934#959#961#964#969#964#953#954#942' (HAWB)'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 9948
          mmLeft = 79163
          mmTop = 54821
          mmWidth = 20955
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel43: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label40'
          HyperlinkEnabled = False
          Anchors = [atLeft, atBottom]
          Border.mmPadding = 0
          Caption = #913#961#953#952#956#972#962' '
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 4233
          mmLeft = 106892
          mmTop = 54769
          mmWidth = 13494
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine159: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line130'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 72813
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine160: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line1001'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 79374
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine161: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line132'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 85936
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine162: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line133'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 92498
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine163: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line134'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 99271
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine164: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line135'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 105833
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine165: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line136'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 112395
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine166: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line137'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 119168
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine167: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line138'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 125730
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine168: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line139'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 132291
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine169: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line140'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 138853
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine170: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line1101'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 145415
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine171: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line142'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 152188
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine172: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line143'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 158750
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine173: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line144'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 165311
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine174: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line145'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 172085
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine175: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line146'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 178646
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine176: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line147'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 185208
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine177: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line148'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 191770
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine178: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line149'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 198543
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine179: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line150'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 205105
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine180: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line1201'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 211666
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine181: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line152'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 218228
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine182: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line153'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 224790
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine183: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line154'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 231563
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine184: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line155'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 238125
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine185: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line156'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          Weight = 0.125000000000000000
          mmHeight = 1905
          mmLeft = 69003
          mmTop = 244686
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLine186: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line157'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1693
          mmLeft = 69003
          mmTop = 66251
          mmWidth = 57150
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel44: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label41'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = #922#959#956#956#945#964#953#974#957
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 4191
          mmLeft = 104563
          mmTop = 59689
          mmWidth = 18669
          BandType = 10
          LayerName = PageLayer1
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
