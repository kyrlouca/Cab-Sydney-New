object R_DeliveryOrderLow1FRM: TR_DeliveryOrderLow1FRM
  Left = 392
  Top = 310
  Caption = 'R_DeliveryOrderLow1FRM'
  ClientHeight = 695
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object GoBTN: TButton
    Left = 689
    Top = 167
    Width = 93
    Height = 31
    Caption = 'GoBTN'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 699
    Top = 98
    Width = 92
    Height = 31
    Caption = 'OpenTable'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 699
    Top = 39
    Width = 92
    Height = 31
    Caption = 'ShowRec'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button1: TButton
    Left = 679
    Top = 473
    Width = 93
    Height = 30
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object ppViewer1: TppViewer
    Left = 512
    Top = 265
    Width = 320
    Height = 119
    BevelOuter = bvNone
    Color = clBtnShadow
    DeadSpace = 30
    PageColor = clWindow
    ZoomPercentage = 100
    ZoomSetting = zsWholePage
  end
  object Report1: TppReport
    AutoStop = False
    DataPipeline = MawbPL
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
    Template.FileName = 
      'C:\Documents and Settings\Admin\Desktop\DelphiProjects\DeliveryO' +
      'rder\aa.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = Report1BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OnPreviewFormCreate = Report1PreviewFormCreate
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
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
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
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
    Left = 328
    Top = 296
    Version = '18.01'
    mmColumnWidth = 0
    DataPipelineName = 'MawbPL'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 81492
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'DHL Cyprus LTD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 142240
        mmTop = 2540
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'DELIVERY ORDER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 6562
        mmLeft = 74507
        mmTop = 1058
        mmWidth = 52070
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'To the COLLECTOR OF CUSTOMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 12488
        mmTop = 40852
        mmWidth = 68792
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'ROTATION_NUMBER'
        DataPipeline = MawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 4657
        mmLeft = 154517
        mmTop = 23495
        mmWidth = 17145
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'ROTATION_YEAR'
        DataPipeline = MawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 4657
        mmLeft = 178012
        mmTop = 23495
        mmWidth = 11430
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 154517
        mmTop = 18203
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'the following goods arrived from'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 12488
        mmTop = 53975
        mmWidth = 60113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'and arrived on'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 12488
        mmTop = 61172
        mmWidth = 27305
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'DATE_ARRIVED'
        DataPipeline = MawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 5503
        mmLeft = 40640
        mmTop = 61172
        mmWidth = 26670
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'carried by'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 118745
        mmTop = 53975
        mmWidth = 18627
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'Please Deliver to'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 12488
        mmTop = 47202
        mmWidth = 31962
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Rotation No:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 129752
        mmTop = 23495
        mmWidth = 24553
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Date .........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 129752
        mmTop = 18203
        mmWidth = 24765
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        HyperlinkEnabled = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 176530
        mmTop = 23495
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'COUNTRYNAME'
        DataPipeline = MawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 5292
        mmLeft = 74295
        mmTop = 54187
        mmWidth = 41698
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'FLIGHT_NUMBER'
        DataPipeline = MawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 5503
        mmLeft = 138219
        mmTop = 53975
        mmWidth = 22437
        BandType = 0
        LayerName = Foreground
      end
      object CustomerNameLbl: TppLabel
        OnPrint = CustomerNameLblPrint
        DesignLayer = ppDesignLayer1
        UserName = 'CustomerNameLbl'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Customer Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 45720
        mmTop = 47202
        mmWidth = 94615
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'ID..............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 129752
        mmTop = 33867
        mmWidth = 24553
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'ROTATION_2'
        DataPipeline = MawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 4657
        mmLeft = 172297
        mmTop = 23495
        mmWidth = 3598
        BandType = 0
        LayerName = Foreground
      end
      object TheInvoiceSerialRGN: TppRegion
        OnPrint = TheInvoiceSerialRGNPrint
        DesignLayer = ppDesignLayer1
        UserName = 'TheInvoiceSerialRGN'
        Brush.Style = bsClear
        Caption = 'TheInvoiceSerialRGN'
        Pen.Style = psClear
        Transparent = True
        mmHeight = 8255
        mmLeft = 142240
        mmTop = 7620
        mmWidth = 55245
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object InvoiceSerialFLD: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'InvoiceSerialFLD'
          HyperlinkEnabled = False
          BlankWhenZero = False
          CalcOrder = 1
          DataType = dtInteger
          DisplayFormat = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4868
          mmLeft = 180763
          mmTop = 9313
          mmWidth = 15663
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label25'
          HyperlinkEnabled = False
          Caption = 'Delivery Order No. :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4868
          mmLeft = 142875
          mmTop = 9313
          mmWidth = 37465
          BandType = 0
          LayerName = Foreground
        end
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'HMSD........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4657
        mmLeft = 129752
        mmTop = 28575
        mmWidth = 24553
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'HMSD'
        DataPipeline = MawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 4657
        mmLeft = 154729
        mmTop = 28575
        mmWidth = 41698
        BandType = 0
        LayerName = Foreground
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
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
        mmHeight = 16510
        mmLeft = 1270
        mmTop = 212
        mmWidth = 42333
        BandType = 0
        LayerName = Foreground
      end
      object LowTDIDfld: TppVariable
        OnPrint = LowTDIDfldPrint
        DesignLayer = ppDesignLayer1
        UserName = 'LowTDIDfld'
        HyperlinkEnabled = False
        AutoSize = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 154729
        mmTop = 33655
        mmWidth = 34925
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 120650
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'Signed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 81227
        mmTop = 89959
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Pen.Style = psDot
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 97102
        mmTop = 90752
        mmWidth = 76729
        BandType = 4
        LayerName = Foreground
      end
      object KG1lbl: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'KG1lbl'
        HyperlinkEnabled = False
        Caption = 'kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 182669
        mmTop = 15452
        mmWidth = 4445
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'MAWB_ID'
        DataPipeline = MawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 5503
        mmLeft = 13970
        mmTop = 15452
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        HyperlinkEnabled = False
        Caption = 'FOR DHL CYPRUS LTD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 104775
        mmTop = 97896
        mmWidth = 46567
        BandType = 4
        LayerName = Foreground
      end
      object ChargePP: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ChargePP'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = '#,0.00;-#,0.00, '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        OnCalc = ChargePPCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 38100
        mmTop = 92287
        mmWidth = 19558
        BandType = 4
        LayerName = Foreground
      end
      object Totalpp: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ChargePP1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtDouble
        DisplayFormat = '#,0.00;-#,0.00, '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        OnCalc = ChargePPCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 35560
        mmTop = 102024
        mmWidth = 22013
        BandType = 4
        LayerName = Foreground
      end
      object HawbIDlbl: TppLabel
        OnPrint = HawbIDlblPrint
        DesignLayer = ppDesignLayer1
        UserName = 'HawbIDlbl'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'HawbID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 14023
        mmTop = 21696
        mmWidth = 30692
        BandType = 4
        LayerName = Foreground
      end
      object Description1LBL: TppLabel
        OnPrint = Description1LBLPrint
        DesignLayer = ppDesignLayer1
        UserName = 'CustomerNameLbl1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 72178
        mmTop = 15452
        mmWidth = 89959
        BandType = 4
        LayerName = Foreground
      end
      object PackageTypelbl: TppLabel
        OnPrint = PackageTypelblPrint
        DesignLayer = ppDesignLayer1
        UserName = 'PackageTypelbl'
        HyperlinkEnabled = False
        Caption = 'PackageTypelbl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 55033
        mmTop = 15452
        mmWidth = 13547
        BandType = 4
        LayerName = Foreground
      end
      object WeightPP: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'WeightPP'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtDouble
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        OnCalc = WeightPPCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5503
        mmLeft = 164889
        mmTop = 15452
        mmWidth = 16087
        BandType = 4
        LayerName = Foreground
      end
      object Description2lbl: TppLabel
        OnPrint = Description2lblPrint
        DesignLayer = ppDesignLayer1
        UserName = 'Description2lbl'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Description 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 72178
        mmTop = 21802
        mmWidth = 89959
        BandType = 4
        LayerName = Foreground
      end
      object NumberOfPackagesPP: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'NumberOfPackagesPP'
        HyperlinkEnabled = False
        AutoSize = False
        BlankWhenZero = False
        CalcOrder = 3
        DataType = dtInteger
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        OnCalc = NumberOfPackagesPPCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5503
        mmLeft = 44873
        mmTop = 15452
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground
      end
      object Weight2PP: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Weight2PP'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 4
        DataType = dtDouble
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        OnCalc = Weight2PPCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5503
        mmLeft = 164889
        mmTop = 21802
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object Kg2lbl: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Kg2lbl'
        HyperlinkEnabled = False
        Caption = 'kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 182669
        mmTop = 21802
        mmWidth = 4445
        BandType = 4
        LayerName = Foreground
      end
      object Description3lbl: TppLabel
        OnPrint = Description3lblPrint
        DesignLayer = ppDesignLayer1
        UserName = 'Description2lbl1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Description 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 73025
        mmTop = 29369
        mmWidth = 78052
        BandType = 4
        LayerName = Foreground
      end
      object NumberOfPackages2PP: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'NumberOfPackagesPP1'
        HyperlinkEnabled = False
        AutoSize = False
        BlankWhenZero = False
        CalcOrder = 5
        DataType = dtInteger
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        OnCalc = NumberOfPackages2PPCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5503
        mmLeft = 44873
        mmTop = 21802
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground
      end
      object PackageType2lbl: TppLabel
        OnPrint = PackageType2lblPrint
        DesignLayer = ppDesignLayer1
        UserName = 'PackageTypelbl1'
        HyperlinkEnabled = False
        Caption = 'PackageTypelbl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 55033
        mmTop = 21802
        mmWidth = 13547
        BandType = 4
        LayerName = Foreground
      end
      object CustomDutiesLBL: TppVariable
        OnPrint = CustomDutiesLBLPrint
        DesignLayer = ppDesignLayer1
        UserName = 'CustomDutiesLBL'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 6
        DataType = dtDouble
        DisplayFormat = 'Euro #,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 152824
        mmTop = 34078
        mmWidth = 34290
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 49213
      mmPrintPosition = 0
      object ppMemo1: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'Memo1'
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'HEAD OFFICE'
          '64 VITHLEEM STR'
          '2033 STROVOLOS'
          'TEL: 77777345'
          'FAX: 22-799251'
          ' ')
        RemoveEmptyLines = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 31750
        mmLeft = 265
        mmTop = 16140
        mmWidth = 34131
        BandType = 8
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppMemo2: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'Memo2'
        Caption = 'Memo2'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'LIMASSOL SERVICE CENTRE'
          '6 RIGA FEREOU STREET'
          '3095 LIMASSOL'
          'TEL: 77777345'
          'FAX: 25-375360')
        RemoveEmptyLines = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 31750
        mmLeft = 36777
        mmTop = 16140
        mmWidth = 37571
        BandType = 8
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppMemo3: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'Memo3'
        Caption = 'Memo3'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'LARNACA GATEWAY'
          '11 ALKIONIDON STR'
          '7100 LARNACA'
          'TEL: 77777345'
          'FAX: 24-816031'
          ' ')
        RemoveEmptyLines = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 31750
        mmLeft = 76994
        mmTop = 16140
        mmWidth = 39423
        BandType = 8
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppMemo4: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'Memo4'
        Caption = 'Memo4'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'NICOSIA SERVICE POINT'
          '42C NIKIS AVE'
          '1086 NICOSIA'
          'TEL: 77777345')
        RemoveEmptyLines = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 31750
        mmLeft = 118004
        mmTop = 16140
        mmWidth = 40746
        BandType = 8
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppMemo7: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'Memo7'
        Caption = 'Memo7'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'LARNACA SERVICE POINT'
          'ARCH. MAKARIOS III'
          'ARKAMIA CENTRE - SHOP 6'
          '6017 LARNACA'
          'TEL: 77777345')
        RemoveEmptyLines = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 31750
        mmLeft = 159385
        mmTop = 16298
        mmWidth = 36618
        BandType = 8
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppPageStyle1: TppPageStyle
      Background.Brush.Style = bsClear
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 235585
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Brush.Style = bsClear
        Pen.Width = 2
        mmHeight = 56621
        mmLeft = 12171
        mmTop = 81227
        mmWidth = 178859
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 12171
        mmTop = 181240
        mmWidth = 51065
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Position = lpLeft
        Weight = 1.000000000000000000
        mmHeight = 56092
        mmLeft = 70115
        mmTop = 81227
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Gross Weight'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 163248
        mmTop = 82815
        mmWidth = 26194
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Air Waybill Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10054
        mmLeft = 15452
        mmTop = 82815
        mmWidth = 24342
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'No. of Packages'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10054
        mmLeft = 46302
        mmTop = 82815
        mmWidth = 22225
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nature of Goods'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10054
        mmLeft = 71438
        mmTop = 82815
        mmWidth = 89694
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Position = lpLeft
        Weight = 1.000000000000000000
        mmHeight = 56092
        mmLeft = 43656
        mmTop = 81227
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Position = lpLeft
        Weight = 1.000000000000000000
        mmHeight = 56092
        mmLeft = 163248
        mmTop = 81227
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Brush.Style = bsClear
        Pen.Width = 2
        mmHeight = 40217
        mmLeft = 12171
        mmTop = 150813
        mmWidth = 51594
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Position = lpLeft
        Weight = 1.000000000000000000
        mmHeight = 39688
        mmLeft = 36777
        mmTop = 150813
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 12171
        mmTop = 93927
        mmWidth = 178065
        BandType = 10
        LayerName = PageLayer1
      end
      object ppMemo5: TppMemo
        DesignLayer = ppDesignLayer2
        UserName = 'Memo5'
        Caption = 'Memo5'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Lines.Strings = (
          'L/Charges'
          'Transport   '
          'Freight       '
          'C.fee         '
          'Others       '
          ''
          'TOTAL      '
          ' ')
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 33867
        mmLeft = 13758
        mmTop = 154252
        mmWidth = 22754
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppMemo6: TppMemo
        DesignLayer = ppDesignLayer2
        UserName = 'Memo6'
        KeepTogether = True
        Caption = 'Memo6'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Lines.Strings = (
          'EUR'
          'EUR'
          'EUR'
          'EUR'
          'EUR      '
          ''
          'EUR')
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 33867
        mmLeft = 37888
        mmTop = 154305
        mmWidth = 24130
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object DeliveryStampnewRGN: TppRegion
        OnPrint = DeliveryStampRGNPrint
        DesignLayer = ppDesignLayer2
        UserName = 'DeliveryStampRGN1'
        Caption = 'DeliveryStampRGN'
        Pen.Style = psDashDotDot
        Pen.Width = 2
        Visible = False
        mmHeight = 41487
        mmLeft = 97367
        mmTop = 185209
        mmWidth = 87207
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label27'
          HyperlinkEnabled = False
          Caption = #932#945' '#960#953#959' '#960#940#957#969
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4022
          mmLeft = 101262
          mmTop = 189442
          mmWidth = 19812
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel28: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label28'
          HyperlinkEnabled = False
          Caption = #948#941#956#945#964#945' '#956#949
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 132504
          mmTop = 189442
          mmWidth = 15452
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label201'
          HyperlinkEnabled = False
          Caption = #945#961'. '#964#945#965#964#972#964#951#964#945#962' '#966#959#961#964#969#964#953#954#942#962
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 101177
          mmTop = 194099
          mmWidth = 41783
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel30: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label30'
          HyperlinkEnabled = False
          Caption = #941#967#959#965#957' '#964#949#955#969#957#949#953#963#952#949#943' '#956#949' '#964#951' '#948#953#945#963#940#966#951#963#951
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 101177
          mmTop = 198756
          mmWidth = 58420
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel31: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label31'
          HyperlinkEnabled = False
          Caption = #954#945#953' '#956#960#959#961#959#973#957' '#957#945' '#960#945#961#945#948#959#952#959#973#957'.'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 101177
          mmTop = 209339
          mmWidth = 45974
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel32: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label32'
          HyperlinkEnabled = False
          Caption = #919#956#949#961'.....................'#933#960#959'/'#966#942'......................'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 101177
          mmTop = 214842
          mmWidth = 61807
          BandType = 10
          LayerName = PageLayer1
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataField = 'LOW_VALUE_TDID'
          DataPipeline = MawbPL
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'MawbPL'
          mmHeight = 5080
          mmLeft = 143298
          mmTop = 193252
          mmWidth = 37888
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label33'
          HyperlinkEnabled = False
          Caption = '..................'#945#961'.............../......................'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 101388
          mmTop = 204259
          mmWidth = 58547
          BandType = 10
          LayerName = PageLayer1
        end
        object Packagespp: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'Packagespp'
          HyperlinkEnabled = False
          AutoSize = False
          BlankWhenZero = False
          CalcOrder = 0
          DataType = dtInteger
          DisplayFormat = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          OnCalc = PackagesppCalc
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 122767
          mmTop = 188384
          mmWidth = 6138
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
  object RV1: TwwRecordViewDialog
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 0
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Caption = 'Record View'
    NavigatorFlat = True
    Left = 376
    Top = 120
  end
  object MawbSQL: TIBCQuery
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
        'ENT_ID, FILE_NAME_XML, MSG_TIME, MOVEMENT_NUMBER, DATE_DEPART)'
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
        'ME_XML, :MSG_TIME, :MOVEMENT_NUMBER, :DATE_DEPART)')
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
        'MBER, DATE_DEPART = :DATE_DEPART'
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
        'T FROM MAWB'
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
    Transaction = ClairDML.UpdateTrans
    UpdateTransaction = ClairDML.UpdateTrans
    SQL.Strings = (
      'Select ma.*, co.name as CountryName'
      'from Mawb ma'
      'left outer join country co on ma.FK_COUNTRY_CONSIGNEE =co.number'
      'where ma.Reference_Number = :ReferenceNumber')
    Active = True
    Left = 64
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ReferenceNumber'
        Value = nil
      end>
    object MawbSQLREFERENCE_NUMBER: TIntegerField
      FieldName = 'REFERENCE_NUMBER'
      Required = True
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
    object MawbSQLCOUNTRYNAME: TStringField
      FieldName = 'COUNTRYNAME'
      ReadOnly = True
      Size = 40
    end
  end
  object MawbPL: TppDBPipeline
    DataSource = MawbSRC
    UserName = 'MawbPL'
    Left = 240
    Top = 248
    object MawbPLppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERENCE_NUMBER'
      FieldName = 'REFERENCE_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object MawbPLppField2: TppField
      FieldAlias = 'MAWB_ID'
      FieldName = 'MAWB_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object MawbPLppField3: TppField
      FieldAlias = 'DATE_ARRIVED'
      FieldName = 'DATE_ARRIVED'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object MawbPLppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_COUNTRY_CONSIGNEE'
      FieldName = 'FK_COUNTRY_CONSIGNEE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object MawbPLppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERENCE_YEAR'
      FieldName = 'REFERENCE_YEAR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object MawbPLppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_PORT_IMPORTATION'
      FieldName = 'FK_PORT_IMPORTATION'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object MawbPLppField7: TppField
      FieldAlias = 'SIGNATORY_NAME'
      FieldName = 'SIGNATORY_NAME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object MawbPLppField8: TppField
      FieldAlias = 'FORM_DATE'
      FieldName = 'FORM_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object MawbPLppField9: TppField
      FieldAlias = 'FLIGHT_NUMBER'
      FieldName = 'FLIGHT_NUMBER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object MawbPLppField10: TppField
      FieldAlias = 'PASSED'
      FieldName = 'PASSED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
    object MawbPLppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROTATION_NUMBER'
      FieldName = 'ROTATION_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object MawbPLppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROTATION_YEAR'
      FieldName = 'ROTATION_YEAR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object MawbPLppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_PORT_CLEARING'
      FieldName = 'FK_PORT_CLEARING'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object MawbPLppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'GOODS_NUMBER'
      FieldName = 'GOODS_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object MawbPLppField15: TppField
      FieldAlias = 'GOODS_DESCRIPTION'
      FieldName = 'GOODS_DESCRIPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object MawbPLppField16: TppField
      FieldAlias = 'CBOOK_NUMBER'
      FieldName = 'CBOOK_NUMBER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object MawbPLppField17: TppField
      FieldAlias = 'INVOICED'
      FieldName = 'INVOICED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object MawbPLppField18: TppField
      FieldAlias = 'SENT_TO_HEAD'
      FieldName = 'SENT_TO_HEAD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 17
    end
    object MawbPLppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUSTOMS_OVERTIME_HOURS'
      FieldName = 'CUSTOMS_OVERTIME_HOURS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object MawbPLppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUSTOMS_OVERTIME_RATE'
      FieldName = 'CUSTOMS_OVERTIME_RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object MawbPLppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'STORAGE_EXPENSES'
      FieldName = 'STORAGE_EXPENSES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object MawbPLppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'DELIVERY_EXPENSES'
      FieldName = 'DELIVERY_EXPENSES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object MawbPLppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT_NOT_INVOICED'
      FieldName = 'AMOUNT_NOT_INVOICED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object MawbPLppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT_INVOICED'
      FieldName = 'AMOUNT_INVOICED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object MawbPLppField25: TppField
      FieldAlias = 'DATE_PASSED'
      FieldName = 'DATE_PASSED'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 24
    end
    object MawbPLppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'GOODS_WEIGHT'
      FieldName = 'GOODS_WEIGHT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object MawbPLppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'HAWBS_CLEARED_FIRST_TIME'
      FieldName = 'HAWBS_CLEARED_FIRST_TIME'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object MawbPLppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'HAWBS_IN_MAWB'
      FieldName = 'HAWBS_IN_MAWB'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object MawbPLppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCS_NUMBER'
      FieldName = 'DOCS_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object MawbPLppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCS_WEIGHT'
      FieldName = 'DOCS_WEIGHT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object MawbPLppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'HIGH_VALUE_NUMBER'
      FieldName = 'HIGH_VALUE_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object MawbPLppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'HIGH_VALUE_WEIGHT'
      FieldName = 'HIGH_VALUE_WEIGHT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object MawbPLppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'MEDIUM_VALUE_NUMBER'
      FieldName = 'MEDIUM_VALUE_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object MawbPLppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'MEDIUM_VALUE_WEIGHT'
      FieldName = 'MEDIUM_VALUE_WEIGHT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object MawbPLppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOW_VALUE_NUMBER'
      FieldName = 'LOW_VALUE_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object MawbPLppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOW_VALUE_WEIGHT'
      FieldName = 'LOW_VALUE_WEIGHT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object MawbPLppField37: TppField
      FieldAlias = 'CUSTOMS_OVERTIME_RATE_TYPE'
      FieldName = 'CUSTOMS_OVERTIME_RATE_TYPE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 36
    end
    object MawbPLppField38: TppField
      FieldAlias = 'XML_CONSOLIDATED_ID'
      FieldName = 'XML_CONSOLIDATED_ID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 37
    end
    object MawbPLppField39: TppField
      FieldAlias = 'ROTATION_2'
      FieldName = 'ROTATION_2'
      FieldLength = 2
      DisplayWidth = 2
      Position = 38
    end
    object MawbPLppField40: TppField
      FieldAlias = 'HMSD'
      FieldName = 'HMSD'
      FieldLength = 20
      DisplayWidth = 20
      Position = 39
    end
    object MawbPLppField41: TppField
      FieldAlias = 'LOW_VALUE_TDID'
      FieldName = 'LOW_VALUE_TDID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object MawbPLppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'STATUSC_NUMBER'
      FieldName = 'STATUSC_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 41
    end
    object MawbPLppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'STATUSC_WEIGHT'
      FieldName = 'STATUSC_WEIGHT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 42
    end
    object MawbPLppField44: TppField
      FieldAlias = 'TDID_NEW'
      FieldName = 'TDID_NEW'
      FieldLength = 15
      DisplayWidth = 15
      Position = 43
    end
    object MawbPLppField45: TppField
      FieldAlias = 'F63'
      FieldName = 'F63'
      FieldLength = 15
      DisplayWidth = 15
      Position = 44
    end
    object MawbPLppField46: TppField
      FieldAlias = 'STATUSC'
      FieldName = 'STATUSC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 45
    end
    object MawbPLppField47: TppField
      FieldAlias = 'TDID_MEDIUM'
      FieldName = 'TDID_MEDIUM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 46
    end
    object MawbPLppField48: TppField
      FieldAlias = 'DHL_EQUIPMENT_ID'
      FieldName = 'DHL_EQUIPMENT_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 47
    end
    object MawbPLppField49: TppField
      FieldAlias = 'FILE_NAME_XML'
      FieldName = 'FILE_NAME_XML'
      FieldLength = 80
      DisplayWidth = 80
      Position = 48
    end
    object MawbPLppField50: TppField
      FieldAlias = 'MSG_TIME'
      FieldName = 'MSG_TIME'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 49
    end
    object MawbPLppField51: TppField
      FieldAlias = 'MOVEMENT_NUMBER'
      FieldName = 'MOVEMENT_NUMBER'
      FieldLength = 20
      DisplayWidth = 20
      Position = 50
    end
    object MawbPLppField52: TppField
      FieldAlias = 'DATE_DEPART'
      FieldName = 'DATE_DEPART'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 51
    end
    object MawbPLppField53: TppField
      FieldAlias = 'COUNTRYNAME'
      FieldName = 'COUNTRYNAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 52
    end
  end
  object FlightSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ClairDML.UpdateTrans
    UpdateTransaction = ClairDML.UpdateTrans
    SQL.Strings = (
      'Select FN.Flight_Number, CO.Name'
      '   from Flight_Numbers FN, Country CO'
      'where'
      '   Flight_Number= :FlightNumber and'
      '   FN.FK_COUNTRY= CO.Number')
    Left = 80
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'FlightNumber'
        ParamType = ptInput
        Value = ''
      end>
    object FlightSQLFLIGHT_NUMBER: TStringField
      FieldName = 'FLIGHT_NUMBER'
      FixedChar = True
      Size = 10
    end
    object FlightSQLNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object CountrySQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ClairDML.UpdateTrans
    UpdateTransaction = ClairDML.UpdateTrans
    SQL.Strings = (
      'Select * from Country where Number= :countryNumber')
    Active = True
    Left = 72
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'countryNumber'
        ParamType = ptInput
        Value = 0
      end>
    object CountrySQLNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = 'CLAIRDB.COUNTRY.NUMBER'
    end
    object CountrySQLCODE: TStringField
      FieldName = 'CODE'
      Origin = 'CLAIRDB.COUNTRY.CODE'
      FixedChar = True
      Size = 3
    end
    object CountrySQLNAME: TStringField
      FieldName = 'NAME'
      Origin = 'CLAIRDB.COUNTRY.NAME'
      Size = 40
    end
    object CountrySQLEU_MEMBER: TStringField
      FieldName = 'EU_MEMBER'
      Origin = 'CLAIRDB.COUNTRY.EU_MEMBER'
      FixedChar = True
      Size = 1
    end
    object CountrySQLFREIGHT05: TIntegerField
      FieldName = 'FREIGHT05'
      Origin = 'CLAIRDB.COUNTRY.FREIGHT05'
    end
    object CountrySQLFREIGHT6: TIntegerField
      FieldName = 'FREIGHT6'
      Origin = 'CLAIRDB.COUNTRY.FREIGHT6'
    end
    object CountrySQLFK_CURRENCY_CODE: TStringField
      FieldName = 'FK_CURRENCY_CODE'
      Origin = 'CLAIRDB.COUNTRY.FK_CURRENCY_CODE'
      FixedChar = True
      Size = 3
    end
    object CountrySQLGREEK_NAME: TStringField
      FieldName = 'GREEK_NAME'
      Origin = 'CLAIRDB.COUNTRY.GREEK_NAME'
      Size = 40
    end
    object CountrySQLXML_COUNTRY: TStringField
      FieldName = 'XML_COUNTRY'
      Origin = 'CLAIRDB.COUNTRY.XML_COUNTRY'
      FixedChar = True
      Size = 2
    end
  end
  object CountryPP: TppDBPipeline
    DataSource = CountrySRC
    UserName = 'CountryPL'
    Left = 256
    Top = 128
    object CountryPPppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMBER'
      FieldName = 'NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object CountryPPppField2: TppField
      FieldAlias = 'CODE'
      FieldName = 'CODE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 1
    end
    object CountryPPppField3: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 2
    end
    object CountryPPppField4: TppField
      FieldAlias = 'EU_MEMBER'
      FieldName = 'EU_MEMBER'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object CountryPPppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'FREIGHT05'
      FieldName = 'FREIGHT05'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object CountryPPppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'FREIGHT6'
      FieldName = 'FREIGHT6'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object CountryPPppField7: TppField
      FieldAlias = 'FK_CURRENCY_CODE'
      FieldName = 'FK_CURRENCY_CODE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 6
    end
    object CountryPPppField8: TppField
      FieldAlias = 'GREEK_NAME'
      FieldName = 'GREEK_NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 7
    end
    object CountryPPppField9: TppField
      FieldAlias = 'XML_COUNTRY'
      FieldName = 'XML_COUNTRY'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
  end
  object FlightSRC: TDataSource
    DataSet = FlightSQL
    Left = 176
    Top = 64
  end
  object FlightPL: TppDBPipeline
    DataSource = FlightSRC
    UserName = 'FlightPL'
    Left = 248
    Top = 64
  end
  object ParameterSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ClairDML.UsedForReadOnlyTrans
    UpdateTransaction = ClairDML.UpdateTrans
    SQL.Strings = (
      '   Select * from System_parameters where'
      'Parameter_id = :TheKey')
    Left = 408
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'TheKey'
        ParamType = ptInput
        Value = ''
      end>
    object ParameterSQLPARAMETER_ID: TStringField
      FieldName = 'PARAMETER_ID'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.PARAMETER_ID'
      FixedChar = True
    end
    object ParameterSQLINT_1: TIntegerField
      FieldName = 'INT_1'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.INT_1'
    end
    object ParameterSQLINT_2: TIntegerField
      FieldName = 'INT_2'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.INT_2'
    end
    object ParameterSQLSTR_1: TStringField
      FieldName = 'STR_1'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.STR_1'
      FixedChar = True
      Size = 30
    end
    object ParameterSQLSTR_2: TStringField
      FieldName = 'STR_2'
      Origin = 'CLAIRDB.SYSTEM_PARAMETERS.STR_2'
      FixedChar = True
      Size = 30
    end
  end
  object FindPrinterSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ClairDML.UsedForReadOnlyTrans
    UpdateTransaction = ClairDML.UpdateTrans
    SQL.Strings = (
      'Select * from Printers where'
      'Report_id = :TheReport;')
    UniDirectional = True
    Left = 480
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TheReport'
        Value = nil
      end>
    object FindPrinterSQLREPORT_ID: TStringField
      FieldName = 'REPORT_ID'
      Origin = 'CLAIRDB.PRINTERS.REPORT_ID'
      FixedChar = True
      Size = 30
    end
    object FindPrinterSQLREPORT_NAME: TStringField
      FieldName = 'REPORT_NAME'
      Origin = 'CLAIRDB.PRINTERS.REPORT_NAME'
      FixedChar = True
      Size = 60
    end
    object FindPrinterSQLPRINTER_NAME: TStringField
      FieldName = 'PRINTER_NAME'
      Origin = 'CLAIRDB.PRINTERS.PRINTER_NAME'
      FixedChar = True
      Size = 60
    end
  end
  object ParamsSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ClairDML.UsedForReadOnlyTrans
    UpdateTransaction = ClairDML.UpdateTrans
    SQL.Strings = (
      ' select *  from  General_Parameter where Code= :TheKey;')
    Left = 392
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TheKey'
        Value = nil
      end>
    object ParamsSQLCODE: TStringField
      FieldName = 'CODE'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.CODE'
      FixedChar = True
      Size = 3
    end
    object ParamsSQLTEXT_1: TStringField
      FieldName = 'TEXT_1'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.TEXT_1'
      FixedChar = True
      Size = 40
    end
    object ParamsSQLTEXT_2: TStringField
      FieldName = 'TEXT_2'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.TEXT_2'
      FixedChar = True
      Size = 40
    end
    object ParamsSQLNUMERIC_1: TFloatField
      FieldName = 'NUMERIC_1'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.NUMERIC_1'
    end
    object ParamsSQLNUMERIC_2: TFloatField
      FieldName = 'NUMERIC_2'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.NUMERIC_2'
    end
    object ParamsSQLINTEGER_1: TIntegerField
      FieldName = 'INTEGER_1'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.INTEGER_1'
    end
    object ParamsSQLINTEGER_2: TIntegerField
      FieldName = 'INTEGER_2'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.INTEGER_2'
    end
    object ParamsSQLDATE_1: TDateTimeField
      FieldName = 'DATE_1'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.DATE_1'
    end
    object ParamsSQLNUMERIC_6: TFloatField
      FieldName = 'NUMERIC_6'
      Origin = 'CLAIRDB.GENERAL_PARAMETER.NUMERIC_6'
    end
  end
  object FindDOChargeSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ClairDML.UsedForReadOnlyTrans
    UpdateTransaction = ClairDML.UpdateTrans
    SQL.Strings = (
      'select'
      '    amount'
      'FROM'
      '    other_charge'
      'WHERE'
      'Code=  :TheCode'
      ''
      '')
    Left = 184
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TheCode'
        Value = nil
      end>
    object FindDOChargeSQLAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
  end
  object FindInvoiceSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ClairDML.UsedForReadOnlyTrans
    UpdateTransaction = ClairDML.UpdateTrans
    SQL.Strings = (
      
        'Select invoice_Number  from Invoice where hawb_serial= :hawbSeri' +
        'al;')
    UniDirectional = True
    Left = 408
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hawbSerial'
        Value = nil
      end>
    object FindInvoiceSQLINVOICE_NUMBER: TIntegerField
      FieldName = 'INVOICE_NUMBER'
    end
  end
  object FindCountrySQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ClairDML.UpdateTrans
    UpdateTransaction = ClairDML.UpdateTrans
    SQL.Strings = (
      'Select * from Country where Number= :countryNumber')
    Left = 80
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'countryNumber'
        ParamType = ptInput
        Value = 0
      end>
    object IntegerField1: TIntegerField
      FieldName = 'NUMBER'
      Origin = 'CLAIRDB.COUNTRY.NUMBER'
    end
    object StringField1: TStringField
      FieldName = 'CODE'
      Origin = 'CLAIRDB.COUNTRY.CODE'
      FixedChar = True
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'NAME'
      Origin = 'CLAIRDB.COUNTRY.NAME'
      Size = 40
    end
    object StringField3: TStringField
      FieldName = 'EU_MEMBER'
      Origin = 'CLAIRDB.COUNTRY.EU_MEMBER'
      FixedChar = True
      Size = 1
    end
    object IntegerField2: TIntegerField
      FieldName = 'FREIGHT05'
      Origin = 'CLAIRDB.COUNTRY.FREIGHT05'
    end
    object IntegerField3: TIntegerField
      FieldName = 'FREIGHT6'
      Origin = 'CLAIRDB.COUNTRY.FREIGHT6'
    end
    object StringField4: TStringField
      FieldName = 'FK_CURRENCY_CODE'
      Origin = 'CLAIRDB.COUNTRY.FK_CURRENCY_CODE'
      FixedChar = True
      Size = 3
    end
    object StringField5: TStringField
      FieldName = 'GREEK_NAME'
      Origin = 'CLAIRDB.COUNTRY.GREEK_NAME'
      Size = 40
    end
    object StringField6: TStringField
      FieldName = 'XML_COUNTRY'
      Origin = 'CLAIRDB.COUNTRY.XML_COUNTRY'
      FixedChar = True
      Size = 2
    end
  end
  object MawbSRC: TIBCDataSource
    DataSet = MawbSQL
    Left = 136
    Top = 256
  end
  object CountrySRC: TIBCDataSource
    DataSet = CountrySQL
    Left = 168
    Top = 128
  end
end
