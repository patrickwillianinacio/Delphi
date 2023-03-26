object Form1: TForm1
  Left = 192
  Top = 124
  Width = 870
  Height = 640
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
    Left = 328
    Top = 136
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Memo1: TMemo
    Left = 256
    Top = 184
    Width = 297
    Height = 153
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 128
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 576
    Top = 496
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Left = 440
    Top = 80
  end
end
