object R_PrintEdeDeliveryFRM: TR_PrintEdeDeliveryFRM
  Left = 292
  Top = 252
  Caption = 'R_PrintEdeDeliveryFRM'
  ClientHeight = 695
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
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
    DataPipeline = HawbPL
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
    Top = 264
    Version = '18.01'
    mmColumnWidth = 0
    DataPipelineName = 'HawbPL'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 81492
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'DHL Cyprus LTD '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 156845
        mmTop = 2328
        mmWidth = 32978
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'DELIVERY ORDER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 6646
        mmLeft = 72390
        mmTop = 1270
        mmWidth = 52917
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
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 4657
        mmLeft = 158750
        mmTop = 24130
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
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 4657
        mmLeft = 182245
        mmTop = 24130
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
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 158750
        mmTop = 18838
        mmWidth = 17526
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
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        HyperlinkEnabled = False
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 180764
        mmTop = 24765
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'NAME'
        DataPipeline = CountryPP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'CountryPP'
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
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        OnGetText = ppDBText2GetText
        DataField = 'DELIVERY_ORDER_ID'
        DataPipeline = HawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'HawbPL'
        mmHeight = 4657
        mmLeft = 158750
        mmTop = 29422
        mmWidth = 26670
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
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 4657
        mmLeft = 176530
        mmTop = 24130
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
        mmLeft = 132504
        mmTop = 8678
        mmWidth = 62653
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
          CalcOrder = 0
          DataType = dtInteger
          DisplayFormat = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 168910
          mmTop = 11218
          mmWidth = 13335
          BandType = 0
          LayerName = Foreground
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label25'
          HyperlinkEnabled = False
          Caption = 'Delivery Order No.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4868
          mmLeft = 132927
          mmTop = 10371
          mmWidth = 36195
          BandType = 0
          LayerName = Foreground
        end
        object Blbl: TppLabel
          OnPrint = BlblPrint
          DesignLayer = ppDesignLayer1
          UserName = 'Blbl'
          HyperlinkEnabled = False
          Caption = '/B'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 182669
          mmTop = 11007
          mmWidth = 3387
          BandType = 0
          LayerName = Foreground
        end
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
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 4657
        mmLeft = 158750
        mmTop = 34925
        mmWidth = 37253
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
        mmLeft = 132927
        mmTop = 18203
        mmWidth = 24765
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
        mmLeft = 132927
        mmTop = 24130
        mmWidth = 24553
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
        mmLeft = 132927
        mmTop = 29422
        mmWidth = 24553
        BandType = 0
        LayerName = Foreground
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
        mmLeft = 132927
        mmTop = 34925
        mmWidth = 24553
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        HyperlinkEnabled = False
        DataField = 'VAT_ID'
        DataPipeline = CustomerPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'CustomerPL'
        mmHeight = 5292
        mmLeft = 158750
        mmTop = 47413
        mmWidth = 31115
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'VAT :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5503
        mmLeft = 145204
        mmTop = 47202
        mmWidth = 12277
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
        mmHeight = 5556
        mmLeft = 182563
        mmTop = 15346
        mmWidth = 4498
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
        mmLeft = 14393
        mmTop = 15452
        mmWidth = 26458
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
        mmLeft = 42757
        mmTop = 74718
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
        mmLeft = 40217
        mmTop = 84455
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
        mmHeight = 5503
        mmLeft = 14393
        mmTop = 21802
        mmWidth = 26670
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
        mmHeight = 5556
        mmLeft = 77470
        mmTop = 15346
        mmWidth = 86572
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
        mmLeft = 58208
        mmTop = 15452
        mmWidth = 16510
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
        mmHeight = 5556
        mmLeft = 164836
        mmTop = 15346
        mmWidth = 16140
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
        mmHeight = 5556
        mmLeft = 77470
        mmTop = 21696
        mmWidth = 86572
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
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        OnCalc = NumberOfPackagesPPCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5503
        mmLeft = 41275
        mmTop = 15452
        mmWidth = 7832
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
        mmHeight = 5556
        mmLeft = 164836
        mmTop = 21696
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object Kg2lbl: TppLabel
        OnPrint = Kg2lblPrint
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
        mmHeight = 5556
        mmLeft = 182563
        mmTop = 21696
        mmWidth = 4498
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
        mmLeft = 75353
        mmTop = 29369
        mmWidth = 75142
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
        DisplayFormat = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        OnCalc = NumberOfPackages2PPCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 41487
        mmTop = 21696
        mmWidth = 7832
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
        mmLeft = 58208
        mmTop = 21378
        mmWidth = 16087
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
        OnCalc = CustomDutiesLBLCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4868
        mmLeft = 152824
        mmTop = 34078
        mmWidth = 34290
        BandType = 4
        LayerName = Foreground
      end
      object PackagesPartialLBL: TppLabel
        OnPrint = PackagesPartialLBLPrint
        DesignLayer = ppDesignLayer1
        UserName = 'PackagesPartialLBL'
        HyperlinkEnabled = False
        Caption = 'xxx'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5503
        mmLeft = 49530
        mmTop = 15452
        mmWidth = 8043
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
          'LARNACA INTL. AIRPORT'
          'CARGO TERMINAL'
          '7130 LARNACA'
          'TEL: 77777345'
          'FAX: 24008239'
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
        mmTop = 76623
        mmWidth = 178859
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 12065
        mmTop = 174625
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
        mmLeft = 75565
        mmTop = 76623
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
        mmTop = 78105
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
        mmHeight = 9948
        mmLeft = 15875
        mmTop = 78105
        mmWidth = 22013
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
        mmLeft = 45297
        mmTop = 78105
        mmWidth = 26670
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
        mmLeft = 77258
        mmTop = 78105
        mmWidth = 84667
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Position = lpLeft
        Weight = 1.000000000000000000
        mmHeight = 56092
        mmLeft = 41698
        mmTop = 76623
        mmWidth = 1270
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
        mmTop = 76623
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
        mmLeft = 12277
        mmTop = 134620
        mmWidth = 51647
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Position = lpLeft
        Weight = 1.000000000000000000
        mmHeight = 39688
        mmLeft = 36618
        mmTop = 134620
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
        mmTop = 89324
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
        mmLeft = 13335
        mmTop = 136525
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
        mmLeft = 37465
        mmTop = 136525
        mmWidth = 24130
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object DeliveryStampRGN: TppRegion
        OnPrint = DeliveryStampRGNPrint
        DesignLayer = ppDesignLayer2
        UserName = 'DeliveryStampRGN'
        Caption = 'DeliveryStampRGN'
        Pen.Style = psDashDotDot
        Pen.Width = 2
        Visible = False
        mmHeight = 41487
        mmLeft = 96944
        mmTop = 189442
        mmWidth = 87207
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label12'
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
          mmLeft = 100839
          mmTop = 193675
          mmWidth = 19812
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label19'
          HyperlinkEnabled = False
          Caption = #948#941#956#945#964#945' '#956#949
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 130175
          mmTop = 193675
          mmWidth = 15452
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label20'
          HyperlinkEnabled = False
          Caption = #945#961'. '#964#945#965#964#972#964#951#964#945#962' '#966#959#961#964#969#964#953#954#942#962
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 100754
          mmTop = 198332
          mmWidth = 41783
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label21'
          HyperlinkEnabled = False
          Caption = #941#967#959#965#957' '#964#949#955#969#957#949#953#963#952#949#943' '#956#949' '#964#951' '#948#953#945#963#940#966#951#963#951
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 100754
          mmTop = 202989
          mmWidth = 58420
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label22'
          HyperlinkEnabled = False
          Caption = #954#945#953' '#956#960#959#961#959#973#957' '#957#945' '#960#945#961#945#948#959#952#959#973#957'.'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 100754
          mmTop = 213572
          mmWidth = 45974
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label23'
          HyperlinkEnabled = False
          Caption = #919#956#949#961'.....................'#933#960#959'/'#966#942'......................'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 100754
          mmTop = 219075
          mmWidth = 61807
          BandType = 10
          LayerName = PageLayer1
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText12'
          HyperlinkEnabled = False
          DataField = 'XML_HOUSE_ID'
          DataPipeline = HawbPL
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'HawbPL'
          mmHeight = 5080
          mmLeft = 142875
          mmTop = 197485
          mmWidth = 37888
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label24'
          HyperlinkEnabled = False
          Caption = '..................'#945#961'.............../......................'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 100965
          mmTop = 208492
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          OnCalc = PackagesppCalc
          Transparent = True
          mmHeight = 5292
          mmLeft = 121920
          mmTop = 192617
          mmWidth = 7620
          BandType = 10
          LayerName = PageLayer1
        end
      end
      object LogoRGN: TppRegion
        OnPrint = LogoRGNPrint
        DesignLayer = ppDesignLayer2
        UserName = 'LogoRGN'
        Pen.Color = clInactiveBorder
        Pen.Style = psClear
        mmHeight = 20320
        mmLeft = 0
        mmTop = 0
        mmWidth = 45932
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppImage2: TppImage
          DesignLayer = ppDesignLayer2
          UserName = 'Image2'
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
          mmHeight = 17145
          mmLeft = 847
          mmTop = 846
          mmWidth = 42333
          BandType = 10
          LayerName = PageLayer1
        end
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        HyperlinkEnabled = False
        Caption = 'Label27'
        Font.Charset = GREEK_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 5080
        mmLeft = 128059
        mmTop = 148167
        mmWidth = 15875
        BandType = 10
        LayerName = PageLayer1
      end
      object HouseBr: TppBarCode
        OnPrint = HouseBrPrint
        DesignLayer = ppDesignLayer2
        UserName = 'HouseBr'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Data = '**'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 18838
        mmLeft = 12488
        mmTop = 176742
        mmWidth = 50377
        BandType = 10
        LayerName = PageLayer1
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object XmlBr: TppBarCode
        OnPrint = XmlBrPrint
        DesignLayer = ppDesignLayer2
        UserName = 'XmlBr'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Data = '**'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 18838
        mmLeft = 12700
        mmTop = 196004
        mmWidth = 50377
        BandType = 10
        LayerName = PageLayer1
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object MawbBr: TppBarCode
        OnPrint = MawbBrPrint
        DesignLayer = ppDesignLayer2
        UserName = 'MawbBr'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Data = '**'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 18838
        mmLeft = 12700
        mmTop = 215265
        mmWidth = 50377
        BandType = 10
        LayerName = PageLayer1
        mmBarWidth = 254
        mmWideBarRatio = 76200
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
  object HawbSQL: TIBCQuery
    SQL.Strings = (
      'Select * from Hawb where hab_id= :HawbId')
    Active = True
    Left = 72
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'HawbId'
        Value = nil
      end>
    object HawbSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Origin = 'DB1.HAWB.HAB_ID'
      Size = 10
    end
    object HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Origin = 'DB1.HAWB.FK_MAWB_REFER_NUMBER'
    end
    object HawbSQLFK_CLEARING_STATE: TStringField
      FieldName = 'FK_CLEARING_STATE'
      Origin = 'DB1.HAWB.FK_CLEARING_STATE'
      Size = 1
    end
    object HawbSQLFK_INVOICE_STATUS: TStringField
      FieldName = 'FK_INVOICE_STATUS'
      Origin = 'DB1.HAWB.FK_INVOICE_STATUS'
      Size = 1
    end
    object HawbSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DB1.HAWB.DESCRIPTION'
      Size = 200
    end
    object HawbSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
      Origin = 'DB1.HAWB.FK_CUSTOMER_CODE'
    end
    object HawbSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
      Origin = 'DB1.HAWB.WEIGHT'
    end
    object HawbSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Origin = 'DB1.HAWB.FK_CURRENCY'
      Size = 3
    end
    object HawbSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Origin = 'DB1.HAWB.EXCHANGE_RATE'
    end
    object HawbSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
      Origin = 'DB1.HAWB.FREIGHT_AMOUNT'
    end
    object HawbSQLFK_OTHER_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER_CHARGE_CODE'
      Origin = 'DB1.HAWB.FK_OTHER_CHARGE_CODE'
      Size = 6
    end
    object HawbSQLOTHER_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER_CHARGE_AMOUNT'
      Origin = 'DB1.HAWB.OTHER_CHARGE_AMOUNT'
    end
    object HawbSQLOTHER_CHARGE_PAID: TStringField
      FieldName = 'OTHER_CHARGE_PAID'
      Origin = 'DB1.HAWB.OTHER_CHARGE_PAID'
      Size = 1
    end
    object HawbSQLSTAMPS_AMOUNT: TFloatField
      FieldName = 'STAMPS_AMOUNT'
      Origin = 'DB1.HAWB.STAMPS_AMOUNT'
    end
    object HawbSQLEXPS_NON_INVOICABLE: TFloatField
      FieldName = 'EXPS_NON_INVOICABLE'
      Origin = 'DB1.HAWB.EXPS_NON_INVOICABLE'
    end
    object HawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'DB1.HAWB.SERIAL_NUMBER'
    end
    object HawbSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
      Origin = 'DB1.HAWB.INVOICE_SERIAL'
    end
    object HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField
      FieldName = 'COURIER_INVOICE_SERIAL'
      Origin = 'DB1.HAWB.COURIER_INVOICE_SERIAL'
    end
    object HawbSQLCOURIER_INVOICE_VALUE: TFloatField
      FieldName = 'COURIER_INVOICE_VALUE'
      Origin = 'DB1.HAWB.COURIER_INVOICE_VALUE'
    end
    object HawbSQLHIGH_VALUE: TStringField
      FieldName = 'HIGH_VALUE'
      Origin = 'DB1.HAWB.HIGH_VALUE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_SEC_MAWB_REFER_NUMBER'
      Origin = 'DB1.HAWB.FK_SEC_MAWB_REFER_NUMBER'
    end
    object HawbSQLEDE_STORAGE_EXPENSES: TFloatField
      FieldName = 'EDE_STORAGE_EXPENSES'
      Origin = 'DB1.HAWB.EDE_STORAGE_EXPENSES'
    end
    object HawbSQLEDE_DELIVERY_EXPENSES: TFloatField
      FieldName = 'EDE_DELIVERY_EXPENSES'
      Origin = 'DB1.HAWB.EDE_DELIVERY_EXPENSES'
    end
    object HawbSQLDATE_INVOICED: TDateTimeField
      FieldName = 'DATE_INVOICED'
      Origin = 'DB1.HAWB.DATE_INVOICED'
    end
    object HawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Origin = 'DB1.HAWB.SENT_TO_HEAD'
      FixedChar = True
      Size = 1
    end
    object HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
      Origin = 'DB1.HAWB.NUM_OF_PIECES_ARRIVED'
    end
    object HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
      Origin = 'DB1.HAWB.TOTAL_NUM_OF_PIECES'
    end
    object HawbSQLFK_CLEARANCE_TYPE: TStringField
      FieldName = 'FK_CLEARANCE_TYPE'
      Origin = 'DB1.HAWB.FK_CLEARANCE_TYPE'
      Size = 12
    end
    object HawbSQLFK_DELIVERY_TERM: TStringField
      FieldName = 'FK_DELIVERY_TERM'
      Origin = 'DB1.HAWB.FK_DELIVERY_TERM'
      Size = 3
    end
    object HawbSQLORIGIN_STATION: TStringField
      FieldName = 'ORIGIN_STATION'
      Origin = 'DB1.HAWB.ORIGIN_STATION'
      Size = 12
    end
    object HawbSQLEC2_NUMBER_DATE: TStringField
      FieldName = 'EC2_NUMBER_DATE'
      Origin = 'DB1.HAWB.EC2_NUMBER_DATE'
      Size = 40
    end
    object HawbSQLSENDERS_INV_NO: TStringField
      FieldName = 'SENDERS_INV_NO'
      Origin = 'DB1.HAWB.SENDERS_INV_NO'
      Size = 50
    end
    object HawbSQLNUMBER_OF_PARCELS: TIntegerField
      FieldName = 'NUMBER_OF_PARCELS'
      Origin = 'DB1.HAWB.NUMBER_OF_PARCELS'
    end
    object HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField
      FieldName = 'FK_CUSTOMER_ACCOUNT'
      Origin = 'DB1.HAWB.FK_CUSTOMER_ACCOUNT'
    end
    object HawbSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      Origin = 'DB1.HAWB.DISTRICT'
      FixedChar = True
      Size = 3
    end
    object HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField
      FieldName = 'DELIVERY_ORDER_AMOUNT'
      Origin = 'DB1.HAWB.DELIVERY_ORDER_AMOUNT'
    end
    object HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER2_CHARGE_AMOUNT'
      Origin = 'DB1.HAWB.OTHER2_CHARGE_AMOUNT'
    end
    object HawbSQLFK_OTHER2_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER2_CHARGE_CODE'
      Origin = 'DB1.HAWB.FK_OTHER2_CHARGE_CODE'
      FixedChar = True
      Size = 6
    end
    object HawbSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      Origin = 'DB1.HAWB.POSOSTOSIS'
      FixedChar = True
      Size = 1
    end
    object HawbSQLTOTAL_DUTIES: TFloatField
      FieldName = 'TOTAL_DUTIES'
      Origin = 'DB1.HAWB.TOTAL_DUTIES'
    end
    object HawbSQLCLEARANCE_WAITING_CODE: TStringField
      FieldName = 'CLEARANCE_WAITING_CODE'
      Origin = 'DB1.HAWB.CLEARANCE_WAITING_CODE'
      FixedChar = True
      Size = 5
    end
    object HawbSQLCLEARANCE_WAITING_REASON: TStringField
      FieldName = 'CLEARANCE_WAITING_REASON'
      Origin = 'DB1.HAWB.CLEARANCE_WAITING_REASON'
      FixedChar = True
      Size = 40
    end
    object HawbSQLDATE_CLEARED: TDateTimeField
      FieldName = 'DATE_CLEARED'
      Origin = 'DB1.HAWB.DATE_CLEARED'
    end
    object HawbSQLDATE_REGISTERED: TDateTimeField
      FieldName = 'DATE_REGISTERED'
      Origin = 'DB1.HAWB.DATE_REGISTERED'
    end
    object HawbSQLFACTOR: TFloatField
      FieldName = 'FACTOR'
      Origin = 'DB1.HAWB.FACTOR'
    end
    object HawbSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
      Origin = 'DB1.HAWB.FK_COUNTRY_ORIGIN'
    end
    object HawbSQLINVOICABLE: TStringField
      FieldName = 'INVOICABLE'
      Origin = 'DB1.HAWB.INVOICABLE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
      Origin = 'DB1.HAWB.TOTAL_CHARGES'
    end
    object HawbSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'DB1.HAWB.CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object HawbSQLEDE_COMMENTS: TStringField
      FieldName = 'EDE_COMMENTS'
      Origin = 'DB1.HAWB.EDE_COMMENTS'
      Size = 100
    end
    object HawbSQLFK_MAWB_ID: TStringField
      FieldName = 'FK_MAWB_ID'
      Origin = 'DB1.HAWB.FK_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object HawbSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      Origin = 'DB1.HAWB.SIGNATORY_NAME'
      FixedChar = True
      Size = 50
    end
    object HawbSQLXML_HOUSE_ID: TStringField
      FieldName = 'XML_HOUSE_ID'
      Origin = 'DB1.HAWB.XML_HOUSE_ID'
      FixedChar = True
      Size = 13
    end
    object HawbSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      Origin = 'DB1.HAWB.SENDER_NAME'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      Origin = 'DB1.HAWB.SENDER_ADDRESS_1'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      Origin = 'DB1.HAWB.SENDER_ADDRESS_2'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      Origin = 'DB1.HAWB.SENDER_ADDRESS_3'
      FixedChar = True
      Size = 60
    end
    object HawbSQLIS_PRIVATE: TStringField
      FieldName = 'IS_PRIVATE'
      Origin = 'DB1.HAWB.IS_PRIVATE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLDELIVERY_ORDER_ID: TStringField
      FieldName = 'DELIVERY_ORDER_ID'
      Origin = 'CLAIRDB.HAWB.DELIVERY_ORDER_ID'
      FixedChar = True
      Size = 10
    end
    object HawbSQLINVOICE_TOTAL: TFloatField
      FieldName = 'INVOICE_TOTAL'
      Origin = 'CLAIRDB.HAWB.INVOICE_TOTAL'
    end
    object HawbSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
      Origin = 'CLAIRDB.HAWB.CUSTOMS_VALUE'
    end
    object HawbSQLCHARGE_TRL: TFloatField
      FieldName = 'CHARGE_TRL'
      Origin = 'CLAIRDB.HAWB.CHARGE_TRL'
    end
    object HawbSQLCHARGE_VAT: TFloatField
      FieldName = 'CHARGE_VAT'
      Origin = 'CLAIRDB.HAWB.CHARGE_VAT'
    end
    object HawbSQLCHARGE_EXCISE: TFloatField
      FieldName = 'CHARGE_EXCISE'
      Origin = 'CLAIRDB.HAWB.CHARGE_EXCISE'
    end
    object HawbSQLCHARGE_IMPORT: TFloatField
      FieldName = 'CHARGE_IMPORT'
      Origin = 'CLAIRDB.HAWB.CHARGE_IMPORT'
    end
    object HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER4_CHARGE_AMOUNT'
      Origin = 'CLAIRDB.HAWB.OTHER4_CHARGE_AMOUNT'
    end
    object HawbSQLFK_OTHER4_CHARGE: TStringField
      FieldName = 'FK_OTHER4_CHARGE'
      Origin = 'CLAIRDB.HAWB.FK_OTHER4_CHARGE'
      FixedChar = True
      Size = 3
    end
  end
  object HawbSRC: TwwDataSource
    DataSet = HawbSQL
    Left = 136
    Top = 376
  end
  object HawbPL: TppDBPipeline
    DataSource = IBCDataSource1
    UserName = 'HawbPL'
    OnTraversal = HawbPLTraversal
    Left = 216
    Top = 360
    object HawbPLppField1: TppField
      FieldAlias = 'HAB_ID'
      FieldName = 'HAB_ID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object HawbPLppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_MAWB_REFER_NUMBER'
      FieldName = 'FK_MAWB_REFER_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object HawbPLppField3: TppField
      FieldAlias = 'FK_CLEARING_STATE'
      FieldName = 'FK_CLEARING_STATE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object HawbPLppField4: TppField
      FieldAlias = 'FK_INVOICE_STATUS'
      FieldName = 'FK_INVOICE_STATUS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object HawbPLppField5: TppField
      FieldAlias = 'DESCRIPTION'
      FieldName = 'DESCRIPTION'
      FieldLength = 200
      DisplayWidth = 200
      Position = 4
    end
    object HawbPLppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_CUSTOMER_CODE'
      FieldName = 'FK_CUSTOMER_CODE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object HawbPLppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'WEIGHT'
      FieldName = 'WEIGHT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object HawbPLppField8: TppField
      FieldAlias = 'FK_CURRENCY'
      FieldName = 'FK_CURRENCY'
      FieldLength = 3
      DisplayWidth = 3
      Position = 7
    end
    object HawbPLppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXCHANGE_RATE'
      FieldName = 'EXCHANGE_RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object HawbPLppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'FREIGHT_AMOUNT'
      FieldName = 'FREIGHT_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object HawbPLppField11: TppField
      FieldAlias = 'FK_OTHER_CHARGE_CODE'
      FieldName = 'FK_OTHER_CHARGE_CODE'
      FieldLength = 6
      DisplayWidth = 6
      Position = 10
    end
    object HawbPLppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTHER_CHARGE_AMOUNT'
      FieldName = 'OTHER_CHARGE_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object HawbPLppField13: TppField
      FieldAlias = 'OTHER_CHARGE_PAID'
      FieldName = 'OTHER_CHARGE_PAID'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object HawbPLppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'STAMPS_AMOUNT'
      FieldName = 'STAMPS_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object HawbPLppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXPS_NON_INVOICABLE'
      FieldName = 'EXPS_NON_INVOICABLE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object HawbPLppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'SERIAL_NUMBER'
      FieldName = 'SERIAL_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object HawbPLppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'INVOICE_SERIAL'
      FieldName = 'INVOICE_SERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object HawbPLppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'COURIER_INVOICE_SERIAL'
      FieldName = 'COURIER_INVOICE_SERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object HawbPLppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'COURIER_INVOICE_VALUE'
      FieldName = 'COURIER_INVOICE_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object HawbPLppField20: TppField
      FieldAlias = 'HIGH_VALUE'
      FieldName = 'HIGH_VALUE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object HawbPLppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_SEC_MAWB_REFER_NUMBER'
      FieldName = 'FK_SEC_MAWB_REFER_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object HawbPLppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'EDE_STORAGE_EXPENSES'
      FieldName = 'EDE_STORAGE_EXPENSES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object HawbPLppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'EDE_DELIVERY_EXPENSES'
      FieldName = 'EDE_DELIVERY_EXPENSES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object HawbPLppField24: TppField
      FieldAlias = 'DATE_INVOICED'
      FieldName = 'DATE_INVOICED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 23
    end
    object HawbPLppField25: TppField
      FieldAlias = 'SENT_TO_HEAD'
      FieldName = 'SENT_TO_HEAD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object HawbPLppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_OF_PIECES_ARRIVED'
      FieldName = 'NUM_OF_PIECES_ARRIVED'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object HawbPLppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_NUM_OF_PIECES'
      FieldName = 'TOTAL_NUM_OF_PIECES'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object HawbPLppField28: TppField
      FieldAlias = 'FK_CLEARANCE_TYPE'
      FieldName = 'FK_CLEARANCE_TYPE'
      FieldLength = 12
      DisplayWidth = 12
      Position = 27
    end
    object HawbPLppField29: TppField
      FieldAlias = 'FK_DELIVERY_TERM'
      FieldName = 'FK_DELIVERY_TERM'
      FieldLength = 3
      DisplayWidth = 3
      Position = 28
    end
    object HawbPLppField30: TppField
      FieldAlias = 'ORIGIN_STATION'
      FieldName = 'ORIGIN_STATION'
      FieldLength = 12
      DisplayWidth = 12
      Position = 29
    end
    object HawbPLppField31: TppField
      FieldAlias = 'EC2_NUMBER_DATE'
      FieldName = 'EC2_NUMBER_DATE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 30
    end
    object HawbPLppField32: TppField
      FieldAlias = 'SENDERS_INV_NO'
      FieldName = 'SENDERS_INV_NO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 31
    end
    object HawbPLppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMBER_OF_PARCELS'
      FieldName = 'NUMBER_OF_PARCELS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object HawbPLppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_CUSTOMER_ACCOUNT'
      FieldName = 'FK_CUSTOMER_ACCOUNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object HawbPLppField35: TppField
      FieldAlias = 'DISTRICT'
      FieldName = 'DISTRICT'
      FieldLength = 3
      DisplayWidth = 3
      Position = 34
    end
    object HawbPLppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'DELIVERY_ORDER_AMOUNT'
      FieldName = 'DELIVERY_ORDER_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object HawbPLppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTHER2_CHARGE_AMOUNT'
      FieldName = 'OTHER2_CHARGE_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
    object HawbPLppField38: TppField
      FieldAlias = 'FK_OTHER2_CHARGE_CODE'
      FieldName = 'FK_OTHER2_CHARGE_CODE'
      FieldLength = 6
      DisplayWidth = 6
      Position = 37
    end
    object HawbPLppField39: TppField
      FieldAlias = 'POSOSTOSIS'
      FieldName = 'POSOSTOSIS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 38
    end
    object HawbPLppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_DUTIES'
      FieldName = 'TOTAL_DUTIES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object HawbPLppField41: TppField
      FieldAlias = 'CLEARANCE_WAITING_CODE'
      FieldName = 'CLEARANCE_WAITING_CODE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 40
    end
    object HawbPLppField42: TppField
      FieldAlias = 'CLEARANCE_WAITING_REASON'
      FieldName = 'CLEARANCE_WAITING_REASON'
      FieldLength = 40
      DisplayWidth = 40
      Position = 41
    end
    object HawbPLppField43: TppField
      FieldAlias = 'DATE_CLEARED'
      FieldName = 'DATE_CLEARED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 42
    end
    object HawbPLppField44: TppField
      FieldAlias = 'DATE_REGISTERED'
      FieldName = 'DATE_REGISTERED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 43
    end
    object HawbPLppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'FACTOR'
      FieldName = 'FACTOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object HawbPLppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_COUNTRY_ORIGIN'
      FieldName = 'FK_COUNTRY_ORIGIN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 45
    end
    object HawbPLppField47: TppField
      FieldAlias = 'INVOICABLE'
      FieldName = 'INVOICABLE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 46
    end
    object HawbPLppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_CHARGES'
      FieldName = 'TOTAL_CHARGES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 47
    end
    object HawbPLppField49: TppField
      FieldAlias = 'CUSTOMER_NAME'
      FieldName = 'CUSTOMER_NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 48
    end
    object HawbPLppField50: TppField
      FieldAlias = 'EDE_COMMENTS'
      FieldName = 'EDE_COMMENTS'
      FieldLength = 100
      DisplayWidth = 100
      Position = 49
    end
    object HawbPLppField51: TppField
      FieldAlias = 'FK_MAWB_ID'
      FieldName = 'FK_MAWB_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 50
    end
    object HawbPLppField52: TppField
      FieldAlias = 'SIGNATORY_NAME'
      FieldName = 'SIGNATORY_NAME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 51
    end
    object HawbPLppField53: TppField
      FieldAlias = 'XML_HOUSE_ID'
      FieldName = 'XML_HOUSE_ID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 52
    end
    object HawbPLppField54: TppField
      FieldAlias = 'SENDER_NAME'
      FieldName = 'SENDER_NAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object HawbPLppField55: TppField
      FieldAlias = 'SENDER_ADDRESS_1'
      FieldName = 'SENDER_ADDRESS_1'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object HawbPLppField56: TppField
      FieldAlias = 'SENDER_ADDRESS_2'
      FieldName = 'SENDER_ADDRESS_2'
      FieldLength = 60
      DisplayWidth = 60
      Position = 55
    end
    object HawbPLppField57: TppField
      FieldAlias = 'SENDER_ADDRESS_3'
      FieldName = 'SENDER_ADDRESS_3'
      FieldLength = 60
      DisplayWidth = 60
      Position = 56
    end
    object HawbPLppField58: TppField
      FieldAlias = 'IS_PRIVATE'
      FieldName = 'IS_PRIVATE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 57
    end
    object HawbPLppField59: TppField
      FieldAlias = 'DELIVERY_ORDER_ID'
      FieldName = 'DELIVERY_ORDER_ID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 58
    end
    object HawbPLppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'INVOICE_TOTAL'
      FieldName = 'INVOICE_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 59
    end
    object HawbPLppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUSTOMS_VALUE'
      FieldName = 'CUSTOMS_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 60
    end
    object HawbPLppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHARGE_TRL'
      FieldName = 'CHARGE_TRL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 61
    end
    object HawbPLppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHARGE_VAT'
      FieldName = 'CHARGE_VAT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 62
    end
    object HawbPLppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHARGE_EXCISE'
      FieldName = 'CHARGE_EXCISE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 63
    end
    object HawbPLppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHARGE_IMPORT'
      FieldName = 'CHARGE_IMPORT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 64
    end
    object HawbPLppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTHER4_CHARGE_AMOUNT'
      FieldName = 'OTHER4_CHARGE_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 65
    end
    object HawbPLppField67: TppField
      FieldAlias = 'FK_OTHER4_CHARGE'
      FieldName = 'FK_OTHER4_CHARGE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 66
    end
  end
  object RV1: TwwRecordViewDialog
    DataSource = IBCDataSource1
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
    SQL.Strings = (
      'Select * from Mawb where Reference_Number = :ReferenceNumber')
    Active = True
    Left = 64
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ReferenceNumber'
        Value = nil
      end>
    object MawbSQLREFERENCE_YEAR: TSmallintField
      FieldName = 'REFERENCE_YEAR'
      Origin = 'DB1.MAWB.REFERENCE_YEAR'
    end
    object MawbSQLREFERENCE_NUMBER: TIntegerField
      FieldName = 'REFERENCE_NUMBER'
      Origin = 'DB1.MAWB.REFERENCE_NUMBER'
    end
    object MawbSQLDATE_ARRIVED: TDateTimeField
      FieldName = 'DATE_ARRIVED'
      Origin = 'DB1.MAWB.DATE_ARRIVED'
    end
    object MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField
      FieldName = 'FK_COUNTRY_CONSIGNEE'
      Origin = 'DB1.MAWB.FK_COUNTRY_CONSIGNEE'
    end
    object MawbSQLFK_PORT_IMPORTATION: TIntegerField
      FieldName = 'FK_PORT_IMPORTATION'
      Origin = 'DB1.MAWB.FK_PORT_IMPORTATION'
    end
    object MawbSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      Origin = 'DB1.MAWB.SIGNATORY_NAME'
      Size = 50
    end
    object MawbSQLFORM_DATE: TDateTimeField
      FieldName = 'FORM_DATE'
      Origin = 'DB1.MAWB.FORM_DATE'
    end
    object MawbSQLFLIGHT_NUMBER: TStringField
      FieldName = 'FLIGHT_NUMBER'
      Origin = 'DB1.MAWB.FLIGHT_NUMBER'
      Size = 10
    end
    object MawbSQLPASSED: TStringField
      FieldName = 'PASSED'
      Origin = 'DB1.MAWB.PASSED'
      FixedChar = True
      Size = 1
    end
    object MawbSQLROTATION_NUMBER: TIntegerField
      FieldName = 'ROTATION_NUMBER'
      Origin = 'DB1.MAWB.ROTATION_NUMBER'
    end
    object MawbSQLROTATION_YEAR: TSmallintField
      FieldName = 'ROTATION_YEAR'
      Origin = 'DB1.MAWB.ROTATION_YEAR'
    end
    object MawbSQLFK_PORT_CLEARING: TIntegerField
      FieldName = 'FK_PORT_CLEARING'
      Origin = 'DB1.MAWB.FK_PORT_CLEARING'
    end
    object MawbSQLGOODS_NUMBER: TIntegerField
      FieldName = 'GOODS_NUMBER'
      Origin = 'DB1.MAWB.GOODS_NUMBER'
    end
    object MawbSQLGOODS_DESCRIPTION: TStringField
      FieldName = 'GOODS_DESCRIPTION'
      Origin = 'DB1.MAWB.GOODS_DESCRIPTION'
    end
    object MawbSQLCBOOK_NUMBER: TStringField
      FieldName = 'CBOOK_NUMBER'
      Origin = 'DB1.MAWB.CBOOK_NUMBER'
      Size = 10
    end
    object MawbSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      Origin = 'DB1.MAWB.MAWB_ID'
      Size = 15
    end
    object MawbSQLINVOICED: TStringField
      FieldName = 'INVOICED'
      Origin = 'DB1.MAWB.INVOICED'
      FixedChar = True
      Size = 1
    end
    object MawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Origin = 'DB1.MAWB.SENT_TO_HEAD'
      FixedChar = True
      Size = 1
    end
    object MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField
      FieldName = 'CUSTOMS_OVERTIME_HOURS'
      Origin = 'DB1.MAWB.CUSTOMS_OVERTIME_HOURS'
    end
    object MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField
      FieldName = 'CUSTOMS_OVERTIME_RATE'
      Origin = 'DB1.MAWB.CUSTOMS_OVERTIME_RATE'
    end
    object MawbSQLSTORAGE_EXPENSES: TFloatField
      FieldName = 'STORAGE_EXPENSES'
      Origin = 'DB1.MAWB.STORAGE_EXPENSES'
    end
    object MawbSQLDELIVERY_EXPENSES: TFloatField
      FieldName = 'DELIVERY_EXPENSES'
      Origin = 'DB1.MAWB.DELIVERY_EXPENSES'
    end
    object MawbSQLAMOUNT_NOT_INVOICED: TFloatField
      FieldName = 'AMOUNT_NOT_INVOICED'
      Origin = 'DB1.MAWB.AMOUNT_NOT_INVOICED'
    end
    object MawbSQLAMOUNT_INVOICED: TFloatField
      FieldName = 'AMOUNT_INVOICED'
      Origin = 'DB1.MAWB.AMOUNT_INVOICED'
    end
    object MawbSQLDATE_PASSED: TDateTimeField
      FieldName = 'DATE_PASSED'
      Origin = 'DB1.MAWB.DATE_PASSED'
    end
    object MawbSQLGOODS_WEIGHT: TIntegerField
      FieldName = 'GOODS_WEIGHT'
      Origin = 'DB1.MAWB.GOODS_WEIGHT'
    end
    object MawbSQLHAWBS_CLEARED_FIRST_TIME: TIntegerField
      FieldName = 'HAWBS_CLEARED_FIRST_TIME'
      Origin = 'DB1.MAWB.HAWBS_CLEARED_FIRST_TIME'
    end
    object MawbSQLHAWBS_IN_MAWB: TIntegerField
      FieldName = 'HAWBS_IN_MAWB'
      Origin = 'DB1.MAWB.HAWBS_IN_MAWB'
    end
    object MawbSQLDOCS_NUMBER: TIntegerField
      FieldName = 'DOCS_NUMBER'
      Origin = 'DB1.MAWB.DOCS_NUMBER'
    end
    object MawbSQLDOCS_WEIGHT: TFloatField
      FieldName = 'DOCS_WEIGHT'
      Origin = 'DB1.MAWB.DOCS_WEIGHT'
    end
    object MawbSQLHIGH_VALUE_NUMBER: TIntegerField
      FieldName = 'HIGH_VALUE_NUMBER'
      Origin = 'DB1.MAWB.HIGH_VALUE_NUMBER'
    end
    object MawbSQLHIGH_VALUE_WEIGHT: TFloatField
      FieldName = 'HIGH_VALUE_WEIGHT'
      Origin = 'DB1.MAWB.HIGH_VALUE_WEIGHT'
    end
    object MawbSQLMEDIUM_VALUE_NUMBER: TIntegerField
      FieldName = 'MEDIUM_VALUE_NUMBER'
      Origin = 'DB1.MAWB.MEDIUM_VALUE_NUMBER'
    end
    object MawbSQLMEDIUM_VALUE_WEIGHT: TFloatField
      FieldName = 'MEDIUM_VALUE_WEIGHT'
      Origin = 'DB1.MAWB.MEDIUM_VALUE_WEIGHT'
    end
    object MawbSQLLOW_VALUE_NUMBER: TIntegerField
      FieldName = 'LOW_VALUE_NUMBER'
      Origin = 'DB1.MAWB.LOW_VALUE_NUMBER'
    end
    object MawbSQLLOW_VALUE_WEIGHT: TFloatField
      FieldName = 'LOW_VALUE_WEIGHT'
      Origin = 'DB1.MAWB.LOW_VALUE_WEIGHT'
    end
    object MawbSQLCUSTOMS_OVERTIME_RATE_TYPE: TStringField
      FieldName = 'CUSTOMS_OVERTIME_RATE_TYPE'
      Origin = 'DB1.MAWB.CUSTOMS_OVERTIME_RATE_TYPE'
      FixedChar = True
      Size = 3
    end
    object MawbSQLXML_CONSOLIDATED_ID: TStringField
      FieldName = 'XML_CONSOLIDATED_ID'
      Origin = 'DB1.MAWB.XML_CONSOLIDATED_ID'
      FixedChar = True
      Size = 13
    end
    object MawbSQLROTATION_2: TStringField
      FieldName = 'ROTATION_2'
      Origin = 'CLAIRDB.MAWB.ROTATION_2'
      FixedChar = True
      Size = 2
    end
    object MawbSQLHMSD: TStringField
      FieldName = 'HMSD'
      Origin = 'CLAIRDB.MAWB.HMSD'
      FixedChar = True
    end
    object MawbSQLLOW_VALUE_TDID: TStringField
      FieldName = 'LOW_VALUE_TDID'
      Origin = 'CLAIRDB.MAWB.LOW_VALUE_TDID'
      FixedChar = True
    end
  end
  object MawbPL: TppDBPipeline
    DataSource = IBCDataSource3
    UserName = 'MawbPL'
    Left = 240
    Top = 248
    object MawbPLppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERENCE_YEAR'
      FieldName = 'REFERENCE_YEAR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object MawbPLppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'REFERENCE_NUMBER'
      FieldName = 'REFERENCE_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object MawbPLppField3: TppField
      FieldAlias = 'DATE_ARRIVED'
      FieldName = 'DATE_ARRIVED'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
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
      FieldAlias = 'FK_PORT_IMPORTATION'
      FieldName = 'FK_PORT_IMPORTATION'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object MawbPLppField6: TppField
      FieldAlias = 'SIGNATORY_NAME'
      FieldName = 'SIGNATORY_NAME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object MawbPLppField7: TppField
      FieldAlias = 'FORM_DATE'
      FieldName = 'FORM_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object MawbPLppField8: TppField
      FieldAlias = 'FLIGHT_NUMBER'
      FieldName = 'FLIGHT_NUMBER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object MawbPLppField9: TppField
      FieldAlias = 'PASSED'
      FieldName = 'PASSED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object MawbPLppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROTATION_NUMBER'
      FieldName = 'ROTATION_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object MawbPLppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROTATION_YEAR'
      FieldName = 'ROTATION_YEAR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object MawbPLppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_PORT_CLEARING'
      FieldName = 'FK_PORT_CLEARING'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object MawbPLppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'GOODS_NUMBER'
      FieldName = 'GOODS_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object MawbPLppField14: TppField
      FieldAlias = 'GOODS_DESCRIPTION'
      FieldName = 'GOODS_DESCRIPTION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object MawbPLppField15: TppField
      FieldAlias = 'CBOOK_NUMBER'
      FieldName = 'CBOOK_NUMBER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 14
    end
    object MawbPLppField16: TppField
      FieldAlias = 'MAWB_ID'
      FieldName = 'MAWB_ID'
      FieldLength = 15
      DisplayWidth = 15
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
      DataType = dtDateTime
      DisplayWidth = 18
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
  end
  object FlightSQL: TIBCQuery
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
    SQL.Strings = (
      'Select * from Country where Number= :countryNumber')
    Active = True
    Left = 136
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
    DataSource = IBCDataSource2
    UserName = 'CountryPL'
    Left = 256
    Top = 176
    object CountryPPppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMBER'
      FieldName = 'NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
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
    object FlightPLppField1: TppField
      FieldAlias = 'FLIGHT_NUMBER'
      FieldName = 'FLIGHT_NUMBER'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object FlightPLppField2: TppField
      FieldAlias = 'NAME'
      FieldName = 'NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
  end
  object ParameterSQL: TIBCQuery
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
    SQL.Strings = (
      
        'Select invoice_Number  from Invoice where hawb_serial= :hawbSeri' +
        'al;')
    UniDirectional = True
    Left = 512
    Top = 448
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
  object FindPartialHawbSQL: TIBCQuery
    SQL.Strings = (
      'Select * from Hawb_partial where SERIAL_NUMBER = :PartialSerial;'
      ' ')
    Left = 232
    Top = 552
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PartialSerial'
        Value = nil
      end>
    object FindPartialHawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Origin = 'CLAIRDB.HAWB_PARTIAL.SERIAL_NUMBER'
    end
    object FindPartialHawbSQLFK_MAWB_SERIAL_ORIGINAL: TIntegerField
      FieldName = 'FK_MAWB_SERIAL_ORIGINAL'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_MAWB_SERIAL_ORIGINAL'
    end
    object FindPartialHawbSQLFK_MAWB_ID_ORIGINAL: TStringField
      FieldName = 'FK_MAWB_ID_ORIGINAL'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_MAWB_ID_ORIGINAL'
      FixedChar = True
      Size = 15
    end
    object FindPartialHawbSQLFK_MAWB_SERIAL_ARRIVED: TIntegerField
      FieldName = 'FK_MAWB_SERIAL_ARRIVED'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_MAWB_SERIAL_ARRIVED'
    end
    object FindPartialHawbSQLFK_MAWB_ID_ARRIVED: TStringField
      FieldName = 'FK_MAWB_ID_ARRIVED'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_MAWB_ID_ARRIVED'
      FixedChar = True
      Size = 15
    end
    object FindPartialHawbSQLFK_HAWB_SERIAL_ORIGINAL: TIntegerField
      FieldName = 'FK_HAWB_SERIAL_ORIGINAL'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_HAWB_SERIAL_ORIGINAL'
    end
    object FindPartialHawbSQLFK_HAWB_ID_ORIGINAL: TStringField
      FieldName = 'FK_HAWB_ID_ORIGINAL'
      Origin = 'CLAIRDB.HAWB_PARTIAL.FK_HAWB_ID_ORIGINAL'
      Size = 10
    end
    object FindPartialHawbSQLPARTIAL_PIECES: TIntegerField
      FieldName = 'PARTIAL_PIECES'
      Origin = 'CLAIRDB.HAWB_PARTIAL.PARTIAL_PIECES'
    end
    object FindPartialHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField
      FieldName = 'PARTIAL_DELIVERY_ORDER_ID'
      Origin = 'CLAIRDB.HAWB_PARTIAL.PARTIAL_DELIVERY_ORDER_ID'
      FixedChar = True
      Size = 15
    end
    object FindPartialHawbSQLPARTIAL_WEIGHT: TFloatField
      FieldName = 'PARTIAL_WEIGHT'
      Origin = 'CLAIRDB.HAWB_PARTIAL.PARTIAL_WEIGHT'
    end
  end
  object CustomerSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    SQL.Strings = (
      'Select * from Customer where Code= :CustomerCode')
    Active = True
    Left = 512
    Top = 552
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CustomerCode'
        Value = nil
      end>
    object CustomerSQLVAT_ID: TStringField
      FieldName = 'VAT_ID'
      Size = 10
    end
    object CustomerSQLCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 10
    end
  end
  object CustomerSRC: TIBCDataSource
    DataSet = CustomerSQL
    Left = 584
    Top = 568
  end
  object CustomerPL: TppDBPipeline
    DataSource = CustomerSRC
    UserName = 'CustomerPL'
    Left = 664
    Top = 568
    object CustomerPLppField1: TppField
      FieldAlias = 'VAT_ID'
      FieldName = 'VAT_ID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object CustomerPLppField2: TppField
      FieldAlias = 'COMPANY_ID'
      FieldName = 'COMPANY_ID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
  end
  object IBCDataSource1: TIBCDataSource
    DataSet = HawbSQL
    Left = 136
    Top = 376
  end
  object IBCDataSource2: TIBCDataSource
    DataSet = CountrySQL
    Left = 344
    Top = 72
  end
  object CountrySRC: TIBCDataSource
    DataSet = CountrySQL
    Left = 176
    Top = 176
  end
  object IBCDataSource3: TIBCDataSource
    DataSet = MawbSQL
    Left = 504
    Top = 104
  end
  object MawbSRC: TIBCDataSource
    DataSet = MawbSQL
    Left = 136
    Top = 256
  end
end
