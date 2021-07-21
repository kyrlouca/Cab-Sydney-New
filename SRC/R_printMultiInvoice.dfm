object R_PrintMultiInvoiceFRM: TR_PrintMultiInvoiceFRM
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'R_PrintMultiInvoiceFRM'
  ClientHeight = 328
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 292
    Width = 637
    HotTrack = True
    TabOrder = 0
  end
  object InvoiceSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from invoice_new where'
      'serial_number = :InvoiceSerial')
    ReadOnly = True
    Active = True
    Left = 56
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'InvoiceSerial'
        Value = nil
      end>
    object InvoiceSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object InvoiceSQLMAWB_SERIAL: TIntegerField
      FieldName = 'MAWB_SERIAL'
    end
    object InvoiceSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object InvoiceSQLHAWB_SERIAL: TIntegerField
      FieldName = 'HAWB_SERIAL'
    end
    object InvoiceSQLHAWB_ID: TStringField
      FieldName = 'HAWB_ID'
      FixedChar = True
      Size = 10
    end
    object InvoiceSQLHAWB_DESCRIPTION: TStringField
      FieldName = 'HAWB_DESCRIPTION'
      Size = 200
    end
    object InvoiceSQLCUSTOMER_SERIAL: TIntegerField
      FieldName = 'CUSTOMER_SERIAL'
    end
    object InvoiceSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object InvoiceSQLCUSTOMER_ACCOUNT: TIntegerField
      FieldName = 'CUSTOMER_ACCOUNT'
    end
    object InvoiceSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      FixedChar = True
      Size = 3
    end
    object InvoiceSQLDATE_INVOICED: TDateField
      FieldName = 'DATE_INVOICED'
      Required = True
    end
    object InvoiceSQLAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
  end
  object InvoiceLineSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO INVOICE_LINE'
      
        '  (SERIAL_NUMBER, FK_INVOICE_SERIAL, DUTY_TYPE, FK_TARIFF_USAGE,' +
        ' AMOUNT, DHL_GLOBAL_CODE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_INVOICE_SERIAL, :DUTY_TYPE, :FK_TARIFF_US' +
        'AGE, :AMOUNT, :DHL_GLOBAL_CODE)')
    SQLDelete.Strings = (
      'DELETE FROM INVOICE_LINE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE INVOICE_LINE'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_INVOICE_SERIAL = :FK_INVOIC' +
        'E_SERIAL, DUTY_TYPE = :DUTY_TYPE, FK_TARIFF_USAGE = :FK_TARIFF_U' +
        'SAGE, AMOUNT = :AMOUNT, DHL_GLOBAL_CODE = :DHL_GLOBAL_CODE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_INVOICE_SERIAL, DUTY_TYPE, FK_TARIFF_US' +
        'AGE, AMOUNT, DHL_GLOBAL_CODE FROM INVOICE_LINE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM INVOICE_LINE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INVOICE_LINE'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from invoice_line')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_INVOICE_SERIAL'
    MasterSource = InvoiceSRC
    ReadOnly = True
    Active = True
    Left = 128
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object InvoiceLineSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object InvoiceLineSQLFK_INVOICE_SERIAL: TIntegerField
      FieldName = 'FK_INVOICE_SERIAL'
      Required = True
    end
    object InvoiceLineSQLDUTY_TYPE: TStringField
      FieldName = 'DUTY_TYPE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object InvoiceLineSQLFK_TARIFF_USAGE: TStringField
      FieldName = 'FK_TARIFF_USAGE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object InvoiceLineSQLAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object InvoiceLineSQLDHL_GLOBAL_CODE: TStringField
      FieldName = 'DHL_GLOBAL_CODE'
      FixedChar = True
      Size = 30
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 70
    Top = 85
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 14
    Top = 137
  end
  object InvoicePIP: TppDBPipeline
    DataSource = InvoiceSRC
    UserName = 'InvoicePIP'
    Left = 88
    Top = 192
    object InvoicePIPppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'SERIAL_NUMBER'
      FieldName = 'SERIAL_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object InvoicePIPppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MAWB_SERIAL'
      FieldName = 'MAWB_SERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object InvoicePIPppField3: TppField
      FieldAlias = 'MAWB_ID'
      FieldName = 'MAWB_ID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object InvoicePIPppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'HAWB_SERIAL'
      FieldName = 'HAWB_SERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object InvoicePIPppField5: TppField
      FieldAlias = 'HAWB_ID'
      FieldName = 'HAWB_ID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object InvoicePIPppField6: TppField
      FieldAlias = 'HAWB_DESCRIPTION'
      FieldName = 'HAWB_DESCRIPTION'
      FieldLength = 200
      DisplayWidth = 200
      Position = 5
    end
    object InvoicePIPppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUSTOMER_SERIAL'
      FieldName = 'CUSTOMER_SERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object InvoicePIPppField8: TppField
      FieldAlias = 'CUSTOMER_NAME'
      FieldName = 'CUSTOMER_NAME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 7
    end
    object InvoicePIPppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUSTOMER_ACCOUNT'
      FieldName = 'CUSTOMER_ACCOUNT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object InvoicePIPppField10: TppField
      FieldAlias = 'DISTRICT'
      FieldName = 'DISTRICT'
      FieldLength = 3
      DisplayWidth = 3
      Position = 9
    end
    object InvoicePIPppField11: TppField
      FieldAlias = 'DATE_INVOICED'
      FieldName = 'DATE_INVOICED'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object InvoicePIPppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
  end
  object InvoiceLinePIP: TppDBPipeline
    DataSource = InvoiceLineSRC
    UserName = 'InvoiceLinePIP'
    Left = 200
    Top = 208
    MasterDataPipelineName = 'InvoicePIP'
    object InvoiceLinePIPppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'SERIAL_NUMBER'
      FieldName = 'SERIAL_NUMBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object InvoiceLinePIPppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'FK_INVOICE_SERIAL'
      FieldName = 'FK_INVOICE_SERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object InvoiceLinePIPppField3: TppField
      FieldAlias = 'DUTY_TYPE'
      FieldName = 'DUTY_TYPE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object InvoiceLinePIPppField4: TppField
      FieldAlias = 'FK_TARIFF_USAGE'
      FieldName = 'FK_TARIFF_USAGE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 3
    end
    object InvoiceLinePIPppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMOUNT'
      FieldName = 'AMOUNT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object InvoiceLinePIPppField6: TppField
      FieldAlias = 'DHL_GLOBAL_CODE'
      FieldName = 'DHL_GLOBAL_CODE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
  end
  object InvoiceSRC: TIBCDataSource
    DataSet = InvoiceSQL
    Left = 224
    Top = 48
  end
  object InvoiceLineSRC: TIBCDataSource
    DataSet = InvoiceLineSQL
    Left = 288
    Top = 40
  end
  object InvoiceREP: TppReport
    AutoStop = False
    DataPipeline = InvoicePIP
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
    Template.FileName = 'C:\Data\DelphiProjects\Tariffs\programs\abc.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
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
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 280
    Top = 144
    Version = '18.01'
    mmColumnWidth = 0
    DataPipelineName = 'InvoicePIP'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 39158
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Hawb Id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 4498
        mmTop = 10319
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'HAWB_ID'
        DataPipeline = InvoicePIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'InvoicePIP'
        mmHeight = 4763
        mmLeft = 26187
        mmTop = 10319
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Caption = 'AMOUNT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 4498
        mmTop = 31485
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'AMOUNT'
        DataPipeline = InvoicePIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'InvoicePIP'
        mmHeight = 4763
        mmLeft = 26187
        mmTop = 31485
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Date Invoiced'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 4498
        mmTop = 23283
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Customer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 4498
        mmTop = 17463
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        DataField = 'CUSTOMER_NAME'
        DataPipeline = InvoicePIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'InvoicePIP'
        mmHeight = 4763
        mmLeft = 26187
        mmTop = 17463
        mmWidth = 128059
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'DHL Invoice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 82286
        mmTop = 1323
        mmWidth = 36777
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        ParentWidth = True
        Position = lpBottom
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 36777
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        DataField = 'DATE_INVOICED'
        DataPipeline = InvoicePIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'InvoicePIP'
        mmHeight = 4763
        mmLeft = 26187
        mmTop = 23283
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Caption = 'S/N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 4498
        mmTop = 4233
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'SERIAL_NUMBER'
        DataPipeline = InvoicePIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'InvoicePIP'
        mmHeight = 4763
        mmLeft = 26187
        mmTop = 4233
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        DataField = 'HAWB_SERIAL'
        DataPipeline = InvoicePIP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'InvoicePIP'
        mmHeight = 4763
        mmLeft = 61648
        mmTop = 10319
        mmWidth = 16463
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'InvoiceLinePIP'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 794
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = InvoiceLinePIP
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
          Version = '18.01'
          mmColumnWidth = 197300
          DataPipelineName = 'InvoiceLinePIP'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel6: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label6'
              AutoSize = False
              Caption = 'Usage'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 20108
              mmTop = 6615
              mmWidth = 10583
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel5: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label5'
              AutoSize = False
              Caption = 'Duty'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 34925
              mmTop = 6615
              mmWidth = 9525
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label9'
              AutoSize = False
              Caption = 'DHL Code'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4763
              mmLeft = 49477
              mmTop = 6615
              mmWidth = 26723
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line2'
              ParentWidth = True
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 2381
              mmLeft = 0
              mmTop = 8996
              mmWidth = 197300
              BandType = 1
              LayerName = Foreground1
            end
            object ppShape1: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape1'
              Brush.Color = 16737843
              Pen.Color = clBlue
              mmHeight = 8996
              mmLeft = 78846
              mmTop = 2117
              mmWidth = 30692
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label7'
              AutoSize = False
              Caption = 'Amount'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4763
              mmLeft = 88635
              mmTop = 2117
              mmWidth = 12171
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText4'
              DataField = 'SERIAL_NUMBER'
              DataPipeline = InvoiceLinePIP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'InvoiceLinePIP'
              mmHeight = 4763
              mmLeft = 4233
              mmTop = 0
              mmWidth = 10319
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              DataField = 'DUTY_TYPE'
              DataPipeline = InvoiceLinePIP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'InvoiceLinePIP'
              mmHeight = 4763
              mmLeft = 36513
              mmTop = 0
              mmWidth = 10583
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText6'
              DataField = 'FK_TARIFF_USAGE'
              DataPipeline = InvoiceLinePIP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'InvoiceLinePIP'
              mmHeight = 4763
              mmLeft = 18521
              mmTop = 0
              mmWidth = 10583
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
              DataField = 'AMOUNT'
              DataPipeline = InvoiceLinePIP
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'InvoiceLinePIP'
              mmHeight = 4763
              mmLeft = 86518
              mmTop = 0
              mmWidth = 14288
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText9'
              DataField = 'DHL_GLOBAL_CODE'
              DataPipeline = InvoiceLinePIP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'InvoiceLinePIP'
              mmHeight = 4763
              mmLeft = 50800
              mmTop = 0
              mmWidth = 26723
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc2'
              DataField = 'AMOUNT'
              DataPipeline = InvoiceLinePIP
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'InvoiceLinePIP'
              mmHeight = 4498
              mmLeft = 83608
              mmTop = 1852
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line3'
              ParentWidth = True
              Weight = 0.750000000000000000
              mmHeight = 2381
              mmLeft = 0
              mmTop = 1315
              mmWidth = 197300
              BandType = 7
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
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
  object IBCQuery1: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from invoice_new where'
      'serial_number = :InvoiceSerial')
    ReadOnly = True
    Active = True
    Left = 64
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'InvoiceSerial'
        Value = nil
      end>
    object IntegerField1: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'MAWB_SERIAL'
    end
    object StringField1: TStringField
      FieldName = 'MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object IntegerField3: TIntegerField
      FieldName = 'HAWB_SERIAL'
    end
    object StringField2: TStringField
      FieldName = 'HAWB_ID'
      FixedChar = True
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'HAWB_DESCRIPTION'
      Size = 200
    end
    object IntegerField4: TIntegerField
      FieldName = 'CUSTOMER_SERIAL'
    end
    object StringField4: TStringField
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object IntegerField5: TIntegerField
      FieldName = 'CUSTOMER_ACCOUNT'
    end
    object StringField5: TStringField
      FieldName = 'DISTRICT'
      FixedChar = True
      Size = 3
    end
    object DateField1: TDateField
      FieldName = 'DATE_INVOICED'
      Required = True
    end
    object FloatField1: TFloatField
      FieldName = 'AMOUNT'
    end
  end
end
