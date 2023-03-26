object DTMExcel: TDTMExcel
  OldCreateOrder = False
  Left = 711
  Top = 384
  Height = 389
  Width = 586
  object SQLConnectionExcel: TSQLConnection
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=192.168.1.26:/dados/fdb/softal/softal.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=bjj*34jb'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True'
      'Trim Char=False')
    VendorLib = 'GDS32.DLL'
    Left = 48
    Top = 16
  end
  object DataSetProviderExcel: TDataSetProvider
    DataSet = SQLQueryExcel
    Left = 48
    Top = 224
  end
  object ClientDataSetExcel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderExcel'
    Left = 48
    Top = 72
  end
  object DataSourceLogin: TDataSource
    DataSet = ClientDataSetLogin
    Left = 454
    Top = 288
  end
  object SQLConnectionLogin: TSQLConnection
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=192.168.1.26:/dados/fdb/softal/softal.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=bjj*34jb'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=sysdba'
      'WaitOnLocks=True'
      'Trim Char=False')
    VendorLib = 'GDS32.DLL'
    Left = 448
    Top = 16
  end
  object ClientDataSetLogin: TClientDataSet
    Aggregates = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'DataSetProviderLogin'
    Left = 448
    Top = 88
  end
  object DataSetProviderLogin: TDataSetProvider
    DataSet = qryLogin
    Left = 452
    Top = 224
  end
  object qryLogin: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NUSUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NSENHA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select NUSUARIO,NSENHA   from colaboradores where NUSUARIO ='
      ':NUSUARIO and NSENHA = :NSENHA')
    SQLConnection = SQLConnectionLogin
    Left = 449
    Top = 152
  end
  object SQLQueryExcel: TSQLQuery
    DataSource = DataSourceExcel
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
    SQLConnection = SQLConnectionExcel
    Left = 48
    Top = 144
  end
  object DataSourceExcel: TDataSource
    DataSet = ClientDataSetExcel
    Left = 48
    Top = 296
  end
end
