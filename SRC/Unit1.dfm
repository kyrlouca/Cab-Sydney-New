object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 389
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 136
    Top = 208
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object wwDBEdit1: TwwDBEdit
    Left = 176
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object Button1: TButton
    Left = 264
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object IBCConnection1: TIBCConnection
    Port = '3050'
    Left = 240
    Top = 120
  end
  object IBCQuery1: TIBCQuery
    Connection = IBCConnection1
    Left = 312
    Top = 128
  end
  object IBCSQL1: TIBCSQL
    Connection = IBCConnection1
    Left = 144
    Top = 136
  end
end
