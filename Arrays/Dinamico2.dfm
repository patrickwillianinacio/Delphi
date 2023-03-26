object Form1: TForm1
  Left = 232
  Top = 118
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
    Left = 16
    Top = 16
    Width = 76
    Height = 13
    Caption = 'Nome do Aluno:'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 39
    Height = 13
    Caption = '1'#170' Nota:'
  end
  object Label3: TLabel
    Left = 184
    Top = 80
    Width = 36
    Height = 13
    Caption = '2'#170' Nota'
  end
  object edAluno: TEdit
    Left = 16
    Top = 32
    Width = 474
    Height = 21
    TabOrder = 0
  end
  object edNota1: TEdit
    Left = 16
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = edNota1KeyPress
  end
  object edNota2: TEdit
    Left = 176
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 336
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Gravar Aluno'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 440
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Limpa &Campos'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button3: TButton
    Left = 536
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Ler Alunos'
    TabOrder = 5
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 536
    Top = 40
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 6
    Kind = bkClose
  end
  object Memo1: TMemo
    Left = 16
    Top = 136
    Width = 593
    Height = 433
    Enabled = False
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
end
