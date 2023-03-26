object Form1: TForm1
  Left = 192
  Top = 124
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 56
    Width = 54
    Height = 13
    Caption = 'Andamento'
  end
  object Button1: TButton
    Left = 224
    Top = 128
    Width = 123
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 224
    Top = 80
    Width = 150
    Height = 17
    TabOrder = 1
  end
  object XPManifest1: TXPManifest
    Left = 360
    Top = 144
  end
end
