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
    Left = 200
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
    Left = 184
    Top = 16
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
