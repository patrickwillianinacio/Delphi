object frGeracaoCustoAtendimento: TfrGeracaoCustoAtendimento
  Left = 599
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Extra'#231#227'o de Custo das Contas'
  ClientHeight = 424
  ClientWidth = 673
  Color = 16311504
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 657
    Height = 62
    TabOrder = 0
    object spProcurarAtendimento: TSpeedButton
      Left = 96
      Top = 13
      Width = 19
      Height = 16
      Hint = 'Consulta c'#243'digo'
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777707777
        77777777770B0777777777777770777777777777777777777777777777707777
        77777777770B077777777777770B077777777777770B077777777777770BB077
        777777770770BB0777777770B0770BB077777770B07770B077777770BB000BB0
        777777770BBBBB07777777777000007777777777777777777777}
      ParentShowHint = False
      ShowHint = True
      OnClick = spProcurarAtendimentoClick
    end
    object spCarregarAtendimento: TSpeedButton
      Left = 543
      Top = 22
      Width = 101
      Height = 31
      Cursor = crHandPoint
      Caption = 'Adicionar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000070000000000007777000000070FFFFFFFFFF07777000000070FC
        CFCCCCCF07777000000070FFFFFFFFFF07777000000070FCCFCCCCCF07777000
        000070FFFFFFFFFF07777000000070FFFFFFF0FF07777000000070F00FFF0B0F
        07770000000070F0F0F0B0F000700000000070FF0B0B0F0FBF00000000007000
        00F0F0FBFBF0000000007777770B0FBFBFB00000000077777770FBFBFB000000
        0000777777770000007000000000777777777777777770000000777777777777
        777770000000}
      ParentFont = False
      OnClick = spCarregarAtendimentoClick
    end
    object txtCodigoAtendimento: TStaticText
      Left = 6
      Top = 13
      Width = 65
      Height = 17
      Caption = 'Atendimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtCodigoAtendimento: TEdit
      Left = 6
      Top = 31
      Width = 110
      Height = 21
      TabOrder = 1
      OnExit = edtCodigoAtendimentoExit
      OnKeyPress = edtCodigoAtendimentoKeyPress
    end
    object txtNomeProntuario: TStaticText
      Left = 123
      Top = 13
      Width = 31
      Height = 17
      Caption = 'Nome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtNomeProntuario: TEdit
      Left = 121
      Top = 31
      Width = 410
      Height = 21
      Enabled = False
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 62
    Width = 657
    Height = 219
    TabOrder = 1
    DesignSize = (
      657
      219)
    object imgCancelar: TImage
      Left = 488
      Top = 185
      Width = 23
      Height = 23
      Picture.Data = {
        07544269746D617046050000424D460500000000000036000000280000001700
        0000120000000100180000000000100500000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF7F8CE2001AC6BFC5F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC5F000
        1AC67F8CE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFF808DE3021CC82949FF021CC8BFC6F1FFFFFFFFFFFFFFFFFFFFFF
        FFBFC6F1021CC82949FF021CC8808DE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFF0420CD7DA1FF2E4EFF2E4EFF0420CDC0C7F2
        FFFFFFFFFFFFC0C7F20420CD2E4EFF2E4EFF7DA1FF0420CDFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFC1C8F30824D07DA1FF33
        54FF3354FF0824D0C1C8F3C1C8F30824D03354FF3354FF7DA1FF0824D0C1C8F3
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC2C9F40D2AD57DA1FF3B5CFF3B5CFF0D2AD50D2AD53B5CFF3B5CFF7DA1FF0D
        2AD5C2C9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC3CAF5112FDA7DA1FF4365FF4365FF4365FF4365
        FF7DA1FF112FDAC3CAF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4CCF61736DF6588FF
        4D6FFF4D6FFF6588FF1736DFC4CCF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6
        CEF81C3CE55679FF5679FF5679FF5679FF1C3CE5C6CEF8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC7CFF92342EB6083FF6083FF7DA1FF7DA1FF6083FF6083FF2342EBC7
        CFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC9D1FA2848EF698DFF698DFF7DA1FF2848EF2848EF7DA1
        FF698DFF698DFF2848EFC9D1FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFCAD2FC2E4EF57195FF7195FF7DA1FF2E4EF5
        CAD2FCCAD2FC2E4EF57DA1FF7195FF7195FF2E4EF5CAD2FCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF3253F87DA1FF789BFF7D
        A1FF3253F8CBD3FDFFFFFFFFFFFFCBD3FD3253F87DA1FF789BFF7DA1FF3253F8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF9AAA
        FD3657FD7DA1FF3657FDCCD4FEFFFFFFFFFFFFFFFFFFFFFFFFCCD4FE3657FD7D
        A1FF3657FD9AAAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9BACFF395AFFCDD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCDD5FF395AFF9BACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      Transparent = True
      Visible = False
    end
    object btnCancelar: TSpeedButton
      Left = 323
      Top = 183
      Width = 94
      Height = 26
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        18000000000000030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF0000FFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
        0000FF0000FF0000FFBFBFBF7F7F7F0000007F7F7FBFBFBF0000FF0000FF0000
        FFBFBFBFBFBFBF000000BFBFBF0000FF0000FF0000FFBFBFBFBFBFBF00000000
        0000000000BFBFBFBFBFBF0000FF0000FF0000FFBFBFBF000000BFBFBF0000FF
        0000FFBFBFBFBFBFBFBFBFBF7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBF0000
        FF0000FFBFBFBF0000000000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF0000000000FF0000FF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF0000FF0000FF0000000000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F00
        00007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000FF0000FF
        BFBFBFBFBFBFBFBFBFBFBFBF00007F00000000007FBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF0000000000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBF00000000
        0000000000BFBFBF0000FF0000FF0000FF0000FF0000FF000000BFBFBF0000FF
        0000FFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBF0000FF0000
        FF0000FF0000FF000000BFBFBF0000FF0000FF0000FFBFBFBFBFBFBF00000000
        0000000000BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF000000BFBFBFBFBFBF
        0000FF0000FF0000FFBFBFBF7F7F7F0000007F7F7FBFBFBF0000FF0000FF0000
        FF0000FF0000FF000000BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FFBFBFBFBFBFBF0000FF000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF0000FFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
      ParentFont = False
      OnClick = btnCancelarClick
    end
    object btnOk: TSpeedButton
      Left = 216
      Top = 183
      Width = 94
      Height = 26
      Caption = 'Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777774F77777700000007777
        7777444F77777000000077777774444F777770000000700000444F44F7777000
        000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
        74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
        8777F07777774000000070FFFF00007777777000000070F88707077777777000
        000070FFFF007777777770000000700000077777777770000000777777777777
        777770000000}
      ParentFont = False
      OnClick = btnOkClick
    end
    object grdpesquisaAtendimento: TDBGrid
      Left = 9
      Top = 12
      Width = 640
      Height = 164
      Anchors = [akLeft, akTop, akRight]
      DataSource = dsAtendimento
      FixedColor = 16311504
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = grdpesquisaAtendimentoCellClick
      OnDrawColumnCell = grdpesquisaAtendimentoDrawColumnCell
      OnKeyPress = grdpesquisaAtendimentoKeyPress
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGOATENDIMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'ATENDIMENTO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPRONTUARIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'NOME'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 472
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXCLUIR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = '     '
          Width = 27
          Visible = True
        end>
    end
    object GroupBox3: TGroupBox
      Left = 584
      Top = 174
      Width = 65
      Height = 40
      Caption = 'Total Itens'
      TabOrder = 1
      object DBText1: TDBText
        Left = 7
        Top = 16
        Width = 50
        Height = 25
        Alignment = taCenter
        DataField = 'TOTALITENS'
        DataSource = dsAtendimento
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object dspPesquisaAtendimento: TDataSetProvider
    DataSet = SQLPesquisaAtendimento
    Left = 43
    Top = 317
  end
  object cdsPesquisaAtendimento: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspPesquisaAtendimento'
    Left = 83
    Top = 317
    object cdsPesquisaAtendimentoCODIGOATENDIMENTO: TIntegerField
      FieldName = 'CODIGOATENDIMENTO'
      Required = True
    end
    object cdsPesquisaAtendimentoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object SQLPesquisaAtendimento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGOATENDIMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT A.CODIGOATENDIMENTO, P.NOME'
      'FROM ATENDIMENTO A'
      
        'INNER JOIN PRONTUARIO P ON P.CODIGOPRONTUARIO = A.CODIGOPRONTUAR' +
        'IO'
      'WHERE A.CODIGOATENDIMENTO =:CODIGOATENDIMENTO'
      'AND A.STATUS IS NULL')
    SQLConnection = dm.SQLConnection
    Left = 8
    Top = 316
  end
  object dsAtendimento: TDataSource
    DataSet = cdsAtendimentos
    Left = 116
    Top = 349
  end
  object cdsAtendimentos: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'CODIGOATENDIMENTO'
        DataType = ftInteger
      end
      item
        Name = 'NOMEPRONTUARIO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'EXCLUIR'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 83
    Top = 349
    Data = {
      730000009619E0BD010000001800000003000000000003000000730011434F44
      49474F4154454E44494D454E544F04000100000000000E4E4F4D4550524F4E54
      554152494F010049000000010005574944544802000200C800074558434C5549
      5201004900000001000557494454480200020001000000}
    object cdsAtendimentosCODIGOATENDIMENTO: TIntegerField
      FieldName = 'CODIGOATENDIMENTO'
    end
    object cdsAtendimentosNOMEPRONTUARIO: TStringField
      FieldName = 'NOMEPRONTUARIO'
      Size = 100
    end
    object cdsAtendimentosTOTALITENS: TAggregateField
      FieldName = 'TOTALITENS'
      ProviderFlags = []
      Active = True
      Expression = 'COUNT(*)'
    end
  end
  object cdsExtracao: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'NOME POSTO'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'C'#211'DIGO MATERIAL NA CONTA'
        DataType = ftInteger
      end
      item
        Name = 'NOME MATERIAL NA CONTA'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'C'#211'DIGO MATERIAL NA SA'#205'DA'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'NOME MATERIAL NA SA'#205'DA'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'SOMA DOS VALORES DA CONTA'
        DataType = ftFMTBcd
        Precision = 15
        Size = 5
      end
      item
        Name = 'SOMA DOS VALORES DA SA'#205'DA'
        DataType = ftFMTBcd
        Precision = 15
        Size = 5
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspExtracao'
    StoreDefs = True
    Left = 82
    Top = 382
  end
  object dsExtracao: TDataSource
    DataSet = cdsExtracao
    Left = 116
    Top = 381
  end
  object SQLExtracao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGOATENDIMENTO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT coalesce(TMP.NomePosto,'#39#39') as "NOME POSTO",'
      'TMP.MaterialConta as "C'#211'DIGO MATERIAL NA CONTA",'
      'TMP.NomeMaterialConta as "NOME MATERIAL NA CONTA",'
      'TMP.MaterialSaida as "C'#211'DIGO MATERIAL NA SA'#205'DA",'
      'TMP.NomeMaterialSaida as "NOME MATERIAL NA SA'#205'DA",'
      ''
      
        'SUM(PrecoMaterialConta) as "SOMA DOS VALORES DA CONTA", SUM(Prec' +
        'oMaterialSaida) AS "SOMA DOS VALORES DA SA'#205'DA"'
      ''
      'FROM ('
      'select'
      'mtConta.CODIGOMATERIAL as MaterialConta,'
      'COALESCE(mtConta.NOMECOMPLETO,'
      ''
      '(SELECT T.DESCRICAO'
      '   FROM TIPOTABELAVALORESMATMED TTVMM'
      
        '   INNER JOIN TABELAVALORESMATMED  T ON T.CODIGOCOMPLETO = CM.CO' +
        'DIGONOCONVENIO'
      
        '                                          AND T.INICIOVIGENCIA <' +
        '= CM.DATA'
      
        '                                          AND T.FIMVIGENCIA > CM' +
        '.DATA'
      
        '                                          AND TTVMM.CODIGOTIPO =' +
        ' T.TIPOTABELAVALORES'
      
        '  WHERE TTVMM.CODIGOTIPOTABELAMATMEDCONVENIO = CM.CODIGOTIPOTABE' +
        'LAMATMEDCONVENIO)) AS NomeMaterialConta,'
      ''
      'coalesce(mtReal.CODIGOMATERIAL,'#39#39') as MaterialSaida,'
      'coalesce(mtReal.NOMECOMPLETO,'#39#39') as NomeMaterialSaida,'
      ''
      's.DESCRICAO as NomePosto,'
      ''
      
        '(coalesce(cm.QTDE, 0) * coalesce(cm.VALOR, 0)) as PrecoMaterialC' +
        'onta,'
      
        '(coalesce(m.QTDESAIDA, 0) * coalesce(e.PRECOCUSTO, 0)) as PrecoM' +
        'aterialSaida'
      ''
      'from contapaciente cp'
      'inner join corpomedicamento cm on cp.PAICONTA = cm.PAICONTA'
      
        'left outer join movimento m on cm.PAINOTA = m.PAINOTA and cm.ITE' +
        'MCORPONOTASAIDA = m.ITEM'
      
        'left outer join material mtConta on cm.CODIGOMATERIAL = mtConta.' +
        'CODIGOMATERIAL'
      
        'left outer join material mtReal on m.CODIGOMATERIAL   = mtReal.C' +
        'ODIGOMATERIAL'
      
        'left outer join estoque e on m.CODIGOMATERIAL = e.CODIGOMATERIAL' +
        ' and e.CODIGOSETOR = m.CODIGOSETOR'
      
        'left outer join setor s on m.CODIGOSETORHOSPITALAR = s.CODIGOSET' +
        'OR'
      ''
      'where cp.codigoatendimento = :CODIGOATENDIMENTO'
      ''
      'and cm.EXCLUIDO is null) AS TMP'
      ''
      'group by'
      'TMP.MaterialConta,'
      'TMP.NomeMaterialConta,'
      ''
      'TMP.MaterialSaida,'
      'TMP.NomeMaterialSaida,'
      ''
      'TMP.NomePosto'
      ''
      'order by TMP.NomePosto')
    SQLConnection = dm.SQLConnection
    Left = 8
    Top = 382
  end
  object dspExtracao: TDataSetProvider
    DataSet = SQLExtracao
    Left = 43
    Top = 382
  end
end
