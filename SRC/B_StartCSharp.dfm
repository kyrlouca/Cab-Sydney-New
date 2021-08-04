object StartCSharpFRM: TStartCSharpFRM
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Dialog'
  ClientHeight = 465
  ClientWidth = 725
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 429
    Width = 725
    HotTrack = True
    TabOrder = 0
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 53
    Width = 725
    Height = 376
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    object RzBitBtn2: TRzBitBtn
      Left = 56
      Top = 127
      Width = 265
      Height = 44
      Cancel = True
      Caption = 'Send Web Xml to Customs'
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
  object Panel1: TRzPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 53
    Align = alTop
    BorderOuter = fsGroove
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 715
      Height = 43
      Align = alClient
      Alignment = taCenter
      Caption = 'Send Web Xml To Customs'
      Color = clBtnFace
      ParentColor = False
      Transparent = False
      Layout = tlCenter
      ExplicitWidth = 360
      ExplicitHeight = 32
    end
  end
  object LaunchSoap: TRzLauncher
    Action = 'Open'
    FileName = 'C:\Users\kyrlo\soft\Executables\test\DhlSoapService.exe'
    Timeout = -1
    Left = 80
    Top = 85
  end
end
