object Form1: TForm1
  Left = 227
  Top = 116
  Width = 1305
  Height = 675
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
  object DBGrid1: TDBGrid
    Left = 136
    Top = 128
    Width = 1049
    Height = 449
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 896
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = '192.168.1.26:/backup/softalbak17102019.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'Password=bjj*34jb')
    LoginPrompt = False
    Left = 128
    Top = 56
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT coalesce(TMP.NomePosto,'#39#39') as NomePosto,'
      'TMP.MaterialConta,'
      'TMP.NomeMaterialConta,'
      'TMP.MaterialSaida,'
      'TMP.NomeMaterialSaida,'
      ''
      ''
      'SUM(PrecoMaterialConta), SUM(PrecoMaterialSaida)'
      ''
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
      'mtReal.CODIGOMATERIAL as MaterialSaida,'
      'mtReal.NOMECOMPLETO as NomeMaterialSaida,'
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
        ' and e.CODIGOSETOR = 2'
      
        'left outer join setor s on m.CODIGOSETORHOSPITALAR = s.CODIGOSET' +
        'OR'
      ''
      'where cp.CODIGOATENDIMENTO = :CODIGOATENDIMENTO'
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
    UpdateObject = IBUpdateSQL1
    Left = 248
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGOATENDIMENTO'
        ParamType = ptUnknown
      end>
    object IBQuery1NOMEPOSTO: TIBStringField
      FieldName = 'NOMEPOSTO'
      Size = 150
    end
    object IBQuery1MATERIALCONTA: TIntegerField
      FieldName = 'MATERIALCONTA'
    end
    object IBQuery1NOMEMATERIALCONTA: TIBStringField
      FieldName = 'NOMEMATERIALCONTA'
      Size = 200
    end
    object IBQuery1MATERIALSAIDA: TIntegerField
      FieldName = 'MATERIALSAIDA'
    end
    object IBQuery1NOMEMATERIALSAIDA: TIBStringField
      FieldName = 'NOMEMATERIALSAIDA'
      Size = 200
    end
    object IBQuery1SUM: TFloatField
      FieldName = 'SUM'
    end
    object IBQuery1SUM1: TFloatField
      FieldName = 'SUM1'
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 184
    Top = 56
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = IBQuery1
    Left = 304
    Top = 56
  end
  object IBUpdateSQL1: TIBUpdateSQL
    Left = 352
    Top = 56
  end
  object IBSQL1: TIBSQL
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 400
    Top = 56
  end
end
