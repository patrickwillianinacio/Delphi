object Form1: TForm1
  Left = 224
  Top = 122
  Width = 870
  Height = 640
  BorderIcons = []
  Caption = 'ArquivoTexto (*.txt)'
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
    Left = 10
    Top = 14
    Width = 95
    Height = 13
    Caption = 'Informe um N'#250'mero:'
  end
  object Button1: TButton
    Left = 10
    Top = 50
    Width = 75
    Height = 25
    Caption = 'Tabuada'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 108
    Top = 10
    Width = 55
    Height = 21
    Color = clScrollBar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 3
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 90
    Top = 50
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 2
    Kind = bkClose
  end
end
