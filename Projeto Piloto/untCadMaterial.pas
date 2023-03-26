unit untCadMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPadrao, ImgList, DB, Menus, Grids, DBGrids, ComCtrls,
  StdCtrls, ExtCtrls, DBCtrls, Buttons, Mask, IBCustomDataSet, IBQuery,
  IBUpdateSQL, IBSQL, Clipbrd, Jpeg;

type
  TfrmCadMaterial = class(TfrmCadPadrao)
    sqlAI: TIBSQL;
    udpMaterial: TIBUpdateSQL;
    qryMaterial: TIBQuery;
    qryGrupo: TIBQuery;
    btnAdicionar: TButton;
    btnRemover: TButton;
    opdFoto: TOpenDialog;
    DBImage1: TDBImage;
    qryMaterialGP_Nome: TIBStringField;
    qryMaterialMT_PRECOCUSTO: TCurrencyField;
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
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    qryMaterialCODIGOMATERIAL: TIntegerField;
    qryMaterialNOME: TIBStringField;
    qryMaterialCODIGOGRUPO: TIntegerField;
    qryMaterialPRECOBRASINDICE: TIBBCDField;
    qryMaterialPRECOCUSTO: TIBBCDField;
    qryMaterialNOMECOMPLETO: TIBStringField;
    qryMaterialCUSTOMEDIO: TIBBCDField;
    procedure qryMaterialCalcFields(DataSet: TDataSet);
    procedure qryMaterialAfterDelete(DataSet: TDataSet);
    procedure qryMaterialAfterPost(DataSet: TDataSet);
    procedure qryMaterialBeforeDelete(DataSet: TDataSet);
    procedure qryMaterialNewRecord(DataSet: TDataSet);
    procedure qryMaterialPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure dsRegistroStateChange(Sender: TObject);
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
  frmCadMaterial: TfrmCadMaterial;

implementation

uses untMaterial;

{$R *.dfm}



procedure TfrmCadMaterial.qryMaterialCalcFields(DataSet: TDataSet);
  begin
  inherited;
   qryMaterial.FieldByName('MT_PRECOCUSTO').AsCurrency
   :=qryMaterial.FieldByName('PRECOCUSTO').AsCurrency *
      qryMaterial.FieldByName('PRECOBRASINDICE').AsCurrency;
  end;

procedure TfrmCadMaterial.qryMaterialAfterDelete(DataSet: TDataSet);
  begin
  inherited;
    try
      frmPrincipal.tstMaterial.CommitRetaining;
    except
      frmPrincipal.tstMaterial.Rollback;
    raise;
    end;
  end;

procedure TfrmCadMaterial.qryMaterialAfterPost(DataSet: TDataSet);
  var
   intCodigo: integer;
  begin
  inherited;
    try
      frmPrincipal.tstMaterial.CommitRetaining;
      intCodigo := qryMaterial.FieldByName('codigomaterial').AsInteger;
      qryMaterial.Active := False;
      qryMaterial.Active := True;
      qryMaterial.Locate('codigomaterial', intCodigo, []);
    except
      frmPrincipal.tstMaterial.Rollback;
    raise;
    end;
  end;

procedure TfrmCadMaterial.qryMaterialBeforeDelete(DataSet: TDataSet);
  var
   intResposta: integer;
  begin
  inherited;
   intResposta:= Application.MessageBox('Deseja excluir este registro?','Confirmação', mb_YesNo + mb_DefButton2 + mb_IconQuestion);
    if (intResposta = IDNO) then SysUtils.Abort;

  end;

procedure TfrmCadMaterial.qryMaterialNewRecord(DataSet: TDataSet);
  begin
  inherited;
  if (qryMaterial.FieldByName('codigomaterial').IsNull) then begin
      sqlAI.SQL.Text := 'select max(codigomaterial) as codigo from MATERIAL';
      sqlAI.ExecQuery;
  try
   qryMaterial.FieldByName('codigomaterial').AsInteger :=
   qryMaterial.FieldByName('codigomaterial').AsInteger + 1;
    finally
      sqlAI.Close;
    end;
      qryMaterial.FieldByName('nome').FocusControl;
    end;
  end;

procedure TfrmCadMaterial.qryMaterialPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
  var
   strMsg, strTitulo: String;
  begin
  inherited;
    strMsg := E.Message;
    strTitulo := 'Erro de Gravação';
//Verifica se a chave primário foi violada.
    if Pos(UpperCase('violation of PRIMARY or UNIQUE KEY constraint "PK_'),
      UpperCase(E.Message)) <> 0 then begin
      strMsg := 'Já existe um material cadastrado com este código!';
      strTitulo := 'Violação';
    end;
//Verifica se todos os campos foram preenchidos.
      if Pos(UpperCase('*** null ***'), UpperCase(E.Message)) <> 0 then begin
        if Pos(UpperCase('codigomaterial'), UpperCase(E.Message)) <> 0 then begin
            strMsg := 'Favor preencher o campo Código!';
            strTitulo := 'Campo Vazio';
            qryMaterial.FieldByName('codigomaterial').FocusControl;
        end else if Pos(UpperCase('NOME'), UpperCase(E.Message)) <> 0 then begin
                     strMsg := 'Favor preencher o campo Descrição!';
                     strTitulo := 'Campo Vazio';
                     qryMaterial.FieldByName('NOME').FocusControl;
        end else if Pos(UpperCase('MT_PRECOCUSTO'), UpperCase(E.Message)) <> 0 then begin
                     strMsg := 'Favor preencher o campo Quantidade!';
                     strTitulo := 'Campo Vazio';
                     qryMaterial.FieldByName('MT_PRECOCUSTO').FocusControl;
        end else if Pos(UpperCase('PRECOCUSTO'), UpperCase(E.Message)) <> 0 then begin
                     strMsg := 'Favor preencher o campo Valor Unitário!';
                     strTitulo := 'Campo Vazio';
                     qryMaterial.FieldByName('PRECOCUSTO').FocusControl;
        end else if Pos(UpperCase('CODIGOGRUPO'), UpperCase(E.Message)) <> 0 then begin
                     strMsg := 'Favor selecionar um grupo!';
                     strTitulo := 'Campo Vazio';
                     qryMaterial.FieldByName('codigomaterial').FocusControl;
        end;
    end;
//Mostra a mensagem do erro ocorrido.
      Application.MessageBox(PChar(strMsg), PChar(strTitulo), MB_ICONEXCLAMATION + MB_OK);
      Action := daAbort;
  end;

procedure TfrmCadMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
  begin
  //inherited;
   frmCadMaterial := nil;
  end;

procedure TfrmCadMaterial.btnAdicionarClick(Sender: TObject);
  var
   strArquivo: String;
   imagem: TPicture;
    begin
    inherited;
   //Não esquecer de declarar na seção uses: Clipbrd, Jpeg
      if (opdFoto.Execute) then begin
   strArquivo := opdFoto.FileName;
//Cria a variável para armazenar a imagem
   imagem := TPicture.Create();
//Busca a imagem no arquivo e joga na variável
   imagem.LoadFromFile(strArquivo);
//Passa imagem para o clipboard
   clipboard.Assign(imagem);
//Copia a imagem para o DBImage
   DBImage1.PasteFromClipboard;
//Libera a variável
   imagem.Free;
   btnRemover.Enabled := True;
      end;
  end;

procedure TfrmCadMaterial.btnRemoverClick(Sender: TObject);
  begin
  inherited;
   DBImage1.Picture.Bitmap.Assign(nil);
  end;

procedure TfrmCadMaterial.dsRegistroStateChange(Sender: TObject);
  begin
  inherited;
    if (dsRegistro.DataSet.State = dsInsert) then
      btnAdicionar.Enabled := True
    else if (dsRegistro.DataSet.State = dsEdit) then begin
            btnAdicionar.Enabled := True;
            btnRemover.Enabled := True;
    end else begin
            btnAdicionar.Enabled := False;
            btnRemover.Enabled := False;
    end;
  end;

procedure TfrmCadMaterial.OrdemFiltro;
  var
   strSQL: string;
  begin
   qryMaterial.Close;
  if (btnFiltro.Caption = 'Desabilitar') then begin
    if (rbCodigoFiltro.Checked) Then
        strSQL := 'select * from MATERIAL where CODIGOMATERIAL >= ' +
        QuotedStr(edtDe.Text) + ' and CODIGOMATERIAL <= ' + QuotedStr(edtAte.Text);
          if (rbDescricaoFiltro.Checked) Then
               strSQL := 'select * from MATERIAL where upper(NOME) >= ' +
               QuotedStr(UpperCase(edtDe.Text)) + ' and upper(NOME) <= ' +
               QuotedStr(UpperCase(edtAte.Text));
          end else
            strSQL := 'select * from MATERIAL';
       if (rgOrdem.ItemIndex = 0) then
            strSQL := strSQL + ' order by CODIGOMATERIAL'
       else
            strSQL := strSQL + ' order by NOME';
            qryMaterial.SQL.Text := strSQL;
             qryMaterial.Open;
  end;

procedure TfrmCadMaterial.rgOrdemClick(Sender: TObject);
  begin
  inherited;
   OrdemFiltro;
  end;

procedure TfrmCadMaterial.edtPesquisaChange(Sender: TObject);
  begin
  inherited;
    if (Trim(edtPesquisa.Text) = '') then
   Exit;
      if (rbCodigoPesq.Checked) then
         qryMaterial.Locate('codigomaterial', edtPesquisa.Text, [])
      else
   qryMaterial.Locate('NOME', edtPesquisa.Text,[loCaseInsensitive,loPartialKey]);
  end;

procedure TfrmCadMaterial.btnFiltroClick(Sender: TObject);
  begin
  inherited;
   OrdemFiltro;
  end;

end.
