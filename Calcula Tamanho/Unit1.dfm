object Form1: TForm1
  Left = 227
  Top = 116
  Width = 236
  Height = 201
  Caption = #193'rea do Tri'#226'ngulo'
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
    Left = 14
    Top = 18
    Width = 24
    Height = 13
    Caption = 'Base'
  end
  object Label2: TLabel
    Left = 13
    Top = 50
    Width = 27
    Height = 13
    Caption = 'Altura'
  end
  object Label3: TLabel
    Left = 14
    Top = 122
    Width = 22
    Height = 13
    Caption = #193'rea'
  end
  object Edit1: TEdit
    Left = 54
    Top = 16
    Width = 109
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 54
    Top = 48
    Width = 110
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 54
    Top = 119
    Width = 111
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 14
    Top = 78
    Width = 150
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = Button1Click
  end
end
