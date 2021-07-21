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
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 429
    Width = 725
    HotTrack = True
    TabOrder = 0
    ExplicitLeft = 272
    ExplicitTop = 232
    ExplicitWidth = 185
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 53
    Width = 725
    Height = 376
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    ExplicitTop = 54
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
    ExplicitLeft = -450
    ExplicitWidth = 1175
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 715
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
end
