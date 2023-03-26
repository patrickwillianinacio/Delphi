object Form1: TForm1
  Left = 489
  Top = 140
  Width = 758
  Height = 569
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 78
    Align = alTop
    TabOrder = 0
    object btnVoltar: TButton
      Left = 26
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Voltar'
      TabOrder = 0
      OnClick = btnVoltarClick
    end
    object btnAvancar: TButton
      Left = 118
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Avan'#231'ar'
      TabOrder = 1
      OnClick = btnAvancarClick
    end
    object btnParar: TButton
      Left = 212
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Parar'
      TabOrder = 2
      OnClick = btnPararClick
    end
    object btnAtualizar: TButton
      Left = 306
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 3
      OnClick = btnAtualizarClick
    end
    object Edit1: TEdit
      Left = 27
      Top = 46
      Width = 682
      Height = 24
      TabOrder = 4
      OnKeyDown = Edit1KeyDown
    end
  end
  object Web: TWebBrowser
    Left = 0
    Top = 78
    Width = 742
    Height = 453
    Align = alClient
    TabOrder = 1
    OnTitleChange = WebTitleChange
    ControlData = {
      4C000000B04C0000D22E00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
