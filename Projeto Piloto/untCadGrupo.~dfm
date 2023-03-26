inherited frmCadGrupo: TfrmCadGrupo
  Left = 392
  Top = 217
  Caption = 'Cadastro de Grupo'
  ClientHeight = 589
  ClientWidth = 767
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBotoes: TPanel
    Width = 767
  end
  inherited pnlOrdemPesquisaFiltro: TPanel
    Width = 767
    inherited rgOrdem: TRadioGroup
      Items.Strings = (
        'Codigogrupo'
        'Medicamento')
      OnClick = rgOrdemClick
    end
    inherited grpPesquisa: TGroupBox
      inherited rbCodigoPesq: TRadioButton
        Width = 83
        Caption = 'C'#243'digogrupo'
      end
      inherited rbDescricaoPesq: TRadioButton
        Left = 88
        Width = 89
        Caption = 'Medicamento'
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
        Width = 83
        Caption = 'C'#243'digogrupo'
      end
      inherited rbDescricaoFiltro: TRadioButton
        Left = 88
        Width = 89
        Caption = 'Medicamento'
      end
    end
  end
  inherited pgcAbas: TPageControl
    Width = 767
    Height = 449
    ActivePage = tbsTabela
    inherited tbsFormulario: TTabSheet
      object Label1: TLabel
        Left = 30
        Top = 33
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 30
        Top = 73
        Width = 39
        Height = 13
        Caption = 'Estoque'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 30
        Top = 113
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 30
        Top = 153
        Width = 64
        Height = 13
        Caption = 'Medicamento'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 30
        Top = 193
        Width = 37
        Height = 13
        Caption = 'Material'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 30
        Top = 233
        Width = 22
        Height = 13
        Caption = 'PTU'
        FocusControl = DBEdit6
      end
      object DBEdit1: TDBEdit
        Left = 30
        Top = 49
        Width = 43
        Height = 21
        DataField = 'CODIGOGRUPO'
        DataSource = dsRegistro
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 30
        Top = 89
        Width = 43
        Height = 21
        DataField = 'CONTROLAESTOQUE'
        DataSource = dsRegistro
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 30
        Top = 129
        Width = 589
        Height = 21
        DataField = 'NOME'
        DataSource = dsRegistro
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 30
        Top = 169
        Width = 339
        Height = 21
        DataField = 'MEDICAMENTO'
        DataSource = dsRegistro
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 30
        Top = 209
        Width = 339
        Height = 21
        DataField = 'MATERIAL'
        DataSource = dsRegistro
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 30
        Top = 249
        Width = 147
        Height = 21
        DataField = 'PTUOBRIGATORIO'
        DataSource = dsRegistro
        TabOrder = 5
      end
    end
    inherited tbsTabela: TTabSheet
      inherited dbgDados: TDBGrid
        Width = 759
        Height = 420
      end
    end
  end
  inherited dsRegistro: TDataSource
    DataSet = qryGrupo
  end
  object sqlAI: TIBSQL
    Database = frmPrincipal.dbMaterial
    Transaction = frmPrincipal.tstMaterial
    Left = 256
    Top = 136
  end
  object udpGrupo: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from "grupo" '
      'where'
      '  "grupo"."CODIGOGRUPO" = :"CODIGOGRUPO"')
    ModifySQL.Strings = (
      'update "grupo"'
      'set'
      '  "grupo"."CODIGOGRUPO" = :"CODIGOGRUPO",'
      '  "grupo"."CONTROLAESTOQUE" = :"CONTROLAESTOQUE",'
      '  "grupo"."NOME" = :"NOME",'
      '  "grupo"."MEDICAMENTO" = :"MEDICAMENTO",'
      '  "grupo"."MATERIAL" = :"MATERIAL",'
      '  "grupo"."PTUOBRIGATORIO" = :"PTUOBRIGATORIO"'
      'where'
      '  "grupo"."CODIGOGRUPO" = :"OLD_CODIGOGRUPO"')
    InsertSQL.Strings = (
      'insert into "grupo"'
      
        '  ("grupo"."CODIGOGRUPO", "grupo"."CONTROLAESTOQUE", "grupo"."NO' +
        'ME", '
      '"grupo"."MEDICAMENTO", '
      '   "grupo"."MATERIAL", "grupo"."PTUOBRIGATORIO")'
      'values'
      '  (:"CODIGOGRUPO", :"CONTROLAESTOQUE", :"NOME", :"MEDICAMENTO", '
      ':"MATERIAL", '
      '   :"PTUOBRIGATORIO")')
    DeleteSQL.Strings = (
      'delete from "grupo"'
      'where'
      '  "grupo"."CODIGOGRUPO" = :"OLD_CODIGOGRUPO"')
    Left = 288
    Top = 136
  end
  object qryGrupo: TIBQuery
    Database = frmPrincipal.dbMaterial
    Transaction = frmPrincipal.tstMaterial
    AfterDelete = qryGrupoAfterDelete
    AfterPost = qryGrupoAfterPost
    BeforeDelete = qryGrupoBeforeDelete
    OnNewRecord = qryGrupoNewRecord
    OnPostError = qryGrupoPostError
    Active = True
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'SELECT CODIGOGRUPO, CONTROLAESTOQUE, NOME,'
      ' MEDICAMENTO, MATERIAL,  PTUOBRIGATORIO'
      'FROM GRUPO')
    UpdateObject = udpGrupo
    Left = 320
    Top = 136
    object qryGrupoCODIGOGRUPO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGOGRUPO'
      Origin = '"GRUPO"."CODIGOGRUPO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryGrupoCONTROLAESTOQUE: TIBStringField
      DisplayLabel = 'Estoque'
      FieldName = 'CONTROLAESTOQUE'
      Origin = '"GRUPO"."CONTROLAESTOQUE"'
      Size = 1
    end
    object qryGrupoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GRUPO"."NOME"'
      Size = 45
    end
    object qryGrupoMEDICAMENTO: TIBStringField
      DisplayLabel = 'Medicamento'
      FieldName = 'MEDICAMENTO'
      Origin = '"GRUPO"."MEDICAMENTO"'
      FixedChar = True
      Size = 1
    end
    object qryGrupoMATERIAL: TIBStringField
      DisplayLabel = 'Material'
      FieldName = 'MATERIAL'
      Origin = '"GRUPO"."MATERIAL"'
      FixedChar = True
      Size = 1
    end
    object qryGrupoPTUOBRIGATORIO: TIBStringField
      DisplayLabel = 'PTU'
      FieldName = 'PTUOBRIGATORIO'
      Origin = '"GRUPO"."PTUOBRIGATORIO"'
      FixedChar = True
      Size = 1
    end
  end
end
