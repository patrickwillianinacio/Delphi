object Form1: TForm1
  Left = 249
  Top = 145
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 112
    Width = 80
    Height = 13
    Caption = 'Ordem da Matriz:'
  end
  object Edit1: TEdit
    Left = 24
    Top = 135
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 23
    Top = 216
    Width = 418
    Height = 241
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 23
    Top = 168
    Width = 154
    Height = 25
    Caption = 'Criar a Matriz'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 191
    Top = 168
    Width = 153
    Height = 25
    Caption = 'Liberar a Mem'#243'ria'
    TabOrder = 3
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 367
    Top = 167
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 4
    Kind = bkClose
  end
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 16
    Width = 433
    Height = 89
    Caption = 'Tipo do Array'
    TabOrder = 5
  end
  object RadioButton2: TRadioButton
    Left = 207
    Top = 52
    Width = 153
    Height = 16
    Caption = 'Bidimensional (matriz)'
    TabOrder = 6
  end
  object RadioButton1: TRadioButton
    Left = 32
    Top = 56
    Width = 145
    Height = 11
    Caption = 'Unidimensional (vetor)'
    TabOrder = 7
  end
end
