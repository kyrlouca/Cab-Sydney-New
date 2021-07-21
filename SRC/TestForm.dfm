object TestFormFRM: TTestFormFRM
  Left = 0
  Top = 0
  Caption = 'TestFormFRM'
  ClientHeight = 419
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 400
    Width = 949
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 0
    VisualStyle = vsGradient
  end
  object RzGroupBar1: TRzGroupBar
    Left = 0
    Top = 58
    Height = 323
    GradientColorStart = clBtnFace
    GradientColorStop = clBtnShadow
    GroupBorderSize = 8
    Color = clBtnShadow
    ParentColor = False
    TabOrder = 1
    object RzGroup1: TRzGroup
      Items = <>
      Opened = True
      OpenedHeight = 81
      DividerVisible = False
      Caption = 'RzGroup1'
      ParentColor = False
    end
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 29
    Width = 949
    Height = 29
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 2
    VisualStyle = vsGradient
    ToolbarControls = (
      RzToolButton1)
    object RzToolButton1: TRzToolButton
      Left = 4
      Top = 2
      ShowCaption = True
      UseToolbarShowCaption = False
    end
  end
  object RzStatusBar2: TRzStatusBar
    Left = 0
    Top = 381
    Width = 949
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 3
    VisualStyle = vsGradient
  end
  object RzToolbar2: TRzToolbar
    Left = 0
    Top = 0
    Width = 949
    Height = 29
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 4
    VisualStyle = vsGradient
  end
  object RzSizePanel1: TRzSizePanel
    Left = 160
    Top = 58
    Width = 168
    Height = 323
    TabOrder = 5
  end
  object ToggleSwitch1: TToggleSwitch
    Left = 416
    Top = 80
    Width = 72
    Height = 20
    TabOrder = 6
  end
  object Button1: TButton
    Left = 544
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
    OnClick = Button1Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 40
    Top = 170
    Width = 209
    Height = 120
    Selected.Strings = (
      'cnt'#9'10'#9'cnt'
      'hawb_item_serial'#9'13'#9'hawb_item_serial'
      'Desc1'#9'9'#9'Desc1'
      'Desc2'#9'7'#9'Desc2'
      'Tariff_rate'#9'10'#9'Tariff_rate'
      'customs_value'#9'11'#9'customs_value'
      'relieved_flag'#9'10'#9'relieved_flag'
      'amount_charged'#9'13'#9'amount_charged'
      'Amount_Relieved'#9'14'#9'Amount_Relieved')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = VirtualHcSrc
    TabOrder = 8
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Button2: TButton
    Left = 334
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 9
    OnClick = Button2Click
  end
  object memo2: TRzMemo
    Left = 504
    Top = 176
    Width = 185
    Height = 89
    TabOrder = 10
  end
  object Button3: TButton
    Left = 488
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 11
    OnClick = Button3Click
  end
  object MainMenu1: TMainMenu
    OwnerDraw = True
    Left = 256
    Top = 16
    object ReadFiles1: TMenuItem
      Caption = 'Read Files'
      object ReadXML1: TMenuItem
        Caption = 'Read XML'
      end
    end
    object Invoice1: TMenuItem
      Caption = 'Invoices'
      Enabled = False
      object CreateInvoices1: TMenuItem
        Caption = 'Create Invoices'
      end
    end
    object ariffs1: TMenuItem
      Caption = 'Tariffs'
      object SelectNormalTariffs1: TMenuItem
        Caption = 'Select Normal Tariffs'
      end
      object SelectDHLTariffs1: TMenuItem
        Caption = 'Select DHL Tariffs'
      end
      object SelectCustomTariffs1: TMenuItem
        Caption = 'Select Custom Tariffs'
      end
      object InsertaTariff1: TMenuItem
        Caption = 'Edit Tariff'
      end
      object InsertaTariff2: TMenuItem
        Caption = 'New Tariff'
      end
      object ExportTariffKeys1: TMenuItem
        Caption = 'Export Tariff Keys'
      end
      object ReadKeys1: TMenuItem
        Caption = 'Update Tariff Keys'
      end
    end
    object Customs3: TMenuItem
      Caption = 'Customs'
      object CustomPayments2: TMenuItem
        Caption = 'Custom Payments'
      end
      object EditCheque1: TMenuItem
        Caption = 'Edit Cheque'
      end
      object ReadInvoiceFiles1: TMenuItem
        Caption = 'Read Invoice Files'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object NonInvoicedReport1: TMenuItem
        Caption = 'Non-Invoiced Report'
      end
      object InvoiceReport2: TMenuItem
        Caption = 'Invoice Report'
      end
    end
    object ab1: TMenuItem
      Caption = 'Search'
      object Hawb1: TMenuItem
        Caption = 'Hawb'
      end
      object LowValue1: TMenuItem
        Caption = 'Low Value'
      end
    end
    object ables1: TMenuItem
      Caption = 'Tables'
      object Customers2: TMenuItem
        Caption = 'Customers'
      end
      object ExchangeRates1: TMenuItem
        Caption = 'Exchange Rates'
      end
    end
    object System1: TMenuItem
      Caption = 'System'
      object Security1: TMenuItem
        Caption = 'Security'
        object UserSecurity1: TMenuItem
          Caption = 'User Security'
        end
      end
      object BaseTables1: TMenuItem
        Caption = 'Base Tables'
        object ClearanceWaitingCodes1: TMenuItem
          Caption = 'Clearance Waiting Codes'
        end
        object Countries2: TMenuItem
          Caption = 'Countries'
        end
        object Currencies2: TMenuItem
          Caption = 'Currencies'
        end
        object CustomsPaymentType1: TMenuItem
          Caption = 'Customs Payment Type'
        end
        object DeliveryTerm1: TMenuItem
          Caption = 'Delivery Term'
        end
        object Flights2: TMenuItem
          Caption = 'Flights'
        end
        object District1: TMenuItem
          Caption = 'District'
        end
        object DutyTypes1: TMenuItem
          Caption = 'Duty Types'
        end
        object Units2: TMenuItem
          Caption = 'Units'
        end
        object VatCategories1: TMenuItem
          Caption = 'Vat Categories'
        end
      end
      object ManualUpdates1: TMenuItem
        Caption = 'Manual Updates'
        object UpdateMawb1: TMenuItem
          Caption = 'Update Mawb'
        end
        object UpdateHawb1: TMenuItem
          Caption = 'Update Hawb'
        end
      end
      object ariffs2: TMenuItem
        Caption = 'Tariffs'
        object BaseTariffs1: TMenuItem
          Caption = 'List Base Tariffs'
        end
        object RelievedRates1: TMenuItem
          Caption = 'Relieved Rates'
        end
        object ariffGroups1: TMenuItem
          Caption = 'Tariff Groups'
        end
        object DutyRates1: TMenuItem
          Caption = 'Default Duty Rates'
        end
      end
      object Params1: TMenuItem
        Caption = 'Params'
        object XMLparameters2: TMenuItem
          Caption = 'XML parameters'
        end
        object SystemParameters1: TMenuItem
          Caption = 'System Parameters'
        end
      end
    end
  end
  object VirtualHcSQL: TVirtualTable
    Active = True
    AutoCalcFields = False
    FieldDefs = <
      item
        Name = 'cnt'
        DataType = ftInteger
      end
      item
        Name = 'hawb_item_serial'
        DataType = ftInteger
      end
      item
        Name = 'Desc1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Desc2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Tariff_rate'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'customs_value'
        DataType = ftFloat
        Precision = 3
      end
      item
        Name = 'Charge'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'relieved_flag'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Amount_Relieved'
        DataType = ftFloat
        Precision = 3
      end
      item
        Name = 'amount_charged'
        DataType = ftFloat
        Precision = 3
      end>
    Left = 336
    Top = 84
    Data = {
      04000A000300636E7403000000000000001000686177625F6974656D5F736572
      69616C03000000000000000500446573633101001E0000000000050044657363
      3201002800000000000B005461726966665F72617465060000000F0000000D00
      637573746F6D735F76616C756506000000030000000600436861726765060000
      000F0000000D0072656C69657665645F666C616701000100000000000F00416D
      6F756E745F52656C696576656406000000030000000E00616D6F756E745F6368
      61726765640600000003000000000000000000}
    object VirtualHcSQLcnt: TIntegerField
      DisplayWidth = 10
      FieldName = 'cnt'
    end
    object VirtualHcSQLhawb_item_serial: TIntegerField
      DisplayWidth = 13
      FieldName = 'hawb_item_serial'
    end
    object VirtualHcSQLDesc1: TStringField
      DisplayWidth = 9
      FieldName = 'Desc1'
      Size = 30
    end
    object VirtualHcSQLDesc2: TStringField
      DisplayWidth = 7
      FieldName = 'Desc2'
      Size = 40
    end
    object VirtualHcSQLTariff_rate: TFloatField
      DisplayWidth = 10
      FieldName = 'Tariff_rate'
    end
    object VirtualHcSQLcustoms_value: TFloatField
      DisplayWidth = 11
      FieldName = 'customs_value'
    end
    object VirtualHcSQLrelieved_flag: TStringField
      DisplayWidth = 10
      FieldName = 'relieved_flag'
      Size = 1
    end
    object VirtualHcSQLamount_charged: TFloatField
      DisplayWidth = 13
      FieldName = 'amount_charged'
    end
    object VirtualHcSQLAmount_Relieved: TFloatField
      DisplayWidth = 14
      FieldName = 'Amount_Relieved'
    end
  end
  object q2: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ClairDML.UsedForReadOnlyTrans
    UpdateTransaction = WriteTrans
    Left = 552
    Top = 120
  end
  object VirtualHcSrc: TIBCDataSource
    DataSet = VirtualHcSQL
    Left = 432
    Top = 104
  end
  object rep1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = True
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    PrinterSetup.DevMode = {00000000}
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Printer'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    SavePrinterSetup = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 16
    Top = 8
    Version = '18.01'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rep2: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = True
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    PrinterSetup.DevMode = {00000000}
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rep2BeforePrint
    DeviceType = 'Printer'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    SavePrinterSetup = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 408
    Top = 264
    Version = '18.01'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      BeforePrint = ppFooterBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object pd: TPrintDialog
    Left = 472
    Top = 200
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 240
    Top = 114
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 336
    Top = 304
  end
  object IBCSQL1: TIBCSQL
    Connection = ClairDML.CabCOnnection
    Left = 624
    Top = 328
  end
end
