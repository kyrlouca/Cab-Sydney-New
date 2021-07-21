object R_showErrorsFRM: TR_showErrorsFRM
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'R_showErrorsFRM'
  ClientHeight = 299
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 23
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 263
    Width = 564
    HotTrack = True
    TabOrder = 0
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 564
    Height = 41
    Align = alTop
    BorderOuter = fsGroove
    Caption = ' Errors'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 41
    Width = 564
    Height = 222
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    object MemoErrors: TRzMemo
      Left = 0
      Top = 0
      Width = 564
      Height = 222
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
end
