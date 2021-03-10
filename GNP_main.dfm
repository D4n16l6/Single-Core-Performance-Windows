object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Bench - Generatore di numeri primi'
  ClientHeight = 543
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 54
    Height = 13
    Caption = '# partenza'
  end
  object Label2: TLabel
    Left = 212
    Top = 24
    Width = 33
    Height = 13
    Caption = '# primi'
  end
  object Label3: TLabel
    Left = 16
    Top = 65
    Width = 82
    Height = 13
    Caption = 'Tempo mm:ss,ms'
  end
  object SBCLEAR: TSpeedButton
    Left = 270
    Top = 120
    Width = 57
    Height = 28
    Caption = 'CLEAR'
    OnClick = SBCLEARClick
  end
  object SBCALCOLA: TSpeedButton
    Left = 188
    Top = 500
    Width = 139
    Height = 28
    Caption = 'CALCOLA PRIMI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SBCALCOLAClick
  end
  object SBSTOP: TSpeedButton
    Left = 8
    Top = 500
    Width = 62
    Height = 28
    Caption = 'STOP'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SBSTOPClick
  end
  object LBCNT: TLabel
    Left = 258
    Top = 48
    Width = 24
    Height = 13
    Caption = '###'
  end
  object Label4: TLabel
    Left = 15
    Top = 92
    Width = 54
    Height = 13
    Caption = '# iterazioni'
  end
  object Edit1: TEdit
    Left = 76
    Top = 21
    Width = 73
    Height = 21
    TabOrder = 0
    Text = '7'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 251
    Top = 21
    Width = 76
    Height = 21
    TabOrder = 1
    Text = '1000'
    OnKeyPress = Edit2KeyPress
  end
  object Memo1: TMemo
    Left = 4
    Top = 154
    Width = 323
    Height = 331
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 104
    Top = 62
    Width = 135
    Height = 21
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 3
    Text = '--'
  end
  object CBENP: TCheckBox
    Left = 8
    Top = 120
    Width = 101
    Height = 17
    Caption = 'Elenx'#236'ca # primi'
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 104
    Top = 89
    Width = 135
    Height = 21
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 5
    Text = '--'
  end
end
