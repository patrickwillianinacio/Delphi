inherited frmCadMaterial: TfrmCadMaterial
  Left = 232
  Top = 232
  Caption = 'frmCadMaterial'
  ClientHeight = 576
  ClientWidth = 743
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBotoes: TPanel
    Width = 743
  end
  inherited pnlOrdemPesquisaFiltro: TPanel
    Width = 743
    inherited rgOrdem: TRadioGroup
      Items.Strings = (
        'Codigomaterial'
        'Nome')
      OnClick = rgOrdemClick
    end
    inherited grpPesquisa: TGroupBox
      inherited rbCodigoPesq: TRadioButton
        Width = 91
        Caption = 'Codigomaterial'
      end
      inherited rbDescricaoPesq: TRadioButton
        Left = 104
        Caption = 'Nome'
      end
      inherited edtPesquisa: TEdit
        OnChange = edtPesquisaChange
      end
    end
    inherited grpFiltro: TGroupBox
      inherited btnFiltro: TSpeedButton
        Left = 180
      end
      inherited rbCodigoFiltro: TRadioButton
        Width = 91
        Caption = 'Codigomaterial'
      end
      inherited rbDescricaoFiltro: TRadioButton
        Left = 104
        Caption = 'Nome'
      end
    end
  end
  inherited pgcAbas: TPageControl
    Width = 743
    Height = 436
    ActivePage = tbsTabela
    inherited tbsFormulario: TTabSheet
      object Label1: TLabel
        Left = 13
        Top = 9
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 13
        Top = 49
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 13
        Top = 89
        Width = 102
        Height = 13
        Caption = 'PRECOBRASINDICE'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 13
        Top = 129
        Width = 57
        Height = 13
        Caption = 'Pre'#231'o custo'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 13
        Top = 169
        Width = 72
        Height = 13
        Caption = 'CUSTOMEDIO'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 13
        Top = 209
        Width = 29
        Height = 13
        Caption = 'Grupo'
        FocusControl = DBLookupComboBox1
      end
      object Label7: TLabel
        Left = 13
        Top = 249
        Width = 96
        Height = 13
        Caption = 'MT_PRECOCUSTO'
        FocusControl = DBEdit6
      end
      object btnAdicionar: TButton
        Left = 192
        Top = 257
        Width = 75
        Height = 25
        Caption = 'Adicionar'
        Enabled = False
        TabOrder = 0
        OnClick = btnAdicionarClick
      end
      object btnRemover: TButton
        Left = 192
        Top = 283
        Width = 75
        Height = 25
        Caption = 'Remover'
        Enabled = False
        TabOrder = 1
        OnClick = btnRemoverClick
      end
      object DBEdit1: TDBEdit
        Left = 13
        Top = 25
        Width = 134
        Height = 21
        DataField = 'CODIGOMATERIAL'
        DataSource = dsRegistro
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 13
        Top = 65
        Width = 784
        Height = 21
        DataField = 'NOME'
        DataSource = dsRegistro
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 13
        Top = 105
        Width = 251
        Height = 21
        DataField = 'PRECOBRASINDICE'
        DataSource = dsRegistro
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 13
        Top = 145
        Width = 251
        Height = 21
        DataField = 'PRECOCUSTO'
        DataSource = dsRegistro
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 13
        Top = 185
        Width = 251
        Height = 21
        DataField = 'CUSTOMEDIO'
        DataSource = dsRegistro
        TabOrder = 6
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 13
        Top = 225
        Width = 534
        Height = 21
        DataField = 'GP_Nome'
        DataSource = dsRegistro
        TabOrder = 7
      end
      object DBEdit6: TDBEdit
        Left = 13
        Top = 265
        Width = 134
        Height = 21
        DataField = 'MT_PRECOCUSTO'
        DataSource = dsRegistro
        TabOrder = 8
      end
    end
    inherited tbsTabela: TTabSheet
      inherited dbgDados: TDBGrid
        Width = 735
        Height = 407
      end
    end
  end
  object DBImage1: TDBImage [3]
    Left = 272
    Top = 136
    Width = 17
    Height = 25
    BorderStyle = bsNone
    TabOrder = 3
    Visible = False
  end
  inherited dsRegistro: TDataSource
    DataSet = qryMaterial
    OnStateChange = dsRegistroStateChange
  end
  inherited imglAbas: TImageList
    Left = 232
  end
  object sqlAI: TIBSQL
    Database = frmPrincipal.dbMaterial
    Transaction = frmPrincipal.tstMaterial
    Left = 298
    Top = 136
  end
  object udpMaterial: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from material '
      'where'
      '  CODIGOMATERIAL = :CODIGOMATERIAL and'
      '  NOME = :NOME and'
      '  CODIGOGRUPO = :CODIGOGRUPO and'
      '  PRECOBRASINDICE = :PRECOBRASINDICE and'
      '  PRECOCUSTO = :PRECOCUSTO and'
      '  CUSTOMEDIO = :CUSTOMEDIO and'
      '  CODIGOMATERIALPRINCIPAL = :CODIGOMATERIALPRINCIPAL and'
      '  NOMECOMPLETO = :NOMECOMPLETO and'
      '  TIPOMATERIAL = :TIPOMATERIAL')
    ModifySQL.Strings = (
      'update material'
      'set'
      '  CODIGOMATERIAL = :CODIGOMATERIAL,'
      '  NOME = :NOME,'
      '  CODIGOGRUPO = :CODIGOGRUPO,'
      '  PRECOBRASINDICE = :PRECOBRASINDICE,'
      '  PRECOCUSTO = :PRECOCUSTO,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  CODIGOMATERIALPRINCIPAL = :CODIGOMATERIALPRINCIPAL,'
      '  NOMECOMPLETO = :NOMECOMPLETO,'
      '  TIPOMATERIAL = :TIPOMATERIAL'
      'where'
      '  CODIGOMATERIAL = :OLD_CODIGOMATERIAL and'
      '  NOME = :OLD_NOME and'
      '  CODIGOGRUPO = :OLD_CODIGOGRUPO and'
      '  PRECOBRASINDICE = :OLD_PRECOBRASINDICE and'
      '  PRECOCUSTO = :OLD_PRECOCUSTO and'
      '  CUSTOMEDIO = :OLD_CUSTOMEDIO and'
      '  CODIGOMATERIALPRINCIPAL = :OLD_CODIGOMATERIALPRINCIPAL and'
      '  NOMECOMPLETO = :OLD_NOMECOMPLETO and'
      '  TIPOMATERIAL = :OLD_TIPOMATERIAL')
    InsertSQL.Strings = (
      'insert into material'
      
        '  (CODIGOMATERIAL, NOME, CODIGOGRUPO, PRECOBRASINDICE, PRECOCUST' +
        'O, CUSTOMEDIO, '
      '   CODIGOMATERIALPRINCIPAL, NOMECOMPLETO, TIPOMATERIAL)'
      'values'
      
        '  (:CODIGOMATERIAL, :NOME, :CODIGOGRUPO, :PRECOBRASINDICE, :PREC' +
        'OCUSTO, '
      
        '   :CUSTOMEDIO, :CODIGOMATERIALPRINCIPAL, :NOMECOMPLETO, :TIPOMA' +
        'TERIAL)')
    DeleteSQL.Strings = (
      'delete from material'
      'where'
      '  CODIGOMATERIAL = :OLD_CODIGOMATERIAL and'
      '  NOME = :OLD_NOME and'
      '  CODIGOGRUPO = :OLD_CODIGOGRUPO and'
      '  PRECOBRASINDICE = :OLD_PRECOBRASINDICE and'
      '  PRECOCUSTO = :OLD_PRECOCUSTO and'
      '  CUSTOMEDIO = :OLD_CUSTOMEDIO and'
      '  CODIGOMATERIALPRINCIPAL = :OLD_CODIGOMATERIALPRINCIPAL and'
      '  NOMECOMPLETO = :OLD_NOMECOMPLETO and'
      '  TIPOMATERIAL = :OLD_TIPOMATERIAL')
    Left = 330
    Top = 136
  end
  object qryMaterial: TIBQuery
    Database = frmPrincipal.dbMaterial
    Transaction = frmPrincipal.tstMaterial
    AfterDelete = qryMaterialAfterDelete
    AfterPost = qryMaterialAfterPost
    BeforeDelete = qryMaterialBeforeDelete
    OnCalcFields = qryMaterialCalcFields
    OnNewRecord = qryMaterialNewRecord
    OnPostError = qryMaterialPostError
    Active = True
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT CODIGOMATERIAL, NOME, CODIGOGRUPO, PRECOBRASINDICE, PRECO' +
        'CUSTO,  CUSTOMEDIO,'
      'CODIGOMATERIALPRINCIPAL,NOMECOMPLETO, TIPOMATERIAL'
      'FROM MATERIAL')
    UpdateObject = udpMaterial
    Left = 362
    Top = 136
    object qryMaterialGP_Nome: TIBStringField
      DisplayLabel = 'Grupo'
      FieldKind = fkLookup
      FieldName = 'GP_Nome'
      LookupDataSet = qryGrupo
      LookupKeyFields = 'CODIGOHSIST'
      LookupResultField = 'CODIGOMATERIALPRINCIPAL'
      KeyFields = 'GP_Nome'
      Size = 40
      Lookup = True
    end
    object qryMaterialMT_PRECOCUSTO: TCurrencyField
      DisplayLabel = 'Custo Total'
      FieldKind = fkCalculated
      FieldName = 'MT_PRECOCUSTO'
      Calculated = True
    end
    object qryMaterialCODIGOMATERIAL: TIntegerField
      FieldName = 'CODIGOMATERIAL'
      Origin = '"MATERIAL"."CODIGOMATERIAL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMaterialNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"MATERIAL"."NOME"'
      Size = 60
    end
    object qryMaterialCODIGOGRUPO: TIntegerField
      FieldName = 'CODIGOGRUPO'
      Origin = '"MATERIAL"."CODIGOGRUPO"'
    end
    object qryMaterialPRECOBRASINDICE: TIBBCDField
      FieldName = 'PRECOBRASINDICE'
      Origin = '"MATERIAL"."PRECOBRASINDICE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qryMaterialPRECOCUSTO: TIBBCDField
      FieldName = 'PRECOCUSTO'
      Origin = '"MATERIAL"."PRECOCUSTO"'
      currency = True
      Precision = 18
      Size = 4
    end
    object qryMaterialNOMECOMPLETO: TIBStringField
      FieldName = 'NOMECOMPLETO'
      Origin = '"MATERIAL"."NOMECOMPLETO"'
      Size = 200
    end
    object qryMaterialCUSTOMEDIO: TIBBCDField
      FieldName = 'CUSTOMEDIO'
      Origin = '"MATERIAL"."CUSTOMEDIO"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object qryGrupo: TIBQuery
    Database = frmPrincipal.dbMaterial
    Transaction = frmPrincipal.tstMaterial
    Active = True
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT CODIGOMATERIAL, NOME, CODIGOGRUPO, PRECOBRASINDICE, PRECO' +
        'CUSTO, CUSTOMEDIO, CODIGOMATERIALPRINCIPAL,NOMECOMPLETO, CODIGOH' +
        'SIST'
      'FROM MATERIALHISTORICO')
    Left = 394
    Top = 136
  end
  object opdFoto: TOpenDialog
    FileName = 
      'C:\Users\root\Desktop\Tarefas\Testes\Projeto Piloto\imagens\depo' +
      'sitphotos_178385820-stock-illustration-toggle-buttons-vector-ico' +
      'n.jpg'
    Filter = '(*.jpg;*.jpeg;*.bmp)|*.jpg;*.jpeg;*.bmp|Foto'
    InitialDir = '.'
    Left = 444
    Top = 133
  end
end
