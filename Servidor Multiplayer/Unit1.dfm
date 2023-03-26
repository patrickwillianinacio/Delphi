object Form1: TForm1
  Left = 257
  Top = 120
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 296
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ss: TIdTCPServer
    Bindings = <>
    CommandHandlers = <>
    DefaultPort = 8080
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    OnConnect = ssConnect
    OnExecute = ssExecute
    OnDisconnect = ssDisconnect
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    Left = 288
    Top = 112
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 368
    Top = 112
  end
end
