object frmCalculadora: TfrmCalculadora
  Left = 236
  Top = 185
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 368
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 349
    Width = 450
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 200
      end
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Alignment = taCenter
        Width = 50
      end>
    ParentShowHint = False
    ShowHint = True
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 450
    Height = 349
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabCalculadora: TTabSheet
      Caption = 'Calculadora'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 442
        Height = 321
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Panel3: TPanel
          Left = 201
          Top = 5
          Width = 235
          Height = 308
          BevelInner = bvLowered
          TabOrder = 1
          object edtResultado: TRichEdit
            Left = 4
            Top = 5
            Width = 227
            Height = 298
            Hint = 'Hist'#243'rico das opera'#231#245'es'
            Alignment = taRightJustify
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ScrollBars = ssBoth
            ShowHint = True
            TabOrder = 0
          end
        end
        object Panel4: TPanel
          Left = 6
          Top = 7
          Width = 192
          Height = 307
          BevelInner = bvLowered
          TabOrder = 0
          object Label7: TLabel
            Left = 59
            Top = 265
            Width = 76
            Height = 13
            Caption = 'Casas decimais:'
          end
          object Panel6: TPanel
            Left = 8
            Top = 7
            Width = 175
            Height = 34
            BevelInner = bvLowered
            TabOrder = 0
            object Edit1: TEdit
              Left = 7
              Top = 7
              Width = 160
              Height = 21
              Hint = 'Valor para opera'#231#245'es'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object Panel1: TPanel
            Left = 8
            Top = 44
            Width = 174
            Height = 210
            BevelOuter = bvLowered
            TabOrder = 1
            object Button1: TButton
              Left = 7
              Top = 5
              Width = 39
              Height = 25
              Caption = '7'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = Button1Click
            end
            object Button2: TButton
              Left = 47
              Top = 5
              Width = 39
              Height = 25
              Caption = '8'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = Button2Click
            end
            object Button3: TButton
              Left = 87
              Top = 5
              Width = 39
              Height = 25
              Caption = '9'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = Button3Click
            end
            object Button4: TButton
              Left = 7
              Top = 30
              Width = 39
              Height = 25
              Caption = '4'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = Button4Click
            end
            object Button5: TButton
              Left = 47
              Top = 30
              Width = 39
              Height = 25
              Caption = '5'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = Button5Click
            end
            object Button6: TButton
              Left = 87
              Top = 30
              Width = 39
              Height = 25
              Caption = '6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnClick = Button6Click
            end
            object Button7: TButton
              Left = 7
              Top = 55
              Width = 39
              Height = 25
              Caption = '1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              OnClick = Button7Click
            end
            object Button8: TButton
              Left = 47
              Top = 55
              Width = 39
              Height = 25
              Caption = '2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              OnClick = Button8Click
            end
            object Button9: TButton
              Left = 87
              Top = 55
              Width = 39
              Height = 25
              Caption = '3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnClick = Button9Click
            end
            object Button10: TButton
              Left = 7
              Top = 80
              Width = 79
              Height = 25
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              OnClick = Button10Click
            end
            object Button12: TButton
              Left = 87
              Top = 80
              Width = 39
              Height = 25
              Caption = ','
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
              OnClick = Button12Click
            end
            object btnSoma: TButton
              Left = 127
              Top = 5
              Width = 41
              Height = 25
              Hint = 'Adi'#231#227'o (Soma)'
              Caption = '+'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              OnClick = btnSomaClick
            end
            object btnSubtrai: TButton
              Left = 127
              Top = 30
              Width = 41
              Height = 25
              Hint = 'Subtra'#231#227'o'
              Caption = '-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
              OnClick = btnSubtraiClick
            end
            object btnMultiplica: TButton
              Left = 127
              Top = 55
              Width = 41
              Height = 25
              Hint = 'Multiplica'#231#227'o'
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 13
              OnClick = btnMultiplicaClick
            end
            object btnDivide: TButton
              Left = 127
              Top = 80
              Width = 41
              Height = 25
              Hint = 'Divis'#227'o'
              Caption = '/'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 14
              OnClick = btnDivideClick
            end
            object Button14: TButton
              Left = 7
              Top = 130
              Width = 161
              Height = 25
              Hint = 'Zera a soma'
              Caption = 'Zerar soma'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 15
              OnClick = Button14Click
            end
            object btnLimpar_Historico: TButton
              Left = 7
              Top = 155
              Width = 161
              Height = 25
              Hint = 'Limpa o hist'#243'rico'
              Caption = 'Limpar Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 16
              OnClick = btnLimpar_HistoricoClick
            end
            object Button16: TButton
              Left = 7
              Top = 180
              Width = 161
              Height = 25
              Hint = 'Imprime o Hist'#243'rico'
              Caption = 'Imprimir Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 17
              OnClick = Button16Click
            end
            object btnPercentual: TButton
              Left = 7
              Top = 105
              Width = 39
              Height = 25
              Hint = 'Calcula um percentual sobre um valor'
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 18
              OnClick = btnPercentualClick
            end
            object btnDiv: TButton
              Left = 47
              Top = 105
              Width = 39
              Height = 25
              Hint = 
                'Retorna o inteiro de uma divis'#227'o - S'#243' '#233' calculado com valores in' +
                'teiros.'
              Caption = 'Div'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 19
              OnClick = btnDivClick
            end
            object btnMod: TButton
              Left = 87
              Top = 105
              Width = 81
              Height = 25
              Hint = 
                'Retorna o resto de uma divis'#227'o - S'#243' '#233' calculado com valores inte' +
                'iros.'
              Caption = 'Mod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 20
              OnClick = btnModClick
            end
          end
          object pnlVl_Final: TPanel
            Left = 7
            Top = 279
            Width = 175
            Height = 22
            Alignment = taRightJustify
            BevelOuter = bvLowered
            BorderWidth = 5
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object txtCasas_Decimais: TSpinEdit
            Left = 137
            Top = 256
            Width = 45
            Height = 22
            MaxValue = 10
            MinValue = 0
            TabOrder = 3
            Value = 2
            OnChange = txtCasas_DecimaisChange
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Calculos Especiais'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 442
        Height = 321
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object PageControl2: TPageControl
          Left = 2
          Top = 2
          Width = 438
          Height = 317
          ActivePage = TabSheet5
          Align = alClient
          TabOrder = 0
          TabPosition = tpBottom
          object TabPotencia: TTabSheet
            Caption = 'Potencia'
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object Label1: TLabel
                Left = 125
                Top = 100
                Width = 54
                Height = 13
                Caption = 'Valor Base:'
              end
              object Label2: TLabel
                Left = 134
                Top = 125
                Width = 45
                Height = 13
                Caption = 'Pot'#234'ncia:'
              end
              object Button11: TButton
                Left = 222
                Top = 141
                Width = 81
                Height = 25
                Caption = 'Calcular'
                TabOrder = 2
                OnClick = Button11Click
              end
              object edtVl_Base: TSpinEdit
                Left = 182
                Top = 91
                Width = 121
                Height = 22
                MaxValue = 0
                MinValue = 0
                TabOrder = 0
                Value = 0
              end
              object edtVl_Potencia: TSpinEdit
                Left = 182
                Top = 116
                Width = 121
                Height = 22
                MaxValue = 0
                MinValue = 0
                TabOrder = 1
                Value = 0
              end
              object pnlVl_Potencia: TPanel
                Left = 139
                Top = 171
                Width = 164
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Media'
            ImageIndex = 1
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object Label3: TLabel
                Left = 8
                Top = 23
                Width = 93
                Height = 13
                Caption = 'Valores para m'#233'dia:'
              end
              object Label4: TLabel
                Left = 283
                Top = 201
                Width = 30
                Height = 13
                Caption = 'Soma:'
              end
              object Label5: TLabel
                Left = 255
                Top = 231
                Width = 58
                Height = 13
                Caption = 'Quantidade:'
              end
              object Label6: TLabel
                Left = 286
                Top = 261
                Width = 27
                Height = 13
                Alignment = taRightJustify
                Caption = 'Total:'
              end
              object edtVl_Media: TSpinEdit
                Left = 105
                Top = 14
                Width = 121
                Height = 22
                MaxValue = 0
                MinValue = 0
                TabOrder = 0
                Value = 0
              end
              object StringGrid1: TStringGrid
                Left = 106
                Top = 39
                Width = 119
                Height = 236
                ColCount = 1
                DefaultRowHeight = 18
                FixedCols = 0
                RowCount = 1
                FixedRows = 0
                TabOrder = 2
              end
              object Button13: TButton
                Left = 233
                Top = 14
                Width = 66
                Height = 22
                Caption = 'Inserir'
                TabOrder = 1
                OnClick = Button13Click
              end
              object pnlVl_Soma_Media: TPanel
                Left = 316
                Top = 188
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
              object pnlQt_Media: TPanel
                Left = 316
                Top = 218
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
              end
              object pnlVl_Total_Media: TPanel
                Left = 316
                Top = 248
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Datas'
            ImageIndex = 2
            OnShow = TabSheet3Show
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object lblQt_Difer: TLabel
                Left = 284
                Top = 270
                Width = 30
                Height = 13
                Alignment = taRightJustify
                Caption = 'Soma:'
                Visible = False
              end
              object cmbDatas: TComboBox
                Left = 100
                Top = 10
                Width = 325
                Height = 21
                ItemHeight = 13
                TabOrder = 1
                OnClick = cmbDatasClick
                Items.Strings = (
                  'SOMA DIAS A UMA DATA'
                  'SUBTRAI DIAS DE UMA DATA'
                  'SOMA MESES A UMA DATA'
                  'SUBTRAI MESES DE UMA DATA'
                  'SOMA ANOS A UMA DATA'
                  'SUBTRAI ANOS DE UMA DATA'
                  'SOMA SEMANAS A UMA DATA'
                  'SUBTRAI SEMANAS DE UMA DATA'
                  'DIFEREN'#199'A DE DIAS ENTRE DUAS DATAS'
                  'DIFEREN'#199'A DE SEMANAS ENTRE DUAS DATAS'
                  'DIFEREN'#199'A DE MESES ENTRE DUAS DATAS'
                  'DIFEREN'#199'A DE ANOS ENTRE DUAS DATAS'
                  'CALCULA IDADE'
                  'DIFEREN'#199'A REAL ENTRE DUAS DATAS (ANOS/MESES/DIAS)')
              end
              object edtQt_Dias_Datas: TSpinEdit
                Left = 5
                Top = 34
                Width = 69
                Height = 22
                MaxValue = 99999999
                MinValue = 1
                TabOrder = 2
                Value = 1
                Visible = False
              end
              object dtpDt_Calculo: TDateTimePicker
                Left = 5
                Top = 10
                Width = 90
                Height = 21
                Date = 38460.564268900460000000
                Time = 38460.564268900460000000
                TabOrder = 0
              end
              object dtpDt_Calculo_1: TDateTimePicker
                Left = 5
                Top = 60
                Width = 90
                Height = 21
                Date = 38460.564268900460000000
                Time = 38460.564268900460000000
                TabOrder = 3
                Visible = False
              end
              object MonthCalendar1: TMonthCalendar
                Left = 82
                Top = 69
                Width = 265
                Height = 213
                AutoSize = True
                Date = 38460.390787384260000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                Visible = False
                WeekNumbers = True
              end
              object Button15: TButton
                Left = 351
                Top = 34
                Width = 74
                Height = 22
                Caption = 'Calcular'
                TabOrder = 4
                OnClick = Button15Click
              end
              object edtDt_Calculo_1: TMaskEdit
                Left = 362
                Top = 265
                Width = 64
                Height = 21
                EditMask = '!99/99/9999;1; '
                MaxLength = 10
                TabOrder = 6
                Text = '  /  /    '
                Visible = False
              end
              object pnlQt_Difer_Datas: TPanel
                Left = 95
                Top = 257
                Width = 330
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                Visible = False
              end
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Horas'
            ImageIndex = 3
            OnShow = TabSheet4Show
            object Panel10: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object lblTotal_Hora: TLabel
                Left = 251
                Top = 270
                Width = 63
                Height = 13
                Alignment = taRightJustify
                Caption = 'lblTotal_Hora'
                Visible = False
              end
              object cmbCalcula_Hora: TComboBox
                Left = 100
                Top = 10
                Width = 324
                Height = 21
                ItemHeight = 13
                TabOrder = 1
                OnClick = cmbCalcula_HoraClick
                Items.Strings = (
                  'SOMA SEGUNDOS A UMA HORA'
                  'SUBTRAI SEGUNDOS DE UMA HORA'
                  'SOMA MINUTOS A UMA HORA'
                  'SUBTRAI MINUTOS DE UMA HORA'
                  'SOMA HORAS A UMA HORA'
                  'SUBTRAI HORAS DE UMA HORA'
                  'DIFEREN'#199'A DE SEGUNDOS ENTRE DUAS HORAS'
                  'DIFEREN'#199'A DE MINUTOS ENTRE DUAS HORAS'
                  'DIFEREN'#199'A DE HORAS ENTRE DUAS HORAS'
                  'DIFEREN'#199'A ENTRE DUAS HORAS')
              end
              object edtSoma_Horas: TSpinEdit
                Left = 5
                Top = 34
                Width = 68
                Height = 22
                MaxValue = 99999999
                MinValue = 1
                TabOrder = 2
                Value = 1
                Visible = False
              end
              object dtpHoras: TDateTimePicker
                Left = 5
                Top = 10
                Width = 89
                Height = 21
                Date = 38460.564268900460000000
                Time = 38460.564268900460000000
                Kind = dtkTime
                TabOrder = 0
              end
              object dtpHoras_1: TDateTimePicker
                Left = 5
                Top = 60
                Width = 89
                Height = 21
                Date = 38460.564268900460000000
                Time = 38460.564268900460000000
                Kind = dtkTime
                TabOrder = 3
                Visible = False
              end
              object Button17: TButton
                Left = 351
                Top = 34
                Width = 73
                Height = 22
                Caption = 'Calcular'
                TabOrder = 4
                OnClick = Button17Click
              end
              object MaskEdit1: TMaskEdit
                Left = 362
                Top = 265
                Width = 64
                Height = 21
                EditMask = '!99/99/9999;1; '
                MaxLength = 10
                TabOrder = 5
                Text = '  /  /    '
                Visible = False
              end
              object dtpResultado_Horas: TDateTimePicker
                Left = 320
                Top = 257
                Width = 104
                Height = 27
                Date = 38460.564268900460000000
                Time = 38460.564268900460000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Kind = dtkTime
                ParentFont = False
                TabOrder = 6
                Visible = False
              end
              object pnlTotal_Hora: TPanel
                Left = 318
                Top = 258
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                Visible = False
              end
              object ckbTimer_Ativado: TCheckBox
                Left = 100
                Top = 39
                Width = 234
                Height = 17
                Caption = 'Timer Ativado (Calculo a partir da hora atual)'
                TabOrder = 8
                Visible = False
                OnClick = ckbTimer_AtivadoClick
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Cron'#244'metro'
            ImageIndex = 4
            object Panel11: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object VrClock1: TVrClock
                Left = 75
                Top = 135
                Width = 116
                Height = 24
                Threaded = True
                Active = True
                ShowSeconds = True
                ShowTimeZone = True
                Palette.Low = clGreen
                Palette.High = clLime
                AutoSize = True
                Color = clBlack
                ParentColor = False
              end
              object pnlCronometro: TPanel
                Left = 12
                Top = 10
                Width = 406
                Height = 41
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '00:00:00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -27
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object btnInicia_Cronometro: TButton
                Left = 138
                Top = 55
                Width = 75
                Height = 25
                Caption = 'Iniciar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = btnInicia_CronometroClick
              end
              object btnZerar: TButton
                Left = 218
                Top = 55
                Width = 75
                Height = 25
                Caption = 'Zerar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = btnZerarClick
              end
            end
          end
        end
      end
    end
  end
  object SkinData1: TSkinData
    Active = True
    DisableTag = 99
    SkinControls = [xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo, xcCheckBox, xcRadioButton, xcProgress, xcScrollbar, xcEdit, xcButton, xcBitBtn, xcSpeedButton, xcPanel, xcGroupBox, xcStatusBar, xcTab]
    SkinStore = '(Good)'
    SkinFormtype = sfMainform
    Left = 580
    Top = 290
    SkinStream = {
      A3B5000015760800D676B1987A5C760C043F5EADC531803F97FBDBF9F8807EFF
      9BAF75B596672D1C0DB0B3B49F4284A043F16B735A981D717BF3FA6001F526FE
      806B639F849B7A5AB493A0B8F3D74404FFFE1033DF474253EF31C04963067167
      26BAB829F488A1AAACAD109A1B51358CD04CCB84DE6C549C751543D01F7AF44A
      6E6085980C98AC7B30AC252A0F65D12ED4B4F276D2169C30ECA0C6703186CAC4
      BDB094A59FEE1D4B1981B872C9DC6A397229701EB6D85885337DC58708961198
      4F23110D410B18083874D47F7D09E622D99C0101EA42CB4A785BC545F95FD25E
      317D208869E5889C490935376176A8979651E004C0E3BE2D038A60DC0F63E431
      772231A10BAB441D41BF980DF98F2D26038E398138800415788676AEBDE28C7B
      E79BFB5AA23775B253E7DE8016138030FDE30C2FFDF5601C4C71703DCCA42950
      6C47EE9C8836304FBBA1D92897701CF4DB99293126409D8ADE4F3C7CD01BE067
      5406ECABC101B5A138E66EF803F0F0AA587807E7200E81715E95B9DE1703052D
      0FBF004E0A793098D5FB10F1A9C01208525DB606AE60E52D470F80C3095E025F
      06C860360278096CE58409589EDEA5DE0343627E4192F018433ACD84F3C06C6C
      554003E181159853FC763C46220473B2221A63B785D8C059E68B0B5F7D0E2809
      6719A8FAE1A7BA011A9BD6F4373A9D38ECF0C10163E8FF1F8DC337AB2F2E0233
      D718754FBAEB0479E16BA177AED790FACFE7314443C84FB8218CAE324362DA9C
      8B3588FA4B05F9ADD6B1EB045DCCD814D3B1CDDECCCE74C8BAD3693BD4553398
      8EC87C216B0FE62D70D3D4ED706DF998535B58AEBB013D7AD500D3B29933F4F4
      2E7B324B18F644FCF6F977A775D6F3E408746F8BD5163C735844F0E1CAFBAF12
      6D771CDDEDDDAD77863C1F03BC75AF9ECE8A92C6F08EBA04E94581E6EFBD655C
      74265B16F69380E4938D57C5C9FEA4E4BE692C2E71CFE6609D194049E6FA3F23
      91208E310AF133C5C96BAD6F2512C3BBF1BA9E5CDCE57F163DCF87AB2A1D90AF
      29F17DC9B5B0D459705495DFE2B995275ECC62244B2D8E042487494F801B1AAE
      F9AF5C8F4578A3F3D6EA4D96AAA5EDF7C29486F7DA27E56BB9186FED5E45E8AC
      FAD7EEFD742BBBBC115693B8554202A55405CE154178D9A934BE6DE9C7D837C5
      0B43D5AAA9F37ECD5C9BEDEBA553E87B6A80E6FFA828AE9A6AFBC6BBC7D57D69
      A74FFDDA9BED351C4C2545AF937A4F9448A4BB054B3FBA02998EC5D66935CBBF
      4938EA5B36F4AB09921ABBDD04F6B540363520D8A7BCD6F567BB35AAB49A093B
      9B3B0ED271E94F49E4631A9811B893D4E951A9455D32E9212E538BA94C60CB2B
      CF5CB5758ACC3DCBC59D517F74EF7B0675EEDDBAE459E39425BAA4C42D7EF158
      6295EDB05C475F8DAD62EB658F574527B5D95BA1EAB237CF4E9C69D8107255D7
      6E4723311B2CF1C82C6DA0F37D5EBF5460C1BBE606B2AE6B0FF17B313938E9C4
      A9E9AAA749DC225BFE05FAFDE11CD8F5D5AA39FD80F223B1C6A455EC5B9A5E4E
      119E460C0C658132E85838334C495766D16863D32E5714611FC277CE407E065A
      8424BD97290742E3E1BED287329586BFD2A69D3DBFB91CF03F7CA17ED5A4AE31
      BD73001AFA22339B75A9AE7BA7F9740933D5A2AD91B0F28302D13421FDE2BAA8
      7E82F3777C0431E21F6EA1BE3B67AF58AD657E2554AED7393C2B546F635716E1
      85DDFA4DDE38F9EEE5477452E8DA99F7D1BAE10471B7A29EE719963303F9350B
      61FEE58CC62E4FD9DC9FB85C85C7655D316EC8EB84F9B71CDF8B370D576F9C67
      2F947BDD63C7A57313AE1600D910189C076A019300D64072603B6018A019201A
      B01810039589B0BC07D688C63F7E01F7911CA15DC4C78894BB345EC4071C0724
      075C060480C8660D4D95AFB5B8D7EF634DF6806100C3018E031C06980D401DF6
      03995806B80FCE80E240E201FF1018EF79ABF348AAFE3ABFA807500EB01D603F
      3C178BE0BD3DD1C8F09F9BF3ABCD703D07FC07F80C003000FBC00DD0403100C4
      03180EDE00D0B3D003EF003A56C7C2ABB455FA6AFD203480D403500EEE86E319
      3CD547E261FE9E1D479FEDBAC406F7CEF01BC07001C007001C007001CC07301C
      C07301DA513D8DBDFA55FD007801E007D01F28019CBE3AA312EC0BCF2212AB36
      ABE6B6707E01F807E01F807E01FC07F01FC07F01FC06003001D9018E97D797FF
      3EB96743C039C80E70DEFD38FA7E9DD5F800C006003201F46EFED3D9CFAD81DA
      FF7B271C73394806403201900C806403201980CC06603301DED01AE094B7365E
      08D6A2C36FE5D58F510128699FABD6F48757CDFF1B77689F490A936C4FE03A41
      F4FA32B0CC06603301980EFDDDFFCD63746FE8D1B52F0E4FEB726F536943AC85
      006E6FA6D406A03B7A03F345A2280D406A03501F0201AACF501B31B601CFCA4E
      190F3019132CE2FAAAAFBFE3E5BFF21948EAA78465982C7AA30FC5039105F466
      F5BE13DECCF81580066DABFB7563AFCAEA03501A80E320B32E08706A4E6C1A16
      F89DA5F91A22A1A3221A373AD53721FCCBAF02A80D4073B80CC5FF91806C0321
      01DCD35E300DC06E03701C60033B7EFC6E03701C6203598E730C07F4B2BF72E1
      100E2DBC06FD559CABD4F8D51E35C3234F856A5CCAB52F7D72A4EF22BF3601FE
      2BA80CF0D8164566529F2AEDAB1D806E03701B80F8DDB9B1856ED51E578547DE
      095F47D4781FECBB800DE8FDC06E03901CD8BC80E6C6E407203A01D00E470BF9
      7559E780FB352F14C067F8063809E7F9EEBA1B2F9CE4F4F9B2F1F5868BBE8D0E
      FDEEDC5E01AC1FFC0376956E16AC769F683561E00F007803C01F6CBA8F5BDAF5
      EA2C1AA3FEF527936F803CA07C018C680E66A4AF007803C01E00E4601E51FE00
      E4401FE9A673526AE0338AA75A01B152E32E2D633DCB51906EA891DCBDE1421E
      DF2EFFAA74F5D00FDE797203636B2DCAAFCABFC01E00F00780394BB76A035E3D
      751F17B579517803D01E80F407C03E01F5D1F00F807C03CA70DF7FC3F7D4DAB5
      D9FC2733DCB24AF9BD3EE1A366AF90A0852FE324E701C82DDAA75D006ED6AFF8
      07C03E01F00E32EEE1A8FCE49B76361EE5D017547F00F8072D80FA6DF807C03E
      01F00F807C03E01F00C7F756BADD9FCBC031F9ECAE1D939D852D10FDB6D21B25
      F595FBFE9077B178CA973C07605E4EA7FFA01BDBAC3E01F00F807C03B5E1E1D5
      5B76377F517AD51FC03E01ADC01F565F00F807C03EBA3F01F80FC07E03F33896
      95FA4CCBDB33318FC0D13CCDA18CC7EE64C9F42F5BAA4EAA8F11C54585FE3ADE
      01BB4AC7F01F80FC063D00D674684EB985BDAFB6C8D4AA3C67D01F80FC07E030
      03003003003003003003175EBFBEFBCFEFD740775ED3EBA93D44FD68976A932F
      E30810F6FF6BD0C762806A9CEA4D65801801801B1601F4B876C43DB3AEA4CAA8
      5AA2FE6A1EBA8BDFA9F003003E2006D9B60060076201891F0030030030030033
      E8077BEA7A51B5BE9083CA15DCFE1B4E5E8216757B7943137991DCEBA44D51E9
      1A2C4970072C5EC03C0AFF4F7E8A4563801801801ABC01AAB53F889BF0D69BD9
      3E5B23CBDBBF39FB1406007A6018ACB00300300317460069940E3F8B003F300E
      B0D75EDDEBE345FF6A0CF6D9C56E42F201FED193E7AA83112D19F5613E470DFD
      BFA89516AF68E7ADF260DBBB26801E42F66F58600600600600656EECE999FD2A
      CB12C5F64FF112F5884D190697D95F91B62624AC00C00C00EC803C94B8018018
      01801801801E9C0326DDB97757E786AF9545E5217C80F9CD7F551FD6CAFC3F7D
      536C73FF3E36E6F33BC5E1845854D42806D34EE8AD0CABF003003003003EAECD
      4B5EFA8CA9FFD9C75EE777DBBEB64FE9527D6CBDEA97003203203203D1C07787
      64064064068078A80D5EFA0198B05E39E25DA81DFD8677B627DF84E723DFD483
      FB227ED49F6B42509D827ECCA3F2706036A5CC7B01A2AE9AEE28B37C200EFC4B
      ABB203203403403D45DBD13597137FCC7155527EEC9EAF6FCB3254BFBCA7FEC0
      FA01A01E200FD726806806806806806807DF01F57CEAD6D00D00C8501DB49F5F
      5AF51C1F9DF5EF2384BE6623CC7B2E686F7177CB7E62275E80CEEF05EC68ADE5
      4DBDFBD0E965A0F817463949586FA67F6A3D96A4DFF701E0556E806806806807
      F1BB3A4C4E831B7CAD2671F94126E740CFDFB2769526D6A5D00D00DCE03F5C5A
      01A01EE00C906D00D00DB403A325E8068068068078A00F14C7DDB6ADEA03C363
      ECB8B77068DCF6127B2A4C2E95CE7073A3CEDC8FDCD6A4CC3E38FAD479F96C66
      480F2156E80680680680746EBFBF96EDDB527C0F22073E5C67DEF2C6739ADA7A
      D4BD9D97A01A01EEC063F93D00D00F7C0766EAD00D00FA406ED360F4034032F0
      1AC33A01FF38C3BD6FCF758F7CC59F62E3183C525E3F7FC75278CEFC92E54FA7
      2C4B586B51EFE5D61F1C07B8AAF4034034034031F7560191B4EB526078AEF25B
      9CAC1B7DBFAECAC952ED58864D6A6D00D00FAE032591A01A019B0192E9D00D00
      D00D00DD80360F4D00D00ED803F5E31F3E34CB6EE7B006EB1E6D4F66ECFF1566
      C9F8C2466CD7D62D8173B98CD497DBFE14C7E2DB95076FD3088DB2579E2DD080
      C28AA74034034034037773F52EBF2BE9F9F36A4EDDD9BDF0D95E8F854B9B65E6
      A9B4034031A01B6AFFF2806806E80335D5A01A019580CDFB1A01A01D401A59E8
      0674C7EFB27C0CCDBD23A0B57FEA033803ED1C81E603B3276CCC9E30FD226F8C
      9F732FB5DEA5C6B47DE7D49959AC27FE35EA4F6BA656613007D5AA3403403403
      4030CBA3F85D9B4B21DF6A93A4FEBEC71FF4EF4DAA5F80DB28F59D2D3EFB3385
      4FA01A01A01A01D6807C2739DA01A01C50070C1DA01A01E401C9F2AC5403403E
      580F47C06FDEBDC0FDB369C80FCB305C1270B09C32EFAC070CC190D785407105
      E301CC27117FC3567F74F053E4CF491F22AE5D3B9549E5307EBB08EB8BC59D49
      D59EB4DEA7E551E1A53DE806806806807EC8072BA3AE7ECF3DC61BB80EABC214
      76A5EE3EECBF8C53F058D6DEE3E81D00D00EF4073B2B603603D603ADD7B01B01
      B01B01B01B01F730194327AF7EEA03AE59F582F500EB97BD597F329D8AD2E2BF
      586FC9078203F21BFD9C3B6CAC47A6F63DA97FAEB4A4BCF33FFED49FB52F17E6
      553711E80EDB43F407771580D80D80D80F980C938876D8DDBEEBA00808C4D49D
      B6577A9728088C2CEE9C096A50C1D652D808C06C071E01DF786C06C07B006D03
      6036A4D80F7803BE30D80E00CDC077EF5DC07FB2A77038795F6F5F32BF00F156
      E181C4C938823F6D26E9D8067436611E7803C13FD41FFEBF78AFE16C641B2FF7
      C17B28C409103DCBC54FE36760019F7EC003D340E5180D80D80D80EA807C3A69
      A000EC29B381B0FAB11C7A00197527D407468320BB01B01ED0033A4037007007
      6603B36E1EC01C01DAC061C1BC01C01C01C01EDE03CC6E0CB4F7CFE017ECBCFD
      5F77C13DE371FDC2665F047E0CFC8F7B111A38CD08072C078079613C02F19C7A
      6A4E310075EF66CAB2627D136675CB979936775DDCFBB24078DA5C01C01C01C0
      1F8018C313EFFE031AB8038F69F0C3CDD8D9454FCA03803D3427B0EF0C600E00
      F280728FE00E00E00E00E00E00CE199D4579203C52D9E07D70064A7BD6A30FE2
      73787475AC6F29006597DAE480345D77FF5905C01C01C01C01FDC03C545FB00E
      366794B5E88E26D60E901AC17BC01CA07803803F62F7B8BF007007F0060A1F6D
      803803803803D58078EB275003EEDF9627D208B60003D85D500F8C660334FCBA
      5185A8079929A00E00E00E00D6101FDA83B71D56346DBD8377EF580E6BCE5080
      3803803803803803803803803803803C260360A3B42C203CC3406C5D5807CF11
      F215EF22E193296A517C01C01C01C01D50079D774434B83A84769C04708B5F73
      5C381200E00E00E00E00E00E00C7806C7007006A401C40E00D7C07D7A66AFF95
      2AFE55FC01C01C01C01FC017F70F72CDA5A381EC08ED97FE2D897CDBBC1B52E3
      700700700700784006270070070070060201C59F0062E03606C7F55772AFE55F
      C01D01D01D01E141B78F9B1E3E89FF58C81D1DC751FAF6DD901D7CF407407407
      4074074074074074074074073C09F0FBDFB57F407407407406B701FF7881CFBA
      355A72237208A0A0997F8505407407407407407407407407407407407407BC06
      E080C9CEEE0F2CFAF00D901BEB7BEAD7D3EB2D5FD01D01D01D01C12EFFF1F799
      3BB93850F64FBBF9B02A03A03A03A03A03A03A03A03A03A03A039C407FDC28B8
      81B46C1C03DEA5FD82FF170F99FD47700914C3ABB28BB86EBB3D5D26AA4CE1E4
      80CCBFA7E55587407407407407BEEECA84455176B770EA5DA9E89AC3B2A6C3B6
      5E830184F5C7501D01CC203E87597280E80E80E80CCC03AB3E80EB1BA0326A93
      FB14E403E666513DDC61F7FF396FEEF749A586E38118179AA321CCD69F8BC8A8
      B15E61BD99E1BD301EDEAFFED63DF95E80E80E80F600B0869EB3549EC34FF505
      BEB6CBAFD3F613F74D89460F536EAEAE4A164E80E80C94060DFD1DA03A03DF01
      92BA64280E80E80E80DCE03EBF0EE8A03A03D640627EFFB280DAB2BD8EC04C07
      1FFD06B750EF22D4F818F18620295780F52EF47A97DE2D49E838F59803D809E0
      3C86FECA007FF44CABBB58F407407407407C2EDC7639B16547FAA6A3F0F52057
      AA3FEF0325480ED1FD01D01D01DB17A03B637407407407407D70BEB5959F801F
      CA978901E3C03EB747889F75F3B2FD9E3EC5ECBDE95528E8043A57EEDA180F21
      F580C5CAB74EAC787F2E7561D01D01D01D01EA9751F9F6BF3516AD47FBA93B36
      F407681E80DCD4060972574074074074073601DA3FA035201A234D5A935407EE
      A9FF80F352E32DF1167B961EE89B1997E9E3FE784D3DBD1F04525EB01F9CD348
      0DD535212ABED5FD01D01D01D01FFBB7D138BCE4551F9F6AED45D01D01D01D01
      D01E01EBA3C03C03C03F1F0DC0387E25E5365BC5FDBB3DCB50B7CEBFEE1B4DB0
      F87C3AA5677BFA780DAA65D53A300C05ABFC03C03C03C0366EEEB51F4F677F63
      61D19E5DE547E01E01A700F4DBE01E01E01E01E01E01E01E01B8DD5CCDD9D2B8
      0618AD95D764E936417083A64D19C7FE265AEBBCFDF851D752EB01A81728A9FF
      980E46D61E01E01E01E01AAF0EF701EDB1B6EA2DBA8FC03C035600F565E01E01
      E01EBA3C03C03C03C0352F12FEFF4981CBD2CD93D3A929A15011693BF44F440A
      FBD6A4EB51FE38218357BD07C031B2B1F00F00F00D2901A0A77C146025FB5ECD
      91DE547DBEA03C03C03C03C03C03C03C03C03C03C03D75F01FEFB8B85A058EEB
      B4FAD49DB39D819C6549BBF2DF35FB7FD800A1DF406EBEBCC565E01E01E01C48
      0308DFB92BF6CEB5263BCCCA8B4550F5A8B6EA7F00F00E7806B36F00F00D3C07
      A47F00F00F00F00F00E4B01BEF53DF3B5B5420EB0AF9169E27C9409E37E57E25
      D544B1A7531A5FC87A98EFFFE300FFDB7C06C15FD5D7DA31AC7C03C03C034A40
      350F538252BE388AB64F5D91D7DBB6E7EF501E01C880F565E01E01E01EBA3C03
      7FE07DFC5E01CA00FD9AE10F7AE842F44A0D167DDD5485D406902A04509BA826
      77C7A87FC1EE97EDFD31909DFC18FC4D664E71DC0501D45E84D61E01E01E01E0
      1A3BBB4187DC19322FB93EC9FC88950F91E84EF9AF657E85313D257807807806
      3203AA97C03C03C03C03C03C03FA00765BB7FEAAFDA1ABD6A2EB217501D735F7
      A8FBECAF9BA9E07B2EC048B4F0819F0C1323B632BAD006D0EAA15BAD57F80780
      78078077BB348D96B4A0BF784D81E6697EDDDF64ED549DF65ECA97C03C03C03C
      037980D70EF00F00F00F00C7803D7BF80767C17CEF12FD81DC30CECD89DFC274
      F1EDA907BC89DEA4FF72AFB4FBC5FF05C7D3CE307AC8E6306E2D94D71B295045
      80E5BD5ABBC03C03C03C034ABB77EF5534D6AABA66549DF64ECF6FC57854BDF9
      4ED607F00F00FF00EEE4F00F00F00F00F00F00C5407E2B65B5BC03C034580D94
      9EBF5AC7707EAFD7B8DE12C5711ED7B2EF8DD85DB63F35044B80C35C0BE84BBD
      8C42FDFBAD4F4A086F938A640F114EA67BD47C546A4C840630AB7C03C03C03C0
      315BB36B66DBA595DC151B773A94F7295AA3F64EED49BB52F8078074403BB8BC
      03C03FC03BC1BC03C034801BF25F807807807807DB80FD0C7DD755BA806FB8FB
      452DC517B73E049F3A93FA7573A50CD647EBD519BAA4E07FD48EA8F834D633B0
      18FD5BE01E01E01E01C375FF7EB9174A93F2A7486AF91881C1F98F760CE6FA97
      8365F8078076803BFC9F807807F40705D5E01E01FD01B545EA98078076203D86
      7C035E630E2B7E7118F784B30971DC1E125F7F7FEF52744EB5E6792B4666934C
      BEA3EB9CE658501A0D57E01E01E01E0187756353480BAA4FBF49DB8C15B281D3
      DBF4ECAF952E8944A3754DE01E01DE80F9647807806180F974F8078078078077
      401C1FA3807806B20396C63C58D3E5BB8D8031F1E6D708A158E2AF993F9748F9
      9AF7C521687F13EC1346919E9B3F2F0324FD26644456CD7431A6F01B1954F807
      8078078063DCF8F75F4E05F51CA937C0ADFFAECAECFE6A5F9B2FE54DE01E01DF
      80D9962B1C03C03BA01F2EAF00F00FC407CFD8F00F00D001E59F8074AC7D064E
      8333F748D427368E01A103E6FE41FC03F3277CCC9A21F029BC24FC6F8F1DD52E
      1FCAF726A4D51E70D7DDA6A4F9F4EC4DBF4071F5478078078078071F746DF766
      D5F4227549C7FEFCB16A11710754BF82BD40D43818A76CCFB53F807807807807
      7D01F82CD638078075001F7077807806C00DFEF93CE01E01BD80E7B653BBD6F0
      3FCE24B003F72417D49DC027DCBBB003EE60C415B6403E82E101AC27D17FCE99
      1A31AFF33267091FD2AFBD3BED49D307FE18684A51BC5D49CA40847D4FF6A3C0
      907EF00F00F00F00F8F80FB746A5FB3E07A07BC0727CB016552F7C7ECBFC29FE
      14FF84270F03E01E018301F6CAF00F00D801F6EBF00F00F00F00F00F00D5101D
      0B27EF7EFC03F659D805C203F65EE1CBF8BBA42AF715F086E220C380E60DCD9C
      3F6CAC178EF45F52FF4014E1FAAA0B7D49BEA5E17D2EA6E09E03F6D0DE039285
      807807807807CC0701C43F6C6FDF75B7A27D5C6A4FDB2BF54BA6FF9B26C385B9
      1B78F748D628DFDC03C03BA00FDBC3C03C036407903C03CA4F00D2807EC61E01
      E01D200FDDEBF00E6CA9F80F3657E3F57A8BC07EAB79C0F4649E811F9DAEF0E6
      03681BA08FA101FC9F641FEABBCE11041853F65FD749BD30A60157FB97FA9FFE
      CEDE0360F63C076D6892601E01E01E01F100FABA311001CC43514761F3288486
      203AAA4D901C990A82F807806DA01B1132CC03C03E201D8B836F00F00F92038E
      0DF00F00F00F00D0403B07C4E1D6F9D905BA5E7F31DFC1386EE3FBD1CCBFC8FF
      99F69EA7185B7DA7C40F500FE0FA827F05FF38F01296D880E67CDB013701EE8E
      CCE60EB028ECEE63C9F47600FFB4BC03C03C03C036C06B8E2BE8701DAEA00FFD
      A7FB0FAB6372B53FA80F00D1813CD19A0700F00FB007A8FF00F00F00F00F00F0
      0EB19D74565C07FA5BAC0F0001C69ED0518729737F7470ACAE44406B74B69220
      367B98F7460BC03C03C03C036880FF516D807FB33E44D38C2EB32FC4407535EF
      807A81F00F00DB17D7C5FC03C036C07F73078E01E01E01E01A28075F32A2007C
      6A0AE8748E57DD8064176603F619BC0D3F25712ACA01D96B7C03C03C03C03B2C
      06DD41BA6C2FB9C8110075646002C9501D04BA60576501E45088C42EB55B720F
      C448A0DDA0AEB8C0B00E6A4EE0FF98FA0EC524642DC36306B90BC06019808C25
      CF43075D5794CB8E19ABBBC41610EBB281FCD2BD9DBCDD71C40C343A836A07AE
      D1B827B973C129EF8986368AE4AEA1A80EFB7C7938026F25A600600600600600
      60060060060060060060060060060039801F9D3C03C03C03C03C03C03C03C03C
      03C03C03C03C03C03C03C03C03C03C03A001FF48F80780780780780780780780
      78078078078078078078078078078078074203FFA07807807807807807807807
      8078078078078078078078078078078078075E0382DDEB807807807807807C07
      C07C07C07C07C07C07C07C07C07C07C07C07C06ED80F4F397C5B2FF51C07C075
      74078E701B86039BE03E03075B3CE039AE03E03E03E03E0373807D7FF6EF3B80
      7E33F01F9D7B600DED2034DAE328380F80F80F80F80F80F80F80F80F80F80F80
      F80F80F80F80F80F80F80E7601B15B51380F80F80F80F80F80F80F80F80F80F8
      0F80F80F80F80F80F80F80F80EC701CF3F26F01F01F01F01F01F01F01F01F01F
      01F01F01F01F01F01F01F01F01F01E8A0383021780F80F80F80F80F80F80F80C
      0180300600C0180300600C018030069601A659617BD60F3001803E3C034B803C
      0C073E00C01B4ADF9001D800300600C018039D0062FF1BBE0501919C0193AF80
      01CAB02FFD40E2E6605FC401D0A9B7FD35481F92120B7A501F1EF69E217E41CE
      3783F1127157857949FA67DEFA90FF7177BB3EEDA3C3FDCFA82EBFEAF7BA77EE
      075CD1E85800000000000000000000000000000000000000000000D3003534B4
      8FB5E35A4F80E601FB01B5E798E203B407EC47BF776641ED5E7D1EAC076E0FDE
      D37603E107EEA2F7536E7637B57D4DEEABDE124AA76C0F03E07C0FBD83EF4478
      1F03E07F421F01E03C0780F01E03C0780F01E03C0780F01E03C0780F01E03C07
      80F01E03C0780F01E03C0780F01E03C0780F01E03C0780F01E03C0780F01E03C
      0780F01E03C0780F01E03C0780F01E03C0780F01E03C0780F01E03C0780F01E0
      3C0780F01E03C0780F01E03C0780F01E03C0780F01E03C0780F01E03C0780F01
      E03C0780F01E03C0780F01E03C0780F01E03C0780F01E03C07DE03F829136F76
      EDF17F9FBB2E7AF77DFB8E03F603D83E81C953A70E0FD917487D77393C5C807E
      1259CF340FD0B4C83FAB7021FF7E693FFDC87D49641F7275FA82CE87580F9A60
      747F58AEC1449F75A0583AA0FD8EF3F0A91883D9C8131D540F51F6AE7AE03F66
      5D8C1F40B46FC181E947F800F9A23ABFA02F32B123D03DEAAF7C1F66AF895D21
      F4A0FC36056DFD956AE4523D927B20FDDCD567EABA65DA2A9F891F403F595A75
      7DB1D5777F72E8C1150FD20F749E2AC447B3D73C945A5D483F055E6DEDACFD91
      125FB41FC0BCAA4B6BF06ECEE44BBED07A52EA06790924407C29D203EC303852
      1FA57BEC1F8DB4D5A983DF4C6D9232F80FE08D303EB4800C657ADFF93B22E7C2
      BED8F740FA76563125EEDCA3A55903F8135B6A4F912F860F908D463859C1EB90
      076A7DB1487F980145D9DFFAED00790C805BE200FDBFC8530BAB9256F07E6245
      67701561BBE7BEC59B17E127EB3E163571F0AF7BEF84803A5707CF5D7F77F747
      D614C46000000000000000000000000000000000000000000015A00DCFBF5406
      F892FF301C92DC03741F58FCC3305E183E40DDB60FDD3DEC077B82571BA0FAA3
      900F81F03F1B43E03C0780F8081FD18F6C03E07C0F81F03E07C0F81F03E07C0F
      81F03E07C0F81F03E07FBA0FE72529E07C0F81F59C3FD6D6307E07C0F81FC60F
      D15380F81F03EC187CD0F81F03E6AFC0780F01E53F81F03E07C0F81F03E07C0F
      81F03E07C0F81F03E07C0F81F353E07C0F81F33FE07C0F81F33FE07C0F9A9F03
      E07C0F9A9F01E03C0780F01E03C0780F01E03C0780F01E03C0780F01E03C0780
      F01E03C0780F01E03C0780F01E03C0780F01E03C0780FE983D341BFFDE68407A
      01EA08F983E25301E583F1E8D83CC077103F38980F341EDDA8E94C078F03D7F3
      01F003EA6D2E1401F103E3A327D401FC03DDECB80A00FE41FEBC1ABA00FF41EA
      7C65EE00ECA07B146E82803FE07E13FCDBA00D283E13660A8034E0F95CA55A00
      E469EA01EE1910CA00D703E2EABD7401AF07B23BFDA803660F775D93401BDA12
      3C0F9E1D481F1AD16B40FB5615F5CA09CBC6407C3F875D7A1AF40DB96478EB40
      F75819CECDD673F415FA9001560F734F6FA0EF0F60D1DFA0FD86E59C2A354774
      C0F4DC83DED417660F003B2FFE583680D39D5003FC801A74803BF2801E6A900B
      6D7672AD06100BD30CE6DA01C60F5BF5A05FE01668800A21202F6D1404E0ED41
      B3014A3100501B0147A9E014EE7C0107F87F87F87F87F87FB63FDAD058F00200
      4008010020040080100200400801002004008010020040080100200400801002
      0040080100200400801002004008010020040080100200400801002004008010
      0200400801002004008010020040080100200400801002004008010020040080
      1002004008010020048090120240480901202405210110FFD3BFF00BD400051C
      1017E2D20235A0234B80A7F8A0281D80A7D8900A7BD38093FD3FD3FD3FD3FD3F
      CC9FEBFB40480901202404809012024048090120240480901202404809012024
      0480901202404809012024048090120240480901202404809012024048090120
      2404809012024048090120240480901202404809012024048090120240480901
      202404809012024048090120240480901202404809012024046405DC088F9367
      175401A3A080CD9081F27F60334F0876C3010595FBFBC00336A105EC07779699
      B90DE700064F7D95A80100200400801002004008010020040080100200400801
      0020040080100200400801002004008010020040080100200400801002004008
      0100200400801002004008010020040080100200400801002004008010020040
      08010020040080100200400801002004008010020040080100200400803F8000
      7F38B9D43C009A082039582113A081F13020386D40BDD8A107F06188C203886B
      6720947D42E2067E7BA7E6DA50136CB5683A8F211424BF3F50158802D603B4E3
      855F5322D23EFA4A53E702164B3659F14CB96017CBFE4D496E0F6FE3D77FB1FC
      40A202A02C7300845708044BAFBA16F3492FE17C31A1BDFE7E4BF181B929BD04
      FEF0BF7DBE18A95F7E8E0023F4AAB4058555D5666F7131520D228F91CDCA9803
      194E087F71ED8FCC563626092E5420E6DAC7C6F880BE980BF1AE066F38ECA8B6
      C64B94783C1EBF910EE77806E96C599910DDBDB1A9AA8080CD5D8CFFA77CCE80
      7E088D8EE1ECCE0B5D77F846558AB673F39F051E5FC602C8FFCC501154016C4F
      C42A311BEF9BEACE61584CA463BC86FC331BBCEFBC5B8B921F3CFB6DD6F02021
      4500A80AF280445F21A7A3A00BC76DDD7945378CD7961DAC6C8BE6B56C8DA10B
      FD862CDB555680BF2ABAED92180DEE457F413DA0E25413EB04DECD717138D8E8
      DA4CA4958805B12FFE10112C02D828C112244E30FE53B510E41242754057C1B6
      7A826AE4049AA808E357C206CFE2520695797D7B8DEDD4BCF2992638F65F4327
      136AA9F56FBD7F5F2040A1699F44044A00B5C700B451853BCB66583ED269D775
      FDBCD6A968B71C8845D07C9F5D88DBC765F77922410159A028A005D9E5EFF6BB
      30905A3EBE82AFC06FF97C2918AB62E3EAA371AAF2EAF4DD13438A29B555680B
      D2AB85A3AD3AF8C71B62FCBBF44C423C356F8A8EFCEED19ACE89C02C04CE2680
      81002C4040444D638B6ACAB91D7BB9B48CA231E6360247C655B3E3CC4A6AA02F
      46AC3216738E3351083AF73EDFD1F436385EB22905CB8001FDE041C1A39015A8
      02E91C020BC48CD8BF9C0ABDC5A573976D1FF0A935F80FFB3E99FEF1C06F7FF0
      BEF8B202AC600B841835CBFFC8ECFC6A6371863AD62713999087C5D8E82288AA
      B00094C95577155825B7852D08B7F33E7D1EE84F5F3D481BE3C00B9BE6A9BF20
      2405F6B4FF045B1BCC7C5F2F6B2FC336FD9AF77E52B9467168971F526AA02F26
      AF1F8720981D7110C12E508087FA7B0BACE646CBC7E5266333C3A20E3C63AA02
      B10040783868C77D5C19D0B6A24345E0735E514F7510BFDEDBA3320B4EB406FA
      DD5010B80402C7D21FF6DCC8DFAD72356BA4ABD1DE6BCB4A535AFE507F0E491A
      249CBDC55625800BE4AAF8CF1C65FF6E7394D3E17AFCD8350E8C3CF77761B3BF
      8ADDED4000B3F0120B7FFF07D9D7C7F6D591F8F1DAFC13FC4FD87B224AAEEA57
      9E62A610D500588D5865AEF0EC78D0B81A53CDECC0AD30FBD453F99EE3EE1D0C
      EC2392237A23A80250A024169880488E51EC355D697A06625F27F8F9D32D740A
      34E7766F6F4CD6695AB79ABE7004C5017D37ECE8017195EA3AC91B32F567B2C1
      17F05064165DB27B032575FC492E3353F6A2AB155FE155D0DC13E96CF2BEE7C6
      CF1C5A69B3CC6D25EB71D528E6B666D1D4016B602F859EE3A30BEED49161B66D
      31EAA1F5B4A45B7A60D5005FD355CB8BC7EEC44A4D27B4E6C6F9ACD6A75BD7CE
      9D6444727E5B19C76BE800400A3EAB392D16DAA97B2F72D6AB4A747F8E9E1EF1
      BBFD4E553F835DF34FF3DCEF51E8C014F401297E3EDF546E3CC5AD5B123EBD33
      F793E34AC1D0F1DEA8FC363655768E425200A4555F6348FB719FFEBAEDA76267
      311E3F41218D648D7FED3FF939640171D0175A74EF47A6950B652AB8FAF32FD9
      5BEDB4AF39DD0D5004A26AFAED8609C45EFD4EB3F782844CF6DD9DE1697A1573
      BDD66A3AB4E87E452E5802005CEBB7BE786E4C14674B7511BE93DCDAFB2FBFF4
      0ED3FC5AD871F57AB69F2D5005338050080178D77ACE3EDF8A44A682FB15FB22
      37F5DEDA7AEEFA88557A9D5B2ED8E12900526AAF7BBDD9E6A237EC3C3CDF15B9
      ACFC9B515A34FC3A36517D600BEA00A3FCD5ED6D06CE855F0D8DADDB85D9F334
      F96C75EE79C354017A8D5CCCD6B99D34438F5A37D29DE5FA927A9A93FCED3568
      D4F42009A00145F961F77A3CF534DB7D781C23F50F94EBBEBF0B17920E95B288
      8AE996E9DE56FE40164802D3ACFEF91C7ADE1D12B9F73D1446B3DEEB1BD8B0D7
      21CF825800B9AABE85162D11BF19E47BC6EA63E7D4CB87BE7D1A3F0051800B10
      E01304B70EC23EAF4C6FA06FFDFE2E1C3DFC5E0354012C6AF024D5C1E307B685
      7D6AAB1BFDAF9E7E178181BB6FA9D7C54698E400A6D01537376FF9E99B9BAFCF
      4ACACDFFCADA0F075C89CE8141D2B34442750DD709BE5005AC00B74F508EE732
      F9AF4938E2E17127FFF4C6FFEF19392AAABFC672780225E00BB1E2D2ABD9FC7C
      ED88DFE4E3F583CA553A3C53DC94E92000B2F016873EEF73FF251BF37AC0CCF5
      6FF6EB6C1AA009C38D2A8D5C3EFE3938DE83A696D1E29FE2E96F269AAAB9BC75
      005AA80A1A09794D2735C8D9C398E335D51BF949CDF35BE4AD19CD52A39602CA
      C40170E026C7F89AF1D2797B1627911FE2B32630C05B503BF523EEAADE5E24B1
      055600AD2ABC4ED7BCFFBF1F8DE83CEB36DE5E46E3BCC61F790CEFAED5478E57
      B6800B860162733DED4A7CC9F37EF2608DFD7FB131FF5806A802DE6AC97F7FE8
      603D7AD1BE432F1FBB87B79BC4E5CD55F2BEE98D005C980BDEFB3F1A79A975EA
      93C9C11BFB131ECCF747A4BF9C4DFEE5C42919BA9005E1009272B7903BFE45CF
      E2F6EB23FDB637BCA306EFA7BD79579E2FFA855600A5155F4A3299D00F9AF9D7
      B5FDD28C38E462F21386AD1FB327DA00BED013851A1C059ED396C6762B6FBFCF
      77B3218BEFC30EE1AA00B71ABFA634DE3FB1BE5F7F578A6F338F0B154D1951C8
      016CE025346555B4CCC46F79BA74EFBAFC69FE025C6B693F79B7C3005F600A39
      A3CDAF6179ABBE3E59DA177B46FAEE1D8DF3D5955DAF884B0015CAAB7266E296
      EC6F76674F519DFAED32FEDA4200400BE1D9CC2D739728C6FBF64398CCEE4606
      A802DA6AF39CEA83E08F5D8DF1F76EA61D563D6F42DAD5B5F2C48024D0097B50
      418BDD954DE2E15D43F52B8DFA99EC7A1ACF472DE4A1D66851555A15A00BFD01
      52382BF371532F7F5535F13EFECBF1BFCFCCB2AB154002D01AEBC5B9CC8FE384
      E31CF83A9DA37E139CB78EECDA2EFB96F88010026457FEEF7F81E0FB65F8DF98
      FFE6360F606A802446BA2B3571E08EFA5DC6FE1A57735D44975CB9971AB9BC5B
      D74008017877B8BD68715641A096B8DF098AF8A15A37140835B26A795FB69F2D
      04DDCB004AB0122EA75DBF863FCFDDD068DD89D637D2AD30430B15589480260E
      2E57532B8E59D0B68D82B8EB571BD6F679228BD62F046802005501465AD5EE5F
      6F22E77055D5171BD611F4C542F0F012C0096385ED4186AB2617EFD9715E8DFF
      981C6715D3F7924AC75F2D3DC4E009AC026D81B98DC7D9D54D45DFD5CA2422B6
      611D19D2BFAFA8FAFB3FE7D838ECF69F318013800563BEFA85D1A8C8F8F44677
      6C0C8DFEBE5FDD91BD6AAC4B0015E5578DC19383E3D6A4C5570D94BC3237D950
      FCDA9A58F730401002ACB6FE34A9926557DCA9BDDFABC87A69D7D64BFECD9673
      84B002E49AACBE5C7CA78E913358DFE57EDCD0FB7549F74F949F872B43E66F0D
      4002E38054C31F7F3666C59E18B7595F7B13ACC6B5B7C5D8B7BF0AA7733672C7
      AE7D51F40172E02DCDCF6D068C9CDC06BACCBD124BFFD4FF691BEAE6570AA001
      64AAB6475F8F367353155CEA0F0F8EB8DFA9659A76DAC7BE0080164D1EFD7EED
      CDDC348DED9EB53C44D5FDEF90D5005BA1ABA97EAA27F35EBBDFFE4834FAAA3B
      3E357F96289802F4B9F400400AB596B3BEC77917A2FEE0EBBB578CE4F795A937
      957D6DE46F3B44DE877A00B20013E404D561C3A1EFC5955CEBD3CE63237A3B63
      7E5AAB12C00541C6CD2396B7BDFE4873A932E99A2547EAFB8C0BF0BA00400960
      2F2C30AF8E3E78FB4AB1B9AD30C8E495F489F8AB06A802C68D5D3CABB9B6F7D4
      1B1BE74B4946CF8587D166DAFD2DF06802C2F90040097D2D9C04B9B960EBB6F7
      E4FE75CF2B8D97EF2C7D0424BEA90F1A025D59D6004FD017AE8FE6C26E4DBDDE
      FEE13A4BD82C3B26C6FC7557982AB005FEB9FE8DC9BC825ABAD53DD52676F75F
      0DC7528E4F2F8001002F60270500B0BCBE3DB74F4D6117582DC9DC354016966A
      E7E5FCA6269FFE52F3CEC8CBDCE1212C9CCED207C7D96BFE9D59F9A02D100400
      AD129932FFAB7395DABE66B67FB2F7FCA4FF75A74FEDF91D9C6A5DD00400B368
      F9020D4D7FF4E4DCBFAC8578ACDAA8D0055600B10BF554CF59799E5F7FC573E0
      1D515C178D6A20000079800D82ADF37FFF9BE6FB1C82EFACF856531BC00000E0
      4D59A2AEA7064A61D1DFA95AA724DAD133D981A404D047017014B4CED3AA9C68
      5750C39A51C29E4A8BF49780304291EDBD2870EB30A8E362EAAF8083AAABD954
      E68C7E558241C71504EF67801004FBFCDB5CAAEC7A5152AC9900E00E00688E7A
      76F6E1674FABD0115E99900CEF22F800E026C19718FC857340B1516FE34EF8B6
      E065772EF017013805A08582D13BBB5B394AC84AFED23F8B745F800F4269FADA
      9A896CFC7DFB71554F857803801A05DB79D857F7EDEB72B24F015BC81ACDDFA2
      700700368B92E605BF227D6FD5148F920B1528FE2F16A2287736B8004CAB446E
      0B356DAC87B14DF04D8F256F7EB984B6E6EF46E1DC95B8E5B1E02E02C264D358
      6B7616DD5E63AC0E7B26F12B062A0A379CCCD4A74B38038026464C1827636432
      E369FA49DF22B76AE458E3D0185A111814015F780B809A022717815C5401AB82
      CA279A492AA2338295AE6BECA176DA14E49F01519AACBBA2DBA3091EA222564A
      4A19952FEA776744D853CD56384C1A5831119795C7A2CD9238088402033ADB03
      1E1D8745DAD96B6A6ED9BB0A63EE634B217CBB693629811F57906F9280C3CC42
      C29DFB11C0443016FCC8577E584C50CACFAB8CC02BD9D5CC1290316516D858B5
      82012AB5598D170340C6A4A46D13551D55A052ABDE59E3C591D33A7638A2398A
      8EE94A9D759AFA46321B0C5A956892F33BBE998368A6A6FC053600559A5342F9
      1119653633A4C720896257AAE64B0D80EA5CF2CAC4A896FBEA95395AD5484A9F
      3579AA7354A90E0E5F8759DA2CD12AAB1A8A8C40B759886E70024CD01A42D03A
      191A07904866E399C2E873BF0FDC003255DF59701F01F01F019780F1B5D0719F
      19EE619E12291F2DF925E32825DE032CF2F4CF2BC269A650300E6F285CC08734
      276FADD31056564D303F5B05D154ABCA729F8CF8CE7F19DE588BB45E4A7744BA
      EB1A5BA160D0697CFD062E556A31B22B55B4993D9AD5026CF71CA8EA1F94F507
      9DA43ACDE87934338210E12830F1DA46D9A475CE69E400C9435F1DC78453BBF7
      E77A50F47B648233B84DF5069119A4E6FC45073EB734DAB54AFC24A0EDE6561E
      45C536EBB354ED6A0F3B6B5B3158828FA919A613FD41E40CE0D58E3283D22BB2
      EE40E42E16A0D6EC2C1E87C636C18A57B8B4A2B71EBEE65147911076D6421F51
      F58331893B151FD41C7941CFDC78CA0F2BA9195D83F6AA0E47DCAC9C736DC62E
      61D4BEB2BC8DC4BE51CA5D294147BDE7D128FC17477233911F646764A7BD19F5
      070A91720A70416258DA839C439E0BC919DD7D9BCE47D2AC69E6947C1C5452B8
      E9A36F747351F38FF17199253E18CFA83369D5C94AE6F6E5073ACB9E4DC919CF
      05F3B279E0FE7847A346DF85F8193A9AB51EF8FF178CE6E7F1867D41D584F90A
      0ECF654AE32837E18E7A3F2467B71B2A8C97CF26F311B8D0246DF95FA659CC46
      F8CFA83504665B6A4E7F28E9B4730678F37B0DF2F5559BE8E90D214780BE1399
      A47B89DDD6E7BD47D6E2EE2B46E91A6FE33EA0E3019E0DA8A4287A38FA48BD28
      7E964F4C17D326F4D1FD368F4E27FEAFF01F01F01E480F3E3A9B41DAC9F5A6F9
      D1EAA8B3A5B34233B1300667AD20607017017015A011EDA063B1276385AFDE18
      1F07109E32EF3F85670CDE1AC5B28B18B8BA7B7709933ED1E6F0F890AE80B3BC
      4D034D791C9DA65BDE0B3096335BD42712ACAEAEA871BCAFC8D6849994EB621E
      11CA40F587859552FC4BF332FCCC4316F0CE34091A88ED5A8310276C8BBDA51D
      6DB7A716088C7EBC381A7B130484E4A8CCD502FBA131185782909A817DFAE653
      DB128E881C56594775F4294B6A5F2013C8E99264E2CFE956AF4D8E885C40C62A
      0170CA943BBB6541AD9B9BC1A29C0470CD459D0673719226984B3134180A84B9
      39FEACAD2EB8880CE0A9B43683A70955D6CB63E720D3986D183E79D3148643E1
      82E5820D32F53541DAA4E11DC73AEC589C9E26F7C8E9391794B8155186CD89A8
      F096D3727DEA51DB1C23069F988995692B9980169DEA3852B1EA569118367933
      7C2694F72BA930FA02E73C15A734CC7E63321821510683D4C140D1656D186BAF
      4106848DD465718D1D15511D84B73602DF3943DB5B1B5714414AF81B59EA4246
      F096E952F5DA1A943A075E40E2F82BA016005141B104B1E459D03773CD151065
      2A1D881E14935F57AA63C1209759068E6B0681528B0D8BD48C8DE4206105EAA3
      8B7D041A33C5721F38A1468FA4D141B5ACD8ED7E3C0A55651C0F0AB6420502B7
      E46E33C50EBC8B8F38CC5F56A017D060ABCED6BC529A0448171BA3B905A1B5C7
      144641DA09E5A790B2812E2F52323719E2CA60F234A691D49E8A0D1AA9BEC1E2
      CBA396A8A0C22A2E9A6DDA5C506A97AA693D4BE954AAA7B07DC60EFE24856773
      516CD11418FFD3EC9C09241B08959665D3696523729E29554E6C87CA9F25B2BD
      D41A56E18243D81962690824833A67BF920D261B27A9391BC13C5E43E3BC87C3
      ED8274869698FDCDC463BA09A0D361B37A9391B9CF14EAA676E1B8A973365857
      520D3B70B752FBD33D3E041B13D4AD4AA76E1EA5DF054BA0E36D58D069B0D9BD
      49C8DCE78A95534B7002A97A0A90342297B41A96E14C1BDBC0FA3186F6FA8352
      DC29837F81F9D981F4D4C5F71A0D47A9491BA4F152AA6B6E15C1B939CD3D5EA5
      646EB3C558F55B70DFCD3D5EA544169E2B554DADC3E69C94669ECF52D23769E2
      B554DADC1A5E69F80B80B8083F4D79CA2A8E28FF39E14941580F1DA02E14C836
      4CBCF01940FB718F80B0F80BA1E150D18FBB52DF016F80B4CFBE42670100F9F7
      A20E8DC0591015C3EC45FC489C24A6D7E44DB063F808A011F5804DC063E51F77
      F918FE02CD80AF1F6E6FF32DF768EC585259541C04500AA76405D5EDB62CFB75
      A2BAF0168C0578FB158B8AEE867C9E58616D049E02300ACA0EAACD0AFE371F2C
      FBC2AF6FBC05BA015E3EEB44D389A9C3733398771A67808C0211438C18E72807
      38F5BC59F62112778082404DC7DE1648CABA1778FAF63FB808C0227753714FB5
      AEC56EB0C71F6E4171CE0213015E3ECBE30AB3B6238DF9677380460177BEE8E8
      3F9DE124FB7A079F7CD01FFE0110809C0FB73891A3EE88BC53BEEBFBC02300AC
      A018E0F8B20B518E679F7E4EB7BC022C015E3EDA08E5ADCAE439E2A2D1D7008C
      02B1FC48FEA7D3F4FF3E1E7DFE20D13008E804E27DF03D49DB1079B3B9C02300
      AC7F4D3FF3AC22A972CF3EFD7F7EBC0246015F3ED91F11C57D5A9C300A40225F
      03A03DC93DBDD15ECFA207D95F4029804C402BE7DF5BFEB65D6F968EB65FB805
      201594014004EEA2C49AFC3207D8635EB1804CC02773ECAC0648B81A70F3D97E
      E014804FE5ABC55511BC8D5D9671143EC7A20EF804DC02BE7D862473C202AB1F
      CDBD46E014805C7D867BAB4C4307509FC9543EEB7C6FB804DE02BE7D91335A47
      F1F83640700A40285CED46C1D636D1337DBC2C7DF24CDC1804EC02E07DCEB66A
      45AD70D74C0BBA7F00A40236B5B7B5A7CE715FF0E558FB225562C027801703EE
      985FA537AB6B2038057C0449B9EFD85186F9CC97F80D0B1F678FC03804FA02E2
      7D8DD192AB343A480E0114054BFE747ABE771E7F0F8F3C75CFBAF9953700A000
      4F47DD65C480555578057C0563F88AA1CEA140CF9B3385CFB8039D3300A2C04F
      5EF99414E01720159A11BBB69AEFBA83C5945CFB0F961D6014580BD9FABF002E
      0015EE1F38FEAE6EB77A82E7DAFC2C5300A60058FB1083A88A57856EC57BFAAD
      A583EE0B08178053602C7DC027F5EDC52E6B6A6C7ED7805F402013EF0092B131
      F245EF8048400A535780417008EC00F6D2896DD24073332EC0332EC119D7702F
      E540BD7C31605AD3FC006C83DF038D8C7AAFB0FF8D3BC586791EE2605B16962E
      AC6058C6C64E0150193E92C9FFE816DFD57E7AE8E95BC70AB00A7700AC5A58BA
      B181E23B4FE32700A88C9AD5DFD2348DE092EBE57EC9907EBB97D97E01712017
      D782C5A58BA5610A2003E6A58C9C02A632650A3D549FDE3131B1261D0158CCB1
      81631B1938054E64DA60ECEE7317C02E0EB6C6071A0AC64E0106864E22B00883
      8C64E01632700B1938058C9C64E01632700B1938058C9C43E01632700B193805
      8C9C02C02C64E01632700B1938058C9C64E01732780B993C05CC9E43F0173278
      0B993C05CC9E02E02E64F01732780B993C05CC9E64F01732780B993C05CC9E43
      F01732780B993C05CC9E02E02E64F01732780B993C05CC9E64F01732780B993C
      05CC9E43F01732780B993C05CC9E02E02E64F01732780B993C05CC9E64F01732
      780B993C05CC9E43F01732780B993C05CC9E02E02E64F01732780B993C05CC9E
      64F01732780B993C05CC9E43F01732780B993C05CC9E02E02E64F01732780B99
      3C05CC9E64F01732780B993C05CC9E43F01732780B993C05CC9E02E02E64F017
      32780B993C05CC9D23277F5BC8AE02B975D49F016E29394AAE7526F6AACD55FE
      457015CBAB981731BA93E02AB5275AC806D12E78A5529576B6B775BB2DD0DCB4
      B9757302E637527C055CA4F56655C1219BB4036A4B0922D734B80AC500AE5A5C
      BAC181831BA93E02B052782064F77275B394AD0AB2E59275380B640160B4C175
      83030637527C04D0527C05C0406017527C05D49F017527C05D49F017014D3527
      EF9F8082742BC84E02B214FD0AF015D6857909C057C29FA15E02CDD0AF22B80B
      3853F42BC05A5A15E82F013784DF42BC0432D0A99845645C2C0C80066F00366B
      00797B803CD2E0161035859031805CBC6900D707F2FF808AD013636FB3AE0263
      3301644973BF809D63BC1C2E77F0143277C2201390DC05A62DF9D09CEFE02EE3
      F90DC05DC7F01701771FC05C05DC7F01701771FC05C05DC7F01701771FC05C05
      DC7F01701771FC05C05DC7F01701771FC05C05DC7F01701771FC05CEFEE3F80B
      B8FE77F01771FC86E02EE3F80B80BB8FE02E02EE3F80B80BB8FE02E02EE3F80B
      80BB8FE02E02EE3F80B80BB8FE02E02EE3F80B80BB8FE02E02EE3F80B80BB8FE
      02E77F71FC05DC7F3BF80BB8FE43701771FC05C05DC7F01701771FC05C04C61D
      ECFDC7F015241DF99C973BF80A7D3BE51AB9DFC05A3543FA3F3BF80BD0FF21B8
      0BD0F802005B3F05E0080175D017943F3373200400A92005871575E25A009670
      17AFFFFB163E8EE5EBFE001E5C00E0AC01FD7207975901F607264817A406EC83
      D676101AE005382A940A4DA48158930A14522C3558C9EE026680450401572B1A
      B4A1189D41AFA04C0DC0B3EFA91DBD1CADEFD31854F010B4058840100D6E533A
      7C96DE94C2CE891E094A5929155F551C057155DEAD758528B0E9ACED3D8FCD5E
      02019AAF77CD5B4951513D70BD253DB5B6D67AE6AF0103CD502C1AB0010FAA69
      F3E92922F4CB6C2D804B631C85D68E5C05C05868C0656C87AA2E9A58EDD9D423
      2D811CA5E772B4A1CEB091D780950020188EA89987DB66274663B0296D7DA2AE
      C4DAFAA670CA1EE02E028B46B59662A3E51A90706875CBAD5621F9ABC045B355
      9B11BE414ED1A2A7E86E456CF357808346588EB135491BE1E566651D8FF5E95F
      A156643FCB18C44623AE0E0E025D00A6C98602026A06E0AD50C056F74A2CDF0B
      338D88E4939EEA86735C043901295ACDF76FA65E237C7419DB9B96B9688DFC67
      ECF895739D55F0110718A998472B79D9EA54C51AB35851D11B2E6AF01659AA96
      85226D6C2F6EFE7AD236EC8035BCD5E021C1AB60CC45FF5D98C46FD535436AD1
      5C2F8B8A4E135A4ED0CC1BBC048A0134C4B24D8968229691C311BF30E49387D7
      41A2F9DD2EF11CB2BA677012640553A8D14B46B1540D5EF11BDAD2EF9D58A755
      16120D1BAABE02CB556BF12DE7AE77F62D4294708DC2D39ABC04B79AAE62DBD0
      E7E656D7ACA96AAB82CCA415CD5E0220E286E1AB1AF06B143788DE8779AA0AD9
      95BC82D94DB994E5238198E026300B664D4514902849414DC41FE37A172AA62E
      5CE6AD50F5BD3DD669EF6CFE02700081BEEEAE8378D65EE8508DF3AE3DD13683
      D997C995D55F0146AABC917BBD39FBACF448668D73BD6346FE6AF01479AA0E15
      6389853A5D137DD3AE9BB79A698515CD5E0230E1E6E1AB2C1D8E4617BF5146C8
      A208B2B2CAC6F2158B6672706EF013D40482685D59B60AD868788DF477849C5A
      DE6EF5D5F76B88E543BEFF013E805343A00F4805D88DF1624F8D0A7D1808ABD9
      5F36EAC43F557C05BE556C4B21505168E9F44D34FF130B8E4A735780824D579C
      1AB6D3508DECB4E1BC4C2E2D1F9ABC0498D6816C0D5489B67971BC4F78BEFF51
      2ED33515368EEF42E23AF01454041DDC98C7768F6B218C48A3B71C6B3DA413B6
      A0CA7C02E5C04B68034E029580B657C025240223007D1A7B6EDCB5AA40CB5AAB
      6EFA11CBAABE02D6AABA205F1D846F716F81A2C79ABC0463355060D5C4C2C237
      C7A8E05AA9590E6AF01488CB4606ACF3530028E9C6F5DB24D89CDD5940C6C929
      8B35579C0533014FD96593767D8AF884AB1B4ACDEFA3870AFC377A215B3E1B75
      0179C053D014DAA0B2D80D0C44AA908DE08425BB26C8E97CD0F5CACEAAF80A4D
      55EC17648E5A1D5F79002A4B66AE0F357809335731CB718F1F5CED674F15856A
      14D2FE6AF016D064D01BDC6C9AB12BE828704411BCC6F91DEE933D061A94C18E
      5610BE8E02A3C058D70DE5581B726E0E7167846FCFD5274AE84CBABAE563B256
      5C0551012E4069A88DACF2332C8602E4F8CC6FB4BD82ABA98472E02E020AAB29
      75BA334A2F98DEEA88921AFD27357809DC6AE6882E071BE5B9985E6AF016D465
      0BC2B8C9AAF2615AFE37AD6ACE70D9CEC35D93ABB3AD8CD5E70154202B1BB5D3
      374F93339A5A05AF179D67AC99D579CF3674A68E5B31D780AC002CCB53C307D9
      54DA8DF58923A1D60AAF6ACBA59C049AABCD7AEDA2552EA357217AB85BF9ABC0
      4206A98C38DE5D8F850DF35780A5C659D5AED66D1D2BF9B69D5154D471BD43F5
      C5974D847595BD98F1C057001196DBB66D6D8E219E9D1EA5AECC6F8943B94846
      DA1275365C05C056A9C4A24B7AC4CD8DA59EA78B1BD3ACD25EB7551C05A235B7
      6E6B35EB72A7FA79AB31C6FE6AF010A1AB3AD4BEBFA9D0ACDF39ABC04CA2FDEC
      9ABAABF707DD6737B0846F3E36324CE59266574B607E630353516870126C0595
      30E681C7426994C8ED6E9EDF9E999B6B29D4652B31C9D701701294254ABC55A6
      AAB0E9953F9BDF71DEEAF2D0D3B5EAA380A5555BE774701E91B55323B96872DB
      A6DF9ABC052A6ACBC07BBB58AC2CD12C74AD144AADCD5E02761ABBEFB78D3741
      54215CD545C708ED5D16870FDBECC2C47809A62C471C055D809B634EE25ECB44
      8ADC3D668E13841B2979C8BDF65582948F80B8086028AA56352CBD67EAE21221
      6635932D0FAA8E02342ABCC72B35A43DB62BDA68CB9C3CD5E02461AB193E3C9A
      ACD7177E6EDB53C34316735780A80BD437CCB8118B31A3943AD95572527BF3F3
      F71D0D27560C6F98A6780936EF015D8049B0E3B7651892D9CCB6610AB316CA95
      73ED75705C05C05BA016732F3EBA8BAB6CDCC07481E69575579A24E97F013D55
      BB4F1B797A4F337BF587C4639ABC052C6AB8C6AE3A25B4299BDFC1EF701CD5E0
      21E1AB998860CF390E394BDCE7EAFDC1018C3E4018B8E680B562745AF015E805
      AE0863BCEFCE146E53781DD1A27DABF007004B802A97836386DA2AF4E267B43E
      AAF8087154647CDA3E77DCE3176F2294DF09F9ABC05386A8374E9CD1CE458690
      A2A5D084C4B9ABC99E02C9AAC20399A11C95AC4CAAB2B2C7B68566390CD88D77
      D8670157B4B59DC958888A7C444C57BFC01C005C16322D268D2AA719755540C3
      5D2CE02C555777AB3F343CD5E02B23542A8F134905E2AF34B80958042CD1529A
      10714655989924282C86C3568647CF29F80380010621F53575F88A8E295EAA1A
      4A41678435B5C127A632E2120D6C28EE02E02ADA903509C04FCC00EED2D8C860
      6169268936A92244AF48F80280BD818824F58ACEBAFF3D15BF191893404188CF
      9DBC01C0008318E2C618385D2F72FAB64D59F6FBAF357801002CC4E5C909A1EE
      3D9DACA3A5850D810A58E8EA69B14A5B38D0E3AD2F7D08B41C056700B4990119
      D1A4520D697714A69A0E9AAAA496C9F4537999544AEB6E508EBE41BEE012AE52
      D005CEB41994CB1633E0224202C61B32F429CDAA4DE708074D72AAA6A45735EE
      1A5156CEDDC7C39D5F1350A35A030E039582D1DE9C25AAAD7CE10599D66F7833
      826B22EBCBB4B48060D0A1C03C8914D6E34FCFEA9ABC9FE6AE4D58A9DB84462F
      59D696D1C70E23626354FAA33D3BD768806AF7A9CD54B6A454D4A408045C6487
      2AB98942F4B53AC1B0643FF6000343901B41901B34D903CA1C80F49DCA0AA187
      03D7B5501920F97105B5D400B4EE7018D8163C5ED08BF4E88F0A02D468A2C743
      C5E788BE94475CA02D57C829088EF179B45F3CDB051A00A9DFF8C9227778BDFC
      179158B770154B3C4F8BCF117EDCD2DE015934EFF28760F179CC5EC054434B01
      1B4CBFCCB5E2F6505F65BD27C0472257D34D51F17A245F14C1CC58022235881B
      962F8BE4017DA15108045B652DE2F20C5F82CB6D45016E406ECC278FE2FA085F
      4C299F016E5CDB0C27BCE2FA805F8F6B018082C9DF9931E2FBA05EF971893404
      2A03873363338BEFD17D95A4FE021C46F767178BEC717D9E300200BE8717AD45
      E5653EDB8054C89B60B05A717B305E8B16CFE02E023580B5ADB8F2FABB6C4E2B
      D41CF11EB7D11E2BBEE43F2DC572D57C35B114518401528D9A52BE676C7BDB92
      CBE57E17AF645FB3C24895E3C82CB8AC32D004E102120C365386D830BCEBD19F
      027C61C5E4CF7C7F0CC73B6D45BAB60161D93463373F3AED99505F37458337BA
      3D5E300161C9C0C6A8BDCB8C8C77D9BB162700A68C798C11F33A1927E118F4C5
      5C9BC95D5419F262B49F38B086D3CD51250AA317FC4A5D41014CB69BC8C63153
      045A0567A9717B34CE99B6B19C3B6CEA40584A96CEA547547E3D0571823969FC
      34EC12FABEA4B91B8A62DE256CCA10146E2E487DB4904159D4DC46A0FE826D6D
      A0E237F4FA54CC0D7EE280B64040D3B263880E26DC83AB9845AD8381A69C9633
      8C0C5546027675850EA8C858D4AD4858CF610F068700E6294FEAC9E7F5B5E674
      BB0161A6CC50F1FCD995B6E77616D4FD317E5CA55E451CF7800FE31D6C6E009E
      C1A62320FD9196CC2E5D9D25E21B9B500D4477790C1CC0209CF6016034874FA1
      13E1C7D6DDABACCEA7A9B6878EB290B5EDCB45C23F40460A82456051A189474D
      5E58E17F8A56932726AB87361E0024D1CF0558151F996383FC72113C0869D038
      65FCBC27E05DCAA424C6B5F56C6B3B68ABF3475E8786941D684D4C97E2802D68
      BAEF0406796FE231FE5AB1BAD9DD62D27015EDDA2811EBDA87FB6974D282B298
      0B1F951024AD05DBFAE0C3F1FF7B47AB5293E4E2529448F310521A7F93716F79
      820873F1CDC05C46904F1FF8FFC7FE3FF1FF400EE24709FAEBD3427602275413
      41B8B3FCD5F623F8FA515001711AC7FE3FD7D3FC3BC753DE9A4991D5A013A495
      D220DE4A670094E6FC694EEFCCCB28F4364DB9CD2D602FC3B8A41C815BAFB5C3
      0EFFD6D0A8C2B892AFC1570909F87A1C3CF61FEA8D2844378073F00AA75D804C
      A7F4226355777F3FC61D94E96A425462D5F8043E8EE9EC10BC4D21AA01FEBC82
      CF984FC0FF7CC021E2639D59F17B49A533FFC8AB0BD1FBE44ADF913DF4013845
      F9D3FDC16804117FB7F5AFBA54F3CAFE980201125193EB50C7FA7B9E226AF1AE
      6C82804E8228F72F3329CDB0E8FF282A0CB522C02725451D9FE16DF1505CC6B9
      37E2B820E80A417FEEC4FBDD71BB117FC51685D66BD1C740431D1F8202F42F28
      34BB23FCF221FF2922F8078B42C4802924E0508FF2639613E3CD2200261FE2CB
      FF53FC89A3E64EA479FC54029034EF4CF9DD73E56337F59BB74FE74AC43BB5B1
      7FFC59FFF097D626FF605577CFAD6FBA2FFC5B49ECDDFB755598D11A9F93F6FD
      3FFC9691C887FD7F07C24FF5F9A224A1BA790E4CB33013C7463D3FD680CFF287
      3B2BF32D74E4B533A0B0C0BE092C78262FE9FEBB1CFFB489FF8D51AC9C7FF5AF
      9C7F30F48F369805026AB8FF5FEDCFCF7D3AA164AD46CC07D0154047A0E360D4
      60E55083FFAB27CAA2FF70F4FFBE49FC7FAFEF3E7F6F32AA7FDD845BA1C1A66F
      F3782B3A3A35015AD7AA69A990B2D25B6D8FFFC04B79C7825A22CFABBFE4377F
      BB1F3D117D60D150DF39BEF43FDC68EB4F43FA1D04E48809D90416491274A828
      98BEF1FEDC7C25DE2F5A47F961C7306D5E3FB81AF391EB711BC5E189EE246C49
      F72FE245C28B340AC73F12E380EB8EC055E8492F69CF92D66BE69BDEF7FC3B94
      3FDF0BDCF1F558734CA12404F16D55B05812270912482FBBDFF58F0586F28F8A
      52C02F1DBECDF751013184F223F31B21E709E7BDFFE8EEC55E387AB9BBA5A394
      67F8F0B281CC2B77FE6672757EBF89546800BC4E56F53E3D02CF7BF646060149
      18AA2FAFF448A6834A4BEA4ED5005EF766512FEF19813EBF8DB50B19F5BDDFF7
      AFFEF9166A7EFFFD3E9F3CAE16925FDFFF41D6CADF7FB5CA802EFEFF79ADF7FD
      9433EDFEFFFCC8A0538CBF60067FC03637C07B2BE03CD37807CC5E63D70C781F
      357C003041F676A84E010C80464FAF1FA8017E42ADC956B5EAEFF38BFC697E48
      BEC1FF8CFC2FC7FE3FF0BF1FF8FFC7FE3FF1FF8CFC7FE3FF19F85F8FFC67E17E
      3FF1FF85F8FFC7FE3FF1FF8FFC67E3FF1FF8CFC2FC7FE33F0BF1FF8FFC2FC7FE
      3FF1FF8FFC7FE33F1FF8FFC67E17E3FF19F85F8FFC7FE016F5FF7AFEF24FDEE0
      632B5E64CC1F9DE69FDF39CD3A2FCEFE0FCD06F964060FCEE7B9F00B00B00B00
      B00B00B00B00B00B00B00A4C054DDBBF0098005BDC013E761C027A18185F85ED
      34B0FDB1ABC02A8F0BD1C0B9D270D66AA64DE015BA69617E178BC97B4A0BAE49
      CF90D2C2FC2FD1D9B44FC55922C0BC2FC2FA305F5DA72CD1959804B2E17E17F1
      AD4DA59BFCBFF0BF0BC5F9CBD25F85F85FA6FF587E17E17ECCBEC77E17E17D56
      96556CBFE016016017CF9CBC02C02C02C02C02C02C02C02C02C02C02C02B2351
      725BE528C71FE6BF2DF35EF2A28DF9AF826C1FCD4E7AFEAFD706F9C8E585D415
      F3FA708082B00B009F805156A79985804942C4A4278E168120F94E08E577A218
      511E8A364CB6EE10360AC0533805804FC0276547950705C92BD610CB68DACEBB
      2B27936A9E3529BE8431C282591DCB013BE016014300BAADACAA5CAA630D9592
      3A727D6C571E5C8C308251580BFD8058043A020F0301D127F39E55B5F10E7271
      7BBDBEDCE1AA1C5B8E4C02568E4B504DA52A5988EC702233863777016891B1C7
      6F7D0281DBC040FE015B30084B0173230050A424D40AA8ADB20A21CEA80F5BDA
      430D27C98486CF5014AA6AECAAFE145CEDE02F05F00A5C0081E3C056DD5077DC
      27BAC9416FF07F8F5F2C917B1F0A70381AE18F97289F3E504F008F9EC0437C02
      98C0216C0428000B9CB86097984CAE438E90BE59374E4ABA7457BAEAA8A23AAE
      ADC20F9280279C02324022C67DFA15A0BC9E732E555A6BB027F2F2C927129957
      D985C17CDAD50E1C72530E4FD9389090426720A38EBCB27DCEC0C97B45CA10CA
      66449FA9C04FDA2F57F402BE24004E17813804A40108F805F9E02C741AE536BF
      5B2019A8AA4243DC99E16E3DA2918145630CC749375571E0004397404A166013
      0402EEA8A2D736C926091B2ADF7E322A734DFB1B0D0EE66A1F53944AA65232E7
      FC051CA01049192880208B9010D63772202338051E02F9F80524683F329428ED
      0595F9B3CABC7205E3B8EBBBF2F5C277DAC9F0765938057D14C0BEEA24D00974
      78B4B50FB1170520B4E85D0E762B634595BD2C7260118CDB8D6EC18FE2DF09DF
      5B797EB41BE51D6F543DB92EE704A15D1764A5FB5C04BB4D0570133780526440
      417C0209BC0110F00A7DD49808FA7E0137C04F4E8FC979DB7374A4E7C9A57446
      A0E5DFC59BAA943D7EC57A0085E3930097CE41FDE8F2ACF46E2220465938E44F
      AB271C98E4C726393009CB3911C30EF0EA09FDA75DD5A0775E45E5D21F00A99F
      AEBC0100FBE4051BE014945E014028041AE009914022BE012F3C990121F009B3
      00804042FCA2EA93E471E42B279DAFE5D4CEB16BE9FE0083C64E3931C8C4720A
      91592CDCBB382ED9964E391C8AC9C7263931C98E4C723EA722E7FD01B874D7CB
      5EA8EAE0FFE4ED0DC808E53417004869FFDC0157D345712540202A0108F00A5F
      800477C028479380248D1805C80AEA65E833EBDBF69D47662AC797AB669C2661
      202FDAE503F2CCC726392811C82A6D96F8E388803241964E39253AC9C7263931
      C98E4C724A4727A4EDD2436DC4F75EBEB57BD5CCF4901D433F1D4789CEA07FE9
      D5F8ED823AB1DB3E32F50B5DC3D493F4DCA128A747B986680F4C4AA4EF1C98E4
      E31C82E782AF8FB8A88787F2C9C725935938E4C7263931C98E4A48E4549D8C12
      E0171DEE3EABD473CC7076E9ECC725D599EE597BF4D9382E392A730FBFD30C40
      E59192D19EC726390E393B9CEB43FEAA4EF2C9C7210AB271C98E4C7263931C96
      71C8A93B180DC8437EC915E477137A81F804F6DBF1DB073D9FE3AB4F651FD8A5
      D598BD174BF49DB1BE9B2308A0A2F2B7C72639188E4FD2777DCB271C9D9564E3
      931C98E4C726392E6393D277046A3768FC73FDA8E7FE4737ABC0207A7B34F631
      073D3798B3E9E93B5F549DDC0CC726392FF93BCB271C821416C7263931C98E4C
      727E527686C2FF8E774985ABD9DEBB69FFDC1D4A3B74F669EC64E4ED17E89514
      6CE1319FD62E5063931C81193BCB271C859C16C7263931C98E4C7259F2776189
      484F93F1C5EF1CFF34153CD487569ECD3D9D093B9CF4D2339923A3F49DF3D8B7
      F49DE3931C970E4EF2C9C722F105B1C98E4C7263931C9F0B2390878EE1BE2EE8
      AF1ECD2B8BD6FE013BCEDD3D98EA05C9DF5D308FA4ED14C20E8F1998E4C725C5
      277964E391AE82D8E4C7263931C98E4B89E7794966E27BD9ABBC5EEFF9F64957
      67569ECD3D86A73CF51BBA3C52612D2379C42B5F7CA3C72639015277964E391C
      F82D8E4C7263931C98E4B8B2765B8E2F1BBFEE2F7A79BE1D5A7B34F62F327611
      E93BEFF49D854EF807A4EF1C98E41349DE5938E488E0B63931C98E4C7263939E
      93BB102E7D9A0A95E7A79AF27A74F669EC9293BB471276CC5D22CF19F8E4C727
      D593BCB271C8802C9C7263931C98E4C72771277EE2F1E0BEE2F3D17F0EA929EC
      E0EAD3D88EC197F49DCF3077FF3719483E7A7BDC7263911D93BCB271C8802C9C
      7263931C98E4C7215A09C74051CFEC9128E74A6D473A804074F669ECB824ED14
      797AA4EEF912A4EF1C98E4FA64EF2C9C720BF5938E4C7263931C98E432C9D9F8
      8B47C0974BC5E54F35D9E9FAB3D97DA7B21F9ECFFC9DAF9527677A2460FA4EFB
      FEF1C98E465390CE4EF2C9C72368B271C98E4C7263931C888392FEF141F02C95
      B3C1CE806C09D5C93D977DACD3D8FECF63E93B9D46C3C49DF2A4F53E63931C8C
      A727FE4EF2C9C725C25938E4C7263931C98E45AC13F79DEC67F8E7F71792BA34
      23C73A80574EAD3D9A7B0EA0C9BE1DD650302E00CE812AC84BB96F66EFD88050
      094AEB9BC664250092C3F3F80B90CCB3F0172FC05F32790CC961BE0248A01757
      C6DD504B00E0054D056DF0128C03893E026F500BB2F809A540205F013921A501
      582370029F12E8CE0240AC3B0CC72C9CB26615938E4C7263931C98E456C13BF2
      76C6CFF24485DF6CF32E7A74F669EC871DA7F3C7273CEC7718B33A9B257CD34A
      2210A7FBB9BE02389CB2C042D5700250792AC4697B9217E802069578646C2C11
      ADF80A51402F2F809E482804E1DA020EE7C00914959740151129AE8026028FCC
      6714029B5009CBE02A2ED013C7C042FE74E0246F3019C6B2536E62ABCB365939
      64D26B271C98E4C7263931C8D73917277762B0FE48BFC5EFCF32720B3AB8C940
      41D5A7B2FD9EC6393E4193B639ABC40B89546899979DF68814EC07B0A75580AD
      20FE024F6C9AB014EFC0546B01443505580A802BBFC054C27E2F8C29F4F80953
      80152FC04CFF0174B77C05EE580A80F3A00B9EB99B8014CF519F401197C0495B
      7E027C2C0403F0179BC40481F015EC878808C11CCD73CB853389B15AB2C9CB26
      C75938E4C7263931C98E46D9C9F93B6B76779E48A5A8FF1860FF24BD0EDEB3D8
      46FCF6B1E13D9EB92BB849EC7F82C55FAC9DB61319B8543B503E9AB8B6EE62A0
      9861A3B9A62DFF0119311AF80A1EC90E4AA9140B80173560274E8F92C0463E93
      7D40472703CF98A4665F0155160207F80ABEB01742D7C00B99D805356DE0EC02
      B45C1EF70136AD152B01032C0558F80BC3EE02B4FC05D38DB74F63B9A06EDE39
      89FDE80B2C9CB26F25938E4C7263931C98E47A9C8C68FCCD5D4EE279A5C25CF3
      478EAD3D9A7B0049F70B31A2E4EFB6C7669F2C81B9DBCB5026AA75772ED3C2C0
      46157D9EE02F8526EBB5F3FCB580AEFF0117AC040C0A0405EFF8099B8011E227
      C05E3F80A308A6FF015EBE0273B37701738C7A80874D8278015ABB80A63F0125
      07F701367C056702023CF80AFD511F8E4F0C66C3333ECE593964F2AB271C98E4
      C7263931C8FD393B6E7B1FBC4AF00B00B00B00B00B00B00B00B00B00B00B00B0
      08FB0091C22B4A78E5974E79795160065BE03623E07A9F8381FBE0BE5A8E8F80
      BD5060FB9000B007007007007007007007007007007007007007007007007007
      0079C00F9236B750079569C03C03C03C03C038B001AD71F0C8C42A7264F1D8B0
      0F00F00F00F00C8701AD75E00E00E00E00E00E00E00E00E00E00E00E00E00E00
      E00E00E00E00EC97E01E01E01E01E01DE7C9783601E01E01E01E0181803D92FC
      01C01C01C01C01C01C01C01C01C01C01C01C01C01C01C01C01D92FC03C03C03C
      03C03D92FC03C03C03C03C03D92FC01C01C01C01C01C01C01C01C01C01C01C01
      C01C01C01C01C01C01D92FC03C03C03C03C03D92FC03C03C03C03C03D92FC01C
      01C01C01C010106C243AECF0AE01E01E01E01E01E01F003CCAF0070070070070
      0764BF00F00F00F00F00F64BF00F00F00F00F00F64BF00700700700700700700
      700700700700700700700700700700764BF00F00F00F00F80FE4BFE4BF80F80F
      80F80FE4BFE4BF80780780780780780780780780780780780780780780780780
      7E4BF80F80F80F80F80FE4BF80F80F80F80F80FE4BF807807807807807807807
      807807807807807807807807807807807E4BF80F80F80F80F80FE4BF80F80F80
      F80F80FE4BF807807807807807807807807807807807807807807807807807E4
      BF80F80F80F80F80FE4BFE4BF80F80F80F80FE4BFE4BF8078078078078078078
      07807807807807807807807807807807E4BF80F80F80F80F80FE4BF80F80F80F
      80F80FE4BF807807807807807807807807807807807807807807807807807807
      E4BF80F80F80F80F80FE4BF80F80F80F80F80FE4BF8078078078078078078078
      07807807807807807807807807807E4BF80F80F80F80F80FE4BFE4BF80F80F80
      F80FE4BFE4BF807807807807807807807807807807807807807807807807807E
      4BF80F80F80F80F80FE4BF80F80F80F80F80FE4BF80780780780780780780780
      7807807807807807807807807807807E4BF80F80F80F80F80FE4BF80F80F80F8
      0F80FE4BF807807807807807807807807807807807807807807807807807E4BF
      80F80F80F80F80FE4BFE4BF80F80F80F80FE4BFE4BF807807807807807807807
      80780780780780780780780400801325E00C0180300600CC9780300600C01803
      325E0040080100200400801002004008010020040080100200400992F00600C0
      180300664BC0180300600C01992F002004008010020040080100200400801002
      0040080100264BC0180300600C01992F325E00C0180300664BCC978010020040
      0801002004008010020040080100200400801325E00C0180300600CC97803006
      00C01803325E0040080100200400801002004008010020040080100200400992
      F00600C0180300664BC0180300600C01992F0020040080100200400801002004
      008010020040080100264BC0180300600C01992F325E00C0180300664BCC9780
      100200400801002004008010020040080100200400801325E00C0180300600CC
      9780300600C01803325E00400801002004008010020040080100200400801002
      00400992F00600C0180300664BC0180300600C01992F00200400801002004008
      01002004008010020040080100264BC0180300600C01992F325E00C018030066
      4BCC9780100200400801002004008010020040080100200400801325E00C0180
      300600CC9780300600C01803325E004008010020040080100200400801002004
      0080100200400992F00600C0180300664BC0180300600C01992F002004008010
      0200400801002004008010020040080100264BC0180300600C01992F325E00C0
      180300664BCC9780100200400801002004008010020040080100200400801325
      E00C0180300600CC9780300600C01803325E0040080100200400801002004008
      010020040080100200400992F00600C0180300664BC0180300600C01992F0020
      040080100200400801002004008010020040080100264BC0180300600C01992F
      325E00C0180300664BCC97801002004008010020040080100200400801002004
      00801325E00C0180300600CC9780300600C01803325E00400801002004008010
      02004008010020040080100200400992F00600C0180300664BC0180300600C01
      992F0020040080100200400801002004008010020040080100264BC018030060
      0C01992F325E00C0180300664BCC978010020040080100200400801002004008
      0100200400801325E00C0180300600CC9780300600C01803325E004008010020
      0400801002004008010020040080100200400992F00600C0180300664BC01803
      00600C01992F0020040080100200400801002004008010020040080100264BC0
      180300600C01B92FE6C97A0340680D01A03E10018F537AAFE3FA3834C000686C
      06446C0F696C07C83B05E6749C19431B05CE138394079C1E06772F4048090120
      28F0175D1B40480901202E3C0552A1E6F74ECD0D6F731481CE6F931A418C7AE6
      C309A5E5F7EC2A5051763EFB005293F9C0F1889BE22F8A471F18AF52775CD1F9
      9B8BADB1DC2F988B0CD96C6BBDCAF1AF816EF506753BEE3DDFF623FE9A3FBEA5
      AB46A67758AAA3FDE4FCE9F480B20020059900850E28700400850E2871438021
      438A1C50E008010A1C50E287004287143AA1D01202543AA1D01202543AA1D50E
      80950EA87543A02404A87543AA1D012A1D50EA8740480950EA8740480950EA87
      543A02543AA1D50E809012A1D50EA87404A87543AA1D01202543AA1D01202543
      AA1D50E80950EA87543A02404A87543AA1D012A1D50EA8740480950EA8740480
      950EA87543A02543AA1D50E809012A1D50EA87404A87543AA1D01202543AA1D0
      1202543AA1D50E80950EA87543A02404A87543AA1D012A1D50EA8740480950EA
      8740480950EA87543A02543AA1D50E809012A1D50EA87404A87543AA1D012025
      43AA1D01202543AA1D50E80950EA87543A02404A87543AA1D012A1D50EA87404
      80950EA8740480950EA87543A02543AA1D50E809012A1D50EA87404A87543AA1
      D01202543AA1D01202543AA1D50E80950EA87543A02404A87543AA1D012A1D50
      EA8740480950EA8740480950EA87543A02543AA1D50E809012A1D50EA87404A8
      7543AA1D01202543AA1D01202543AA1D50E80950EA87543A02404A87543AA1D0
      12A1D50EA8740480950EA8740480950EA87543A02543AA1D50E809012A1D50EA
      87404A87543AA1D01202543AA1D01202543AA1D50E80950EA87543A02404A875
      43AA1D012A1D50EA8740480950EA8740480950EA87543A02543AA1D50E809012
      A1D50EA87404A87543AA1D0120232A1D0120240480B9E016571E809012024044
      602A539F01F1DCCF34C00103EC065BEC0F8BE0294E3A6C17D8D2CA650C6C173C
      64FE501E7079411A6648B631CC2ABB93F98622FF2FEED066C42EF2E12AE00BC5
      76B6ACE2C9A7ABBEFDC900553E5D646BB06BFB73D6867A7FE907FEAA7E7BCF3C
      94FF4FF57FA7FA7FA7FA7F9299FCD3940480901202D500534097F2402DB35824
      E1EBF89EF2402D89AA585F87F55AF300599C97B01B8EBCC80352A83F713FE419
      E9FE9FE9FE9FE9FE9FE9FE9FE9FFF299ECB5A02404809A4FD80B32EAE4C17873
      9FAC813B97F002D89AA5C6179AFE8725B049D97FA431C988C8FA2C016C35B0ED
      E8443632F10FF0E8197C547142002AB33D3FD3FEB0FCF4EFF24FF4FF4FF4FF4F
      F4FF4FF2E3FD96B40480901349E09289A5482493451BC882CC9C7CED4D7E8EC4
      D814E1C7D6F6F824F6C5E302C89C9696B9BC314BD1C997F1C3BC1F6C05B04738
      0B472A205C7FDEDEFFDE105B725B7DFCF158EDC79E0C5784FF00A6789F027E7C
      A7F9007E7907FF727E722C7BC7FC39F8CC7E339AFB23FF975DC3F20FA06B2017
      E182E9605C5FE145FE4BFFC9A4F57FA7FC0ABFD96B40480901349FCA37E52940
      C1724E3E68669713DFA528C4C7E917FDB4A40771F0FEBA93114836E3F493E629
      4A3627EB3F0B5AA85EA03EC3F03F358BE4AC3C0C7FF0F99FF13F59F9B09F9158
      7995E184C22667F9B5E1FE411B698F1CC611FAFC00ADA94B35E9738442B3FCEA
      F0CB011152FF3D7792C5FF20EF0847FFF5816233FE66EF1A4F405E5838988DBB
      465004BE0228921B9F1BFFDC2F8013E73F3BC90029471E0375699F6395C91C7D
      C8BF4271FB4057B49F1489FE95FEEDA02301BE23E4FDF06A4227F29334C0F423
      CFAE1C0B6459587C8C5F2B61F7C7FE21F33E98F02392504FF10E923FE16C1A1E
      F57C949F1D60D71BD5DA4E73E69E5264E11E9CB09E017A4C90A63F47384C0B05
      FFC11993FFAAF6EA4FF63CF158463846397F99779C010B4BFF44EF3B0BE4D7FE
      41FFDC040EEF39CF4C005227FC93BCEE4FCAAFF3731E261C0B92A130059598FC
      BB1EDC11CF0165E7BEB627E9B907C17FE754001E5A70CF000BE9C9F34527F734
      A520BF191FE56CF005742B499D08F80D743B5171E6D98FA371FE229797252C71
      F26E7E7D0172FA73D249FE847C86BA1D3931F987279408ECE16620503D4FD2D2
      955C4FF158663389F9E7279408F13FA0817A287C8879D52D14D57FD69E778BD5
      D35FE7D7B79417D708B56662B349F6079DA5CC59AFFB89E7DE1167C5FF2D779A
      E2F955FF694981788FC39C56EEFEF479EC93F885FF8D95F14EEDD01783CC7A2F
      2B0BDD4FBA9F8AEA7FBE705402483D521C105FBC8FF9C36C36F1250AF33A17E2
      014AB8F862FA6E57D0B8FEF865EC05F1C964DC79DCEBB27FDC79E27FA11E85F9
      0051627C539FE210002E14B85F86DF221162F6BE28BEF33BFCA7F9AD2916713E
      31CFF5088E4FFE4223D27FE3CE46D67F678BC35AA72BFCA960D205FA53FFBEC7
      5CFEF3E80BC57E7EF6D64708B5B49FF8F3A827EACFFEBBCCC854AC5FE7FF57FC
      9DCAD19FF5E2F4FF947FD913F28FF67BD17EC62F753EEA7E2D49FDA52BC05FFB
      CFADCA6FC2C4907F405D0A4B01404C7E7DF0A7D4E3F8B944E3E110A0E3FAE4B6
      E6330992EBB3A2E3F5E47BF18CF37963BA14A202A343FCA3ABA7E78729F78CFF
      BC7EDAF94FFE80BF9F30713EF67FD13ABA7E7B76D17E7FFF3CFC694BC66F3CD8
      4525E7DF8BF173BF4CFFD039DFBE9FE01E78C4FFAB08A5DAF81E915342C0F712
      25DFD185F510BE0F710B6EFF29DE54B12FBBBFFD13F550B0423EE7FB3DE8BDD4
      FD969CBBF2D3A9F1A6A7EDA99FFDA0FAF38517D0797FC29B131FDF05C198CB19
      22B1A9FEEA94171F134F5DE1AAF261F6812E2BBABD08F42FF402D54C7E5683EC
      4C966653F9752652323FC27FE1922EC58F8785381F9F713FE87FFD80B0423EA4
      F84841B0FFB5A150A3B5A6056FF37C64CC6F75FE0AC0BC91FFAC605C93F16981
      6FA93FF1DE7E9E79C11A8DAF8946F0DCDB2B2F6E3E0846A57FE188FFE6041F37
      00A0B1CEFF23BC1B76DA211693D17BA9F753EEA7F1D01065701A4FEFB53D0166
      9FF109A52E84430D743B6DDFF4E7E8086F1841E02060D0908E2C4F3B08874057
      54A40E93E143BDD7725F5D5643D13F21C832056FA901502D33FC3205705E2D02
      243FEBE63C103FF13DD827D1FD99FE34845C5F9623FC617DD5F91B5FE3E7AEE9
      F8693FCB279AD17F90BE6F1E66011821FFE8148EAFA091F97D010D17DDAFFBC7
      FDEA52311DFDFC73FDBB085845A4F45EEA7DD4FBA9F8FEA4FBE7653804770D27
      9BDBFB20041BCF33E158E0D61CA7E1D11002D5CA9120D1471FD8745EAC33B23E
      E5B32444C7E8D349F02279A7424E627E23FC0729F981FF98B41E6A9FF03619DF
      3D75693F3F9FFA968FE10FF2AC0B12F9A1AFF2AC0B11F3015FFD98F370FFB599
      8F527FE080A20FF97E74E0A02C98E94FFCFE7FFC4006ED27939378F02FEAA1FD
      DF7604B017B39DC8051A85F5793EEA7DD4FD9749FDA52C7E77EDAE406C047EDF
      3F8336C8035E171FE34FE42C022E07CCC630BA0B321732E3CF0FF23F6CF40975
      BAE4B1EA9658AF6E80BA1DEFE1C2B2FCFA9FFF44FC70A27DB6488A7A7F0E3F20
      73FF10FCDE3FCC9F84F5D719F9DEBC1A87FFC9CEF889CF8A028C57FE500ACCBF
      E063FF8098F4FF4FF4FF38F53E8090120240584405B9F9DE6E96F9CAFF95F124
      6DC7F29AF038C0523921BB8C2E8172050EB8FEFDF9C65EE766489C329572EF1B
      98ED2912E3F441C01CE67DDB94F8C9F9BE7FD2CFC3B13FFA1FFCE33BF88CDFC5
      AFFBA01144BFF873FE2349E9FE9FE9FED27A02404809A4F28A93FF202A234E37
      A2625C7CCA314D8C1E8D80BA262717820C5CEE14C96EF37CB77BF877E7072720
      0B7BEFA02EE773B35BDA7F1F863BC399E9FF6C8FFAA9F9E3FE0D3FD3FD5FE9FE
      9FE9FE9FF7467B2D680901202693E754A44C9AF8402EB89EFC3D8B05E4B6FB36
      7DFE347C98C00BB039E67A7FA7FA7FA7FA7FA7FA7FA7FA7FD10CF65AD0120240
      4D27D3353F296E7FD9085BA95E008A3A03353A078EFA0721FE80F7396002831D
      07E179EC500F183F6E0D240480901202C5C01111080901202404809012024048
      0901202404809010920215050120240480B4AC05C66101202404809012024048
      090117C02826D012024048086C008D50404809012023B802B9350120240480A1
      F808F0A40480901202A3E029BE2809012024056EC0503D50120240480B7100BF
      7450120240480901202404809011DE0215C08090120240426014A5C7027CE3B7
      2BC0119740677F40F18FA07E31D01F1B2C2C506020FB74500F183C25994C5BB3
      B9DAFFEE08BB945EE9A3BB8B2B95DDF3D0F7BC9C3A68BD17A2F45E8BD17A2F45
      E8BD17A2F45E8BD17A2F45E8BD17A2F45E8BD17A2F45E8BD17A2F45E8BD17A2F
      45E8BD17A2F45E8BD17A2F45E8BD17A2F45E8BD17A2F45E8BD17A2F45E8BD17A
      2F45FB80BC3EDBC12CAD43DB724F7DB39F41DFDB7163F38009E2880AEB0174BA
      A8D5F95205017D3DB5F53B404527729740F5384C3EA71AD405F2C05D2D0F1F1E
      2F65190102A023EA0D4ED4EFACDEF5F7B6DB71195750113402E969017C78C040
      06A8020AFE53B53BE9AFBDEFB609014580286BEC2A2B3F410156100B5C8E32F5
      4154EF247703FB397805A347DC28110C1DF780B18D6D60288510AAFB33510174
      6011ECA022C1757217AA76A77997D8C86FC20299C05953DD2AFD880A8B01652F
      54154EF2AFBAFA7485808F039C4053A0144297327BED378BECC2080BC082C045
      83AEC057623AD0E3B442672F54ED4ED5F697EAFB57DABED017C8BECDE6599BC2
      A3080BC0888022C2280B780461519B679D3DB9C503E014FFA2530118C02F0837
      8478014B6909E16672F54ED4EF2AFBE4EAFDE4ECFB080BC088A023022808AF01
      67B711E4B41C80169B56B209AE838DF2074AFB53B53B57DA0257DABED5F680BE
      75F6446EF202B400511D61D014B21805880170751B0441801C7011BAB0DAA0AA
      76AFB405595F7C6AE50158004AFB405825F7DEF1F50115A02F92FBEAECE81015
      B202ADFBB2A1056A766DF78C821309005BE001B04D4F66D18B283CCC02F169C4
      BED4ED4EC31DFD8C33541A02998046DD3A40A0229B65994ED011A9DCBC00E846
      1F12AB081E52A13C03897C03C4BF80F9AFC03E7EE029C00E818A0E01E507EA9B
      CFD0E5C7BCF4859FD5BF45FE166864FF86A7C519F6CE6728002F09A29B7DDEED
      2284028E6AEE24F9D59E76060FD8B7BC383FD8DF375020072F67D390CAC31EBF
      FC667AC38FD0941B8EF791307C959F5FB362F5F6D1D6F5964734B8727F9F19F8
      74D07CB3922F80CFF1A45067DDF4DEA33D27F954FCC17E9D377730CF98A7FDED
      674533F7127F98FFC42CFEEEA7E1CCBD27D33D33D33D33D33D33D33C122FB2C4
      F4CFC813E99F514F7A67A67A67AEFF1333D89FCD61FE5E1E01267A67F3A9FC19
      9E7933E2F1DFD3FDE015271DE7019FF4C9F4CF4CF4CF4CF4CF4CF4CF136A7EC7
      A6F75FE33A7FB3EE3EA3D7FD8D2BF1E6E3F2B2F1899F1CA7F58856597DAB8FFF
      A7D4B79F913C2628FD07F90BE6FDE64427FCFEC93E77A2FBF79DE1F6DF804C2C
      5EDBC3BDED38B213FEDBDE8E73940028FB282AC351A111E97B85988DF8AF8D0C
      5FCE314F59EACD377DDC09449334468B11622C4588B11622C459982CB0962C33
      A0C6A3C618D589A50A3D4A2C4B85BE57631808BE8800160C44F5F88BD5D1622C
      4588B11622C4588B33859324DA43F67BAECF218242AD9C4146F937447A286E75
      2D0C7B735ECDC637D3189D57BE00BF1CD172344FD8051622C4588B11622C4588
      B3005965B756DBBCC917E7B3265853D074D87DBEC11AFD82FC0EE0FC769F1EAC
      E882343E715BE165DE67DA2B36BA35BE8B11622C4588B11622C459102CB5DEEB
      F05E444F2C56A855793E75306F400B8C7708EB6CCD377C6BFF14AF77AA78D1ED
      E5F11622C4588B1165745833F79060ACD805E7FAFA51622CBA8B2BD61BC77B16
      107232C21F10F95C5382DE80178231858FEC4242C6A197FBFE2F787B94E4A2C4
      588B11622CAE8B20677349C4588B2EA2CCC97F1E85C92BBD47265809055F999F
      54D547204C425EBED34961A8B116654593A6B60160C1F808B11660059B262AC3
      A468B116594594FA66DD212F1A2C4A35A1FB10F68A30D6C1AFB3DF62F2A3BF65
      3A412BE3B987391622C860590B6287C7C4588B3102C28D81BA7198D249DED204
      588B0F167CAA5BB63BE32FEDFCDCD4A4BB59C002E331C62616EACD37B975FC0E
      93F74CAEC9CD24BFECA7C51622C930590DBF9C8D051622C12859F06225136013
      951622CC18B3D68BDD0C2ED299921433EB58B6C71F24009D933905F6DD19D7A8
      E439D96D133A4F2FA2C459378B06EF493495E7A2C4595F8B2B7CF422C4598C16
      59CCBBBE52F876C0704C9CBCFD1A27776FA6040323AAEE749D7EA80EF70AFF2D
      0C13DD65E404588B3FD1662F8688B11664459B05666F6587CFFADC015BE166C2
      2C4599316501438FFFC03A3966FFD9AF86DDF858B9A9C1EECED8F2B62C0EF50F
      4A4BDB63D7E5083E89BBF8D22C4599E16162478F86F2793791622C200B151A8B
      3C216749CBBE27DF90D4ACE9C6CE03C9E2EEA5FF643E9B1CC60DC9E0DE3EBA8C
      D62752CBF0309E4B7EAD24D1622C4588B11622C4588B2FC587139D7F773DF59B
      1268C4484D65BF7F0D5AE27B27386AE0768D22BCF072A0C14A2C4588B11622C4
      588B116728B0EA6DEE2E7BC40A9C2C29FF900A33D5C1AF727A43B7E28A3415A1
      322C4588B11622C4588B1166A16463D28D3317D31B0013BF40721F40614B780E
      1BAF00F8F8CA1B02F85F087F5003DE21A0340680E40032FCC721BECE751E79F1
      85FDB8A18871A4E749EF18E1A7CF9FBED3F547FBE997CE06E8095E136976FC06
      2E84203C54074FC603167174E2F8077B87EFF400CC54FB9C10308876EB7A0674
      023199E2C86DAF3175635321A97C0303F00C0F590288B84064C80D01C380E93E
      40309B407CF0535D4883BB9AD672E42419AD9749E70C1775F2073FE01977D10B
      36B50FD0032C46D01A03D2899C85EE4D506BC9F890F57987D8BD06FD859F7806
      45C285CD7DD0FD203FD1B40680CE5AE5A879EC6F489309ADF73A4B6379F09A58
      DC2EFD51D4780705E01C0780653E01CFF80663C4039B40680C10074BE0185780
      66DE0196A1FFA0FD2FB722D60B8571B7CC6D4FAD4BD15B48DFCCDA477DCF807E
      44FBFC89FC1D7180FC8DA03407600FCB5F9FF01F96DF47945F4F90FEDF21FDA4
      BE61F69DABF26E55BA609576DE9EE966D2B9BBF631B9F5B19C0EEDAA7787F00F
      37C03DDF00EE4F01EFA034074FC80385F00E03C032CDAA7D1AF807E63FF677B6
      BC4CE3FACBB774E577AE7407A7DAEF4F3ED775F73695DF81B4BDDF22799E44F3
      3BB90062901A033C078C23C03CDF00FF5AFE45FE62FC87CFF8074FE41FB7B67E
      F117BA31E0DBAF7581DDD898EECD8B75F7EC5B950FBFFA1FE646780F7D01A033
      C07E74F337BBBC03F21F99BBE01C779138DD8CFC9BEDD919ADF20E44BE026787
      BE3F804EC6FEFAF62617A3990FD7D8C757C4864680D019E03CD3C07F3E5A7F7F
      A2E2FC87E242CBF6EC8EFB6C37C723E0D4DF38B842FA44CDCA01B1C2C1BC878F
      DCAF4A2663F44F122E80D01D803F3A7EAF2D3EAF227DBC3E44FC85F3ED790F8C
      DFB2AEB1BFC73D35C33ECF4BB080F487F21A95BF254F00E5178E44FA4061D01E
      C501FEE8FA4063FF5AFFA27E6B7FA17AE2BC85DCEFD97349BC4BC83DF787F0C9
      2FCCEC698CBE01CBDC4E535B8996001D4DC51AA87A3E80D01E201D42E780E60F
      F47FEDF3ABDBF21FC5E9CB17BF4FB4E7F6AE4AB2CA64C53CB33D217AA70AD803
      1A78CEE38A8006045CF46EC47D01A03C60302DFCA05AFE75737BBE87EDFEA6F8
      B721FC8D9C2FD83CB68E9727355FC83E7EA8EDCD7575BE03001FAC063901A03C
      6018CDCD46F2EFA5CDF5E657EECCDF57047D28F8A5EECD79A874E34CF9FECDF8
      3B3B8E01EA58038B40680EF803D4C603D6FAF71BC6A8F89C4ED8F5E28BBA29E8
      A76F705A4AFE43D00200C3C01F5D6043CD91E6E2F73C9A69F609B41D53BF8374
      0080100006FDFFCF7E029342EC0A95F52524573B9F06664C48E401A300A7FB88
      E2ABA8C871BBAF4EE6944C0EFFC0BE858741871C8D31519E478ABDFB27C09730
      D38A85449B883F4B7DCD2B81D0E653C18E4203CA203E00065BB0076AF80E95D6
      0FE099C9F0F18BD962F89AF07AFCE843F0FE65171ADF3BAB4D7B4EEABF440BDD
      6BC4E8CADFC3B4862E7B0015DF80E56F80EA07C07DA6F82F7E3F6BE10C7C17B5
      EE9C203F329F058007EF166E72F1F2C7ABB66079F77447AB951709FF05CBDDCA
      81CF7DB8048A0BF87E9BE1B36817A9F89C54540E7654C2A889184BED1509B842
      21A72BB2057AF6E067632FE3BA284FCE30F87FE27F7BB855F8ACE6EEE7C4E2E1
      A76C2426FC5667D3BA1A7877A057C78606BE372DD79FF1DE17C1FB761C774540
      00003B8400000AF6400000BA3A00000553A000005A7100000040880000169C40
      0000F32D000000406400000F328800001E62A000005A75000003BC2000001DE2
      00400803D60053BF86F2AD0000016F7F0DD7F7F003CD74000002861000002B8D
      000003BCA400000D6C800001FAB2000007799400000EE96800001A3D000003BC
      C40000033940000085AAC40080100200E9DD1AAED0062002DEFE1BEF6800000C
      3BF86E679000001E3DFC00AE620000034F7F002B9A800000D9DFC3778F7F003B
      C340000070F7F003685000001E5DFE377377F8DDE7DBCFF79FF985F8F4800000
      EFEFF1BF7BD000001E5DFE378439315D70E94FD759F85CD40039F800F5C00076
      8E803FD88D47B02E6FD613C3F9706FC71CA0340680F5201DE8AEF092AFCD0DDB
      65F333EABA874491338082D5A080D01A03FC07F9FFFA0FFA1EA8F40680D01E51
      7DA29195376C9744C7EEE0E50DF3EA9BB91F35ADD964F01932034075CE03B7F3
      D2D9DF27E4F8FBAF78C6A37F41CA4E80D01A93A0340680D01DCA20AD84AB0A3F
      EF1664BA2F56C3ED40D1F462B57B2E31C6B480D01A03FC07F9FFFA0FFA1FFA2E
      A9740680D01FE37A7CEFB9E4C0D2265CD1F1339CEC49F9399FF243CCFEDFC064
      3F780627F01D12034071C0310F680EBBCEC47DB3932AED439C67989B9B0E1249
      EB527527406A4E80D01A03DB1B07279337CA6C4C9931C5F2F6BF80A558046959
      89A0D454F5335880D01A03FC07F9FFFA0FFA1FFA2E08F8DC54FA03407B9C0724
      9E11742AA469E5D1D89339E6A6EC7000E8F9A9F26E00393F780E98E01F7D304D
      B9880FDE4E03127FC96CA031680C7C01F76B01D01214A75CE1D9B9E13097FF49
      FA770D71B172527527407E852740680D01E9581CBF5372F6CBFEC1E49F358B1E
      B80FE2124E4290786CAD11B2572101A03407F80FF3FC483890FF772C72EA7EE1
      78B446E4A9F40680C2101D3EA59A9632F55F7A379E1FA37E1B3F01DD7C073013
      5784071E135F8406137E003A19407E22019A1400C6880746134FF2018C3E407F
      D00E540074D5CF39DAC7B7752B7FB275AF9D4F0D949D49D0190E93A0340680F7
      CC0F3ADF2C103A4FED8957FD558582F5583BE7D19D680D01A032F158907043EA
      36AFBA4CB85EC11F54FA034065780C9D4125305BC3E7B95C3E21347F3D9BC409
      A7C419580EAF9E61500F7B678C0775580E7FC88074C680FCB080E70D018E100E
      40268FE60318201C7203F6C033DE39C33AA2C75EF13BCC72A4C6549D49D019AE
      93A0340680C6201C999D1C979F908EB966CE2F42D9FB40680EF4462F68C48B89
      1F54FA034072680F99F0E07663A7C3BCFD1B274D1ED6F724D3F97380C784D3E1
      0184D9EFE10184D9FD6684D38807B6700FCC40309B7C40320201D304D3FD8063
      67101E10078A80C55162D8D8BDA7FE0FCB3053CA4EA4E80E6A49D01A03406D43
      B50E80D01B50E80D01A03A9EA1E944BD9315CE1347C3DE7D8CF099FE8D17F8A6
      8FD7FB346134F9668C269F5668FFF34F67346CD3E981B1E93F16C4E84AAA1D49
      D49D42ED849D01A03406D43B50E80D01B50E80D01A03E5B50FD1EC9FBF4F6638
      F60267F73BD197457129A77466E8CF7999FA4020FE11B50EA4EA4EA4FF312740
      680D01B50ED43A03406D43A0340680ED0A87CC84CFF9F184CFF3D7E59E8EAC4E
      E504CF8C066F485269ECF4671B346E8CD01C4FD9FC733E2A5D50EA4EA4EA4F7A
      A4E80D01A036A1DA8740680DA8740680D019AD50E63D0576643CB3D1D01E598E
      67C3457303CB7AE68DD19BA33667E89A875275275276A1D01A03406D43A03406
      80DA8740680D01EA550E4C507967D3D61E59E984CFF44D1D734EE8CDD19B33E2
      0D43A93A93A93B50E80D01A036A1D01A03406D43A0340680C42A8736E8C16099
      FF7099FE61CCFEEF532BD15E59A37466E8CD99F2FA875275275276A1D01A0340
      6D43A0340680DA8740680D0192023C3D733FEFD94F41CCFEC07967BA1E59EA58
      03D59A77467BEE8CD99FD599F5275275276A1D01A03406D43A0340680DA87406
      80D01EC7A87DF1B77B93FDC3CB3E6F0D10EA099FE1B34563F2DC479A37466E8C
      D99F5275275276A1D01A03406D43B3F680D01B50E80D01A03BC543FB04CF8796
      6399FE90F2CC7A2B209A37466E8CE749A3E26A1D49D49D49DA8740680D01B50E
      80D01A036A1D01A034078AA87AA5BA267C7E59F776687A2B89A2F7466E8CE759
      A7C8543A93A93A93B50E80D01A036A1D01A03406D43A0340680E971393F83B03
      E67CB7C7653E43CB3E7D9F0D068AE24D1EBBA33EB9A37466E8CE3099F5275275
      276A1D01A03406D43A0340680DA8740680D01DE6A1C7E59D933E1E59D933F600
      F85D19BA33F8B4676FA875275275276A1D01A03406D43A0340680DA8740680D0
      1D7D43F1C267E050B267E0F2CC267C7A2BC7A2FE21A3309A37466E8CE4DA8BA9
      EA1D49D49D49F0549D01A03406D43B50E80D01B50E80D01A03D8950F543CB3EE
      99FFCEC25E68E2E8CF1E8BDD19BA33DBE69F9AA87527527527DD893A0340680D
      A876A1D01A036A1D01A03407EAEA1F4DDFCCD1CCF96ECC16099FF6E7B267EC01
      E39A37466E8CEF574677D50EA4EA4EA4FFE92740680D01B50ED43A03406D43A0
      340680EF4A87ADC133FF7547E59FE84CFE3D15C3A2F7466E8CC93D19DBB50EA4
      EA4EA4F9324E80D01A036A1DA8740680DA8740680D01E4FA87D103CFC1F96740
      3CB31E8AFF8345639A3EFF2EE7D346E8CDD19C6734798A875275275272BC93A0
      340680DA876A1D01A036A1D01A03407EBEA1F21E7E689A59E59868ACC068ACC8
      FCB7C734F8F467D3C374671C9A3E6F4665BE5FBA3338A8F099F1513C8EA1D49D
      49D49C8A49D01A03406D43B50E80D01B50E80D01A03C32A1EB4133E7C267ECD1
      5D0099F1E8AFED4D1BA337467525A33F499F151F50EA4EA4EA4FA5A4E80D01A0
      36A1DA8740680DA8740680D01E042E211CCF94D01E59C068AE1F2DC268C3CBB7
      466E8CCAAD19CE04CBEB4CFA93A93A9392349D01A03406D43B50E80D01B50E80
      D01A03236A1F6E133E7E1D15CD3FE6E068AE7F347A0F2FF81D19C8CD1DE34679
      268DD19FA4CFF7C484CDD2C8D43A93A93A9395293A0340680DA876A1D01A036A
      1D01A03407A16A1CF140F2CF4F9F9348B457EB346E8CDD199FF34784D19D4433
      3FDE399F13099F93C5543A93A93A93C9149D01A03406D43B50E80D01B50E80D0
      1A03C5EA1F35BCF334733E3D158FCB3D303CFC1E8AF2E8BF607467EF346E8CC8
      ED19F42A2C733F19AD50EA4EA4EA4FA9A4E80D01A036A1DA8740680DA8740680
      D01EDBA87DC3C13463F2CF484CFC3A2BFC82301D3268CBF4670F97EE8CDD19DF
      D4787967F4399F98D6A87527527527A4893A0340680DA876A1D01A036A1D01A0
      340654543FAC267F73DF4561E59EA1CD1868AE68C07F3346E8CDD19FC168CC93
      3F210CCFF7E4A875275275273F12740680D01B50ED43A03406D43A0340680E66
      A87CFFF099F0D15FEFD68AFFA013CB7FBF2EDD19D03A33B668DD19E4A8FDA0A8
      B90F2AE599FE745543A93A93A93F7693A0340680DA876A1D01A036A1D01A0340
      79DD43F22199FB668EDD15C5CD1FFC19A3BA68CF24D1BA332E7467D5F2FFB9A3
      32FA8B24CFCE0545CBD43A93A93A93ED893A0340680DA876A1D01A036A1D01A0
      34067FD43D3BCCF11FE1347FF6E8AF349A2B24D193CBBC2F46725F2FECB46613
      46E8CE57A33FBF2FE83A330F2CF78933E70133FC81AA875275275278F9274068
      0D01B50ED43A03406D43A0340680F14179584CF9789150CCFFEE8AED01DB346E
      8CDD19BA3324CFD3CCA67D49D49D49E4824E80D01A036A1DA8740680DA874068
      0D01FD150E1A2BCECBA2BBB45E49A7C6B4670668DD19BA33EF34664F2CC933F4
      3E50F91A2A1D49D49D49E9224E80D01A036A1DA8740680DA8740680D01F70A87
      CE099F200EEF2DC3457DD9A37466E8CE93D19FEF907A2F4268C75A8752752752
      7B7293A0340680DA876A1D01A036A1D01A03407A7543E171FE1CE7E884CF800F
      FBCB78668CEE69DD19BA33C9E5FE334662E24CFD5F92F8EA87527527527DBD27
      40680D01B50ED43A03406D43A0340680F80D43E843347FDE5BE5D17BA33CB346
      E8CEFF4677797F33E8CC267F0C267FA628E2A87527527527E0093A0340680DA8
      76A1D01A036A1D01A0340731D43F23C808024CF84D1C4F2DF2F9763FE8CF2797
      F6FD19FFCD1BA33D6F467E8133FB51C543A93A93A93CC493A0340680DA876A1D
      01A036A1D01A03407CFEA1E0E268AE343CB7BA69FEB68CE1F2FE5FE8CE19A374
      67EBD19DDA2FCDA3327B378350EA4EA4EA4FCF92740680D01B50ED43A03406D4
      3A0340680E8CA87959A3F6346679D19BA33FE1A33BA67F1FC80499FDE24CFE02
      5EA87527527527A352740680D01B50ED43A03406D43A0340680EB5A8709A0866
      8F3796F77976E8CDD19BA3324CFEF4333F8718133FEAF8543A93A93A93FB293A
      0340680DA876A1D01A036A1D01A03407BE543958267FC8DBA68E29A71B9A3746
      64D19CFE68FE4D19C5E5FFD5A330F2CE06E7E84CFC854AA1D49D49D49F9349D0
      1A03406D43B50E80D01B50E80D01A03FA350E24010E68DD19BA33FCF467C5AFA
      33EBED0F2CC5879677CA87527527527FA093A0340680DA876A1D01A036A1D01A
      0340789D50F14D23A3387346E8CE7FE5F96FA3327967C514CFC1EDA4F2BA7339
      D43A93A93A93FC893A0340680DA876A1D01A036A1D01A0340746543D4DA3387E
      5FBA3374676E34661E5BC533F3C2F543A93A93A938D093A0340680DA876A1D01
      A036A1D01A03406D43BA33A5346774D1BA3317F466499FEBF4F216E7E950EA4E
      A4EA4F9E49D01A03406D43B50E80D01B50E80D01A036A1C7BD19E6D17CB68CC5
      797E3FE8CC54D1BA33F97467D1A01A2BF4F269267F0E546150EA4EA4EA4F1DA4
      E80D01A036A1DA8740680DA8740680D01B50F83E5FBA33BB467F3F2FDD19E5DB
      1B0F2DF4EC7C04CFD3D6550EA4EA4EA4F2E93A0340680DA876A1D01A036A1D01
      A03406D43BA33746774D1BA3324CFF470C699FAE1D6F062A875275275271C49D
      01A03406D43B50E80D01B50E80D01A036A1DD19C7CD1BA33A37D19F413CB3EDF
      26F1ED790B4288267C7356D43A93A93A93AE2D01A036A1DA8740680DA8740680
      D01B50EE8CC7746780F2FF2ED19D41B68CEEF2CF17CD3D98E133F05E583645B3
      96A1D49D49FE449D01A034076C40F31F91D9A2A48310DB0199AB71B673096FF4
      72ECFDA034067C2B220E443C88B911F54FA034075680E95CCB59DFF0CDFB3475
      7E8CC267FAF68CC9E61E6F31E2D1DFF84D5881DD1DEE04D5DDA3717E639DA84D
      1BC7D498F0A9325459EE90F66F63DBCEEE1A2F30DBFD69E527527527B4D27406
      80D01E2403963EBF6CD669D9D8753DF0EF72D37D2C7FBC625AC04EE31D934068
      0D01E61990FF220E443FD3F514213961383C36C0A9F40680F0401D365DCE9DF6
      158F054CFFD6D19E601D626BF4093574BD1D9FBBCCBB8067F3799E1A3FBB4879
      3CCF9E2F48653E6792A3FF82A2C345707EF87F33171DB43293A93A93E1893A03
      40680F2D81EEE72EF0ED80D7F0F422C5D48D03AE3AC1F24A4A1F7EAEDD9AB279
      A680D01A03200C87F9107221E445C11F2AEA9F40680F2C01EAAB5BD1AC1E59E6
      CC08E68035B4679007ADA3BB8061A3F200E4F4871799F9B1BCCFCE030D2184D9
      C9E90C64D98690E20184D7E824D786CBC9B270A8BFEEDFBF397EB2269EFE3E4B
      9B4A4EA4EA4F96A4E80D01A03D580761837F0D06BF8DC6B7289B172CE59406AF
      8295FF0AB480D01A03200CA7F9907321E645D52E80D01A0330DFD3212AFB6C5C
      9B2F86D17E808E68029DA33AC4D1D7347F926BE2F35EFFA432BD23EE0CF37EEF
      38F3CD98CD23879B73FA3B3CB62CE579C493977CC24B0F3F1527527527527406
      80D01A0336C5E0D40FD3658FD4B7FD4E8DA80468CC40680D01980663FCC83990
      F547A0340680CEB62E5C9A6BBE678D1F33B8346FE203B80787BB01E3E5C07548
      807CF8807F84601FD6201E370603E04A00EEBC1F213700F09700EAB8BC7F7CD2
      ABD7FA693193C3D4A4EA4EA4EA4E66FFBE94C6BF779CF90C0094800728000F79
      A00E28C00FD992AFDE172C9B8883F8C00BB940680D01E7ABD98608B57A80D01C
      A8CCC7FB57A80D01A0340680D01A0340680D01A0340680D01BEE69BDCD9A695B
      C8FB9A80D01C41998FF7DCD40680D01A0340680D01A0340680D01A0340680F6A
      EC1CA5B51B52C4D88D557A42DDF3DD0A4FC2C7DEFB6D45ABD5F5280D01A03300
      CC7F9907321E645C11FC0EA9F40680D01A0340680D01A0340680D01A0340680F
      8A0D9470540955368FE4DFDE13F95A04F23466F9419DF63593C7F7CD40680D01
      980663FCC83990FFCCEDC2498B3E5E8C6CCA9F40680D01A0340680D01A034068
      0D01A0340680F8F0DCE750CC42A725015F07AAB5044DE616D5E9E51A0340680C
      EC56641C10FAFD54A13A556CA08FAA7D01A0340680D01A0340680D01A0340680
      D01A03ED03656F75A1F3721498D2B79BD0B67ED01A03BF119BDA3322E647D53E
      80D01A0340680D01A0340680D01A0340680D01B50E80D01A036A1D01A0340680
      D01A0340680D01A0340680D01A036A1DA8740680DA8740680D01A0340680D01A
      0340680D01A0340680D01B50E80D01B50EA9F40680D01A0340680D01A0340680
      D01A0340680DA8740680D01B50E80D01A0340680D01A0340680D01A0340680D0
      1B50ED43A03406D43A0340680D01A0340680D01A0340680D01A0340680DA8740
      680DA8754FA0340680D01A0340680D01A0340680D01A03406D43A0340680DA87
      40680D01A0340680D01A0340680D01A0340680DA876A1D01A036A1D01A034068
      0D01A0340680D01A0340680D01A03406D43A03406D43AA7D01A0340680D01A03
      40680D01A0340680D01A036A1D01A03406D43A0340680D01A0340680D01A0340
      680D01A03406D43B50E80D01B50E80D01A0340680D01A0340680D01A0340680D
      01A036A1D01A036A1D53E80D01A0340680D01A0340680D01A0340680D01B50E8
      0D01A036A1D01A0340680D01A0340680D01A0340680D01A036A1DA8740680DA8
      740680D01A0340680D01A0340680D01A0340680D01B50E80D01B50EA9F40680D
      01A0340680D01A0340680D01A0340680DA8740680D01B50E80D01A0340680D01
      A0340680D01A0340680D01B50ED43A03406D43A0340680D01A0340680D01A034
      0680D01A0340680DA8740680DA8754FA0340680D01A0340680D01A0340680D01
      A03406D43A0340680DA8740680D01A0340680D01A0340680D01A0340680DA876
      A1D01A036A1D01A0340680D01A0340680D01A0340680D01A03406D43A03406D4
      3AA7D01A0340680D01A0340680D01A0340680D01A036A1D01A03406D43A03406
      80D01A0340680D01A0340680D01A03406D43B50E80D01B50E80D01A0340680D0
      1A0340680D01A0340680D01A036A1D01A036A1D53E80D01A0340680D01A03406
      80D01A0340680D01B50E80D01A036A1D01A0340680D01A0380700E01C0380700
      E01C03AA1EA8780700EA8780700E01C0380700E01C0380700E01C0380700E01D
      50F00E01D50F29F80700E01C0380700E01C0380700E01C0380700EA8780700E0
      1D50F00E01C0380700E01C0380700E01C0380700E01D50F543C03807543C0380
      700E01C0380700E01C0380700E01C0380700EA8780700EA8794FC0380700E01C
      0380700E01C0380700E01C03807543C0380700EA8780700E01C0380700E01C03
      80700E01C0380700EA87AA1E01C03AA1E01C0380700E01C0380700E01C038070
      0E01C03807543C03807543CA7E01C0380700E01C0380700E01C0380700E01C03
      AA1E01C03807543C0380700E01C0380700E01C0380700E01C03807543D50F00E
      01D50F00E01C0380700E01C0380700E01C0380700E01C03AA1E01C03AA1E53F0
      0E01C0380700E01C0380700E01C0380700E01D50F00E01C03AA1E01C0380700E
      01C0380700E01C0380700E01C03AA1EA8780700EA8780700E01C0380700E01C0
      380700E01C0380700E01D50F00E01D50F29F80700E01C0380700E01C0380700E
      01C0380700EA8780700E01D50F00E01C0380700E01C0380700E01C0380700E01
      D50F543C03807543C0380700E01C0380700E01C0380700E01C0380700EA87807
      00EA8794FC0380700E01C0380700E01C0380700E01C03807543C0380700EA878
      0700E01C0380700E01C0380700E01C0380700EA87AA1E01C03AA1E01C0380700
      E01C0380700E01C0380700E01C03807543C03807543CA7E01C0380700E01C038
      0700E01C0380700E01C03AA1E01C03807543C0380700E01C0380700E01C03807
      00E01C03807543D50F00E01D50F00E01C0380700E01C0380700E01C0380700E0
      1C03C62F627406D05308EF4262B64FA0BFBFC93E7DFD053F700E019F0ACC8399
      0F322E647E53F00E01C0380700E01C0380700E01C0380700E01FB81B2A776725
      BCD628B427F2B017685F93A462B3A9300C36A76B501C038079C6673FCE839D0F
      1067BC06B0E8FF2FD39E53F00E01C0380700E01C0380700E01C0380700E01FC4
      1BC0296B7980CC4333FC387C61BF43A83E465819A1F0C08D3E59FCD380700E01
      9C0673FCE839D0F3A2E08FE8794FC0380700E01C0380700E01C0380700E01C03
      807880BB7D4D7154E6091EBD38A7D8BA1F43E2CDDC9BE08E1DD00E01C03380CE
      7F9D073A1E745E52F00E01C0380700E01C0380700E01C0380700E0188762E8E1
      3722DA204A4C9975006B760D180700E019C0673FCE839D0F947C0380700E01C0
      380700E01C0380621059AB80FDD22DCAFA61ABE6B18B393AA1600A29E01FDF7F
      F7AAF727ECFD60790B5B0AC288EB67AF3ADCAE479EF9DAD2E241063D7FD94DEE
      FDA0D77519207ECDDFE28640DEFAD55C16E1F06F137D9A8567F359FFCAE23E12
      4F7F24E3C45C36A54463AD0BB85E34F47FFD346C658127B36011E119E974AF95
      1324DFFFC010C111EBC1A9BD6DCB7AC5A048BA123825109BA344828E829214F4
      98E7E3F724F34856902D20BA3D9BA81D78D3E0466FB4913CE878E5E9C98440C7
      4C6441A4889461C01A80095E0F1D2D5E47340DB02833841F7011B3918AA23489
      0A08AA8905C85144D611BC83FB4489972D92B5333550B002205C71AAB29E3CB9
      936BA830B397C580E78AA2D0F264A97881246B73AFF927F06BA0B826096D7161
      AEFC0BA3827B6043476D05626ACFA411286798F216CF72A801ACB010CF636087
      74988523753986834F667DB551B9024036FF605B18824038FF7C11D39946A54E
      6070A29F3038514BDDB4AA556309CAADE97302295B3E09C77AB66B912AFBD16A
      65F1D3431D88A773AF176AD3E9F1C9D7CE6383D9975AD27CB23FECFAC287ABF6
      5344E87D74C9681D233B87752BC6996C5421D36137A4F0476ECE71823935B63B
      63DF318DF7CD508F3B29C3E55782A9BE21CEE977B3F84E16BB93D87DBE1044AE
      000AA61FD8E5DE84D4E66B070EBB6F0245937B6EB1BA060FEC518E8512023EA0
      B863AD009261CF8107D07101E584280D05EFFD66FF85C4F3D839675D7B38CE95
      EC579BC1EA873F3787434EA9EE510DCF2C2CC7CB4CCADE3CD63B1A412D75C33A
      990D4F8EE9B383C4EA8F01D3E25C0924E39A27467251D57AF450CE0C4E1D6706
      9E438F02C274CE005E6B9883AED3D02B3693A0CC70A26D4F83539AFC2ED4018C
      D60BDA0E144EF8EFFB9D20616270614D6273A13B151D3260EC76AF402CE7EA74
      0D9FAF1B1C73FA86867188058D9FB78E8F1BEB3F756251320535B8B52D6131CA
      481120783F6423FB04F8CBF55AD9F99A3E0DF9BD54AF98DA7E5CDAE5F3A0A5FD
      5BA3AA9BD77C72D93FEDCDB0DFC05790037C8B34FDC56530FBFBA0E08BC56B09
      9C75F76607FA07F8C579E9730ACE8E4748133D5E1ACD01B490EF41169176A851
      28DC4F0A4241043A12453130884D83A541E88152A96C824A562D90893088E8AD
      C4339C2E99FFD33AB9889A6E75D5A8AAC779FC202C1808F4FC43AB2EEE7A96D0
      1FC010C00B48C0470301AF5D982E4280E55BF2F03D17C80AB4A0B0ADDB22D9C2
      11221DE050027DC5F5AF647157846C871F974D901B2894E0F0AFAE13CE402342
      31CDFC242D21251FC21A07AE4BF5225BA20728C622AE9F0254226EEA01657E9D
      402DA6175000C3D75000D78EF4607D2C8684BA211C2D2DC5D194897CFDCCCA01
      8995E0D4A01C3EF21CD1146D785A009E8BE81106086A89121AF569E88B7B73B3
      10C278A062A4188FA11AFF4FA16C4C87D0B6F73463D0BA943F4008E8F6509B8C
      6CFDEC49A51AF85B5B5213628C2C8FD3F2109FD2D65351B84C1CA6C756632DA3
      89D42586CD7F84296284ADA2D6F4CE8EF77D39626508D15B99652C73893E0D91
      B9E428089CD159CD139A248E39CD12B9D939A8736C539A86E202A99142FE0E73
      514AA0739ACDAD81A4DC7308F978EAE0E50F1B56997B71C9F0BBA1CC5804FCC6
      E2CEAE92003FC8FE51AEC6CBBE19356FC3FC193853A01D071C6308065AC821D0
      A9707FCB90B99599E678320E43BD8680708F82E8761E28398119B936CC80F484
      D56F67FA778805B73C7A41EA88B1845E31DE1110916AE0FD5CDAE00CBD3A6774
      86CFE32D9EF3F20DE7A1D27A23F33B3C9E98B601C9D3D82B514B4C84F30B9571
      019E6820714B2DF0BFFE798A4426EC61C6C55C1FE89D6E34231E92E0AC536FA0
      2DECB98D66680F56086519747C5F912A255C0F9705CFA00B68809E4BCAA927B5
      1D2D89A2C67ECD45DF271F4141B0FAB66CA8DBFF561A0916A0C5B3B6EFDE1C8A
      35BB5D209334D44057533A171CFAEE7A88A5E7CA2725C7F2F43CADD0F53F393D
      7284A8D1935FF6D7713AA45C3F4099658A80F3B6237DCE2F67507C007C3AD3C6
      D671AF79792131ADEFE733852B596777858700129341E1E63B0C3CB8665FE548
      D53AA9425D552C0EB780ACCCCBC23AEF10DB41EDF53BB3C6E5E0DC7731917339
      341DFEB1371A67F1F19276C63E8CEDB972FF295969D55F825F2B70F83DCA46E5
      0DF0443DEE07760C3D4E53C1127CE43598D2829D8FF29E78E513905632F11DF6
      940E676E425C946F6CC8E0DFCCD6D831A2D95B106BED3963353F1F21A6A7C792
      6ABFD4175A6A3E80B929AAD8947029F389AB8958D4CC230F705E1C686C377F39
      356A994A67A3416214D9F7E3F60A210CBE5790FD0235DE2C67A05F6F22E9D16B
      873972F1E36842E6E7F1E6E37B5BD91E47F22D06665C766B7175349A395D1F64
      98B5E92D7C296B29C00ADF6B2793EE20FFF3FACE802B7DC81E3FB8E2EB01062D
      D5F67E1EBB06F20C9B2C11CBF981C98C4AE9F2F1D94A752D9D5C8F21676FD39C
      EE8EE7EFB27BD69E146290C9489F759BA6B7F275931D9BB81D16E0FCC7849FF0
      8EA0BA6CD71BBCB3ED11414939C2E24439675CB31FDAF8A8F37570627FB8600C
      1FE8DCC1870EC121B25F99BA7A1BF337FE2509D8883DE6FE8EEE9C7AA278F3ED
      89E7FDCF38DEF513CED818279DB830F1E71DBAE53CF0F6AAE279E764F39B3CFB
      7D3CF29E67CBFCF3CFC853CE6CF3A153CF5B5CE5213CC173CE6258B2CBFE699B
      8278C6B7B6B5CBFDE9E2AE5F5972C707F573CFC79E60622AD9EB70E464108A23
      B1BF7F41FFD22FF949781B654BF8FB8B213766EAABCC7B8BE4FBB9BA93336476
      FA1E9EDE2F96DBC55A04CA3B5F57D70568CDAEB8A96A3B0C1AFFB9168F4FDAC9
      86626E321F9986F959C1BF904F5CFB8BD831D8BEBD8EF32E1E3FEF287F1F0EFE
      8E9178E210E20840D4E98EE1259C9D8DF6CEEF368EEE299FF1F380F3F5B76938
      1D1377D69E732B51099C66BEB7F679C7DF5A5E20CEE8D67A0FBB1AB0BC0DB0B1
      278FBDBAF9E42DB6812BDB927A1FD84E0A6A5D8E5C786B5059D84AFD1DA67FCA
      D3C11617BF3E8C08FBBD19B1F00754168A85ACA19EE733F10B3E063BC9A617C1
      485E862A75631FC3AEFAB1C2FB36EAC713F5EDC1BD6EAC4421313254EDD2987B
      EE18ED844DE2043793B8E11C09FAA104C50E407E9947904A963792F6BC3B13C5
      389AEED3E38340D369F93BB133369E6BECF867D65DB08D6F0374D97BFE734E51
      05A0DFFE9232A76D9EAC6B8FE88C07E1FD67920A642A0731B968040FD328BC2D
      C51645270C55CD87E1F4B4A8CA3E7CE8E1B52B8A2969D5D70B17A01C2EB8C539
      D2F5B6D7157A3F5E69C6AA954115AE3E3AD2BF783AA117C86154234E9AB47A30
      CEB28F617BA3D8BC0ED4F3FD9046C0230DE1B04D838183E0DEB54B0872B6A584
      1BA3F539F10E7FC43A9322C73B3473FD813A86A3634FF13C6103B0A76AE078B0
      3B00ECCC130893BF00B1446C7BED355442C3BFE2FBF9C772C5B0C70F9B38C398
      2D3359AC6784EC914F9869E9DA5E104FF095023C29849ACBF62BF6BD1FEBC29B
      07C78DBB6EC0E4906A7236582AE009C93EC023F3B05F120960A0A709D4130A86
      9C236461CBBE1BA1872C931918787AFC987C930E444E549AFC8FB04938206711
      105F71E398D97B9F8AAB949957DC64AA59B1AF1063F2171E9A9C8036628C5102
      C8C114176C433D328FB8FBB940B2D3E2FAA309787D0B7971378B1777F40C8815
      53C501DB0D25DBF2F8572931297F11E82BFE314938296BA06840AB2482B7C622
      0AA3497500498F33B358F22E31191F7AA831B7D5B49ED7E820BCA227EB6B6CA1
      135AEDA45D5B519B9A2B90DFAB04A9D8EAA39E2E655CB3068A21F63D67D5D5CE
      E3CBF320B388E7936EE3AEA89C36554825D6F2594583E25F52D3A9BDCBDBD7CF
      B8E151D296D2241995D372FC2CDC6BF8EF02863869BBC3506829B9D4057C0D9B
      5173581A963136AB97E4E747FB0752DF73B9122628B436CFE1417A3841A178E4
      33EFDA8285BA7DCCA7F977CF771907477BFFFF17CEFB9E67BB8E0AD1076293F1
      C65C45E09F8189C09906A8273E3EA49B5FA62A8FBA142C2C4F54A5FFBC54376D
      AC6608A0435007561EB446E1B881FF6310A0AC81BCA1211692B0F5F1B7CB0F75
      6E8AB2E5DC6291473BB18F19793F30DE8E566BB0E1BADDD37AB2D3DE621F9B14
      D2C43F50B22E21F28F7A5553EF3DECAA9FDAC3365953E63B7ACDDBB9DB6FC9AF
      4DDF5108EE4F12B8C5AA0838519B3725460799B92D05DDE6E7B43B17372410E9
      63374FE012ABDBB86C7FCD4FF655319FE112075D75617FB0E8CB962481E3CC0B
      C0DB1F5A7B760F81B71249A37CF4CFB81E048F015E827B8883127389197E6317
      F97058C2C61630B1858C2C63E6931B801C1F3E7F9DAA6A2E423B6A8773BDFA78
      A1A9E9221CA53F62594BA9BCC61F65FF079EB210E35B062F2CDD9D59C6F93730
      B8CE612322E1C24D4C5C4EFF02C61D9B852FFC47D5B8E29746FB1BC506EEC6BC
      07B45845275662E37D44ED7B5D386E5ECDBB23723A92C56B5F1E6E40A9AEFFE0
      92433870DC2F4D054368A91ECF31D21046500B3BB952E9DE0351FC4F4751386B
      15EEBA0862BE9331F6BE0F6CC3445F21043D9043558E9AB434175E979A5D4FFC
      1156DCEB118C11C6A8E28E28E4B1A950B79497D16179EF2FA57C2EDE40DC5FA5
      1ECFE2FB2A0693EDF4DF5B4D30BD11FB7B2D2F4A2BB8FDE5FE6D17D9C0D2C196
      048B6C4AD2F4A06645BCDD4C6FE46860B0EA4E0CEAEE9EB01A7A1A864399C1EF
      97E1F29668A1DF43BD7EBA9E2F63F43092CAC61E72BC01B467A3C41F1F3B5477
      2653B95812D2912182BEE192AD52ABBC2FFC12F917F87B0C6AC64199CF6DA8FA
      C277D6ECD34DAB2D2BC821C6684ABA31E13E1728BEDA9572FDFFE9302E87CFFB
      910921B9C88FD579249D24D7D116D34225FCB92234030BF9DA585F2A500C2FE8
      E9B954D500CF4DD0F5BECFAE5830F4E37D785FD3FC1FEF22F3A2B712D0D7C991
      58D1DA71A52DFD7C2F2C1DD0C8BAE4A6FFBC1D7C989FD709126619B07E8D4565
      EBFF9F547260DFA900BCF8393FD9D8744BAFD8C47D7E20B2283D2889B7F71C9C
      861D97939E048F60B895903AFC3DE8761E8F764F38A4722107961A3D60B94AC6
      72960A9BCA262057DC31D2B2CB053D260D71184C90087C69E8C63017E57D1D5E
      CDA2B4AA122DADC8A50D38B8CAB1AA3101942434F0ED7E228424D75B9A5DAD64
      FEC31A1CB35DF1282F569F33B79EE8ED1DFAF707CA883DDBF54F8981346B9CBD
      FC803E8FA0D7D83357EC357C91F0003EACCB9FE75DF8FE7EF788D4D2950D7B56
      42B4735E1746A3CC45CA426F07CFA2EC33764DBA772A8847ED9762271D6DFBED
      D35D08FF650F1279213F5A68779D8F7D706C237B84E7F658FE1DAFB1EEC41272
      584EC69F897B5630B68ABC43FC395794F60C80725FE5E528000DA85C4C6CCA65
      659EE021FEFCB99D20F96532406CB0A353383404FA867C7CF96C751F115C67AA
      1A82DC1621F208792E57B427CD2AF5A4054E473046BBE2EE7A99630A8F47AD21
      6313B5E68CE45B653F4166522FC615A59D33F765A18CA4DCD5D00A204C4E2400
      276117F50C9CCEE58A8F706C114D4A50BA9692C60FB6ED902FDC271C14413A3D
      E2A74065AB2010CA4B2A66BAA1830D7C18396CE850C1BF65CCC9B304ACE74183
      96753586150BDF749C303C87D1819B4316300E316F6270C02FE7C1F505421B99
      2D7305F83988D4013251A0BFA0C3CBEE329B09E3131F7D2842956A5C393649AA
      1092B9AA0E13434E18A696A171E5BFE600B167F3FFCD5203FB040BBF6100FA4F
      F57CC2F3F1A8690FE624E9BE815C71C7F20082DF31F82CEE5FFDF1B53F0B458D
      F98E5DCFF7CFA33F33D7E9FF8060A7FA87433FFBC69C904C4FFD503DD7E66B60
      3FE81019FCFDD0A7FFFB9E800BC91C0C0A3F4019E2FF00741D7541BE21FA2058
      901D8867FC0EF4EEEC0EA101FC073C200D6DCC0F8F1D606B9C6541EF06700377
      47A00DE82E0EDDFCE05A1FE905787300F930181E4F2BCA0F38D3500DA1ED3115
      67A03189300B0F8211840E0F0D1B6641FC082F6176501B84FD04DCCEF0302B7F
      61F9BDEB0D8B6EB240F983A479FF904C7C2035F9C20F679836983F419CC95C43
      5D10E783CD18EB076C561642FAF0DDE54741E7A10A088B8E0720D6D2111786A4
      3B8D06E3FD1A0E98FFFE49BCE03F7A754101E37E2C1DFB816CC5BAE2DD8AFFC2
      ABBDD7458A407DDBF7808778515BEA79A2C0F26A056F205C3F602FB9D8C8B04E
      E6E407D88B6FCF67160F61D8BB0DEB881BB30856BDA00573179B0B6F6DE12019
      01E363F221ECC2D6EAE0C585C833911791156C78EA2BAF4CDC402FA702D6E4D1
      07AC78467C14607B3FD990E0415A48ABE78F12BF0C41BB70EEC80603D66A4238
      7902EA64799E47AFFD990F68D04C9279810DE66307C9FF8F94D2803E502890FA
      4DED830565311FC0756860BBB143F90B990F7D0E4908CF878DCB34205E28807F
      E1EF7A743ECFB003B523CF7D2F7103FA03B1ED043084ECEC48076B20386070C4
      880FDF656630A284F1ED85737A68010020040080100200A27E500A0140280500
      A014028074000CA8AD01E401D29372ADF9519E607F6C072A579535D51DF2C2BC
      B0972C23C4C03961DE588353B53B53B53BD527658174078803C84BCB0CF2C43F
      B42C72C53DE565CB3172CA3CB287E900E596F901D4ED4ED4ED4EEA93B96B4D01
      E501F138E5C0396A4EEE4EF3D5196ACE5B37E29BCB8972D55E7A7F2D49FC200C
      B5672D65CB66EA76A76A76A77AB276074071003E29DCBC07CF916A7649DCBA57
      C53B978773E3FE7C67CF8FF214065C9B98DE7D1353B53B53B53BBCA773F57F40
      0C381DA8B301D285EAC23AB4EF0536FF6633F8B27F32DED40EB28C53B9FC6F3F
      2EE7E47CFC8BE249CFC97AB01F124E6239F95F30BCFD1353BF693BF0603F5C42
      77FB917A7D993BE461FFA9DF211E053B9FEC7A007C93B9A37501B0307EB53BD0
      49CFE6F980EA537E61FB06EF02F8433F9DF9FD27A0C79FD47CC073FAAF061F9F
      D7730BCFF4753B53B53B53BC8277CD07EEDA00F492F580BF401C675D6495D523
      F409C905FDA4EF9824F077BEF9C8F838BE5201C887C32AF4442D3E19741260B9
      06F6A17201EDF5B17988F96BE1B53B53B53B53B924EF9027FF260389767F703F
      2E030C638EA93FD4A6F629DEB8373078440FDA937F83ABC9D9A780F4A7FB207F
      401E1F1611987EFF642B53B53B964EE21FF82EA7754A77F3067F4800F492FD13
      7FA85F5ED6DF0093AFEB6F6214F8B5D7B31E11277BD96F5C480F8049D708EE38
      F94CC5725BBB7A9DA9DA9DA9DCB2766EFE185C01EA4DC482B8A39A7F7A6F629D
      F807048F10F2A0495944397943F8C01C5C6BFBC3F8FE6EAE627B18AF32A76A77
      46F0CA77D4ED4EF5277FFE8214F80F8D1CFFA17B1CC549DF241C90EF80A4E55D
      F1F1E81EDAE2C07CA8E75C23E0F8DD3315F1C9FD8A76A7743738B01A9DA9D98C
      294A601EB4BF9C0FED00DCEF9953B37D9E83DC0D9717E5F271EAC097E671407A
      FA1FDE07F401EE4349B30FE4D2FDFCCB53BFAD4EE35B5F405DA33BEA77649DD5
      B8ECDD80F5A4F6D0BF401801BBD9DEDC6BCD331C7BE33F620E3370A0C33929D0
      CC071D70F14276A173F6505A06F7A13DFF6B53BEF53BFA277FAB77D6DED4EC00
      4EC0F072C700F5A3F5C1B3587EEFF61DEF3DFE44EC0D6E68FEF3788DF7956840
      30360F307D780EC03E0F8263BED31DB6F7CC5A9DF7F4EF257A7E50FA9D8409DF
      E6AD6C800E58BE3C2F8211DBB778E1C73CD66DCF5CFBE443C135FA77F9A9B86E
      DE3D53587BCA03EA49F507FA807D493988ED4FF2E8130571C4A762913BBCD76D
      F76B73D73EF83380EBD6A77D4C33C277D847EA4EC1F8662039001C8BCD33C80F
      DA9D84DD23EC10C35AE27E1AD82823F00316EBC5D06FF9E3BAA76A76A76A774C
      9DE3F1DF2039201FCF1FC40A39D294EE5C71F3FABF2C8F9061BC2C2CCD69AEA6
      B5171883603BA8C37FD1BFEA76A76A76A774E9DF41DD54072403EC49CF667BE1
      134EEBBFB89DEF439FF403EB23F44FEF070C187080F8B8064ACE607DA47A95A9
      DA9DA9DA9DD0E9DCD3FFB769D6894063ACB1BCF4BCEF0137EC4ACE1D9C63C039
      8DEC48B52BFDC9DDDD4ED4EF674ED00A0140280500A01402807DCEFC094AB4EC
      F36800AE6CE0C61C080FE5102FCB0403E40D9BE817AC20CF287F412737F40AD6
      349ECF0F33D3ACFADB3F1B67F34F3C2D218E75FA1BC44434AAD6134D74CF1EBB
      C105F26DB431B944A14D03004CC1F77D0C0F8A90D915BE863EC2FCC6E588FB9B
      9C50248160037DCFDFD1BF31DB81BA8407F186F3E9D859EE4778F79C6F8873D3
      1CC08937FFA89E9CE5D395A5AF59E6E7B49ACFEA99F96A370E765E6896C36729
      33985CCA95D25FE134FC569E70D3F81A7A53B90214D3EEDA7BEB4F6869B499DE
      05C4D6F13EE8DC93AF59B7C46AFA7A9B83C2391B92BA1B222E2E6D880B4181E1
      C010EEAC6BE0B921B72202849BC9B4EF4D37E34D1AEFCE3D66DD92008F5B98AE
      9F1080FBB9BF790EF0FA67173BCFC3D3FADB6ACF20FFB55393E7404F880FD33E
      FFF2E87CAEB84D29E74DCCF3873DFD72427E0EE7CC806407B0C00887B21F77A9
      8C3E778210445E44F5B3F8A1F03F93E387C59AC5C34919F4E32961E4DC4DF08A
      BEA1F2AE33FA78DB845A810FEB6AD749B8642BA61875D2EC403124F34D754A61
      9C187E888AB1FA032327E689B59C45CCDCFF02165389EDD91FE05A6C7D33F904
      23813E67055C81783201861F4C48C3F6FEFF9EF08F3D3680081FCB3DAF709D70
      DB4D50F5D36D2AB69AB5D717A58C5A3D3400801002004008010034E280500A01
      40280500A010487F3A796367CD1E06B34AB7E9467A81FD101D295E94D76677D3
      0AF4C25D308F5600E9877A620D4ED4ED4ED4EF309DD3E75407F403D9E5ED30CF
      4C4381758E58A7F97A234CC5D328F4CA1FBA03A65BE80753B53B53B53BB54EE9
      AD3407B007D4E3A700E9A93BE93BD75465AB3A6CDE67E0A5C4BA6AAF5D3F96A4
      E4680CB5674D65D366EA76A76A76A779DA76194072603EC73D3C07D7916A7649
      DD3A57D93BA78774E3FEDC67DB8FF394065C9BA0DE9D1353B53B53B53BF92774
      F57F500C2814AAFF280EC0776E9D85649DDA774F8DE9E5DD3C8FA7916331CF5F
      2EEBE57D40F5F44D4ED4ED4ED4EFEA9DD7F63D603AA276013FC00FF02705A77D
      BE6BEE03FDE36C2C9D9BC511DBE77F1F49D4BFAFD376403AFD57AC1FE04F5FAE
      EA0FAFE8EA76A76A76A77FD4EF9A20024C07524EC827FD018189E069DCD25754
      FE31418A93BE7178E3E402524FC5E5FB100E45B2CFE3B844BFA0320BEC03BE09
      F813EEF5727B03F92C81E53B53B53B53B9D4EFA468366807B3A38D098400C284
      FDC27762239EF87744F9E40FDDA0808F4BB8B2EC9DD40F0501F813E7F9A31B03
      F1FA06853B53B53B53B9D4EFE21E0E7007544ED02614030D13A9D8813B88902D
      75F40F8649DEEEE3EFB277503C3407E04F65E8C96C0FA1EADC54ED4ED4ED4EE8
      13B318F173E03AA276A1313018B89D4EE1A9DF78D069F3E169E49B9467A44B77
      F503C5407E04FA9E8EA6C0FBB8CF74A76A76A76A77409DFFFA8A4F80EA89DC04
      C64063A2753B8F638FA61E7CF901B362AEF8D1F3E16DBB227503C9007E04FC60
      F82D81FC945FBA9DA9DA9DA9DD0A762F0E7E7C07544EE8263E031F13A9DCCD3B
      31D5EA7DF11BC97E57453EA4808F6F28EA079B80FC89F7E2E6DB03F5701F3E65
      A9DA9DA9DA9DEA4EE759754F80CCAF86EF476FD873DFB0C5F36F1CDDD869CC43
      881CCD0763C239EA2F377923B01F8A47E7F6B53B53B53B53BD49D82E3E6A201C
      1073DF8ED4EE849D82A5CF3FE67F09FF356F880615B23A8BC3F2D477DA7337FF
      598B53B53B53B53BD49DFE67D2D200FD024E3476A774C4EFF75B70FD5D39F0B2
      F894067C927519DC1BE6D86E0ED3854ED4ED4ED4EE7D3B0FDBAE80E9007758E3
      F7C06629D88DC23EC20C85C66FEC2E8484A52031FECCDD86FFDDBBAA76A76A76
      A773E9DE774E4A03A701FD71FC58A39D2D4EE5AEBF574BE991F58D87659DB42D
      F4D217260634FC077B106FFE3BF94ED4ED4ED4EE8D3BE4339E80EC007E493AAD
      3E00DAA776619E9DF1461B7603EA23F64FEF8D6028E080FB08064ACEA07D447A
      95A9DA9DA9DA9DD2E9DD53F07E9FA27D00CC78F87A66B99D926FE495AC3B39C8
      00751BDF116A57FB93BB4A9DA9DED89DA0140280500A01402805009A3BFFDA69
      66E990D801496694203F901FC3205FD64807D4C345D82F3EDC3E50FEE24EA7EC
      159C493DAE1E6BA75AF1C6BE36D7E69EB3FA0819ECF58778F09955ACC6FAE9AE
      3D78843AC5E249FC3987A6606F205A02B6BD6013868A1A34DED03DC3FC90E78C
      078768F08902FFD8049ABF2806452D30E9101FBE67D5BF616BB91E23BF5C3E0F
      CEE06722421FDEE35BF3977E5696BD6B9B9F126B5FAA6BE5A8EC6A2979A25B0D
      ACA4D66175EFB8493F84D7F15AF9C35FE06BE94EB1E0877FBB6BEFAD7D9DAED2
      693AD6F860C77BD87353BF10E413C56FEA6E5F68E10E6B686C88B8E434CF6DD0
      0BA07A43BB1432846790D7991A126F32DFBCB5DF8D746BC948FCC36A7A088536
      B6CB0C6203ED6C7F443BC8EF9C5D7F677F7DE2DA63FCB0FFA5A4435E2292407F
      5C3903F130D1EC88DE9E77DCCF10B86564E470E5F77EC806407D1464887B3C36
      BA79686CFCE3A445E4A14F6191C3283EC1017A1393F869233EBC652C3C9B90C7
      1157D3868E1EDF7F1B728B50233DB49BE9572C8575C30EFA5D9D05249E7BC6A9
      4EF4C4A1DD3B658770A47E1D13B7480CC4A1C3E052EB01DD9BD87C0FCE639EB7
      64846791D1DDB3102F0A403148E7A13B1EAFFFE8E011E79EB0A103FC91BCEA1D
      C61B6BAA1F1A6DAD56D756BC62F4B18B57A6801002004008010020069C500A01
      40280500A01402260FEF1F2C6E39A3ADD66956FD68CF803FA203AD2BD69AEE0E
      FAE15EB84BAE11EC801D70EF5C41A9DA9DA9DA9DE3D3BAFCEA80FEC07ABCBDAE
      19EB8873D0B1CB14E69E88D73175CA3D7287F180EB96FB01D4ED4ED4ED4EEED3
      BB6B4D01EA01F838EDC03B6A4EEA4EF8D519283B6CDE57E0A5C4BB6AAF8D3F96
      A4F2600CB5676D65DB66EA76A76A76A77A4A763C4074A03F073DBC07E3916A76
      49DDBA57E13BB78776E3FF1C67E38FF5E8065C9BB0DEDD1353B53B53B53B344E
      EDEAFEA018401F535E003BF15E000EF53B139275E2776F8DEDE5DDBC8FB79163
      739EDE55E080EDE57D82F6F44D4ED4ED4ED4ECD93BB7EC7A8066024F10578C03
      53BA4A766B2C6B8F9DFC7D266339EDF59E380EDF5DD86F6FD1D4ED4ED4ED4ECE
      53BE89614A6019D093C715E480D4EE929DF40FD0474066C51E6FA01100E60261
      27CFA59AEE007B5D7C9F017E6B48814ED4ED4ED4EE893BEF1F15407520371C75
      14EF9053C11D9207ECD1C191A7E55CF4C00F6BED38E06F97E93B29DA9DA9DA9D
      D1277F3047880EA406A761A4EE5A84B5D7EA8E21277B3D004DDC03A9FC63B81B
      D27AEE0A76A76A76A77469D98CB97407560353BACA77D6642D1DC81BB126E510
      EBE50FF0980F7BDFD4E06F892CF114ED4ED4ED4EE8D3BFEF61A4075C0353BB9E
      38FBE0A923A031392AEF87476206F5DC807CE3B8FE06FCD510553B53B53B53BA
      34EC562D3203AF01A9DDFD3B31D7ED1E416D297E575A8EB5097E6799C07C92F3
      CE06FBFAEFAF32D4AD4ED4ED4EF527732ABB101DC00D4EF0FE658AE6DB89AC41
      7898851B899A8F3F9B019BC4A2E06FCB45F5FB5A95A9DA9DA9DEA4EC273F3203
      BC01A9DE2D3B094FAF101AFAF101BF8C403EEFC00319D161DF744D637DE62D4A
      D4ED4ED4EF5276075A9D01DF00D4EF1A9D81DAD78F5F7EB46BFE4C801DE1BE6E
      07612B3654ED4ED4ED4EE953B19DBC880F0806A779C4EC6EC11F618546F7400C
      7047060180675D7A1C0DC176ED29DA9DA9DA9DD3277A3DFA080F0C07F7C7F1A2
      4EEBAA772638FF3D5FB647E42A3D95F751BCCB28E01D1D07003C23E37042FFD4
      ED4ED4ED4EE9D3BD835AC80F0C07E093B477DE15B277798789DF2CD997803EA2
      3F84FF08F2438F480FD6C064ACEC07D447A95A9DA9DA9DA9DDC69DD93F1CEB37
      F0700CED8197B63F87DA26FE095B43B80C340761BE6116A56092774D53B53BD6
      D3B40280500A0140280500A013977E019A573B94B80051F9BF2919E407EE0816
      674403EE65A27017AA40B220FF024F33EC1591F93DB61E6DA75B71C6DE36DBE6
      9F286A991AEFF7976988B155AD171AE9B63D79464BE4DC78C97319D248D678D4
      87ED7BC836DD4CB4AA3E25097FF6A5D136392F23319105FF322D317DB2308357
      25D1103F6D2FBF8EC2DB723CA77FA97BC61DC8DE7CDCBFFE46B8E72F1CAD2D7A
      DB373DE4D6DF54DBCB517855917344B61B6949BCC2F26B3350FF09BFE2B7F386
      FFC0DFD29D73D1AF1F76DFDF5BFB3B7DA4D6FB6BD2C78EF952E5B382CB9C6361
      C7A9B9FED3ECB9B0445122E312D884B5483684288EEDD2CF29A04B5E94BC29BC
      FF8EF2DF7E37D1AF35681E5B946084AA3955A961081F73A81623BCE719C5E4F8
      FC38DE2D66D7E9205616397242DA080FFC97318E6A5A7E313C53CF1B99D71D2C
      FDDCCA5D3FD0B201901F7F38221EC52DCEAE725CA033E222F1B2ABB65025A263
      6B90ED1A09EC34919F7E32961E4CCDE6C8ABEBCB4F33A9C69F748B5023BE793C
      6937488577C30F1A5DA7FE924F48E354B01B2332F4AAB7CBD06A473E6AAB5CC7
      E65267EE318298FF1EC4FDCDE833CB6FCC4233F9EA6CE00817672018DCF2D5AE
      9F582FF9E091E796D9B103FCD3B6EB1FC61B6FAA1EFA6DBD56DF56BCE2F4B18B
      77A6801002004008010020069C500A0140280500A01402750FFB2F2C6BB9A3B3
      D66956FDE8CF903F9C03BD2BDE9AEB8EFBE15EF84BBE11F0C01DF0EF7C41A9DA
      9DA9DA9DDBD3BBFCEA80FF007A7CBDBE19EF887906B1CB14E6FE88DF3177CA3D
      F287EF00EF96FB81D4ED4ED4ED4EECD3BBEB4D01E901F738EFC03BEA4ECC4EF9
      D519287BECDE2FE0A5C4BBEAAF9D3F96A4C500196ACEFACBBECDD4ED4ED4ED4E
      F404ECB680ED007D8E7BF80FCF22D4EC53BBF4AFB2777F0EEFC7FE78CFCF1FF6
      A00C793771BDFA26A76A76A76A76689DDFD5F407A406A779A4EEFF1BDFCBBBF9
      1F8F22FE901E3CAFC0DF1E89A9DA9DA9DA9D9C2778FD8F480C2A14B7AD001E40
      AF2807629D9E893CBD3B31A033CFCEFDFE93821CF8FACF30078FAEF037C7E8EA
      76A76A76A76729DF1CD9ADC00F091E784E3817D4039A277BCD71F9F27E2A77CA
      6D572D337C84BA00C344071FE493E8E2D0FF203B20B880F73C19CE447C396122
      9DA9DA9DA9DD3277E46C357403E5D99E04E7A17D403F693BAF05CFD3BE02AF5C
      B7C41FB75A0B4AA7C16AE53BC01F3C076E17DF08A3741FD0F99E54ED4ED4ED4E
      EA13BF78C80C801E123D209EA0BF7A4F8511DA89DE957BD4A773F603AEBFB4AE
      053BDCF007F463E00FB403EE17EF5F7E447501775E84759FAAF29DA9DA9DA9DD
      727663467F2807845F6C27BA17BD11B1CF409DF29B8C4B8A332629B8C43BF53E
      08B6407DE01EC0BEC11F27CB93D04EFE4BDDA9DA9DA9DA9DD7277F9EC399A03A
      2E8CF608F846F801BADBD0A77E91B5B3D31BA09577C767B1196812093C07FC88
      FC82F98EB2BD04F7AD22CA76A76A76A776A9D92BCADCD01D393BDA23E31BE006
      A77AF4ECC727B4F78A7863F95DA67A7606D23FA4F80FF911FA05EFD0CBBA09F6
      76BEBCCB53B53B53B53BDA9DC5A8E53000784EE246EFD87B94EC9706ECCCDF96
      4CD47974CD59FB35D01F573E6C56672ECBA09F15A7D7ED6A76A76A76A77B53B0
      DCBC19280EB11FE246F454EE9BF67C6A761AA76260B674A60FB32C407CF9E03B
      31CFE856579B03BEF99ACEFBCC5A9DA9DA9DA9DED4EC1EAD4E56033A893E646E
      A77C24EC26E6C4F7FCB5A75BEF4A03BE1CFE85F646783A1586A9D453B53B53B5
      3BBA4ECAF077A03D001B5D7C5FB0CAEC09F61894ECB342CEE4B90384067BBF9B
      D0DC2F06C29DA9DA9DA9DDD2779DE5A880F4C07F7C7F2B1C71DF54EE0C718776
      40323F3253DFB1B19DC5B6CEECFA0E0F01DE9B1B8527F8A76A76A76A77789DE8
      1AD7407A603F449E35BFBA5984EF2D5C13BDFA12CF407DA47F49FDFC54CC4588
      1FEE00C559E00FB48F52B53B53B53B53BCE13BC27E77B569E0E019FEB13F9C56
      CDB44DFD12B88771D7800F037E022D4AC844EE8AA76A77B2A7680500A0140280
      500A014031EEFC}
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 333
    Top = 104
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 293
    Top = 104
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 305
    Top = 210
  end
end
