object Form1: TForm1
  Left = 227
  Top = 116
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
  object lblTempo: TLabel
    Left = 464
    Top = 48
    Width = 43
    Height = 13
    Caption = 'lblTempo'
  end
  object Button1: TButton
    Left = 392
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 512
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Terminar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Chronometer1: TChronometer
    Left = 472
    Top = 104
  end
end
