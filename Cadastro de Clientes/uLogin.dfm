object frmLogin: TfrmLogin
  Left = 575
  Top = 129
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 140
  ClientWidth = 158
  Color = clGradientInactiveCaption
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 19
  object lblUsuario: TLabel
    Left = 20
    Top = 18
    Width = 66
    Height = 19
    Caption = 'Usu'#225'rio:'
  end
  object lblSenha: TLabel
    Left = 20
    Top = 64
    Width = 55
    Height = 19
    Caption = 'Senha:'
  end
  object lblMsg: TLabel
    Left = 80
    Top = 0
    Width = 4
    Height = 19
  end
  object edtUsuario: TEdit
    Left = 20
    Top = 34
    Width = 130
    Height = 27
    Hint = 'Digite seu nome de login'
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object edtSenha: TEdit
    Left = 20
    Top = 84
    Width = 130
    Height = 27
    Hint = 'Digite a sua senha (m'#225'ximo de 7 d'#237'gitos)'
    CharCase = ecLowerCase
    MaxLength = 7
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 8
    Top = 114
    Width = 75
    Height = 24
    Caption = '&OK'
    TabOrder = 2
    OnClick = btnOkClick
  end
  object btnCancelar: TButton
    Left = 83
    Top = 114
    Width = 75
    Height = 24
    Caption = '&Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
end
