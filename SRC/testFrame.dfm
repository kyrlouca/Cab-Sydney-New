object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 224
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
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 205
    Width = 440
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitLeft = 136
    ExplicitTop = 120
    ExplicitWidth = 185
  end
  object RzGroupBar1: TRzGroupBar
    Left = 0
    Top = 29
    Width = 241
    Height = 157
    GradientColorStart = clBtnFace
    GradientColorStop = clBtnShadow
    GroupBorderSize = 8
    Color = clBtnShadow
    ParentColor = False
    TabOrder = 1
    ExplicitHeight = 176
    object RzGroup1: TRzGroup
      Items = <>
      Opened = True
      OpenedHeight = 105
      DividerVisible = False
      Caption = 'RzGroup1'
      ParentColor = False
    end
  end
  object RzStatusBar2: TRzStatusBar
    Left = 0
    Top = 186
    Width = 440
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    VisualStyle = vsGradient
    ExplicitLeft = 136
    ExplicitTop = 120
    ExplicitWidth = 185
  end
  object RzSplitter1: TRzSplitter
    Left = 241
    Top = 29
    Width = 199
    Height = 157
    Position = 99
    Align = alClient
    TabOrder = 3
    ExplicitLeft = 120
    ExplicitTop = -40
    ExplicitWidth = 200
    ExplicitHeight = 100
    BarSize = (
      99
      0
      103
      157)
    UpperLeftControls = ()
    LowerRightControls = ()
  end
  object RzToolbar2: TRzToolbar
    Left = 0
    Top = 0
    Width = 440
    Height = 29
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 4
    VisualStyle = vsGradient
    ExplicitWidth = 99
  end
end
