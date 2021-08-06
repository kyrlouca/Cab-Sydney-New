object DeliveryOrderFRM: TDeliveryOrderFRM
  Left = 292
  Top = 252
  Caption = 'DeliveryOrderFRM'
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
  end
  object Button1: TButton
    Left = 716
    Top = 439
    Width = 93
    Height = 30
    Caption = 'Button1'
    TabOrder = 3
  end
  object ppViewer1: TppViewer
    Left = 544
    Top = 8
    Width = 121
    Height = 48
    BevelOuter = bvNone
    DeadSpace = 30
    PageColor = clWindow
    PageBorder.mmPadding = 0
    ZoomPercentage = 100
    ZoomSetting = zsWholePage
  end
  object Button4: TButton
    Left = 716
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 5
    OnClick = Button4Click
  end
  object memo1: TRzMemo
    Left = 496
    Top = 224
    Width = 169
    Height = 89
    TabOrder = 6
  end
  object Memo2: TMemo
    Left = 496
    Top = 360
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 7
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
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.OAuth2 = {0E010C5265646972656374506F727402000000}
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
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowAutoSearchDialog = True
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
    Left = 40
    Top = 312
    Version = '21.0'
    mmColumnWidth = 0
    DataPipelineName = 'HawbPL'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 73554
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'DHL Cyprus LTD '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 158750
        mmTop = 6615
        mmWidth = 33073
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DELIVERY ORDER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 71967
        mmTop = 5027
        mmWidth = 52917
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'To the COLLECTOR OF CUSTOMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5503
        mmLeft = 12435
        mmTop = 45360
        mmWidth = 68792
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.mmPadding = 0
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
        mmTop = 33452
        mmWidth = 17145
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.mmPadding = 0
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
        mmLeft = 184068
        mmTop = 33452
        mmWidth = 11430
        BandType = 1
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 158750
        mmTop = 28160
        mmWidth = 17526
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'the following goods arrived from'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5503
        mmLeft = 12435
        mmTop = 58589
        mmWidth = 60113
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'and arrived on'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5503
        mmLeft = 12435
        mmTop = 65733
        mmWidth = 27305
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'DATE_ARRIVED'
        DataPipeline = MawbPL
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 5503
        mmLeft = 40746
        mmTop = 65733
        mmWidth = 26670
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'carried by'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5503
        mmLeft = 118798
        mmTop = 58589
        mmWidth = 18627
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Please Deliver to'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5503
        mmLeft = 12435
        mmTop = 51710
        mmWidth = 31962
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 183071
        mmTop = 33656
        mmWidth = 1058
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.mmPadding = 0
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
        mmHeight = 5556
        mmLeft = 139171
        mmTop = 58536
        mmWidth = 22225
        BandType = 1
        LayerName = Foreground
      end
      object CustomerNameLbl: TppLabel
        OnPrint = CustomerNameLblPrint
        DesignLayer = ppDesignLayer1
        UserName = 'CustomerNameLbl'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DHL Cyprus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5503
        mmLeft = 45773
        mmTop = 51710
        mmWidth = 58738
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        OnGetText = ppDBText2GetText
        Border.mmPadding = 0
        DataField = 'XML_HOUSE_ID'
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
        mmTop = 38744
        mmWidth = 26670
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.mmPadding = 0
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
        mmLeft = 178247
        mmTop = 33452
        mmWidth = 3598
        BandType = 1
        LayerName = Foreground
      end
      object TheInvoiceSerialRGN: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'TheInvoiceSerialRGN'
        Brush.Style = bsClear
        Caption = 'TheInvoiceSerialRGN'
        Pen.Style = psClear
        Transparent = True
        mmHeight = 8255
        mmLeft = 132557
        mmTop = 19166
        mmWidth = 62653
        BandType = 1
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label25'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = 'Delivery Order No.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4868
          mmLeft = 132980
          mmTop = 20859
          mmWidth = 36195
          BandType = 1
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'SERIAL_NUMBER'
          DataPipeline = HawbPL
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'HawbPL'
          mmHeight = 4498
          mmLeft = 170974
          mmTop = 20542
          mmWidth = 20108
          BandType = 1
          LayerName = Foreground
        end
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.mmPadding = 0
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
        mmTop = 44300
        mmWidth = 37253
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Date .........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4657
        mmLeft = 132821
        mmTop = 27631
        mmWidth = 24765
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Rotation No:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4657
        mmLeft = 132821
        mmTop = 33452
        mmWidth = 24553
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ID..............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4657
        mmLeft = 132821
        mmTop = 38744
        mmWidth = 24553
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'HMSD........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4657
        mmLeft = 132821
        mmTop = 44300
        mmWidth = 24553
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VAT :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 111125
        mmTop = 51710
        mmWidth = 12171
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'COUNTRYNAME'
        DataPipeline = HawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'HawbPL'
        mmHeight = 5556
        mmLeft = 75671
        mmTop = 58536
        mmWidth = 38894
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.mmPadding = 0
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
        mmHeight = 5556
        mmLeft = 124884
        mmTop = 51329
        mmWidth = 36160
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IOSS :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 133086
        mmTop = 13229
        mmWidth = 10848
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'IOSS'
        DataPipeline = HawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'HawbPL'
        mmHeight = 4763
        mmLeft = 145786
        mmTop = 13229
        mmWidth = 47361
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 180182
      mmPrintPosition = 0
      object KG1lbl: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'KG1lbl'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 183621
        mmTop = 29387
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
        Border.mmPadding = 0
        Caption = 'Description 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 78616
        mmTop = 41336
        mmWidth = 71697
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'HAB_ID'
        DataPipeline = HawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'HawbPL'
        mmHeight = 4498
        mmLeft = 14023
        mmTop = 42394
        mmWidth = 26580
        BandType = 4
        LayerName = Foreground
      end
      object PackageTypelbl: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'PackageTypelbl'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Piece (s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 59042
        mmTop = 29682
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object Description1LBL: TppLabel
        OnPrint = Description1LBLPrint
        DesignLayer = ppDesignLayer1
        UserName = 'CustomerNameLbl1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 78616
        mmTop = 29387
        mmWidth = 83074
        BandType = 4
        LayerName = Foreground
      end
      object WeightPP: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'WeightPP'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
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
        mmLeft = 165924
        mmTop = 29387
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'MAWB_ID'
        DataPipeline = MawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'MawbPL'
        mmHeight = 5556
        mmLeft = 13138
        mmTop = 29387
        mmWidth = 28350
        BandType = 4
        LayerName = Foreground
      end
      object HouseBr: TppBarCode
        OnPrint = HouseBrPrint
        DesignLayer = ppDesignLayer1
        UserName = 'HouseBr'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.mmPadding = 0
        Data = '**'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 18785
        mmLeft = 12435
        mmTop = 118026
        mmWidth = 50271
        BandType = 4
        LayerName = Foreground
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object XmlBr: TppBarCode
        OnPrint = XmlBrPrint
        DesignLayer = ppDesignLayer1
        UserName = 'XmlBr'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.mmPadding = 0
        Data = '**'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 18785
        mmLeft = 12435
        mmTop = 138134
        mmWidth = 50271
        BandType = 4
        LayerName = Foreground
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object MawbBr: TppBarCode
        OnPrint = MawbBrPrint
        DesignLayer = ppDesignLayer1
        UserName = 'MawbBr'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.mmPadding = 0
        Data = '**'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 18785
        mmLeft = 12435
        mmTop = 158772
        mmWidth = 50271
        BandType = 4
        LayerName = Foreground
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object CustomChargesPP: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'CustomChargesPP'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtDouble
        DisplayFormat = 'Euro 0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        OnCalc = CustomChargesPPCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 165924
        mmTop = 56405
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground
      end
      object DeliveryChargePP: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'DeliveryChargePP'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtDouble
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        OnCalc = DeliveryChargePPCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 47890
        mmTop = 91066
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object TotalDelChargePP: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'TotalDelChargePP'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 3
        DataType = dtDouble
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        OnCalc = TotalDelChargePPCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 47890
        mmTop = 104864
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object XmlIDlbl: TppDBText
        OnPrint = XmlIDlblPrint
        DesignLayer = ppDesignLayer1
        UserName = 'XmlIDlbl'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'XML_HOUSE_ID'
        DataPipeline = HawbPL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'HawbPL'
        mmHeight = 5851
        mmLeft = 162187
        mmTop = 129442
        mmWidth = 32453
        BandType = 4
        LayerName = Foreground
      end
      object NumOfPack2PP: TppVariable
        OnPrint = NumOfPack2PPPrint
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        OnCalc = NumOfPack2PPCalc
        Transparent = True
        mmHeight = 4116
        mmLeft = 134917
        mmTop = 125057
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object NumberOfPackagesPP: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable2'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        OnCalc = NumberOfPackagesPPCalc
        Transparent = True
        mmHeight = 5821
        mmLeft = 43392
        mmTop = 29122
        mmWidth = 14405
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 28046
      mmPrintPosition = 0
      object ppMemo1: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'Memo1'
        Border.mmPadding = 0
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
        mmHeight = 25920
        mmLeft = 2117
        mmTop = 1830
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
        Border.mmPadding = 0
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
        mmHeight = 25920
        mmLeft = 38629
        mmTop = 1830
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
        Border.mmPadding = 0
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
        mmHeight = 25920
        mmLeft = 78846
        mmTop = 1830
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
        Border.mmPadding = 0
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
        mmHeight = 25920
        mmLeft = 119856
        mmTop = 1830
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
        Border.mmPadding = 0
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
        mmHeight = 25920
        mmLeft = 159385
        mmTop = 1988
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
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 289561
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Brush.Style = bsClear
        Pen.Width = 2
        mmHeight = 56621
        mmLeft = 12171
        mmTop = 85549
        mmWidth = 178859
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 12065
        mmTop = 176480
        mmWidth = 51065
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 1.000000000000000000
        mmHeight = 56092
        mmLeft = 75565
        mmTop = 85633
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Air Waybill Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9948
        mmLeft = 15875
        mmTop = 87115
        mmWidth = 22013
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'No. of Packages'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10054
        mmLeft = 45297
        mmTop = 87115
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
        Border.mmPadding = 0
        Caption = 'Nature of Goods'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10054
        mmLeft = 77258
        mmTop = 87115
        mmWidth = 84667
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 1.000000000000000000
        mmHeight = 56092
        mmLeft = 41698
        mmTop = 85633
        mmWidth = 1270
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 1.000000000000000000
        mmHeight = 56445
        mmLeft = 163248
        mmTop = 85549
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
        mmTop = 143630
        mmWidth = 51647
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 1.000000000000000000
        mmHeight = 39688
        mmLeft = 36618
        mmTop = 144515
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 12171
        mmTop = 98334
        mmWidth = 178065
        BandType = 10
        LayerName = PageLayer1
      end
      object ppMemo5: TppMemo
        DesignLayer = ppDesignLayer2
        UserName = 'Memo5'
        Border.mmPadding = 0
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
          ''
          'TOTAL      '
          ' ')
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 38512
        mmLeft = 13335
        mmTop = 145535
        mmWidth = 22931
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
        Border.mmPadding = 0
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
          ''
          'EUR')
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 38215
        mmLeft = 37465
        mmTop = 145535
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
        DesignLayer = ppDesignLayer2
        UserName = 'DeliveryStampRGN'
        Caption = 'DeliveryStampRGN'
        Pen.Style = psDashDotDot
        Pen.Width = 2
        mmHeight = 50800
        mmLeft = 109273
        mmTop = 194734
        mmWidth = 76200
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
          Border.mmPadding = 0
          Caption = #932#945' '#960#953#959' '#960#940#957#969
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4022
          mmLeft = 113168
          mmTop = 198967
          mmWidth = 19812
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label19'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = #948#941#956#945#964#945' '#956#949
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4022
          mmLeft = 142504
          mmTop = 198967
          mmWidth = 15452
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label20'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = #945#961'. '#964#945#965#964#972#964#951#964#945#962' '#966#959#961#964#969#964#953#954#942#962
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4022
          mmLeft = 113083
          mmTop = 203624
          mmWidth = 41783
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label21'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = #941#967#959#965#957' '#964#949#955#969#957#949#953#963#952#949#943' '#956#949' '#964#951' '#948#953#945#963#940#966#951#963#951
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4022
          mmLeft = 113083
          mmTop = 208281
          mmWidth = 58420
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label22'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = #954#945#953' '#956#960#959#961#959#973#957' '#957#945' '#960#945#961#945#948#959#952#959#973#957'.'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4022
          mmLeft = 113083
          mmTop = 218864
          mmWidth = 45974
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label23'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = #919#956#949#961'.....................'#933#960#959'/'#966#942'......................'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4022
          mmLeft = 113083
          mmTop = 224367
          mmWidth = 61807
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label24'
          HyperlinkEnabled = False
          Border.mmPadding = 0
          Caption = '..................'#945#961'.............../......................'
          Font.Charset = GREEK_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4022
          mmLeft = 113294
          mmTop = 213784
          mmWidth = 58547
          BandType = 10
          LayerName = PageLayer1
        end
      end
      object LogoRGN: TppRegion
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
        object prepImg: TppImage
          OnPrint = prepImgPrint
          DesignLayer = ppDesignLayer2
          UserName = 'prepImg'
          AlignHorizontal = ahCenter
          AlignVertical = avCenter
          MaintainAspectRatio = False
          Transparent = True
          Border.mmPadding = 0
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000001900000
            01CC0806000000FBF3FE4000000185694343504943432070726F66696C650000
            28917D913D48C3401CC55F536BAB541CEC20E290A13A59101571942A16C14269
            2BB4EA6072E987D0A421497171145C0B0E7E2C561D5C9C7575701504C10F1037
            3727451729F17F49A1458C07C7FD7877EF71F70E101A15A69A5DE380AA59463A
            111773F91531F88A10BA1140103D1233F56466210BCFF1750F1F5FEF623CCBFB
            DC9FA34F29980CF089C4B34C372CE275E2E94D4BE7BC4F1C616549213E271E33
            E882C48F5C975D7EE35C7258E09911239B9E238E108BA50E963B98950D95788A
            38AAA81AE50B399715CE5B9CD54A8DB5EEC95F182E68CB19AED31C46028B4822
            0511326AD840051662B46AA49848D37EDCC33FE4F853E492C9B501468E7954A1
            4272FCE07FF0BB5BB33839E12685E340E0C5B63F4680E02ED0ACDBF6F7B16D37
            4F00FF3370A5B5FDD50630F3497ABDAD458F80FE6DE0E2BAADC97BC0E50E30F8
            A44B86E4487E9A42B108BC9FD137E581815BA077D5EDADB58FD307204B5D2DDD
            000787C06889B2D73CDE1DEAECEDDF33ADFE7E00E445726EA6739EB000000006
            624B474400FF00FF00FFA0BDA793000000097048597300000B1300000B130100
            9A9C180000000774494D4507E50806051E3A8BC0100A0000001974455874436F
            6D6D656E74004372656174656420776974682047494D5057810E170000746749
            44415478DAEC7D079C645599FDBDAF7A6257EE9921481804451145C5B0ABAB8B
            615D5D755D5D5D7593AC01FF20061C721C72920C4306014541E2884812909C83
            E43CC46166BA2BF704A6EBDDFF397D5F493B4CE8AEAA5BEFBDAAEFFC7E97AA1E
            66FABD77DF7BF7DC2F9D4F2B81402010089A800EFB0404028140104F08810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040281A02908810804
            0281A029088108040281A029088108040281A029088108040241805AB1A801D5
            9FCD9A6AB198C01FF1E7BA31461BAD4D1A7F1EF639460942200281A02751AB56
            B5F13CA5474694EFFB248BA99E315340183E58823F67401CBEF6BCE5F89C0402
            A962C11CC1E78832E60DEDFB2695CFFB615F479810021108043D854AA9E4795A
            F7C1B6984473024430C537E66DF8BA3E16C469F89C8A310BDFFBF1FF57E0FB24
            8C118CD73196E3DFBD0E02A96014F073A9AF5E5F39E279F5D4C040CF59274220
            0281A027502D14606EE8C9F89AC16716230512C8636C813FDB02AB7F160BE274
            7C9F85915796343C6549A58AB134F85C8851C6BF7B029F0BF06F5EC0BF2D61D4
            FA609D4CCFE57A8648844004024157A35A2C729DA3553180457F1310C74618EB
            8F7E576A4B8CCD94258E44F0D9F85E0F3E4922241312C38A602CC378156301C6
            E3A3C398C734AD14AD972673B99E706D0981080482AE44B554D258D4A7E0EB7A
            18EFC078177EDE6C944094E2A0DB6A405972213978C168AC8B46BD758D34C120
            41ACC4A860D095456BE42E6DCC5DF8FDCFE0FB20486424EC39700D21108140D0
            55082C8EC958C8678230B6C2F70F62BC4759D2988931032385417249B4783812
            092D15BAB65EC0B81FE3169CC05DF87C25A1F51BD3BA38734B08442010740502
            E2E8539624B606817C140442F298AD2C6924958D673028EEB5F9F00DF7D610C6
            5F30AED15ADF8083BCE02712CB93A95457928810884020883502E2A025C1C037
            2D8E8F63FC3DC63B833F6B9046239EE1120D6BE43110D87C10D875CAF39EC2CF
            CB53994CD7918810884020882D8262BF8CB2C1F07FC0F884B2EE2A6652355C54
            5A7576AD23510C2B1B5CBF16E3728C2752B9DCF2B0E7ABDD1002110804B10388
            839604E3189B2B6B71FC23C6FB31D6573628DE6A6CA355904498F6FB2CC69518
            BFF38C79A63F9F5F11F279B51542200281203608888369B69B627C14E353181F
            5236A3AA5FB977514D042411A6FB3E8971014E6CBED2FA85FE2E0AAA0B810804
            82C8634C2D0733A93EAC2C71F09344424B246C8B634D689008B3B2CEC7B8027F
            50497749B1A110884020882CFE9A926B5D53CCA8DA0EE3EF30583D9E5636EB2A
            EA2059B056E4467C39119F0F824086C33EA97640084420104412200F664E3125
            F77DCAC63818EB60B03CAB2CA9C409CCCE7A45592BE4D730979EEE06C9132110
            81401029049955AC10674AEE2795CDAC7A77F067CCAC8AEBBAC5003A0B0D4FF5
            8CB91C17B9746A3E1F6B1289EB8D1008045D863129B9ACDF604A2EAD8EF72A9B
            92CBF847DCD72B924509E34A4FA95FE0F399FE5CEE8DB04FAA15C4FD86080482
            982388733452723FA66C9C631B8C0D952D028C526655ABA0F4C913B8E0E3F039
            3F99CB2D09FB845A811088402008050171302577B6B229B9B438B6C5D858D994
            DCA86656B58AB2626D883127E3F3BE548CDD5842200281A0A3189392CBDA0DD6
            706CA72C81CC5656AF2A0E9955AD802ABDAC0D39596B7D5E329B8D6D85BA1088
            4020E818401EAB4BC9A5EB8AB18F49619F5F27A74251E2C4F3F63389C42BE964
            3296FD438440040281730429B954C41D9B92DB103BE4FFEBB5B58869BD8F61EC
            6E3CEFD67426B334EC136A06BD76D30402410701E2A03B2AA76C1AEE2783C1EF
            249338A7E4B603458C6331CE535ABF928AA1C4492FDF3C8140E0088166152BC5
            DFA5ACB541E2604A2EBB0332B34AD61EDBD1703EC6B1988C7BE2D8C1506EA240
            20681B82003903E18C6BB02707DD558C776CA06CC65537A5E4B60A5A1C8F601C
            A78DB93499CF57C33EA1894208442010B48C803868596CA26C609C62874CC9A5
            F82109A55B53725BC5628C5F8240E681405E0CFB64260A21108140D012401EAB
            A6E47E046333658B03BB3D25B75550A9F71AA5352BD3EF4A65B3B1CAC6120211
            08044D2148C9654C838D9CB653B68A9CAE2B8A1DF6524A6E2B6036D68358888F
            C7E7A5C998752D140211080413429059B5A6945C928AAC2BE307E3202F63C2CE
            C6E73C10C860D8273411C88D160804E3422076D848C9A5422E33ABD87F5C5272
            5B43091377193E8FC4782619239977B9E1028160AD189392FB0EF5A64A2EAD0F
            49C96D0F28F37E1326F17030C7EDA95CAE1EF6098D1772E30502C16A11645651
            D4F0EDCAC637481C1F5036601EB7945C130C3DE6E7A89C3F03E70F2A2BF17E59
            2A4612EF42200281E02DA8150A9ED19AAAB8248DED94ED3FCE14DDB8A9E49228
            B820532A840B35D73C06AA2705D7D2A7A221A5B200E324ADF5D9C96CB61CF2B9
            8C1B614F9A40208820860B85A9BED65FC7D79F2A6B81C4A5FF7803240EBA86D8
            6FE335657B922F575A179431EC47CEB80DB3C548921B04D7172691F0FCCEC6C1
            4F4AE6722F873D79E38510884020780B6081A46081FC3F7CDD4759A5DCB8A041
            1C8B94954C7F42D95EE485D13FD37A91A105654C4A1BD38F6B64DBDC6DB475CD
            B1E891AEB930D645D6835C8C7134C6E3A99804D285400402C15B502D14B83BFF
            0E16DCBD956D291B07505BEA7565E541EEC6785CD1FA30A684EBA05BA80AC258
            8ED1A77DDF53BE3F49791E538FB7D4D655C7EA79124A1824421DACEBC01A07E1
            F3FE744C74B1844004822E40B5541A7D97DBA5E85A2D165945FEDF18BB2BDBE8
            29CA2071B07EE2518C5B31EE01613C6F481AF5FA724D8B44EB9155B39B2A8383
            9EEEEBB3ED747D7F0BFC9DCFE2FB37944D539ED6E16B607CE6018C3D7042B725
            63124817021108628C20C5B61F8B1FE5446A2090656DFABDACEBF84F8CBD30B6
            50D15C2B48089444A7A571EBE8D0FA4963CC102C8B1518BE1A19F1D3EB70070D
            572ABA3E32C2F97BBBB6719F6F2A5B18D9E964810598E4399EEF5F357D604008
            442010B8C12AFDC4A9766BB078DE813F7C21D9062B2420A67FC53842D9FA8FA8
            A4BC3640AB83C47183B2E441B7D5EB89BEBEE5D353A9A6F4A42A85C2344FEBAD
            3179DFC58F5FC598D9E1EBA69B6DAFC4C8C8D9D367CE1402110804ED45AD54D2
            D86137C40B995AFB8FC1E74BD83D9F81CF3F8140DAB2F88044285172BAB27181
            A8AD1543C1B99D8FF12AC6D2542ED7921061AD50D020E1E986AE2C637EA46CB5
            FDD40E5ED35263A5DD0F4FE5F3C31D3C6ED388DA43211008D68040BC9029A7CC
            18A28C08FB6DD0BDC480F78B58FCCEC2E799A96C76A81DC7AB148B5B6BBB48F3
            38515A2B686191340EC3359F8BEB6DAB0021E6795365DD773B299B99D5290CE3
            C27E85CFFDD3B9DCE20E1EB76944E9A1100804ABC12AFDC4491C9413192B5E48
            54B0985E8B05E8D07436FB70ABC72CC3D2F18CE1318EC2F8928A9E0B8BB512C7
            609C0DCBA3D6CE5F5C2D141840FF20E6F3007C7E5A752E16C2EBB814E3205893
            6D7145BA861088401061803C582DCD18075D55248E35891732EDF3196577E517
            6157BEB295E38EBACA18FB30867520DF526F125554C074DD133001672673B9B6
            585C7FBDF6C1416DB4CE29CFFB197EDC59590BAF136B252D2912C8A198FB27D7
            15FC8F028440048288A2522878D889B2A7F81C6577C2142FA44F7E75EF2D171B
            EE60CF07811C8CC56F492A9D6E292600F26253A83D944DE7ED0F7B3E569D1E8C
            E3304E8105B2A4DDBFBC3A38E8A944E25FF0F5606549BB13FD4DB809608FF47D
            41DC4FA5F2F9C8379712021108220A10C82490C127B4CD84627BD875B9914822
            2CA0DB0DFFEEBE566303D54261BDA090F03B2A7AD5E8AC363F6DD465E7804046
            AFBF5864F61909844492EAC03519DCEB1BF1F9236F64E4E9E933678A05221008
            9A43A5586495DB3F2BBB88B1EBDF78DE57BA760EC75FFC5D32975BD8CAF1B180
            521F8A16C88F556716D0898035201783E07601512E7271005C3F4973178CEF29
            9BF5E67ABD1CDD00E0203B7AF5FAC3D367CC1002110804CDA1562E7BC6987F52
            C650E69B6E94F1BCAFB43A7E87BF780A3EEF4BB6D05B2228266426D2812A7A04
            3202F2600DC8CE2090E75C1C20C87A6361E16E18EF55EE83E9BC5777295B8D7E
            67B2C5B4E44E400844208828962F5FAE572E5BC63E1CA7A9F113C8686F096C5D
            E7E1F3E2740B194A352CA0C64A7B1CABA2A787C578C16D18BBA772B97B5D1C20
            28A6640AF35C656B42A638BE26DEBB5B7093F7D5C6DCD59FCF47BEB194108840
            105154CB65AD7C9F0BD849CA66628D1774E95C8AC5FF6810C882668F5F2B14A6
            1AADE942632AEF3BC39E8F55C0C59595F7B48E6E72B15B0FAAFD29654F1722AB
            F25D2712D06575EBA89C89310F4C9720BA4020680641FF714A69B00663578C2D
            27F0CFE9C6A230DF01DAF36E4C66324D2D44D542618AD2FA33CA2ED20CE24769
            BDE0627B9FA275A0F5F5ADA62DAF710E8A45F680672A33E320D90E5C13932076
            82E9F350BFA4F10A04828920709B70A12261B0EE831600A54AD213F835240CAA
            D31EABB59E875F589BDE44511A83F8F8D80E8B040BEA6809AD2906406BE08DE0
            FF77AA2913AFE7298C3DFD44E29A4C3ABDC2C541823808FBA2ECAB6CFD8DCB6B
            1BB5AA30E6E0BEDD2785840281605C08888381EACD31FE4EFD6DFF7156464FF4
            5D6DD414ECA78D792699CF4F78870E02F1B4252FA61153176BD55A0812150500
            5915CEBA0C56C6B35685BBF64E54AE33CB6C8E9A34E9925432E9C402A995CBDA
            F8FE57F0F54465BB17BA0409E43ACCF93EB8670FF78B0B4B2010AC0DABA8EA7E
            44D9FEE3741771B14AAAE61762EE5E9FD436007C5D32972B35797E8C7D300643
            5756C302E1C246C2781EE37E8CC730DEC00167692BB742F2EB048990BCF6D789
            C4A9C974DA0981548687B55EB9F213CA1866B58D3791A159705EFF00F2D83501
            D29F36302016884020583DB038D3B2A058DF87D49BAABAACFEA6BBAA1D29A3EC
            954181C5B3B1123D936E22D05C1D1A5A5F791EB3B0BE19FCD1528C05CAA69BDE
            8685F551AD7501BFDF604CD5B65E650765C9D075D099247632C611A95CAEEAE2
            00E54A25A17DFF2358D49948C08C3897A44812BC0AC79A038BF10587C7691B84
            4004820E23A8AF585FD9C596C4D150D565E15A3B2533B820DD64EC227B6DBA89
            2E7720901920100691B75736BB8B29B37F563680FD925FAFD7FAB4F64D826DC6
            4737CCBC2E069C297FC20C26970B2E2D90F341608725B3D9D75D1CA0522EF3C2
            3E8C459DAD665D0B2BB219D88538DEC158985F028988052210082CAA3628CD7A
            8A86AA2E77B474110D283762855C80E8663A0F635EAA09D1419C33CFED3F9425
            3992062D8FE7D8633C95CD8EACE6EFF33AE8EEFA89B20BAE4B11465A1D172A9B
            66FC42CA41D6120804F4E8D3A578A4B2B5202E35B1D803E4342CCA47261DC9B3
            B41B42200281630429B95C88D96B9B8B5043559769BA5C605DBE875C64A9AFB4
            1F16D84726FC8F4BA57EEC88694950C4F1258C626A2D964C10D3212952C5F67F
            D5C4B2C7260A665EFD16E370583FCFA41D059D714DAC42671C8889047D0EAF87
            92FC27C2A23A3A99C9541C1EA76D100211081C21200E2EA04CC9A5B541AB631B
            B57655DD768356C2028CFD13F5FA25D367CC9850B019044217D42490880FE218
            D7BFAD160A33B010B22D2CAD90B739BC3612C655303B76678C27E3AE98706B8C
            E3954D7070E992A31BEE305CCB39E95C4E3A120A04BD8860D159352597F10E2E
            A60C2C77F2BDA35B8781EFB3B5EF1F0922783D396386D3F4505C3FB3CA1874A7
            86D4BB1C5FEF9D183FF4B57E34E3A06EA2562C7AF8DD8C811CAEEC06C0550C84
            E7FE22C61EC6F7AF4C0F0C38A96B69378440048236614C4A2E5BA2320B89C4C1
            0CAB4D94258E4E75B65B15248C3B401EFBE304EF4AE6F3CB9CCE43A94437CF17
            31F6C731499C2E77ED4FC0DA61A1DF6DA96CD6890562B4FE2408843110DE4B57
            F790E74E17E31EC6981BD231D0C122844004821611100733AB9892CB802B8983
            04C2945C665685451C63C11EE26CC0F49B542EF79AD3F92895381F8C171CCD0C
            2687D7CF5DFB332090BD709CF9B8AE91967FE32AA85837E467B46D9FEBB20E84
            8471332E682F5820F765625003A21C4E8640D01308FA956FA06CD5385D1C7459
            B111110BE95C065C270A5A1D9763377D125EFA7B5CECD6FF665E4AA57761513F
            35981357160817D96731E85E2231B6D4406B750081B0B6E5DF941554A44BD2D5
            9AC9C4842B7053F6CCE472B1A801510E274320E86A0429B9CCA26280958B2477
            DCF4F7BB4AC96D15248C87B15BE7A2FE6B10C852C7F3B3A1B2994B5F556ED719
            C60D8E02935C9076504C582E14A6795AB330722F6553B05D5D0BCFFD2C63CCE1
            E97C3E1629BCCAE16408045D8920B38AD6C556CAA6E3322DB791924B375694DF
            290A2C5E8E713076EB2F3B9DA7426116C88A228C3F506E6B27B8D81E0ECBEADC
            7436DB945CCBDA502A16B309DB939E19652E5392796F0E51BE7F766A60A0E91E
            2E9D46941F7681203208E21C8C67B0C681D60689830581745F3523761806E826
            F90BC61E93962DFBF3D40D377416A8AD150AEB6151672B5C0E970B2FD35D8F32
            9E77423A9329B7F31707B19C4D943124C26F297B9F5DC0C672281BEFFBF34120
            13560C080B7178E80582D0101007450D594CD748C9657327A6E432E3AA13AAB3
            ED02172AEA631DE5197386F2BC52BF23C9F05AB1C886DE3F549640D673784DAC
            4D3903D6CE7EA96CB6D8CE5F5C29143CAD35B3C8A846FC29E52EA645F7E2ED18
            7BE23AEEC675C422038B1002110856838038B8E3644A2E3389B65336C38A3FB3
            C6234EC43116A332EFB8B8837DAD1F4BBB6BC4C4392281FC5459B275B5D6F0FC
            2FC3D82595CB2D6CE72F0681D0F5F605900803E8EF75780DCB8D3197E2386C00
            F67C32938945069672382102416C11881D32259796062D8E8F2A6B81D01513A5
            CCAA66F13876BA876395FA43BACDBBF606024DACED31F6536E0984EE9E6B3176
            03813CD5CE5F5CB124F87D6D0B22377074FE0435CA4E02899C92CEE7071D1EA7
            ED1002110802048B1E336DC6AAE43652725D06823B8D82B2028B67623CE94284
            B0562E7BC6F7D947FC04650B295D8116C89F300E305ADF9B6EA34BAE522A6DA2
            8DD9035FBFA3DC49D337E21F07D10A0181B43D15D9258440043D8F202597ED4A
            9992DB103B6CA4E44E09FBFC1C80BBF6DB944DB3BD3AD584CCFBBAB0BC56D32B
            57AEA4FED7E9CA66A9B902E305B71836CE32E60E2CC06D2926AC160A7DB0D278
            FE73957D265C599E3CDF5B31F6C335DCD94CCF9630210422E8598C49C925598C
            4DC965D037EA29B9ADA0A1BB743EC6F12090B6BBB1864B25CF3786C291AC7EE7
            BCBA2C266457C4DD316E6D57353A08240902F91F65DD57B395BB678129BB5414
            3E4427122F25D3E9D8C43F886E7D4104823522E83FCE7806DD530D955CA6E4B2
            F82D2E29B9AD82E9AF6C0CB53B16DDC7DAFDCB2942688C795F500BF225E53676
            C46AF41F7B89C4F5FDE974CB194CD572D953F5FA3B71EEBB2ADB0B25E5F0DC29
            31732CACA7B352F97C2C24DCC7A2175E14816014B552496351A32F7B6C4A2E25
            481830E79FC735B3AA19D055C2FE1E7BC10CBB627A9B65406A8582F6B5DE0A0B
            CCDEF8F16BCACAD7BB023B25FEDCF3BC8BFA33997610C83410C8E74735B66C22
            854B01C57BE87EC383792308C449469C4B088108BA1E63527237565651753B65
            5373672B5BE31105B1C33040399333308EC722F64A3A976B6BFD41A5589C8D8F
            0330F95F57769E5D81994B87619CDAAA1ED6D2522951B70DB4A8F0CBB6BC5418
            70B54E529FEC62CCFDE138C0D32E92195C430844101B0444D0A7ED73BB32398E
            172E48C9A56BAA91924BCB830B04ABCABB2125B7157007CC002EC508193F68AB
            3E56D00EF74065B3985C1208E54C4E8375796C3A9F6F49CEA4663B307E1E0F16
            DD577C665CE99AF1D97DD5687D1C8E776EDA411CAA13100211C40281EA2D33A5
            B6C018C283FB7C722DBBCDE0EF3318CE402E631C4CC9A50C495E75574A6EABA0
            1B8B028B1780405E6DE72FC63DA0D5C734582EC6AED2608902C8E36C7C1E0F02
            695AAABE5A2A4DC662CE848AEF2BDB10CBA5F54177D55D4AEB43C02437B92AE8
            740D211041A431A69F385F6C66F33066F167BCE897E0F3F5543E6F56F9FB7DC1
            DF7F8F7A332597BDC8493EAEFB8F370B660E7101490483D7D429EB88C1F43F28
            5BAF71673BDD28D57279B2F2FDEF29EB5ECA3ABC0666329D63188CD6FAA5666A
            4186972CF1EA7D7D9B681B34672F776E365C6E341830FF25C6F1BEE72DC8C4A8
            FA7C2CA2F832090463FB893353AA91624B6B8216C4352010F6A8BEBF11780CFE
            3EDD52240B8A1DD2EA605D070B033BD57F7CA2E0B9D3E542098EE5C17932909F
            0CAE9D3BF829CA6D709F718FC7314EC138AF9D3D352AE5F254EDFBFFAEAC96D4
            460EAF81F3F82B8C034D22F1527A82A9B0A3A289BE9F06F96CA7ACFC0A5D9DD3
            1D9E2F5D872C1E3C0C0FE565B0A463A3BEBB2AA2F852097A18ABF413A7844823
            53AAD14F9CA0A22C77CCB4428683BF4FD7D6DF077F9F44C3B8071781283EE35C
            40481C4F623CA86C4D06FF8C8B795F70AD749FBC3DF84E8B8A64E28A4858994E
            99F7FDDBD9AD10F79284C814DE83942576572061FC11E3C738FFE727F20F2BD6
            62CD6B9B5C41B7D56795757DBA4CAC588A0DD0D5202C12C85F926D4E5EE824A2
            F872097A1481CF7CB6B2ED60694130538AE285DC918F5D3C1934BD90B9F37809
            B9783452722976C84CAB28A7E492285EC7B849D945EF7163CCB0B6D7B10CD733
            05D745EB83A44112A5EB8E044A32A135E5C20DC71DFCA3187346EAF5DB723366
            B4C51F5FB362849F375AEFAFECBD71B5DE70EEEEC1F87FDAF31E1E8F1821D38C
            F131D5D79A1A571FC10F5FC6E7A795256E97E4319A3EAD8D3915C73EC7F7BCA1
            6C4CDD578410882012A8944A74D5BC1F2FD6B795755935C40B57F732AFC0B857
            D94238BEF0241AF61F4FA9E8A7E4AE08CEFB74EDFBB7EABEBECA88EF1BCF181F
            E451C7E80381804E0C77EF497CA3254557DCC782EB24A99050DBFDEED2223AC2
            F8FE3920B3C155634BCD008BB46748ECD86907E7EEB29EE2118C39A301E975C8
            8154878612CAF39298E38DB188F3BCD8F39CCF1C371FAE371E4CDDBD1EC73BDA
            58E9F65806CF1B100211440220903C5EE8EDF17567655FE4B50591B9B8D1EDC2
            458FC1D938A5E4B266E14C2CAA6724DE78E3E5E9B366ADD67DC11DB2E7FB1A3B
            D4C958D01915DE1296CA27F0EF3EA36CD53C2558DAF9FEF23CAE04791D89CF07
            DB51D4562B1669565198929A5BB4125D12C8A3C6BACAE68340D678EE4B0707FB
            401A19E3799BABBF2D262551BBD63DE3734B17E1A9B88F67813C16393E9E7308
            810822814AB1384B5BE9EFEFAAF105301BBBCCA8BAAA56072E208C7B1C8405E4
            4A2C20CBC6F38F9655AB5E7D64641A086453FC3B2E7874B770F1CBB4F9FA1F07
            811C8BCFCB40206DA94BA8964AB3F13B9926FCCFCAAD0BEB49C36C2FAD2F4DAF
            615E2B4343933CAD6719F6F6B0F3C8648B2D9525E33E87E7D700E375745D1E0B
            02BB239DC9AC707C3CE710021144022090F5F0301E8AAF14B07355BC1536B8D0
            DD8BEBFC79A25EBF73DA8C1913525E656D0BFEED46C6EE9A996E4AB716DD7CED
            7A8F0B58EC7FA39891E5794FA6DA208D5E2B973730BECF4245DE579764CF7A96
            0371C217A757C96A5A5AA96833329282E541AB83A4C1F9A365D449ED33DEEB05
            8AEAC45A9F8FF35CD44EE9F9B0200422081DD5725963E1E24E9555CBEC3DDDAD
            857E96408CD93199CF3FD0CC2F08B28636C48B4B57162BBC592DDD2EB13FEE88
            198CA682EE55A9B5B882C68BE172797D10C8AEB8F09D94BB9EE2042DA603F00C
            9D03EB69B8F187416206538819EB6834079BAD3ADB5592F79DEED66B14C93991
            B82F954EC7DEFA20844004A16354E490D946D6FFFE79D5BD04322A9E470B2499
            CBDDD9EC2F196DB5AA35D37BBF1E14BE7137DD8E39E3F92DE40E19BFF7A86436
            DB922C08817BBB1EEEEB8EC6F646CFB7691E5707D6AF1CC581735F6AAC15CB74
            5CC63798D1476B8DA9DE8C99753A5EC6F81253CF190BBA12D65D3115E3CCABB1
            100211848EDAF0B0362B576E8585E664655FF638C53526022ED077E2A5DB1FD7
            7A33AC90A69B0781442663A17F177E170BF5B657B65EA41D41EAE5DA369BDAA5
            DED7F77826956AA9C1112C801CAEF587385712C886ED9BCAB7803BFA7346E5E3
            8D2199B2873933ABE8B2622A349508C2D89870FE16635C8A71BA31E6F1743E1F
            DBBA8F55210422081DA3FD178CF910C631CABEF0DDFA5C366220FB6ADFBFA97F
            60A0A5E64795A1A1695AEB0F62D1FC097EFC276583C1ED38C75730F6F43DEFF7
            994CA6DACA2FAB160AD3717ED49662C32712884B655BF646677326A680732342
            391BD6CE84D955B288EBFFD368CD92527780406AE936A4484705DDFAA20A6284
            5AB198C01BF52965252FE8D3EFD6E772345B683488EEFB374C6B914088EAD050
            5E791E7B8F33C6D0AEDE1554E565AAF13C7C3E97CA669BDE3107AD6159E14DF7
            A44B0261BCE60565656136526F06C8C304E7ED11A66C6B632EC3852FEE8FA164
            FBDAD0AD2FAA2046585A2824EA5A33CD93FA56EF08FB7C1C8375003FEBABD72F
            9B366346EBCD8FEC02CD1DF70ECA8A00B282BD551720CF8B6E2C5A8437A472B9
            71A51BAF0E4B0707753D9160C09FBDD1DFDEA6395C1DB830377ABB47413493E7
            42899ACB717F7E8D1BF2647F36DBF6DEF36123EC491608D4D26271B2AFD4178D
            5DB0360BFB7C1C8305906CB2747AB20D594E042CB8A9C6CA70CC51B63EA45521
            402EC66C13FB0B8C8B4020E5667FD1F2254BBC91BEBE6DF10B69CDB894338912
            48C074035EAD28F2A8F543B0E2DADA6B252AE8859B298838868BC5295860FECB
            30B86CB5AFBA19852059E017A97CBEA5F8C258548B4556EFB3D682F186564898
            6E35A6C4329D970ABD37B762818CCA9978DE36B866CA99304E1375A9995641F2
            E57D65C1E0F9CAF36E4A6532B16C16351E0881084247B5549A8A05862E987D95
            D5B6EA66D00239975A48B040DA26651128DF3206C2E64D5F50CDF520A78B85E7
            449DB1ABB0125E8BF35CD84A8F109C17DD69CC88DA0783B19A3003DAAE41CB83
            F797F37711C68D2090D741202DC7BAA20A211041E8A894CB49EDFBEC41CD45C6
            65E3A135C104A313E9C3DC9D9EA7ADBBEEC5F1B4E51DD72F654F0BCE9D31ECE3
            FD236545172752EFC0745392C79D4AEBAB7152B7E00F16645B14FB0BE4F919D7
            A24CCDD794DB3E1B6182E4419D335A6E97620EAFC7BD58948AB154FB78200422
            081D58FCF278D97E86AF4C47CD74F0D05CBC59B5CC8239D60874A2DD2DEB157E
            ADD90B42EBE7FBDB585056ADD53CF5C61BDB62F1A2202577FBE325632E724318
            B763CCC779DD8E937A057FB83CDB06B90D90C806DA98838CD6545A76D9DA364C
            706340CBE332CCFFB52A9158904AA5BAD6F268400844103AB0C0B0C8EB008CFF
            539D59606CEF0D1BE87C58591D25A67EB2068505792EDF0B2ED6BFC722BD6B22
            91787E5A2AD5D6B4CE6AA190C702C6264E3F5756B5776DD7C26393D05EC6B805
            633E88FC7EED798B936D9419AF150A940D390004B2A3EA3E0B84961B930CD818
            8C4DB9FE84F95FA0FAFA96A792C9AE4AD95D1D844004A1A3562CAE1F4871330D
            D5B58F9C0B231B523D847133C6BDBED665CF1806A149605C7C5D4A5D7051A18C
            C90E7D93263D3EADCD8B0CE6B2CFD874591208EB2F68D1ADEE3DE771293AF89C
            B201DFABF097EEC7225F698788E2580C0F0E4EF1130956A27393906CFB8C8607
            C68C587742B7D57C8C5B839F57B6B3B77C94210422081DD5526933EC7C4920D4
            7572A9C4CB179ED6C62D38DE1FB531F7D47D7F899934C924B49EA67CFF7BCAFA
            EAD30ECF810BCB638A857F5ADF8EC5BA25A990D5A15C2C4EF3AC0B6B1765B5A0
            5637A7D48E7A4A71C76C7BCC3F30B95E2F4C9939B3ED0B5F6D7070AA4924E8BE
            62A1E8AC76FFFE10D0B0DC5EC2BCDDC198119E9DDB12C62C9A3E4185E5B84308
            44103A2AA5127B32FC020BFAE7943B02E14BCF2031E52EAEC00B7F77DFB2658B
            A76DB4D16890B33A3CACD51B6FB09891056F9B38BC5C2E305CB89971361F3BD5
            B6FBC9170D0EEAFE44E21DC6161732A8BEDE2A7F858B1FEB3CFE8805E08FF87B
            8F6014D30ECE85A8140A945C21A151AE7F7317C7E830384F240F7696BC067377
            B7AED75F4BCD9C19EBEE82CD400844102A2A58EC5422F11E3C8827282BB7EDA2
            4E80E45151B6BAFA027E1ADF5F9C1E18F89B17BE5A2C32DD949A451F7178C93C
            97A7B1A0B247C645C96C76B98B83D48A45FAC6B6C3D7DD948DED705EEBC13C3C
            AE6C911BD3749FC1DFABA5D6D106B6158CB62B36E68BDAD6F9AC2B2E1375907C
            1760DC880D0FC9F74163CC6258212BBB49E36ABC88F38D1474012A434309ED79
            ECD540296E2E742E5269B948DF877136C675188B57DDF98FA6C1B2E39F4DAFFD
            3747E7D1C0020C12C86F701E6D2B261C0B1008FB916FA06C4A2F633BCC3063A6
            15633F5707F3B000C7772EAF01024960B1651121FBBD7C48C5536DB951E341F7
            23E78E04F234E6B892EA2275DD89420844102A2A8582A76D9F6F8AED6DA3DABF
            B818EC0E17821CCEC7F7B33D639EEF5F8D8C7ACD12C8865810F650D6F5E33298
            CF20FE2138D62FD3B95CC5D541CAC5E2244CE667B44D8FDE1AC77B94B11FC5C5
            CFF39E85F5D391A646412DC8DFE13E1C83E3D3BA8B53353AAD0ACA9050C38C9B
            901B30E8BA7A05E4DB154DA15A81108820540C170A54E2FD67A335BBE0B1E0AC
            DDCFE43016AE9B8D316CE6731B16ECE135FDC55AA1B01ECE83058D3F55ED9146
            5F13B8201D85F33A3695CD3AB140FE7A4D56E2E41B18DB609EEFC13CDC8C9DF3
            0210C8D27615318E0755C6B96C6F74BA29E36281D0C5C91A21AAFC923CFE8CCD
            CEBDD87DBC9AEE4261C46620042208152010EA607D190B373374DA1D60E502C9
            97FF545FEB0B607D2C5E5B7A65B550C86151A7BB87D94B1B39BC6C2E4C944BDF
            27D586AE7F6B43CD4A9CB0A11209F105DF988598EB37321D4E33AD944A6F0371
            31CEF555157D02A1854AEB8296E293245EDC2B36027B9492ECF87945BB539DE3
            0A211041A808946459FFC1AC242EDAED7C26696D30EBEAB8BAD6F764D7B16BAC
            148BD3B53D17069E376BF3B98CC51BD88D5F86CF39A97CFE3547C71805AC2A5E
            C3542C80FC7145D261B07C6DC0DCAE1F04D129F618D596C52405CE0F8B4C5FC5
            78C0D8C48BFB307FCFE3B39C506AA45FC8E3AF100211848A6AA9346DB4E5A9D5
            C19AD1C65FDDB03ED863E4B7D8750FA6D7F1E26391EBD35A7F03E773B0B2C578
            AEDE0FEE6EAFC1D80B16D1138E8E112904C5A22C26E448857D3E6B00132B6811
            32CDFA4E3C07B718DB108A2D6997A57BA4387022100211840A10481A2F2A252E
            18BC6E67DC81995737182B237E5F3A9F5F678EFEB25A4D8F8C8C7C1AE7C3DE15
            2EE2310DD0126230F64010DBBDEB22B66E000864062E92F7993A5D512C26645C
            6A01C8E25E6D0C2BCAEF35FCD9985AAA85DEF5DD0E211041A80081CC50BEBFAB
            B23A49EDAA00E7824CD7D03CF6A2C622BD64BCBB479CCFFBF16FCE5036DDD4D5
            FBC1B44F6A4F1D0082BB23DD0369A0C1468196261314DE16F6F98C4143C29E5A
            56372BAB46FC1C48A498745458D94D100211848A512145630EC14BCBD843BB7A
            58D3DAB80BE31055AFDF9C9A31635C1933551B2F7817CE859DF85895EE2ADD94
            64C6056B0E2530526DE88D1E75546D31E1F6CA4AC5B8EC8D3E5E70CE29BFFEA8
            B2710E2A11B3C072B013B531DD82B06FA2A0C751291637C443C898032537DA25
            63C20E70BFC23846D7EB2F2567CC1897F551191AF2B4E7BD53D980FE37DA783E
            AB03450C77562323D7A566CEEC7A1749B950F03C2B677222C6C6219E0AAD3D3E
            1F8C739034E8AE2289BCAE985D25718E09410844101A82EAEF2D942510361B6A
            47760E17E3A78D314C0BFE5D3A9F1F772FEAD18C25AD370F8A095DF7AEA0DB64
            571CEBC2744899519DC492C58BBD2993267D4C5BADB1AD423805CE318B36A901
            463564BA1059954F57E732218EE6200422080DC3958A36BEFF6E2CF6CC94FA94
            6A8F8C3ADD0F7F34748B29F5E044E30BB56271036333C26811B96C6EB524A87D
            3925DDA18AF030511C1C4C00EF0F3A317E52756EED69C8D6330D970D9F5845FE
            80B2AACCC3421CAD410844101A9656ABDAAFD7DF87C59E6E8D4FA8F63C8FD42B
            62F0FC94543EFFFA44FF71B55864207F6F0C56A43B25100C56661F8745CC6931
            6114502D14583CB80D2C3CF604F9A272DB7385684890B059D6FDCA12070984A9
            DD5597E291BD0421104168A8954A1EC8E363CA0A29FE9D6AFD79E4A2C140E85C
            10C8552090092BDD824018F760AD0283BD2E09847EF833719EC7E33C173A3C4E
            24102428BC87D5F7CA8A554E7578B8467FF73B947555DDADACEBAAD4ED3DCA3B
            0D21104168A8140A09ADF567F195594FEF51AD3F8FCCBE627F062EFE8F34135B
            28158B93124A7D2B382797F50AAC923F67F4385ABFDC0BD21820E7D98AE4AED4
            D795DBF8122D0F2AE69EAC580808ABD445DF158110882044148786FAFA3C8FE9
            B2D4486A870E165D41A71A9BE9B3A899CAE172A130D9D3FA5F94251097CD8F48
            76BF8105B69F6FCCCBD98181AE27905AB1C886194C98D85EB9ED8D4E37E62F31
            8E00712C09FBBABB1942203107163C9D091AD96047AFD3ABF91E55048B35B3AF
            582DBE598BBF8ED7CAD4D803B1285F3691ECABB1A8E19C8CB58A18847FBF72F7
            8EF07CAFC3B9EE88737DC1D13122855AA93415D7BB27BEEEAADC5A20740FD2BA
            3B0604D2F5EEC130210412236007A7B1B825461209BFAF5E670AEC540CCFD77A
            A5479FB2317DF8FFF4FBB300CEE0E715DAF394E7792B4756AE34BEEFAB9C839E
            D7CDA2522C4EC103F85D65EB2E366CF1D7D1B77D13C6FE58A4EE69B6BABB4679
            79AD9911C660EFDF2BB7C5849408DF61A45E7F3837CE5A9538A352AD4ED12323
            EC3B4F727629974FF7E0B918BFC0B3FF527F26D3F5731B168440228CD2E2C53A
            3B6B96A9DAEE7234F953DA98C94A8F4AAB527A3C0F92A09F9F3F0FA84049D4D8
            0238BE44CBB425942192091656A6332E9FB474E94AD3DFAFA6879CC2582E16A7
            7A36DB89318B7C8BBF8ED77B01AE919DFE5E6ED6FA0A9A1F7D54D98E81FFA0DC
            650BF15EB1806D0EC68DBD901554A954A6E97AFDDF959D5BD772F9BFC1380093
            FA62A7A5EB7B0942201103B3558C5DB45854C7D4C7C92081F5F1B929FE7C405B
            D39FAAB5D41362260B5F0EEEE6D8418F3510FCB7DC7D57F13F8CB66D4CA9265A
            C4E24AB1B8D73DDF7F15660917DCE561C97B07D79AC6F9ECA46CE15EB6C55FC7
            94DDA34094E7A4F2F9724BE7552C6EA96C1CE5D3CA2D81B03DEA4118F37B413E
            A3522A4DC506E8CBCAB6B67DB7C343716EAFC5F3BF733A977B3EECEBEE660881
            4404B57219EF9699A47C9F52D7DC32A5352D0C2B2BCE058D24C2FFC785763D65
            85079959C2052E197CE78BD32012FECCFBCB8E77D60AB18B2CD3199FC1784AB3
            98CA982193482C4F65321D27925AA13060B4DE5D592BA4152145922865D1F7C1
            245E9DCCE75B5A8C4120EC254E02617CC655F3239E33E5340EC33DB834D564CC
            264E1895CB37E65FB069605F900F2AB7F125D67CFC10C4FC50D8D7DDCD100289
            00B0604DC14B452B62432C26B42C3868E2BF2318744FD122A16B8AAE2C9204EF
            1D177D2FF86ED49BF773ACC9EE073FBFA1DE541E65660A77BF0F8F0EAD1780BC
            96F4F5F58D4C4FA53A66EED786866618CF6356CE77546B428AB4B86E54369672
            5FABEEA00A880DE4CD5DF20ECA6DF3A35730E66251BD08A45773789C4880AE58
            3CDFFF88E78D2E2CAA1DBB8A2FF1FE337D97C1FA9E700F86052190101114ADD1
            CA600612AD0C5A1B149ADB445902611DC2D8E63B0DB26805B44C48244C795DA0
            2C89B0F7C14358349FF712895A7F2AD59162AB6AA1B0211613BA70FE47B5265C
            C80E72F4791F84C5E2C596CFAB582461B39890F189A4C329A0ABED00CF98B3FA
            F3F9E1967F5B0C80B965661BEB335838EA9240185FE2E6A427DC836141082404
            E025E2AE968BD43BB070BF57DB22BAD9181B047F4E6B849686AB178CA0A5D170
            6DD195C28CA05BB1A03FEC79DEE2FE74DAF94B8779A075C58C9CAF286B55350B
            5E0317A513B058145B3D2F582024F5EF83507FAEACBBD01538FFC7E2FE1F9ECC
            E5BADE02218262424AB8B0FEC7A50BEB49C560BDD697A4B2D965615F77B74208
            A483A8964A7D30E1490E940CDF56593F3017515A1A94CD60809C0BA94BE25815
            DCAD71F74B5552FA8B990A7B271E8CE78C314B530E6B49B09830907A1CC66754
            F3C16A9E1F85F10EC0978BD2B9DC84E54B5605082405F2F83F7C2581D01A74D9
            DAF6028C3D417C438E8E1119944A259D3086B13C8A4852ACD2557C89A006D65C
            DCB88B40CE3D61DD850121900E000B25092183DDD01620908F286BBE53D29A16
            074983EE9B46D6555860EA232B78B973FB33CEF34FCAF683AEB8D00F5A522CEA
            29D6FA6215FA275BB87612E05F3076C749DE986DC3B9566D7DCA7F07AABCB395
            BBF784647785B2BDD117383A4664502D9759BBB41E0663133F526EF5B0E8A23D
            401B7376B247DC83614008C421829A02661731B6F16165EB0AE80366909CC4C1
            5D773BE21AED42C31A59A06CA39DAB31EEAB1B33986D73DBD552B1E8E1C2D91F
            E2486509B55902614CE77A8C3D8DD68FB4A3BF78CD12FE978CB58E662BB716C8
            1F30E682401E71748C480156380984A9DBEC8DDE6AEDCFDA40723E1A0472542F
            24288485A82C5C5D07900783AF747F30DBE493C1E7A6CA06C51B8B6514E79F0B
            301736BAB4D8B16D3EFB76D7B55E946BA32542796F2CF8FFA45B1752E4427121
            FEF101C95CEE95769C5BA55AD57A6484A47666706EAE40F2BB56B12E42EBFB53
            D96CD7670BE1BDA00B77476509640387875AA16D35FA3E782E0A615F77B7228A
            0B58AC811784E9A8B43018DF2071D06545513EC6383A19DB68155CDC5880C87E
            D157FA3636B238D32612A90E0DF561D1FC3CC671C1FC34FB2CD2557132FEF171
            ED5A282AB59A5623235B63F77A9272DBFC88647D1BE6600FE379F7A4D3E9AE97
            1AC7FBC1E4901F60B0FE8704E26A6E1938BF0C639F7664E609560F2190362148
            C9E50BB18DB2CD91B883656A2E775CAE9BE7B80277C4AC19613F858B14492491
            589C6AC342070299A23C8FB216CCC29AAD9A7F1629967720FEF1052090B614E3
            55CA65D62BBC0B04C23450F6F17679FF588FB3A39A3CF9F6547F7FD75B20B552
            A90F162DE5F2E9BA6C55FF6C6DA065FA7B8C0341208F857DDDDD0A21901611A4
            E4CE54D6D541E260832406C82937E2B208AD53E0A2C69D3DDD59BF365ADF3AD9
            9845535BD417AA150A53F1BB28ACC7EE7FCDEE44790E4F63B1DF5B6B3D3FD9A6
            9E0F151BBBDA12FFD90B9FDF50AD1539AE0B2F53CE65D2D4A97F983A756AD76B
            362D2D9574DD18AA1D9FA66C6CD015F82C5C8D678305A10FA5F2F9AE27E73020
            04D22482CC2A0601DF85F1716503E45B2B2B39D24A4D4314418B8369A6ACF6BE
            08177E63C2F7AB535AE861315C2A4DF78DA18409ABC79B5566E5F1EFC622B11B
            AC853B9303036D73018144660704F26DF5B7C59CED06E565F605019E97CC66BB
            BEE9D170A140F568C6034F513695DDA57B906D6C77C7F3F140AACD4920020B21
            900962548EC1EA516DA1ACDCF7D8CC2AA62576EB9C7207B7101777BDB1BD161E
            48B5905F3F5C2C3262CC544EA674362BA4C845E15AA6857ABEFF647F1B25D1AB
            85C240A0D9B4BD6A4DA76B5D20811C0702390504D2F5E9A6CC7033F67D391483
            9688CBB820551676C4E6E2EEA458204ED0AD8B5DDB11A4E472274AD911CA7D33
            B8CA1D1425479892DB0B73C9059B457B971963289DFE446660A0A98A752C245C
            EDE9BEA21BABD9057A34034BD934D897DB79A141320403BD9433716981305181
            95D927E31A061D1E2712A8964ADC80BD0FA4CF1A1BC6975A91B05917D8A86B27
            CCEB35615F77B7A21716BD961010073347C6A6E4B2A663B6FADB94DC5E0109E3
            6965AD902B3116342356877965F53D03E8D4C16AB6A0ACA26C21E209EDAEE42E
            178B933CDBEC8AC27F2E9B1F510F8B047212087961D4BB48B60A1008DFA77782
            40D803E6ABCA5D6B5BCEE3AB466B12D5AFD3D9ACB8B01C4008642DC022C7858D
            16064DEE4666155D5774B9F41A7134D0D0D06250FD02BCA0F331CA9909747DAB
            6111C16249D1480A29FEA76A3ED980EE1FCA629C996A5306560395A1A1C9DAF3
            FE0D5F8F516E9B1F712ECFC4E41D81795C9869432164D451291637D076F3F04D
            E5AEB5AD25105B677466BACDCF87C042086435189557B7227AEF55D6E260AC83
            29B90C9AC73525B79DE0CB4977CB4D58F48EC7E743E90908D68D1288D5033B1C
            3BD12FAAE6DC183C8767829DEC15A9167B80BCE51C0B85293800EB54D8AF7D2B
            673369DD8297E0387352D9ECAB0E8F1319E0FDA2E53E57D93E30AE2C108229DE
            2762B3723A2CBB964536056F8510C818E0C126393452723F1E8CAD823F73E9AB
            8D23B8F0B1F2FB6C8C8BF4CA95CF2667CD1A972B6BD42DA8F55658FCE97EDA4E
            351748E5B128FEB80B7ED7EDA936BB28402093408E0CF2B2373A8B415D660BDD
            AC6CF3A3671C1D2352A8944A536082FE44D956C62EE34B4C3F6763B05331B78B
            C3BEEE6E841088FA9B945C5A19ACE36066D5FB944DC92571C83CAD1E943C61E7
            B73395EF5F86491A4E8E23B5B752287858F43FA0ADD614E7BA99F965CAEBCD18
            BB9944E2E1743ADD56D74F906D47B7258B09F94CB8CA1622F1DD8F09F8293EEF
            4EF640FFEEA0B52DD3A3E97E9CE5F050745B9D8A631D99CCE797847DDDDD889E
            5E18834582122394D2A09B8A0BC60794AD9065164E4FCFCF38C0C58E52221404
            3C063BF6C7D3D9EC3A5D49C1BCFFA3B2D5C84C4C68669E799C8B404473F1F942
            CA41EC20687ED4203957AE4B12C843DAEEC6AF6F57316494810DC434AD357BC0
            300EB2B9C343712E2FF47C7FD7FE8101211007E8C90532C8ACA2D8215372E99E
            609C83DA55143BEC9594DC76C156832B350FE377A95C6EE1BAFE4140206C28C4
            00350B319B996FD64C9C05023914E4E16471C0796E1A5CD7E795DBDEE894A33F
            04D7F27B5CCB0A47C7890C8218E39794254D5AFAAEDEB7D13A2158203F8205B2
            20ECEBEE46F4DC4289879704C10C20D67034527229A9D08B29B9ED02E5B259A5
            7E82EF79B7643299B5EEA26B85421FAC152E20249066E52C18C4A775C0FA898A
            938B2A166761753F5AB96F7EC4D8C75C1CEB8A5EC816AA954A74077ECE589911
            6EDC5CB907D9E3E67665CC1C583C0FF6827BB0D3E81902095272E99AA25B82C4
            313625374E2AB95104777AB43C988E7A1A1EAA25A9B5BCACA3194ED685315759
            0249A837EFC1789F491E6F5FE579BF4E65324E76ED38CF99384F1613527ADC65
            F3230678F7C642F79B543EDF0B04C2346E16E37203C00D9CABF78F1B99BB8C4D
            84F873DA4163B45E47D713482076C86038537219E360AC836E13F61E9794DCF6
            81BB3D6A0F1DAA6D30788D69BD4186D3E7F0F57F952DC8A4F024DD1A8DEE8C7D
            EACD7BB3BA9D3FC9E959C54AF144E2AA543AED246E50058128AD7FA86C6B5B97
            C58474C71D0402390904D213FDBBF15E328DFB74D55A37CA7581997AF7292642
            687D5D6A1CF139C1C4D0B50412A4E47261621A6E23259762879292EB0E4CEBA5
            CAEA05B0405E5AD35F0A6220B4FEDE83ADE8C62013AAF13299817A628C4D3133
            87F501FDC12777A80D814A7E278130FB6B0F3CC0B7261DED2C4120399CDBF771
            8C9F29B7D2E3B4A04EC1227720163927EEB8A80156C886B0429862CB6A7497F1
            25B668DE17F7F18F13A955128C0F5D4720414A2EDD528D945C5A1D8D945C976E
            08816DE2331A0B519E77632A9359E3C21E0452A7E10164FA1433DE78CF66049F
            ACFC4E059FFC99D622D3ACF96F680970677917C69EF8F78FBAF26D576CF3A3EF
            E218BB291B3773D6FC080BDC6FF0B90F16B9D71D1D2352182E95D6F78DA15825
            B5D05C6EE8E8EADCCB78DEC5E94C4608A4CDE81A020976B514E5E3CE96FED546
            4A2E17A1B8A5E43616449E331761BA87FAC65C435463365CD8296A7816C689E3
            096E07EAACBCE0C9B8B8042C927E2CA6FDD88D4F57C6CCC29FF51B7B0F69A170
            1340EB841B81E7314E72D96DAE62ADD86F69AB1CEB924096E21A2FD7B6F9514F
            1413E2BE6F806B66312115995D161332C1E36010C8494220ED479C16D5D52208
            C8D1ED315BD980DCD8FEE3DC41C629B38A0B30DD19D447E2BA4AE228043F9304
            47D49BBBF529C1F7A89109CF9F56C81ECAF79F480D0C4C283E318C8D804E2414
            76A77D98803EDCBC3EDFF753F83E49BFE9DAA2454272BADB55061631AA1C6B9B
            1F3195D765BD027DF3F395F5D53FE2A2A6256AC0868FF1A51D31BF241097C584
            7CFE4EC7B1F6C1BC96C3BEEE6E43AC0924E8AFCCDD6923259796076B3B6889C4
            8D38987D43455966E4B038AF8A416DA445FC0BB851C6D885861A5D8CE3501D98
            7E79EECA192B885242C0028CFD41205781405AD2205A393CAC97AF58A1568C8C
            E82993264DC21C781E2D14CC05360EB5669480C78B4AB5AA75BDFE41CC3C83BD
            DB3A9C2F5EC3B58ABE7AEA8A39BCA6A800E44CAB8304C20A7C97F1255AF05761
            FCB8DD92FF829812489092CBC0EB58955C6675C42D25973B4D66E0BC86F15C30
            F87D096ECC2BF89FAF6AADB9507AF879B9D1A33492C5E0CBB73976559BE04FB6
            C5DF7BB78A56F53CAFE96CCD8557EB27936D5E102909DE895D7AA552F1B4EFBF
            07F37D147E64D698CB60EF3DF8CFCE75DF7F203730D00B04420B7A7BCC2D536C
            377078285A20F7502A06CFE17D1338BFD1640D3C675D7F2F5A4114169B712370
            57D1BAA0A541290C06C9B97832C01AB7FEE3B43868613C8AF1A0B2CAB20CF815
            B0E816706318D459C11DB7AFA93DA8EB067B6F353292C0A2C642BC14FE308FBF
            B795B1F3C1B9A0086414AC2FBEB4B7E19C9965734D32A6D92F9552C9C303C72C
            3EF694F89A721BEC7D06F7F107B0B46E99397366D7BBB02A854202CFEFBF6A2B
            76E8522E9F04F014A56258A8995A47C61E36A7BCC774AF7133FA3A08A4AD7D66
            BA0D7123903E10C836CA66C5509F288E29B98C679028D86EF34E6515655FC28D
            28FBC62CD33623E78DF43A328B2A43435A791E6304541164BC87922CACEE661C
            883182302D319E3BD3787F89711A5EDA586616D58A45CACEBF43D9DEE8DF506E
            7B573005FAE7F872592FB8B086972CF1FC44E2E358A899F6ED522E9F73CBE76F
            1EBE1C8FB9ADADEE2F05F562CC02E486941B3212DC7C6C821E4D66325D7F3F9A
            45DC08640A08E433CAAA78BE37ECF3992018BF603CE3118CDB35D3508D79DA24
            12453C9D230963460CA3C513EC48B7AC58F4565A125D4F5B2B843B65164BD22D
            10A625C2180EFBA71FA66DFFF458EEAA6B85C286C6F64667E32B57D942A3CD8F
            30D87BE41CCC55D7EB61D586861298D70F60913E5635AFC83C5ED0DABF0EC7DA
            97EF9CF63CBE6B1E8E8FAF3032EB7566F8D105DE105465BDD8B3F8FB87E0AFDC
            955C87344F2F235E04825D02DEB47FC2576AE86C1B93F3672615759B9E50B68B
            DF6D188F7989C4E0D4952BDF480C0C9852A5A2B32DCA91978BC53E4CC64C6D0B
            26BF8E41A2A56B2F2C12E14BF784B18ABB1763E7B732A4F36809D552291D34AD
            62F3A3A4C34331F67502E346C97CBEEBB38546630CC63086C91808C52A5DBAA0
            694130DDFB0410023735251CDB0B8EC98D16F5B8F8DE30ED9FE9DA8C25D233F0
            335FEBDB33D20E778D88C302FC57B0D60337FF93DAB64275D9A3A11DE043C70C
            A4A7947555DDA2ACEAEAEBAE769815ECEA542231038BD0A7941500E46E8ABBE6
            30EE330991FEE373310EC535C772511CAE5627FB2323CC1472DDFC889B8C1371
            EF4EEB85DE15551BCFDC5ADBF81275D15C17F9D2756CDF43AD5F05817083C3F4
            611619D32DCEAC46BA281B1BAE1730765A5EAF5F3773C60C7161AD01B122900A
            1E3A7CBC1F4F5EC3EC8D52EA6A037CD8B85832A3EA6E658983BB9997536BD187
            6A1782824A6664316B8855BE7C395CF9EED705BAEDA88FB513AEFDD990CEA125
            2CAFD526AD5CB992EE2B6662B9AC57A0CBEF647669C4AE777126A62EBF89A052
            2C6EA6AD37816E57D7CF28E793EF25E38F4C95E7068FD607DF95D52971336EB2
            BB6FCC85997C5E2C90352056044260819CAD6C6117FB49849D6DB42AE8A65980
            71ABB20BE7FDCA9ACEC39D8C0154CBE53E2C441B63D00AF90F65839461CC5523
            98BE13B67BD7E462181C5E5A2E4FC122F265EC961977735D4C782E2668FF4C8F
            B45FC5BBCC640F3695A2A8A6CBDEE80DF079A4E5416B84DE0B5A3D6B12EBE43D
            E0A6E1D44E6CFCE28AF811885548651F89FF52D12290C643F75B8C5F29DBE3A1
            EAB2D06D6DA8964A934120F4ED7E07E35BCA4A818471BF19C03C0C9373C29A32
            60A28C61CC23C8E30BC64ACFD39A73D9FCE8F7AC05C13CBD1AF67577024B0707
            A7D5130966B8CD519D219006F8AEAEEB3E32E1E51465FBCDB4540CDBCD882381
            CC506FF6689816F6F98C011F4ABAAD984973512AE4C640410A2A6B42184CE70B
            CA006118F34502BD0C63376DCC8BC9096699858D40AB8B72267395DBDE152410
            5AAE3BE3D9792CECEBEE04960D0E4E1D49247650D68D950DFB7C5601E377F474
            9C82FBB128EC93892A624720956271064EBAD1A3211FF6F9AC02D673EC8F85F2
            77FD11680CC4ECAE44BDCE6AF5EF1B6BB16D16D2A9307960679CC35D71CBC6AA
            150A7AB450536B7626A4E281ABB8DB68C5B4B23527B78565B97612C3C562D2B7
            E9D1CCC4722967D2D4E929B626D0FA17DAF316255BCC92EC56C48F404AA52C16
            6806877751F6A18BD23570D7B2BF32E6DCA834060A645F98B146E5D37F51E154
            EC33AB684F2C16176762E8C6C21CB2350077A3543F706981DCA729A8A8D475C9
            98116D33A8964AD38338DD9ECA8AA146E95D26A15F0002D93BD52312FBCD204A
            376C5CC043370D04F25D6C077655B6023B4AD740ABE3482C944767221278AB58
            57D62CCF5A20ACE0672651A763470C5A9E6C8CF9056ED6E289164B860D100837
            2A2761FC9B72AB87F50816ACB9F8FC2316ADE5615FB76B60333809EF3203E82C
            D4742997DF0C68015E8DFBB133EE85B396017147946ED8B850B30DA3BE656CF6
            46D408842F3DEB1EF68952E0AD5828F4F5694DA913D6CFD00DD3E9B45EEEAEAF
            C6D8C324124FA7D3E958A545E2999B1504D1BFAFDC5A702F1AADF7509E7725E6
            A8EB09A456AD7A666484091E740F32A5364AEF329F5116FDD2727F24AE4A0AAE
            11A51B366EC00AF92C4C5FBA14B688D835D0EAB81C63AFB5B5740D03D8455306
            9E890761C442F8F25134F2677E22715B269D8E556FEA5AA934CB58D9712E262E
            ABD18BD8F1EE09923D2F9D4A75BD9C09DEE349788FFF5DD974D98DC33E9F5540
            1716E586F6C13DE98998543388D2E23B6E6031A404C2992A7A7226DC35B2F7C0
            8158311F5B9720622711B490A50C0C174156AA77BA08937190BD7CAD7F9BC966
            87C39E8F89000BDD0C2C244CDC2089CC7478A86558AC0E67E036D503DDF32AC5
            225B1A7343D370614509248C7B70DF0FD45ADF90CCE5440F6B3588D2E23B2E54
            0B056A9B533193B5205C10A32467C2C0E71F0D03A1C63C90CEE723B36B092AD4
            69B1D10DC3C530DDE153E08EFA048CA3B19B1B0C7B3E2602CC1DE7EA07183FC3
            789B72D8DA16CFF6595CB4304785B0AFDB356AE5F23458763BE37A199B7349CC
            CD82D983FBE0C5B9AE3F978B95D5DC29C48E40869956090231569BC8758F8689
            8284710B5E8A3DF152DC971E188894AF1F3BBEACB6C275CCF4D9A2C387A735F6
            7B8C5D700E2F2423649DAD0BB4DE70CEDFC109EFAB6CEF0A57EF0D33D42ED220
            90643EDFF5DDF3AAE5724EF93EC9836D6D3BBDA1190F183CFF3976A8574D1702
            592D624720045E682E7E7B2B2BD31196CED39AF008FB3C1BDFBF233D6346B408
            A450605FF12D839A06971DF6D604C64176C0F1EF8E53A7376C5A283DFE15F693
            506E5D2D745B5D0202391404F254D8D7ED12C3A592F68DE17BCC8D20D5A3A354
            14DC00D3F277C74B72417F0FA4553783B812083336F8E0D17FBAA69D0B17A8C6
            AE614A07AF958D8176C22270753262226C4B972CD1BED6699348B092DF754078
            75A0EB6A6710C825A9184964BFF1DA6B7AC5D4A91F1F752F9180DD817EF62B15
            63685A3F968E11C94E14352BB5B39DB14584CC108CA2302AC51719933AA117D2
            AA9B415C0984EA998D1E0DAB4A6CF3A5639096F2035CB0A8B1C30CA49CEA8CBB
            6B91B6AE8EF39311347B471BF9781EEB19280EC86CAC4EC690B8C33E14E39854
            2E179B177278F162CFEFEBDB46D916BDEC1BE1EABDA15BEF261C671710C8A3E9
            2EED8487F75703B34020DB1BEBBE72E9166C052565ABD18F0081C4B21D816B44
            F1A6AD13352B70B76A8F06BE7C240E5A008F058381485A28EF52B6DB1835FF5D
            2E983C0712C871F8322F15C1AA6BBEBCCA765CFB05C62795FB3E0C63C11DF6AF
            31E6606E62D36BBACA3E2B9EC739A366D31795DBDDF2C358B0765089C4BDA954
            2A3671A2F1A26A7BA1E7B47D1F7F880BDC4E45CF0DDD0009E49738DFA340200B
            C33E9928229E04623B13D27DC5459092D0DCD952C1D4F61937E621DCF485DA98
            15D8C9F181DD027FC678C99795B5445C5E37D355E781E04E4AE7F3915C244122
            ECFD4CF2A58C4427F5C4E8B66AF407898D8F9FD5FC7886B6C2F3C4B81B13375C
            922E05397F84E35D8745AB6B086459A1A0EB7817F15EE4716D1FC40BF81FC64A
            EB501921AAEB1037A4E78DC60C7DFFC5B82928740251BD716B0508640AEEE497
            947587D04545E260D5E89D9E52CFE89191B2EF7975DCF83A7672FEA82AAD319F
            C3A0FC0925B95DBAB22ACA12C889209048EE5A4020BCFEED95953679BBEA5C30
            9D0442CB7017ADF54DC9182D90955269331008EB1518F075153BE27C2CC0D81F
            5F7E9BEEA2DA03581E7DB8E703C6BE7F5F50361B9041F428C63E1AA00BFA42AC
            1B07612C480D0CC4E679ED14624920C102485F34AB58B9CBA70CF6689FF1FE74
            7A345BA23638A89333669831FFE69DF8612F6DF58C5C4A47B3DE81C1D6C3B0CB
            7E2DECB95AC3FCF1BED37DD59036E9542A347DFA0B300EC6BDF8759C947903AB
            8DF3F53FCA6DF2C18B86D21E5A9F9BCE664357746E076A95CA6453AF33F18585
            BFACDD6237516E5C987915D53588E4CDB58504420BE4F5D498F5446011D59BB7
            56544B25EE9837C28DA5F9CB264EEC33BED68075A558A4DF75276503EF1B393C
            3DEEB22FC56E7597643E1F490221B0203280CE1DF557956D36D509F005A45576
            0ABE9C0C02A9843D0FE34550354DA975B61170E9B3E733731C33BE52D96C29EC
            EB6E0555AB5BC767EB9DCA92C67618549160D16094EAB7C682EFEFD896D45761
            9DB9351581F60C51442C098418D5D1C18284976C5C667E20E5C1B809A5A3D99A
            D4A5AAEACD20901F80409E0B7B9ED6321F7CB1A98DC5AAF44E66C130B1E17C76
            95C4BD7B25EC79182F4AA5D2E48431ACE2A7DBD4A5054B11CE63303FA7617E22
            19435B1702D5035A69DCA4B0091765F03FA46C124B273B0F4E04B48ED997FE05
            8C7B95F56AB0253535ED3ADA923A4E882D814C14C16E887DD45944C7AC2C5704
            C207910FE08FF1D0DD1BF675AF653E48C0F4E7EFA16C5656A7D2791998BC8499
            2DF87C222E816210C854100803E8472AB7162C13424EC638228E7226B562B1CF
            58B9175A1C7493B2C683EE2A124A945A5037C0E78FD992ACFC7F4059E26063AF
            E7F9E722A2B876F40C81105834D9D695228C1F7478ED34811FC4D80756C80DC9
            08E961AD32177C9919FF606AEA27942DB6EC0446F5C24020DCC9DF1F97824258
            BC5395314CE1A50C0C3720AE9E9F46AAF3AE71D30C234020DC117C455171C0CE
            13ADB5A81207C99A2EC38794258EBB309EC52809718C0FBD4620EC1F72BAB232
            1E2E8BC128C2761008E4F72090C8068AF1B273677880B189059DD222E2FCDCA9
            48B05ADF9ECC66233B3F6311A48E33738895D3DC88B85A144920D7510E2795CF
            2F08FBBA270ACCD386C6BA46196FEC546C6DA260112B0B8DF99E327B93C4F104
            4601C4118B0D4D54D0330452647F70DFDF803A43CAC6425C36067A4673A131E6
            8A64445ADBAE0EC16E718EB20ABDACD6EFD4F3F0B462305AEBEB618144AE5A7F
            758005C2B9F914EE291B99D1AFEF2AFD9484CA458D29D60FC4CDF75E2B14D633
            5A53B598EAC503619FCF2AE0B3C63AADC731EE50769E99563E988A51466094D0
            330452E10260CCFADA66D1ECA8DC66D22CC471F6F68CB9687A8409248883904C
            5920E732B16055F0259E33E2FBBFCD0D0CC4E6C50D5CA094336115B5AB98112D
            102E6E73316E89DB8EB85A28A49525105A214C7D8EC21AC339653CE94965AD5F
            1207AD8F4598DFAE6FDCE51251B8B91D031EEEF5F070D3B4A6FE8ECBDD11D353
            0FC00A73DAF4886B3E615164860C130BB83876AAA88B299107D77DFFB8ECC040
            6C5E60CCD56C456D245BCBE03A09838D8CFE948C8985D64050A3C5CC3EA688CF
            08F9743897CC6A635C8329B98C7330DEF12A8823B21BBB38A1A708A4522C6682
            5A901F2BDB83D915B8409E8471301ED44877DF0BA4F1B9ABFE8CEA5C6E3E5F5E
            2633EC8FF9898D481D9E9FF5B495CFF9B6729BB5467FFC1E819C496C08962815
            8B5EC216F8B27998CB776C6D20717013B740D98CAAB129B94BE3E6168C327A8A
            40466B418CF901FB4E2B9B6AE80A24900B31F6C1C3BA38ECEB5EC79C501B8CA9
            A9FFAB3A97894552BD14F7619F38D582047DE52985CF4D884B3D2C165BEE5237
            E6F26C3E1F2B0BA43C3898F01289ED944D45A6F47D27D79886A02A898284718B
            B2D61C6B3B2425D7017A8A40864B25CF18F3753C65C72AF704723926776E3297
            7B36ECEB5E1B8202CB5D941557EC5491172D90F920900341204F843D07E305E6
            8ACA07747FB2978ACB6242EE9EF7F58D392393CFC7CA02A90D0EF619CFFBD868
            6F779B26DEA9B81ADF390AAAAE9A925B16E270879E2290952B56E8E5CB96FD23
            AC106A556DEEF0507CE9E76B5BB5FC4832C20F70CD922A0BE4E6A9CEF5A566E0
            FC6A8C833CAD1FEA8F49E3A4C05AA3140E09647D878762611B5D404762F1AB86
            7DDD133A71F69BD1FAA32010A63B7F5AB98FAB8D4DC925713001814ACFC5B825
            20C4113D4520C3958AE7D7EB9454A079FD2187D7CF07F75A455555631E4A47AC
            33E15860C7E861C7C8179E3189F774E8B0248C9B31F97B7A9EF7C0F44C26B2F3
            331695528916DA0FB45575A605EBEAF9A1054219F14361A12D0AFBBA2782AACD
            76A4DE158527996CE0CA2DDA48C9651AEEEDC1607AAEA4E476103D452041F535
            B38D68197C56B90B84D2177B375EA49FE0CB03912710ADDFA53CEF38655FF84E
            3C139C9F0771A09DFBFAFAEE9E9A4AC5C20201817037FD9F2090C3F0B9A17237
            57B4407E43371008E485B0AF7BA2C07B46EB9E5235ACDC6F378130259715FAAC
            256AD47234527263152FEA06F41A81B095E6FB6015D0DFCFE6522EB38E9E6167
            B9445FDF9FA7279391CDFAA8140A24D5CD302F6CC3EBBAC0B201CE078526D958
            EAFAB0E760BC0836205431381563B6C343D1057A31C66120ABA792316B641448
            DF33359CD96AED22106EC2A84ECCB806E31B0C9033DEC18483E59259150E7A8A
            40083CDCEF50B6488B32E6D31C1EEA35F6B6C6045F9A8CB0DE535060B991B6A9
            CDCCDFEF84A4095FF617959547BF382E41CED1D6B65A7F1883F1A20F383C14E7
            E30FB82F7BE3BE3C1E553DB53561B85C4EFABECF3A103E53AD66AB3552726989
            AD9A92BB4C88235CF4228130F84917C43795BBACA346DF0BEE20CFC60210F562
            4206CF293DC1EAE14EE4EE373AEF1D8EC5F88254361BE9F96920E8E7CD8E7A47
            285B37E332C388856F3BE1F979287604522AA57C63A8F640858366F5B01A2AB9
            8D945CB642664AEE0265537285382280DE23103CDC8A0AB4C6309BC69505D220
            9093B0009C8A0520D2C572209024CEF33B466BCABCB08783EBE782F343F96C12
            C8AF4020B5B0E7603CA8D84666EFC35CED83CF7F556E5DA074F1FD000BE54D61
            5FF744512B95D2C698FFC657BA4527BA21E1B3C1945CAAE436E4D5EF0AE6A312
            176BB557D07304522E95A67934AD6D1CC4656BD2212C3427E26D383595CF2F09
            FBBAD7865AA130090BF9378CAD0561F7B84EE4EEB3C0722EE6E87C106CA4ABF5
            1BA0BB0FE7CBE2382E8C7481BAAC9B795D59A1CBDFC66DD1C48684F3F29FCA36
            6FA3E2F378D7195AA2DC783DA22C7150B78AFA552549C98D267A8F40F0707B36
            B84737D62C8787E2A2783276F5C7A7B3D9D7C3BEEEB59E68B1A8411E9F36B6F6
            E0DDAA330442BFF641DAF7E725070662A34B542B16DF666C4F90FF506E0539B9
            E93806CFCF89787EC63D3F4C1409DBBD532D1468997D43D9C48CF154A3337B8A
            1B8A464A2E33AB98923B846B1957C7514138E83902C1C33D1D0F36FB5FB091D2
            160E0FC507FF97CAF3F64B6532912690D1792916DF8B0F165852AABC13CF050B
            E48E872578642A2616C8E8495BB5593E3B6C98E4D20229813C2EC0E721209075
            CAE104CACA74CF3235BD18E6C25B65669FD6EC9D728C5A3B81B05E836D7B6965
            345272697D2C9694DC78A0E708043BC829C6FAAFE9C77E9FC339E02EF02ABC48
            3F4A65B32F877DDDEB42A558DC4CDB024BBEF89DB040A8927A3A8E79743246AD
            5B314F53B4957EE1F3E3D205BA1404721D3E0F0081FC654D7F2968D5CC0A796E
            86D801908587B76301AE843547356BD1B295ED1918DC98ACFA8ED11DC5FBFF8C
            B2F18D864AEEC254C4D5AB057F8B9E2390AA2D06FB1C76BEDC453215D3553121
            FDD6DC51B1D6E1B1B0AF7B6D182A9534B6AF9B683B27F45D77A216840BC83C3C
            802726232E38391665108867EB65A8F5E4D205CADDF9632C26F43CEFCAFE747A
            54138B2E2A35658A4A8C8C78F57A9D29D7B395B51AD97F9CF186F95AEB7392E3
            B05A5C6169A1A0EB2C4EB5F5323CAFC63AC3778209258D945CD67230C38A829A
            92921B43F42281B0EEE1A3CAFAFB2967E26AB7CD5D16D30E77C35B717B3AE22F
            0716A64D94ED82F77FCAAD6FBF01BAAD4EC0E41FD31F230BA45C284CC302FD15
            BC38EC4CE8524F8DCF0BE7E5B72091D3F1CC2EE0CB6A8CF194E751559AE9E8DC
            00B19F3D77FBB3957D96E7E1EFD375B418966F28CFDCF0D090F6B5DE02E7C138
            23930D78EABCDFACFD59352577588823BEE8390221826242F646DFCEE11C70B7
            75BFB19946D7A5F2F9480703AB85C20678E14920DF559DE9654D57C5A99E3107
            F5E7F3A5B0AF7FBC082C902F29DB306975EE9976829B1006937FA76C4A2BD35B
            691D92ECB755760344D75526380F3E63E7E199DB3B1DA25557830562B426B932
            0B8BF1464A8F3CA8ACAB8AF52DAC26AFC62DBB4CF056F42481540A850DB18BA4
            F6131BDFB86C0CF4A8B2BDD1FF908AB82C3708240B0261653883C32EA5CA1BE0
            8EF45C8C03B1900C867DFDE3052CD804EE27E34473313EA8DCC78B384F8C153C
            AF6CC09971176E80E8AE22718C7D7E472BD841203B83405E0A759E8AC58DF1B1
            BDB27119925F4325B72C29B9DD839E239012CC6B4FEBF54120AC92FDBE72DB18
            6801C65E98E42B92110F0E8254A7624EA8324B2BA413722665EC52CFC6E7D151
            4F731E8B5AA90483D27C4CD90C235A002E372004DD3BCC482291D002A17B91D9
            56AB9349E7C2CC5DFE4F311E09D3350402E139BE2F3827C63C2425B70BD17304
            828592828AF41F53A787720B2E77DBDC31EE09C23ABF3FE2BDADAB43435394E7
            91500F713C270DD460F19C8C716C2A938974A1E55B4EBC50D80AE4C7DEE81F57
            9D6B986482B1B6E3718166F11DEB2F6E0BD34514084F524871A51047F7A2E708
            84A8160A0358B8A8FBC4D6A42E336928D1711808EBD864C47B5B07F531DF5296
            403AA187458BEC649D481C924CA7232DF5B22A6A43439B1ACF63CAF3BFA8CE11
            C87840C2608CE120DCCB1B52D9AC2CDC02A7E84902A9148B7403EC14E4F3BB5C
            2CE972602EFC5CECC222BD48D68AC5E9D8DE9240286732BB1387C4380BE47A20
            C8353641F4D1131F1ADA0C04D2A846EF44CAF344C09A115A20D7E1998BF4A645
            107FF42681944A7D140F545692C225817091BC4859027925ECEB5EEB89168B93
            412014C06376D1A61D3824EB405827705C9C82E804ACB5CD03990E12AECB185A
            3360AAEC1CEDFB572507068440044ED19304325A8C65BBA59DA26C4AA42B50C3
            E8128CC33CA59EEA8F70BEFB6881A531DC51B393DCDB3A70485A64472ACF9B97
            CA64226D9DAD0A10C8262010BAFABEAEDCF69469064378B8F7D0F5FA05FD3366
            443AEE26883F7A92402A4B96783A91F8181601EE80B7767828BEC0F3B1301FEC
            19F368FFC04064F3DE2B95CA242C3AAC6F6081E5C69D38A4625F0DCF3B0104B2
            34ECEB9F086AA5D22C630C3BEED1027129E9DE0C2ADAF62B392EEA997F82F8A3
            3709C47696DB566BCD45E0130EE7818471230864578C47521126906AB93C45F9
            3E83C2472A5B67E01A745B1D83FB70522A9B8D8D9822315C2EAFE7FB3E2D10BA
            41A31603A13577064CDDC3D2B95CAC624B82F8A13709C4AA857E50B3C8CF8A07
            F6B5FA3BD78287317678A35EBF7760C68C28BBB02683E4283B413D2CF60471FD
            6CB0EFC3C19890F3B1D0C58A4060816C0A0B84CF0E35B1226781609C8F793D1C
            F3FA5AD82723E86EF4248110D56291AE2B2E025F56365FDD155844F523BCD0D7
            44590F2B88817C4D590B6476070EB91093B187AFF5C5D988A738AF0ACCD5E694
            A157F6D9891A81D01DF82B8C2353B9DCF3619F8CA0BBD1CB04C24CA386D89BCB
            D6B6CCBEDA0F0BCE85A97C7E65D8D7BDC6F9B004C205F178E536B1A0312F94B8
            DFDB687D513A46F50A2B972DD32B962F7F372E805238EC8BEEBA127DC2A78871
            B1A2D48A31CFE1998BECA645107FF432810C284B20F463BBB2401A04720C5EE6
            B3A2DC3829E873F1156565CADFEEF8709C972770BCFD4020F3E354F0365C2A79
            C6984F183B4F54758E522121C1381BFB88FC44D7EBCF2623EC3615C41F3D4B20
            2C26D4562D94DA4F2E5D580B411E27E02D3E339DCF4756B63C20106615D1ADB7
            99E3C3715163C1DB2EBED6B76662442098A7E9C13C5178928AB3517B8738B794
            4AFF412A97FB4BABBF4C20581BA2F6F0770C954261BAD6FA7BCA1613BA942F67
            26CCF1D869CF4B67B391D57C0A5AA2FE8FEA8C94C9A8D43DC64F46B4BE3B1752
            DF8A8962D9B2657A64F9F28D94553060DF944E68864D149C5B4AC0FF24A1F5CD
            D36332B78278A26709A45A2850CEE41B4A6B12C8460E0FC500F13CE37947A433
            99C876DE0B5AFDB21B216B085CEA8311B4386ED2C67017FF4032067EFA72A9E4
            79C6504A9D1DF67EAEAC9062D402E80409843DC6E7E2D9BE3C4EEE4141FCD0CB
            04320D2F189BDD50FBE9DD0E0FC5179A5DE57E8E977951D8D7BDC6F9B0FA60DB
            07F3B19EE3C371516381E51E989CE732F120907E10DED67861FE57D93E3224D9
            28BE3F9CCBA71563345A5F8C676E59D82724E85E44F105E808B06072F7C8CA6B
            2E98EC5BE02A184A02B95ED9DEE8914DABC47C7077FD136577D7038E0FC70AFD
            8B99C61B875A85E1A1A1C9BEE7B1B892CFCBB731DEA3DCD60EB58A978C75CDFE
            16F35B0BFB6404DD8B5E261012C6A794D57E7ABF72DB1BFD0E2AFF2673B9FBC3
            BEEE35A15628A48CD673F09523E9F870AC55382BA8968EB255C6145D364662DB
            D87F5256BEFD7DC19F45F5DDA1754741C5038D3197A5239CF927883FA2FA1238
            47D0598E8B011B037DD4E15C9040D8A381B52037A7F2F948CA990469CDB43ED8
            CDAEDFF1E128B7713408EB947404A5DC83CD0549949A601FC0D84ED998C76C15
            3DF5DD06F89C5595258FBB30CE36BEFF507A6020B2B54782F8A3670984088A09
            E7617CC1E15CD027CD9ED0734158D7A6235A4C88B9609746BAF3E8E3776D81B0
            85ED214AEBB353D96C6404FF0295669227D588491C6C5DFB6165A55D987115B5
            9A0F821B125A19AC37E273768BB21B966752B95CAC442A05F143CF12C8B0B540
            360C7CC5EC83E15214EF29C5BA0163AE86051249D90E2C9E5C34591C47497797
            7531C4B3413F0D66094542721CD7CF98C68618DB2A2BB0F9F7CAD67930C53B8A
            D956DC983040CE1812F5D6D80B9DED6C19402F87D90F5DD03BE85902A9150ABC
            F60D8DD674DBFC50B975DBF025DF2D51AF5F323D823D1ACA43435A7BDEE6DA12
            0833D35C0788FF0202F929E6FED67426530FFBFA2BB03C70ED3395254F66586D
            85910FE6810B71D4DE135A6DB4E21EC3B80DE3768C27308A208ED0E753D03B88
            DA8BD151540B85F583DEE83B2ABB60B8027DFEFB4D1A19396DEACC9991736155
            608DC13ADA46DB84022616B824903AE6FCCFF8DC1D9F0FA43299D077CA20104F
            5BD2A055443997A8C63968BD0E294B16240DBAAB482243208EC83D5782EE474F
            1308160EFAB577C62490445CD63E3095F2046DCC61C97C3E727E6910A98635F0
            77DA3693A20BC7A5AF7F348557B1D04DA9E7A3E06A09621F4CA8603B5FA6EA46
            CD654572A00C0EDD537453D15D45999285421C8230D1EB04425FFF0F31097B2B
            B704C2EC98F3300EC20B1F39391310C82458039F55D602618D83CBE782737126
            C661988BA1B0AFBD815AB1B8A5B13A60B440A6877D3E019892CB2C35D60F3130
            4E8B8381F2573177918CA5097A0B3D4D20D552C90BFA801FABDCEA3FD102F9AD
            B28BE60B615FF75B4E6E7070AA4924BEA9AC55C0CC3497CFC522583B4781B0CE
            486732912972C3B3B0019E8543F195F31036813452721760DC87F1E7E0F3258C
            6551B0DA0402A2A709A452AD7ABA5EFF14168ED395CDB87105063D2FC1710EC3
            843F1935EDA7DA9225FDA6AFEF07CAA6F1BA8C05F1BA9F0381ECA91289DFA753
            A9C82414C00A4B81D4D88DF1FF2977FD61D685464A2E7BA58C4DC9A5AB2F3264
            2B1034D0DB0452A92440201FC1D71395F5FDBB9A0FBA22FEA08DD9C753EA89E9
            112B26AC150A03583CE7181B0B4A393C1477D6F7E258BBAABEBE3B53C96464E6
            611856989F48FC0C5FF751EEEB6056058995C4C136BF8C6D9038EE504C77C663
            0AF288CC3C090463D1DB04522A25B0A87F48D95A10769773153CE602713B8EF5
            A3C9C63C327960205A1648B1C80E848718AA13BBCD4062C0F70AC31A9044E219
            5820919987DAD050BFF13CD6031DA4DCAB1137C0EBA7754A9566124723259775
            4392922B883C7A9A40AAB616E4FDD8113378CA6A7497D9374CBDDC018BC26D61
            5FF75BE640EBF72A2BE3FE39E5B6452BDD306780408E4C67B39192B60FD488BF
            AE3AD3508B60107C50D9DE1D240D3E178F2A9B922B12EC8258A0A70984A8150A
            EFC482C6264AEC07EE6AF7CD9DE6028C5D31AE88924B02D6479FB15A4F2C2274
            E9C623E8A23914C73B3F9DCB55C3BEF6B1A8140A5340A45FD3B616E4DD0EE781
            5618B3CF9E51D64D457715AD8FC5782E2213131208C6839E27904003EA4865AB
            905D120845EE0EC7849F978C500AE670A934D53786D5D7CC40DAD4E1A138078F
            60EC832FD7A523B65856ACF2EE17B5EDC8B8B56AFFBB41AB8205A58C6B50EC90
            C4F120C66B92922B882B7A9E406AA552CA18C31808ABD15DB9B0B87832B3E638
            4CF83920904AD8D73DE6FA590ACECCA3DD95312E33B0B8F3BE56D94CAF87A396
            8A5A2D97598DFF0F1827295B54D8AE7783710CDEEF05CAF62A27718CA6E4620E
            A4D99320D6E8790219AE54A6FBF53A25CC997DE3520F8B3EFF6395D667A6B2D9
            42D8D7DD40B554DA108BE65C7CFD2FE5B6FE818B288B290FC7C2B930ECEB5EED
            5C148B2CA26491E3DFB7E1D7D14DC9984F232597B51CF760B00E68386A042A10
            340321907239697CFFBF8DCDBE99E9F0505C4C8E379E777C3A93894405F68A62
            51BFC100BA310CA0B361922B0DAC86057634C62FA358D3308CB9C08AFF767C3D
            4E59399366DF0D12072D8B57311E52D6E2A0CB8AAEAB6A94E25F0241ABE87902
            A9954AFD5840BF6EAC0ED2DB1D1E6A84FD2F30F649458440960F0DF58D24129F
            37C61CA6AC8489CBAE8C74DBECA73DEFA6642613B92CA3E1428104B219EE0F5D
            6CB4C6262AEFDF48C9A54A2EB3A9A857353625578843D07510022916A7E0CDFF
            AAB2D93754647535273E16A72BF1B9732A9B8D441F705C3B0B31BEA718FF506A
            7D87D7CE1DF91538D681E95CEEA9B0AF7B4DA8160A9B8E16392AB5BD9A583121
            83E0D43863AA36D371491E4CCF95945C4157A3E709048B06B36FBEA06C2A2FEB
            215CEEC26FC2F809169527C2BEEEA5D5AAAED7EB1B195A05C67C5BB9ADBE5E8C
            E39CA46C0BDB62D8D7BE26041979BB61FC1F466E1CFF8499648C6791149992DB
            50C95D2C2AB9825E80108895F266D094D937EF57EE08843BD1DB286782CF3BC3
            D6C31AAE5412BEEF7F381010FCA4721BFF7894D687D67A3EACAFC82EACD55229
            83F9A035C68CBCB51108EF2589F039F5B729B90B252557D04BE87902593A34A4
            EB9EC79ED76728DBCAD49D0B0BC4010239D0687D63D83215B54A659AA9D7295D
            42D7DD160EAF9B0BEA1F300E8405F2280824B2B1006C265807B493B2F1B0CC6A
            FECAD8945C6654355472193017955C41CF41080404E26BBD1116754ABA7F4DB9
            D5C3A27B838574D7875D4887DD36FB9FFC1C3B6EAAF08EC75DD32C98BE7C2AC6
            3C2CB091922F5915C3C5E224DF169432136B6C465E23259772EAF72B4B1CACE9
            58A0242557D0C3E87902A95917D6DB8C6D2AF55D8C290E0FC71A8039C6F3AE4E
            6732A1B93A960D0E7AF544621B10E721B088D848CA550125175EBA76185FFA63
            D4DD3B4B0B85C99893CF194B20B4CA1A2AB9B4301E56D655C58E808D945C210E
            414FA3E709A4CA7EE04AB1988EC5843BA8D5BB2EDA058AE7EDAA12890B53E974
            68B180E1C1C1E9BEE77D8D29C5F891EE3B575617B3AF2ED75A334DF8896484DD
            57A3F302028125FA6963D5999991B74859ABB19192CB96B22549C915082C7A9E
            40886AB148774583405C1613520B898BE9F16109E7D5AC02312DAE392090EDF1
            3DEBF0704C5766F5FDB951AABE5FCBDCF4C13AFC043613947661561AAD0DA6E5
            365272455E5D201803211035BA7050C2E427D87DB2A190CB5E10249033B0781F
            920E490F0B644977D5C795D5A4FA0735F182B9F1A2AE6D373D260DDC0C028994
            78E26AE7C65AA3B4C8B60589B0AEE331655372A5964320580D844080E1A1A13E
            2C72FF17C8BABB24900AC8E357F83C1404124A31210864001FDF510CA0D375E7
            EE1920599E8F5F7E2CAEF9C5B8C40B4022D4039B0202191679758160ED100201
            EA8F3FAE97ADBFFE97412027E3C78D1D1E8A01D9DF60253DC2F3FDE7931DEE4C
            385C2EB3F683B52EAC75A0DE932BF144BA7AD8EF821A5B974651FB4A2010B40E
            211060E9C2855E7DCA944F284B20D48472352FDCD15E8ADDED81F87C3AD5C162
            C21AE5CA954A19DF67ED07E53AB674789D4B95ADFD6091E2A3123B1008BA1342
            206A54CE842EAC8F68DB958F7101575949CCDEB94E1BB38BD6FAA9FE0EBA75AA
            C5621F0872EB20DBECDF94BBE0794379F7148CB3401E910F9E0B0482E6200402
            544A2512C687B0B0B31F36FB82BB94F5780093FEBD642EF77027AF1104C26241
            16C9ED82F10EE58E24999E7CA3B2647C8768420904DD0B219000D552E9BD816B
            E98BCA6D674216A1EDA43DEF4FC94CA6231608FB7DC3E2F900BEFE08E35F31D2
            0EAF8FB52E67622EE7A5F2F9573B717D0281201C088104C00E9DFDC0D91B9DEE
            1D57D5E85C609F57566BE9779DD89D833C68696C8C1BFD3F4A6B56DAF33A5D59
            1F8CF13075F74810C88D201069D92A107431844002042E1E12C8FF2AB7044239
            1376E6BB000432ECF89A787FD3C698ED344502B5A658E43487D73684FF5CA08D
            390104F252AAC359660281A0B310020950291693988C3D152BB4959AEAF050AF
            281288D6E7A5B2D9B2CB6B0281B040725B651B24D1353743B995ABA742ED2FC0
            1AD7A673B9A52EAF4D2010840F21900065100856D6EFE3EB5CE5560FAB08F238
            12137F46D26173A56AA9D4072B808280FF8DC18651B3955BA5615E0B0B074F54
            9EB7A053F11D8140101E84400260B74EED232EB48C4F6CE4F05054A43DDE687D
            443A9B2D39BA16CA936CA0D869D112C80795755DB9ECF9719FB62AB6D726A570
            5020E809088104A8150AD3B0A8B3C88EB2EE5B3A3C148BEA7E85EDF9AEE95C6E
            B0DDBFBC5A284C81854302A44C3B09912E2CBAB25CDEEBD7317E89039CDAA7D4
            CB5363225B2210085A831048806AA9C45DFB5794AD05A194B7CB58C11F317E9A
            CAE55E68E72F5EBE685162E5A4491B82403EA56CCD0783E6AE5276FF7A5865FB
            811F8F09BBA13F9793CC2B81A047200412A0CA6242633EAD283F6EE54C5C16DA
            B1A3DD6E38DEC3ED923361A5B93666866125BDD6ECACC83EE7EC3AE8AA289260
            653DBBF49D89711E26ECB54E56D70B048270210412A03C34A43DCFA3D0207BA3
            7FC8E1A16881DC0AF2988B85FEF65675A202E29B8AB15190A6FBD5E0FC997195
            70781D248A9AB155E7C7E341BA33EA1D070502417B2104126070C9123DA5AF6F
            337C9D87F1CF0E0FC58597C576FBB34F463A9B6DAA9870B85281C161FA7CDF4F
            6BADDFA17C9F62904CD52579F47760CA78DE8FE2624EC3E7651885B474EA1308
            7A0A422001CAC5A2F6AC943BDB9932F8ECAAD112F10416FB5D412037A4339909
            F79C5881735DE979936175CCF8FFEDDD6B8C5C651DC7F1FF33D35268BBDB6DAB
            809710452248D2C637D66222D444D0A8446314315183F185B7448C31DEC048BC
            11456248F485C1607CE1E5854AD58A8A124BA54AB9562EADA04524D01BED9CD9
            992DBD32C7FFAFCF1E3A8C14769FEED9999DF3FD244FE66C51E6CC949CDF9EF3
            FC9FFFD3C9F3733C402EF0633DB25AE1430B22CBFE7B2D5A962838BEEF3F3C48
            7800D543804C3ABA1B5D9E9F6171A3A58F58B9BFC56B33A94F5BBDBE76BA7BA3
            371B8D705208277742D066502BFD2E44DD83B5C3A01A246AFD4A998FAD9EF9BA
            2C6EF7FA031FB77880B44699FB002A8700E9D2CE325D94B5ADAD16142E2DF1AD
            B4FEE30ABF0BB97E641A8FB0B246A3E6774923F510F4A86DB5DFC19CEFA1A732
            5D95ED96B9CEA39BE66C1EF271838F9FFAD83957761B0430B308902EAD2C1BF3
            8BFA67429E7FDCE22474696F655AB16D76F5C8145A7E4CF8DD915FA117F8DDC6
            69FE17B6D2FFE8028B25BABAEB5099EE6CDC75881E53E9D1D53A3F9F1FFAEB3D
            A34C9C039545807469359B6AA2F8490F102D265C5EE25BE91190F646BFCA0364
            F7F3FE0FB34CADE57537748EC5CDAE141E9AEB50C09559A2FB5CD4BB6B83C5B2
            DD0D3CBA02AA8D00E93259127BA9C5B520A795F856EAC27BA38FAF7B803CF49C
            E7A21D04E3AE8167FA58ED638DC596247ACC56E604FFF1E851DB16FF0FE68610
            C22FFC78C7A2B131C203A83002A44B7BCF9E9AD5EB17FAA1F6463FABC4B752E5
            D5CD3EAEF62BF0ED16427E28CFEDD0912336327F7EDD436CC4FF9926F457F9D0
            AAF2D7F97899C52EC1FDF83B537868C1E05A7FF39F78806CF1F0E0D115507104
            48170F907956ABBDC12FE8DFB1B89EA2ACEF47730977E7797E9DBFC13A7FCFC3
            4FE779F0E305B5D80451771A6B7CBCDE6217DD85259ECB0BD15DC60E1F37F9C1
            8F3CDCEEA9D76A07B9FB0040807469351A75FFED5A8F8BB4B5ED1A2B6F725A17
            DFED7E31BED1C36AAD1F37FD0F4E0EC71E579DE7E3553ED421B8AC962A533D4F
            75D6DDE8F1F663FFE1E6C34F3F9DBD888DA2001801F22C933BF8E9B77F05C845
            56EE5C839A106A7FF43B7D6822FD548B93E30A8ED9ACAC3A1EDD25A95AEC5E1F
            3FF300F9A3A7C6F625636347FA7C5E00060401D26322CBCEF60BE5D57EF8362B
            6F6B5BD16FF19A0B79D2E27E1ACB6C3082A3A089FE7BFC0EE9E7FEFA1B1F3B46
            C6C64EA86F1780E14280F468379B9A83B8C6F25C7B839C340B6FA98BB2FE1EFA
            F9A8AA97024D7747BFF23B8F5F5AADB675747474DA2D57000C3702A4472BCB96
            F897F2553FD462C27E94CBF6931E5B693F0F85C73AFF1E7EED01B2D5C7BE51B6
            A805D08300E9E101B2D8BF94CB2DEE4CB8B0DFE7338B8A09F37F9A2AC3FCEEA3
            56AB3DBC28A1D923806A20407A4CDE815CE687575AB9ED4C068D1E5B293CFEE0
            E3B796E79B47962DDBD7EF930230B808901EED2CD322BE0FFAF882C5F6EEC34E
            771E7A6CB5CDC7EFF3107E17F2FC7E0F90710F105AB403382E02A4870788567B
            2B40AEB0B81A7C98BF2395E4AA33F0161F376978802848F68FB25010C00B18E6
            8B6392C91E5497F8F896C5F621C3FA1D696E43EB4FB4CEE366BFD5F89327C6B6
            B1A54B59E701604A86F5E298AC3D3E5EB74EE7AD16B7B63DA3DFE75312950EAB
            3D891631AA27D7460F906D4BA6D05A1E000A04488F56AB352F743A6FB23CBFCE
            7F7C4DBFCFA7046A8CB8D3C7DF2C4E98EBF5F15C8FAD68CD0E601A08901E7E07
            32DFC3E3221FDFB0B879D3B07C47BAEB5055D5233EFE62313CFEE163EF088FAD
            002418968BE38C69359BF3FC4BB9D803E49BFEE3D936F7BF23DD55A8EF965AA6
            2830FEECE3161FDB3C380EF4FBE400CC5D73FDE238E3C61B8DF9B510DEE587D7
            DADC2EE35570E8CE42BB1F3EEAE32E1F1BFC2F7C532784C746C7C6582008E084
            10203D5A59B6A86B21E1E9FD3E9F445ABF51DC7568C7C33BFD8E6A9385F040CD
            6C671EC281C594E902384104488F892C3BDDAFAC9FF7C30FFB58D2EFF3992685
            82E63AD492E4090F8DFB3C3436590C906DFE0F1B7E7775643193E500660001D2
            657FA331CFAFBEABFC37F4AF58DC4A762E35535428A81D4923282C42B8DB4363
            A369DE23046D5EB59F95E50066120132C9EF3CD44E5DBDAF2EF52BF1A7FCF595
            36582DD69F8FEE3A9EF2F37EC2FF42377B80FCD57FBEC343E491C99624ECE301
            60C611206EA2D1D0264E637EC13DCF7F5BFFA85F7475F7B1A8DFE73505BAEBD0
            BA8E3D3EB6F80FB7F9EB6D9E7A0FFA67D8BB78D9B2C3FD3E4100C3ABF201B2EF
            C927EB79BDBED4C3436B3EDEE301F26EBFF89ED6EFF39A0255588D5B6C82F877
            1FB7E6DA41D06CA707C821E6390094ADD2017270D7AE7947EAF5651E202BFC6A
            7BA1FF915A9868F5F96CEC4498AA5810F8988F3B2C2E0AD4EBE33EF68F101C00
            66492503A49D65FADC0B439EBFD4E2A4B9C2E33C8BEB3E4EE9F7F91D8726C0D5
            AB6ABBC53B8DF53E6EB7B8B27C82E00030DB2A152093C1B1C0E264F90A1F6B7C
            9C6F71C5B94A760771D2BCD8AF63978FFB7CDC6A71AEE35FFA481E1C4C9003E8
            8BCA048887874A72151C0A8B375A0C0E85C8721FF501FC2E8AB25C4D903FE063
            830F555769D7C026FDAB00F4DBA05D344BD18E5556675A086FF7D737FB78ADC5
            30396900BF83A2B26AAFC5B0D05A0E85C7FD161B1F52590560200CDAC5B3141E
            200BFDE5BD1E2097FBEBB93698C1210A07ED10F86F8B6DD6D7FBD86CB125C921
            E639000C9241BC88CEB8A30112C227FCF0B33E06B144B7687AF81F8B13E3AAAC
            D244B9367D3A4070001844D508906653F31F97599E7FCD5F4F1DA0CF5D94E4FE
            D7E2EE80EB275F55A24B492E8081362817D252B5C7C76BD6E95CEC87DFF3F1F2
            7E9F8FC5925C05477749AE16033EEAE3292AAB00CC05950890710F905AA7A3AA
            2BED73DECF6D6A8B36EB2AC9D5DC864A723549AE390F4A7201CC299508905696
            D5FD83AEF6C36F5B5C3038DB9FBB28C9DD6DEA5375AC24577B7564040780B9A8
            1201D256A7DD3C5F65215C65B18CB73E4B6FADE0D0CE7F0D1F5B2D2E00547868
            5D4783925C00735925026422AE405FE957734DA2BFC5CAEF75556C27AB925CAD
            18D763AAF5165792EF0E211C66474000735D250244FC2E440B09AFF13B112D26
            5C50E25B29385A167B54A92477BD4D96E4FA977D902EB9008645650264A2D178
            711EC2B57EF87E1FF34A788B622BD9EE2EB92AC9A54B2E80A1549D00D9B36734
            AFD7BF6C71B7C1997C8475743740D31EE46677DBB12EB95ADBB1CF83836D6401
            0CA5CA0448BBD15862217CCC0FBFE4637406FE954549AE568B1725B96A3F5294
            E4121C00865A6502A4E5011242F8901F7ED1C74B4EE05FD55D925B74C9D55049
            6E8B2EB900AAA24A01B2C8EF403EE01FF873A6CEBCD3D75B925B04C796C93F3B
            C23C07802AA94E80349B9AF7B834E4F995FE7AD6343E7B51929BF978D86249AE
            1E57A924575D720F131C00AAA83201D26E36EB96E7DAF3FCBB36F500D1423F95
            E4AA4BAE7A55ADB73851AE562407090E005556990099181F0F79A7B3CA0FAFB7
            B813E1F3294A725549B5C96249EE5D162BAD28C90500AB5080ECCBB2E057FD73
            F3D891F782E37CF6A224576B3774A7A1E050801425B90407004CAA4C804C341A
            B55CFBA187A07626EFB4672F2654C9ED7E1F3B7DDC6BC7BAE46ED3FF95925C00
            F87F95099076A3A1CFFA6A0F1095F15EE2E3148BC1A1925C4D866B52BCE892AB
            C9F271BAE402C0F1552640A4DD6CBEC25FAEB03C7F9FC5D5E87B2D96E12A349E
            29C9652D0700BCB0AA05C8720F0FB5337987C5DD00BB4B72F71825B9003065D5
            0A902C3BD962334595F1AAE1A15A9068DEE310C10100D353B500D1E7D59EE8DA
            504A6B390E101C0090A652012247772734CB090E003831950B1000C0CC204000
            0049081000401202040090840001002421400000490810004012020400908400
            0100242140000049081000401202040090840001002421400000490810004012
            0204009084000100242140000049081000401202040090840001002421400000
            4908100040120204009084000100242140000049081000401202040090840001
            0024214000004908100040120204009084000100242140000049081000401202
            0400908400010024214000004908100040120204009084000100242140000049
            0810004012020400908400010024214000004908100040120204009084000100
            2421400000490810004012020400908400010024214000004908100040120204
            0090840001002421400000490810004012020400908400010024214000004908
            10004092FF01E50164F84DF4A3690000000049454E44AE426082}
          mmHeight = 69850
          mmLeft = 45244
          mmTop = 11642
          mmWidth = 116417
          BandType = 10
          LayerName = PageLayer1
        end
        object ppImage2: TppImage
          DesignLayer = ppDesignLayer2
          UserName = 'Image2'
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
          mmLeft = 847
          mmTop = 846
          mmWidth = 42333
          BandType = 10
          LayerName = PageLayer1
        end
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Gross Weight'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 164040
        mmTop = 91043
        mmWidth = 26194
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Signed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 87313
        mmTop = 168805
        mmWidth = 14288
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 105040
        mmTop = 169598
        mmWidth = 76729
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'FOR DHL CYPRUS LTD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 105040
        mmTop = 180182
        mmWidth = 46567
        BandType = 10
        LayerName = PageLayer1
      end
      object DoRGN: TppRegion
        DesignLayer = ppDesignLayer2
        UserName = 'DoRGN'
        Caption = 'DoRGN'
        mmHeight = 28840
        mmLeft = 112713
        mmTop = 211403
        mmWidth = 70644
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label27'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'DATE : ......................................................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 5322
          mmLeft = 115095
          mmTop = 214353
          mmWidth = 66219
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label29'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'COMPANY NAME : .................................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 5323
          mmLeft = 115095
          mmTop = 220427
          mmWidth = 66219
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel30: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label30'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'NAME : .......................................................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 5322
          mmLeft = 115095
          mmTop = 226629
          mmWidth = 66219
          BandType = 10
          LayerName = PageLayer1
        end
        object ppLabel31: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label31'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'SIGNATURE : ............................................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 5322
          mmLeft = 115095
          mmTop = 232904
          mmWidth = 66219
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
    SQL.Strings = (
      'Select * from Mawb where Reference_Number = :ReferenceNumber')
    Active = True
    Left = 32
    Top = 152
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
      Size = 400
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
  end
  object MawbPL: TppDBPipeline
    DataSource = MawbSRC
    UserName = 'MawbPL'
    Left = 200
    Top = 152
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
      FieldLength = 400
      DisplayWidth = 400
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
  end
  object FindPrinterSQL: TIBCQuery
    SQL.Strings = (
      'Select * from Printers where'
      'Report_id = :TheReport;')
    UniDirectional = True
    Left = 544
    Top = 72
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
  object CustomerSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO CUSTOMER'
      
        '  (CODE, NAME, FK_DISTRICT_CODE, COMPANY_OR_PERSON, VAT_ID, ADDR' +
        'ESS1, ADDRESS2, ADDRESS3, COMPANY_ID, RECEIPIENT_ID, OTHER_ID, F' +
        'AX2, TEL_NO1, TEL_NO2, FAX1, COMMENTS, AUTHORIZATION_NUMBER, QUA' +
        'RANTEE_NUMBER, IMPORTER, EXPORTER, RESELLER, CUSTOM_DEALER_NUMBE' +
        'R, FK_OCCUPATION_CODE, FK_CUSTOMER_CATEGORY_CODE, AUTHORITY_TO_A' +
        'GENT, ACCOUNT_NUMBER, EMAIL_TO_NOTIFY, MOBILE_TO_NOTIFY, IS_NOTI' +
        'FY_MOBILE, IS_NOTIFY_EMAIL, IS_RECEIVE_NOTIFICATION, AUTHORITY_T' +
        'O_DHL, IS_CREDIT, ADDRESS_POST_CODE, ADDRESS_CITY, ADDRESS_COUNT' +
        'RY)'
      'VALUES'
      
        '  (:CODE, :NAME, :FK_DISTRICT_CODE, :COMPANY_OR_PERSON, :VAT_ID,' +
        ' :ADDRESS1, :ADDRESS2, :ADDRESS3, :COMPANY_ID, :RECEIPIENT_ID, :' +
        'OTHER_ID, :FAX2, :TEL_NO1, :TEL_NO2, :FAX1, :COMMENTS, :AUTHORIZ' +
        'ATION_NUMBER, :QUARANTEE_NUMBER, :IMPORTER, :EXPORTER, :RESELLER' +
        ', :CUSTOM_DEALER_NUMBER, :FK_OCCUPATION_CODE, :FK_CUSTOMER_CATEG' +
        'ORY_CODE, :AUTHORITY_TO_AGENT, :ACCOUNT_NUMBER, :EMAIL_TO_NOTIFY' +
        ', :MOBILE_TO_NOTIFY, :IS_NOTIFY_MOBILE, :IS_NOTIFY_EMAIL, :IS_RE' +
        'CEIVE_NOTIFICATION, :AUTHORITY_TO_DHL, :IS_CREDIT, :ADDRESS_POST' +
        '_CODE, :ADDRESS_CITY, :ADDRESS_COUNTRY)')
    SQLDelete.Strings = (
      'DELETE FROM CUSTOMER'
      'WHERE'
      '  CODE = :Old_CODE')
    SQLUpdate.Strings = (
      'UPDATE CUSTOMER'
      'SET'
      
        '  CODE = :CODE, NAME = :NAME, FK_DISTRICT_CODE = :FK_DISTRICT_CO' +
        'DE, COMPANY_OR_PERSON = :COMPANY_OR_PERSON, VAT_ID = :VAT_ID, AD' +
        'DRESS1 = :ADDRESS1, ADDRESS2 = :ADDRESS2, ADDRESS3 = :ADDRESS3, ' +
        'COMPANY_ID = :COMPANY_ID, RECEIPIENT_ID = :RECEIPIENT_ID, OTHER_' +
        'ID = :OTHER_ID, FAX2 = :FAX2, TEL_NO1 = :TEL_NO1, TEL_NO2 = :TEL' +
        '_NO2, FAX1 = :FAX1, COMMENTS = :COMMENTS, AUTHORIZATION_NUMBER =' +
        ' :AUTHORIZATION_NUMBER, QUARANTEE_NUMBER = :QUARANTEE_NUMBER, IM' +
        'PORTER = :IMPORTER, EXPORTER = :EXPORTER, RESELLER = :RESELLER, ' +
        'CUSTOM_DEALER_NUMBER = :CUSTOM_DEALER_NUMBER, FK_OCCUPATION_CODE' +
        ' = :FK_OCCUPATION_CODE, FK_CUSTOMER_CATEGORY_CODE = :FK_CUSTOMER' +
        '_CATEGORY_CODE, AUTHORITY_TO_AGENT = :AUTHORITY_TO_AGENT, ACCOUN' +
        'T_NUMBER = :ACCOUNT_NUMBER, EMAIL_TO_NOTIFY = :EMAIL_TO_NOTIFY, ' +
        'MOBILE_TO_NOTIFY = :MOBILE_TO_NOTIFY, IS_NOTIFY_MOBILE = :IS_NOT' +
        'IFY_MOBILE, IS_NOTIFY_EMAIL = :IS_NOTIFY_EMAIL, IS_RECEIVE_NOTIF' +
        'ICATION = :IS_RECEIVE_NOTIFICATION, AUTHORITY_TO_DHL = :AUTHORIT' +
        'Y_TO_DHL, IS_CREDIT = :IS_CREDIT, ADDRESS_POST_CODE = :ADDRESS_P' +
        'OST_CODE, ADDRESS_CITY = :ADDRESS_CITY, ADDRESS_COUNTRY = :ADDRE' +
        'SS_COUNTRY'
      'WHERE'
      '  CODE = :Old_CODE')
    SQLRefresh.Strings = (
      
        'SELECT CODE, NAME, FK_DISTRICT_CODE, COMPANY_OR_PERSON, VAT_ID, ' +
        'ADDRESS1, ADDRESS2, ADDRESS3, COMPANY_ID, RECEIPIENT_ID, OTHER_I' +
        'D, FAX2, TEL_NO1, TEL_NO2, FAX1, COMMENTS, AUTHORIZATION_NUMBER,' +
        ' QUARANTEE_NUMBER, IMPORTER, EXPORTER, RESELLER, CUSTOM_DEALER_N' +
        'UMBER, FK_OCCUPATION_CODE, FK_CUSTOMER_CATEGORY_CODE, AUTHORITY_' +
        'TO_AGENT, ACCOUNT_NUMBER, EMAIL_TO_NOTIFY, MOBILE_TO_NOTIFY, IS_' +
        'NOTIFY_MOBILE, IS_NOTIFY_EMAIL, IS_RECEIVE_NOTIFICATION, AUTHORI' +
        'TY_TO_DHL, IS_CREDIT, ADDRESS_POST_CODE, ADDRESS_CITY, ADDRESS_C' +
        'OUNTRY FROM CUSTOMER'
      'WHERE'
      '  CODE = :CODE')
    SQLLock.Strings = (
      'SELECT NULL FROM CUSTOMER'
      'WHERE'
      'CODE = :Old_CODE'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CUSTOMER'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    SQL.Strings = (
      'Select * from Customer where Code= :CustomerCode')
    Active = True
    Left = 24
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CustomerCode'
        Value = nil
      end>
    object CustomerSQLCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 10
    end
    object CustomerSQLVAT_ID: TStringField
      FieldName = 'VAT_ID'
      Size = 10
    end
  end
  object CustomerSRC: TIBCDataSource
    DataSet = CustomerSQL
    Left = 112
    Top = 224
  end
  object CustomerPL: TppDBPipeline
    DataSource = CustomerSRC
    UserName = 'CustomerPL'
    Left = 224
    Top = 232
    object CustomerPLppField1: TppField
      FieldAlias = 'COMPANY_ID'
      FieldName = 'COMPANY_ID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object CustomerPLppField2: TppField
      FieldAlias = 'VAT_ID'
      FieldName = 'VAT_ID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
  end
  object MawbSRC: TIBCDataSource
    DataSet = MawbSQL
    Left = 112
    Top = 152
  end
  object FindPartialHawbSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    SQL.Strings = (
      'Select * from Hawb_partial where SERIAL_NUMBER = :PartialSerial;'
      ' ')
    Left = 48
    Top = 88
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
  object HawbSQL: TIBCQuery
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
        'EIGHT_GROSS, PROCEDURE_CODE, IOSS, DUTY_BILLING_ACCOUNT)'
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
        'S, :DUTY_BILLING_ACCOUNT)')
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
        ', DUTY_BILLING_ACCOUNT = :DUTY_BILLING_ACCOUNT'
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
        'R, WEIGHT_GROSS, PROCEDURE_CODE, IOSS, DUTY_BILLING_ACCOUNT FROM' +
        ' HAWB'
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
    SQL.Strings = (
      'Select ha.*, co.name as CountryName'
      'from Hawb ha'
      'left outer join country co'
      'on ha.fk_country_origin=co.number'
      'where serial_number = :hawbSerial')
    Active = True
    Left = 40
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hawbSerial'
        Value = nil
      end>
    object HawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
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
    object HawbSQLCOUNTRYNAME: TStringField
      FieldName = 'COUNTRYNAME'
      ReadOnly = True
      Size = 40
    end
    object HawbSQLWEIGHT_GROSS: TFloatField
      FieldName = 'WEIGHT_GROSS'
    end
    object HawbSQLIOSS: TStringField
      FieldName = 'IOSS'
      FixedChar = True
    end
  end
  object HawbPL: TppDBPipeline
    DataSource = HawbSRC
    UserName = 'HawbPL'
    Left = 200
    Top = 8
    object HawbPLppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'SERIAL_NUMBER'
      FieldName = 'SERIAL_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object HawbPLppField2: TppField
      FieldAlias = 'HAB_ID'
      FieldName = 'HAB_ID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object HawbPLppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_MAWB_REFER_NUMBER'
      FieldName = 'FK_MAWB_REFER_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object HawbPLppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_CUSTOMER_CODE'
      FieldName = 'FK_CUSTOMER_CODE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object HawbPLppField5: TppField
      FieldAlias = 'FK_CLEARANCE_INSTRUCTION'
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      FieldLength = 5
      DisplayWidth = 5
      Position = 4
    end
    object HawbPLppField6: TppField
      FieldAlias = 'DESCRIPTION'
      FieldName = 'DESCRIPTION'
      FieldLength = 200
      DisplayWidth = 200
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
      FieldAlias = 'FK_CLEARING_STATE'
      FieldName = 'FK_CLEARING_STATE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object HawbPLppField9: TppField
      FieldAlias = 'FK_INVOICE_STATUS'
      FieldName = 'FK_INVOICE_STATUS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object HawbPLppField10: TppField
      FieldAlias = 'FK_CURRENCY'
      FieldName = 'FK_CURRENCY'
      FieldLength = 3
      DisplayWidth = 3
      Position = 9
    end
    object HawbPLppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXCHANGE_RATE'
      FieldName = 'EXCHANGE_RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object HawbPLppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'INVOICE_TOTAL'
      FieldName = 'INVOICE_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object HawbPLppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'FREIGHT_AMOUNT'
      FieldName = 'FREIGHT_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object HawbPLppField14: TppField
      FieldAlias = 'FK_OTHER_CHARGE_CODE'
      FieldName = 'FK_OTHER_CHARGE_CODE'
      FieldLength = 6
      DisplayWidth = 6
      Position = 13
    end
    object HawbPLppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTHER_CHARGE_AMOUNT'
      FieldName = 'OTHER_CHARGE_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object HawbPLppField16: TppField
      FieldAlias = 'OTHER_CHARGE_PAID'
      FieldName = 'OTHER_CHARGE_PAID'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object HawbPLppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'STAMPS_AMOUNT'
      FieldName = 'STAMPS_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object HawbPLppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXPS_NON_INVOICABLE'
      FieldName = 'EXPS_NON_INVOICABLE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object HawbPLppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUSTOMS_VALUE'
      FieldName = 'CUSTOMS_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object HawbPLppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'INVOICE_SERIAL'
      FieldName = 'INVOICE_SERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object HawbPLppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'COURIER_INVOICE_SERIAL'
      FieldName = 'COURIER_INVOICE_SERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object HawbPLppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'COURIER_INVOICE_VALUE'
      FieldName = 'COURIER_INVOICE_VALUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object HawbPLppField23: TppField
      FieldAlias = 'HIGH_VALUE'
      FieldName = 'HIGH_VALUE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 22
    end
    object HawbPLppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_SEC_MAWB_REFER_NUMBER'
      FieldName = 'FK_SEC_MAWB_REFER_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object HawbPLppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'EDE_STORAGE_EXPENSES'
      FieldName = 'EDE_STORAGE_EXPENSES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object HawbPLppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'EDE_DELIVERY_EXPENSES'
      FieldName = 'EDE_DELIVERY_EXPENSES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object HawbPLppField27: TppField
      FieldAlias = 'DATE_INVOICED'
      FieldName = 'DATE_INVOICED'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 26
    end
    object HawbPLppField28: TppField
      FieldAlias = 'SENT_TO_HEAD'
      FieldName = 'SENT_TO_HEAD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object HawbPLppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_OF_PIECES_ARRIVED'
      FieldName = 'NUM_OF_PIECES_ARRIVED'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object HawbPLppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_NUM_OF_PIECES'
      FieldName = 'TOTAL_NUM_OF_PIECES'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object HawbPLppField31: TppField
      FieldAlias = 'FK_CLEARANCE_TYPE'
      FieldName = 'FK_CLEARANCE_TYPE'
      FieldLength = 12
      DisplayWidth = 12
      Position = 30
    end
    object HawbPLppField32: TppField
      FieldAlias = 'FK_DELIVERY_TERM'
      FieldName = 'FK_DELIVERY_TERM'
      FieldLength = 3
      DisplayWidth = 3
      Position = 31
    end
    object HawbPLppField33: TppField
      FieldAlias = 'ORIGIN_STATION'
      FieldName = 'ORIGIN_STATION'
      FieldLength = 12
      DisplayWidth = 12
      Position = 32
    end
    object HawbPLppField34: TppField
      FieldAlias = 'EC2_NUMBER_DATE'
      FieldName = 'EC2_NUMBER_DATE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 33
    end
    object HawbPLppField35: TppField
      FieldAlias = 'SENDERS_INV_NO'
      FieldName = 'SENDERS_INV_NO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 34
    end
    object HawbPLppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMBER_OF_PARCELS'
      FieldName = 'NUMBER_OF_PARCELS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object HawbPLppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_CUSTOMER_ACCOUNT'
      FieldName = 'FK_CUSTOMER_ACCOUNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object HawbPLppField38: TppField
      FieldAlias = 'DISTRICT'
      FieldName = 'DISTRICT'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object HawbPLppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'DELIVERY_ORDER_AMOUNT'
      FieldName = 'DELIVERY_ORDER_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object HawbPLppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTHER2_CHARGE_AMOUNT'
      FieldName = 'OTHER2_CHARGE_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object HawbPLppField41: TppField
      FieldAlias = 'FK_OTHER2_CHARGE_CODE'
      FieldName = 'FK_OTHER2_CHARGE_CODE'
      FieldLength = 6
      DisplayWidth = 6
      Position = 40
    end
    object HawbPLppField42: TppField
      FieldAlias = 'POSOSTOSIS'
      FieldName = 'POSOSTOSIS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 41
    end
    object HawbPLppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_DUTIES'
      FieldName = 'TOTAL_DUTIES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object HawbPLppField44: TppField
      FieldAlias = 'CLEARANCE_WAITING_CODE'
      FieldName = 'CLEARANCE_WAITING_CODE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 43
    end
    object HawbPLppField45: TppField
      FieldAlias = 'CLEARANCE_WAITING_REASON'
      FieldName = 'CLEARANCE_WAITING_REASON'
      FieldLength = 40
      DisplayWidth = 40
      Position = 44
    end
    object HawbPLppField46: TppField
      FieldAlias = 'DATE_CLEARED'
      FieldName = 'DATE_CLEARED'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 45
    end
    object HawbPLppField47: TppField
      FieldAlias = 'DATE_REGISTERED'
      FieldName = 'DATE_REGISTERED'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 46
    end
    object HawbPLppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'FACTOR'
      FieldName = 'FACTOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 47
    end
    object HawbPLppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_COUNTRY_ORIGIN'
      FieldName = 'FK_COUNTRY_ORIGIN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 48
    end
    object HawbPLppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHARGE_TRL'
      FieldName = 'CHARGE_TRL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 49
    end
    object HawbPLppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHARGE_VAT'
      FieldName = 'CHARGE_VAT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 50
    end
    object HawbPLppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHARGE_EXCISE'
      FieldName = 'CHARGE_EXCISE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 51
    end
    object HawbPLppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHARGE_IMPORT'
      FieldName = 'CHARGE_IMPORT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 52
    end
    object HawbPLppField54: TppField
      FieldAlias = 'INVOICABLE'
      FieldName = 'INVOICABLE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 53
    end
    object HawbPLppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_CHARGES'
      FieldName = 'TOTAL_CHARGES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 54
    end
    object HawbPLppField56: TppField
      FieldAlias = 'CUSTOMER_NAME'
      FieldName = 'CUSTOMER_NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 55
    end
    object HawbPLppField57: TppField
      FieldAlias = 'EDE_COMMENTS'
      FieldName = 'EDE_COMMENTS'
      FieldLength = 100
      DisplayWidth = 100
      Position = 56
    end
    object HawbPLppField58: TppField
      FieldAlias = 'FK_MAWB_ID'
      FieldName = 'FK_MAWB_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 57
    end
    object HawbPLppField59: TppField
      FieldAlias = 'SIGNATORY_NAME'
      FieldName = 'SIGNATORY_NAME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 58
    end
    object HawbPLppField60: TppField
      FieldAlias = 'XML_HOUSE_ID'
      FieldName = 'XML_HOUSE_ID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 59
    end
    object HawbPLppField61: TppField
      FieldAlias = 'SENDER_NAME'
      FieldName = 'SENDER_NAME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 60
    end
    object HawbPLppField62: TppField
      FieldAlias = 'SENDER_ADDRESS_1'
      FieldName = 'SENDER_ADDRESS_1'
      FieldLength = 60
      DisplayWidth = 60
      Position = 61
    end
    object HawbPLppField63: TppField
      FieldAlias = 'SENDER_ADDRESS_2'
      FieldName = 'SENDER_ADDRESS_2'
      FieldLength = 60
      DisplayWidth = 60
      Position = 62
    end
    object HawbPLppField64: TppField
      FieldAlias = 'SENDER_ADDRESS_3'
      FieldName = 'SENDER_ADDRESS_3'
      FieldLength = 60
      DisplayWidth = 60
      Position = 63
    end
    object HawbPLppField65: TppField
      FieldAlias = 'IS_PRIVATE'
      FieldName = 'IS_PRIVATE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 64
    end
    object HawbPLppField66: TppField
      FieldAlias = 'DELIVERY_ORDER_ID'
      FieldName = 'DELIVERY_ORDER_ID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 65
    end
    object HawbPLppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTHER4_CHARGE_AMOUNT'
      FieldName = 'OTHER4_CHARGE_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 66
    end
    object HawbPLppField68: TppField
      FieldAlias = 'FK_OTHER4_CHARGE'
      FieldName = 'FK_OTHER4_CHARGE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 67
    end
    object HawbPLppField69: TppField
      FieldAlias = 'IS_PAID'
      FieldName = 'IS_PAID'
      FieldLength = 1
      DisplayWidth = 1
      Position = 68
    end
    object HawbPLppField70: TppField
      FieldAlias = 'PARTIAL_FLAG'
      FieldName = 'PARTIAL_FLAG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 69
    end
    object HawbPLppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARTIAL_WEIGHT'
      FieldName = 'PARTIAL_WEIGHT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 70
    end
    object HawbPLppField72: TppField
      FieldAlias = 'PARTIAL_DELIVERY_ORDER_ID'
      FieldName = 'PARTIAL_DELIVERY_ORDER_ID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 71
    end
    object HawbPLppField73: TppField
      FieldAlias = 'PARTIAL_MAWB_ID'
      FieldName = 'PARTIAL_MAWB_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 72
    end
    object HawbPLppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARTIAL_PIECES'
      FieldName = 'PARTIAL_PIECES'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object HawbPLppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARTIAL_MAWB_REFER_NUMBER'
      FieldName = 'PARTIAL_MAWB_REFER_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 74
    end
    object HawbPLppField76: TppField
      FieldAlias = 'STATUS_C'
      FieldName = 'STATUS_C'
      FieldLength = 1
      DisplayWidth = 1
      Position = 75
    end
    object HawbPLppField77: TppField
      FieldAlias = 'IS_MEDIUM'
      FieldName = 'IS_MEDIUM'
      FieldLength = 1
      DisplayWidth = 1
      Position = 76
    end
    object HawbPLppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'MEDIUM_VAT_RATE'
      FieldName = 'MEDIUM_VAT_RATE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 77
    end
    object HawbPLppField79: TppField
      FieldAlias = 'IS_CHARGED_DELIVERY'
      FieldName = 'IS_CHARGED_DELIVERY'
      FieldLength = 1
      DisplayWidth = 1
      Position = 78
    end
    object HawbPLppField80: TppField
      FieldAlias = 'IS_VALID'
      FieldName = 'IS_VALID'
      FieldLength = 1
      DisplayWidth = 1
      Position = 79
    end
    object HawbPLppField81: TppField
      FieldAlias = 'IS_PREPAID'
      FieldName = 'IS_PREPAID'
      FieldLength = 1
      DisplayWidth = 1
      Position = 80
    end
    object HawbPLppField82: TppField
      Alignment = taRightJustify
      FieldAlias = 'OTHER5_CHARGE_AMOUNT'
      FieldName = 'OTHER5_CHARGE_AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 81
    end
    object HawbPLppField83: TppField
      FieldAlias = 'FK_DUTY_RELIEVE'
      FieldName = 'FK_DUTY_RELIEVE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 82
    end
    object HawbPLppField84: TppField
      FieldAlias = 'SENDER_POST_CODE'
      FieldName = 'SENDER_POST_CODE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 83
    end
    object HawbPLppField85: TppField
      FieldAlias = 'SENDER_CITY'
      FieldName = 'SENDER_CITY'
      FieldLength = 60
      DisplayWidth = 60
      Position = 84
    end
    object HawbPLppField86: TppField
      FieldAlias = 'SENDER_COUNTRY'
      FieldName = 'SENDER_COUNTRY'
      FieldLength = 60
      DisplayWidth = 60
      Position = 85
    end
    object HawbPLppField87: TppField
      FieldAlias = 'CUSTOMER_VAT_ID'
      FieldName = 'CUSTOMER_VAT_ID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 86
    end
    object HawbPLppField88: TppField
      FieldAlias = 'CUSTOMER_AUTHORITY_TO_AGENT'
      FieldName = 'CUSTOMER_AUTHORITY_TO_AGENT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 87
    end
    object HawbPLppField89: TppField
      FieldAlias = 'IS_LOW'
      FieldName = 'IS_LOW'
      FieldLength = 1
      DisplayWidth = 1
      Position = 88
    end
    object HawbPLppField90: TppField
      FieldAlias = 'DESTINATION_STATION'
      FieldName = 'DESTINATION_STATION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 89
    end
    object HawbPLppField91: TppField
      FieldAlias = 'IS_OVERRIDE_MEDIUM'
      FieldName = 'IS_OVERRIDE_MEDIUM'
      FieldLength = 1
      DisplayWidth = 1
      Position = 90
    end
    object HawbPLppField92: TppField
      FieldAlias = 'COUNTRYNAME'
      FieldName = 'COUNTRYNAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 91
    end
    object HawbPLppField93: TppField
      Alignment = taRightJustify
      FieldAlias = 'WEIGHT_GROSS'
      FieldName = 'WEIGHT_GROSS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 92
    end
    object HawbPLppField94: TppField
      FieldAlias = 'IOSS'
      FieldName = 'IOSS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 93
    end
  end
  object HawbSRC: TIBCDataSource
    DataSet = HawbSQL
    Left = 106
    Top = 10
  end
  object PrintDialog1: TPrintDialog
    Left = 616
    Top = 80
  end
  object EmptyReportRPT: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
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
    Left = 64
    Top = 408
    Version = '21.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
