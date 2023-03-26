unit untCadGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPadrao, ImgList, DB, Menus, Grids, DBGrids, ComCtrls,
  StdCtrls, ExtCtrls, DBCtrls, Buttons, Mask, IBCustomDataSet, IBQuery,
  IBUpdateSQL, IBSQL, ExcelExport;

type
  TfrmCadGrupo = class(TfrmCadPadrao)
    sqlAI: TIBSQL;
    udpGrupo: TIBUpdateSQL;
    qryGrupo: TIBQuery;
    qryGrupoCODIGOGRUPO: TIntegerField;
    qryGrupoCONTROLAESTOQUE: TIBStringField;
    qryGrupoNOME: TIBStringField;
    qryGrupoMEDICAMENTO: TIBStringField;
    qryGrupoMATERIAL: TIBStringField;
    qryGrupoPTUOBRIGATORIO: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure qryGrupoAfterDelete(DataSet: TDataSet);
    procedure qryGrupoAfterPost(DataSet: TDataSet);
    procedure qryGrupoBeforeDelete(DataSet: TDataSet);
    procedure qryGrupoNewRecord(DataSet: TDataSet);
    procedure qryGrupoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgOrdemClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
  private
    { Private declarations }
    procedure OrdemFiltro;
  public
    { Public declarations }
  end;

var
  frmCadGrupo: TfrmCadGrupo;

implementation

uses untMaterial;

{$R *.dfm}

procedure TfrmCadGrupo.qryGrupoAfterDelete(DataSet: TDataSet);
  begin
  inherited;
    try
      frmPrincipal.tstMaterial.CommitRetaining;
    except
      frmPrincipal.tstMaterial.Rollback;
    raise;
    end;
  end;

procedure TfrmCadGrupo.qryGrupoAfterPost(DataSet: TDataSet);
  var
   intCodigo: integer;
  begin
  inherited;
    try
      frmPrincipal.tstMaterial.CommitRetaining;
      intCodigo := qryGrupo.FieldByName('CODIGOGRUPO').AsInteger;
      qryGrupo.Active := False;
      qryGrupo.Active := True;
      qryGrupo.Locate('CODIGOGRUPO', intCodigo, []);
    except
      frmPrincipal.tstMaterial.Rollback;
    raise;
    end;
  end;

procedure TfrmCadGrupo.qryGrupoBeforeDelete(DataSet: TDataSet);
  var
   intResposta: integer;
  begin
  inherited;
    intResposta:= Application.MessageBox('Deseja excluir este registro?','Confirmação', mb_YesNo + mb_DefButton2 + mb_IconQuestion);
    if (intResposta = IDNO) then begin
         SysUtils.Abort;
  end;
end;

procedure TfrmCadGrupo.qryGrupoNewRecord(DataSet: TDataSet);
  begin
  inherited;
    if (qryGrupo.FieldByName('CODIGOGRUPO').IsNull) then begin
         sqlAI.SQL.Text := 'select max(CODIGOGRUPO) as CODIGO from GRUPO';
         sqlAI.ExecQuery;
      try
         qryGrupo.FieldByName('CODIGOGRUPO').AsInteger:= qryGrupo.FieldByName('CODIGOGRUPO').AsInteger + 1;
      finally
         sqlAI.Close;
      end;
         qryGrupo.FieldByName('NOME').FocusControl;
    end;
  end;

procedure TfrmCadGrupo.qryGrupoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
  var
   strMsg, strTitulo: String;
  begin
  inherited;
   strMsg := E.Message;
   strTitulo := 'Erro de Gravação';
//Verifica se a chave primária foi violada.
  if Pos(UpperCase('violation of PRIMARY or UNIQUE KEY constraint "PK_'),
   UpperCase(E.Message)) <> 0 then
  begin
   strMsg := 'Já existe um grupo cadastrado com este código!';
   strTitulo := 'Violação';
  end;
//Verifica se todos os campos foram preenchidos.
    if Pos(UpperCase('*** null ***'), UpperCase(E.Message)) <> 0 then begin
      if Pos(UpperCase('CODIGOGRUPO'), UpperCase(E.Message)) <> 0 then begin
         strMsg := 'Favor preencher o campo Código!';
         strTitulo := 'Campo Vazio';
         qryGrupo.FieldByName('CODIGOGRUPO').FocusControl;
      end else if Pos(UpperCase('NOME'), UpperCase(E.Message)) <> 0 then begin
                  strMsg := 'Favor preencher o campo Medicamento!';
                  strTitulo := 'Campo Vazio';
                  qryGrupo.FieldByName('NOME').FocusControl;
      end else if Pos(UpperCase('CONTROLAESTOQUE'), UpperCase(E.Message)) <> 0 then begin
                  strMsg := 'Favor preencher o campo Prazo de Entrega!';
                  strTitulo := 'Campo Vazio';
                  qryGrupo.FieldByName('CONTROLAESTOQUE').FocusControl;
      end;
    end;
//Mostra a mensagem do erro ocorrido.
      Application.MessageBox(PChar(strMsg), PChar(strTitulo), MB_ICONEXCLAMATION +MB_OK);
      Action := daAbort;
  end;

procedure TfrmCadGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
  begin
  //inherited;
   frmCadGrupo := nil;
  end;

procedure TfrmCadGrupo.OrdemFiltro;
  var
   strSQL: string;
  begin
   qryGrupo.Close;
  if (btnFiltro.Caption = 'Desabilitar') then begin
    if (rbCodigoFiltro.Checked) Then
        strSQL := 'select * from GRUPO where CODIGOGRUPO >= ' +
        QuotedStr(edtDe.Text) + ' and CODIGOGRUPO <= ' +
        QuotedStr(edtAte.Text);
         if (rbDescricaoFiltro.Checked) Then
             strSQL := 'select * from GRUPO where upper(NOME) >= ' +
             QuotedStr(UpperCase(edtDe.Text)) + ' and upper(NOME) <= ' +
             QuotedStr(UpperCase(edtAte.Text));
         end else
       strSQL := 'select * from GRUPO';
    if (rgOrdem.ItemIndex = 0) then
        strSQL := strSQL + ' order by CODIGOGRUPO'
    else
         strSQL := strSQL + ' order by NOME';
         qryGrupo.SQL.Text := strSQL;
         qryGrupo.Open;
  end;

procedure TfrmCadGrupo.rgOrdemClick(Sender: TObject);
  begin
  inherited;
   OrdemFiltro;
  end;

procedure TfrmCadGrupo.edtPesquisaChange(Sender: TObject);
  begin
  inherited;
    if (Trim(edtPesquisa.Text) = '') then
         Exit;
      if (rbCodigoPesq.Checked) then
         qryGrupo.Locate('CODIGOGRUPO', edtPesquisa.Text, [])
      else
         qryGrupo.Locate('MEDICAMENTO', edtPesquisa.Text,[loCaseInsensitive,loPartialKey]);
  end;

procedure TfrmCadGrupo.btnFiltroClick(Sender: TObject);
  begin
  inherited;
   OrdemFiltro;
  end;

end.
