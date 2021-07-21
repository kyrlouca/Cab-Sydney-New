object M_DeleteMawbFRM: TM_DeleteMawbFRM
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'M_DeleteMawbFRM'
  ClientHeight = 490
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 208
    Top = 76
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label5: TLabel
    Left = 335
    Top = 76
    Width = 26
    Height = 13
    Caption = 'Serial'
  end
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 454
    Width = 805
    HotTrack = True
    TabOrder = 0
    OnClick = RzDialogButtons1Click
    ExplicitTop = 346
  end
  object Panel1: TRzPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 53
    Align = alTop
    BorderOuter = fsGroove
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 795
      Height = 43
      Align = alClient
      Alignment = taCenter
      Caption = 'Delete Mawb'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitWidth = 164
      ExplicitHeight = 32
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 53
    Width = 805
    Height = 401
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    ExplicitHeight = 293
    object Label2: TLabel
      Left = 200
      Top = 68
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object Label3: TLabel
      Left = 327
      Top = 68
      Width = 26
      Height = 13
      Caption = 'Serial'
    end
    object Label6: TLabel
      Left = 280
      Top = 306
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object Label7: TLabel
      Left = 417
      Top = 299
      Width = 26
      Height = 13
      Caption = 'Serial'
    end
    object mawbBTN: TButton
      Left = 29
      Top = 85
      Width = 133
      Height = 25
      Caption = 'Delete all hawbs on Mawb'
      TabOrder = 0
      OnClick = mawbBTNClick
    end
    object ValueStrFLD: TRzEdit
      Left = 200
      Top = 87
      Width = 121
      Height = 21
      Text = ''
      TabOrder = 2
    end
    object ValueIntFLD: TwwDBEdit
      Left = 327
      Top = 87
      Width = 65
      Height = 21
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object ClearMawbsBTN: TRzButton
      Left = 39
      Top = 263
      Width = 172
      Caption = 'DELETE ALL MAWBS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = ClearMawbsBTNClick
    end
    object DelFLD: TRzEdit
      Left = 240
      Top = 269
      Width = 121
      Height = 21
      Text = ''
      TabOrder = 4
      Visible = False
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 39
      Top = 294
      Width = 75
      Height = 25
      Caption = 'Customer'
      TabOrder = 5
      Visible = False
      OnClick = Button1Click
    end
    object CustFLD: TwwDBEdit
      Left = 120
      Top = 296
      Width = 138
      Height = 21
      TabOrder = 6
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object RzButton1: TRzButton
      Left = 47
      Top = 325
      Width = 196
      Caption = 'DELETE hawbs 2 Mawb'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = RzButton1Click
    end
    object MawbIdFLD: TRzEdit
      Left = 274
      Top = 325
      Width = 121
      Height = 21
      Text = ''
      TabOrder = 8
      Visible = False
    end
    object SerialFLD: TwwDBEdit
      Left = 417
      Top = 325
      Width = 65
      Height = 21
      TabOrder = 9
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
  end
end
