unit untRelatorioDinamico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBQuery, DB, QRCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TfrmRelatorioDinamico = class(TForm)
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    lblCampoSelecionado: TLabel;
    edtTitulo: TEdit;
    lblCampo: TLabel;
    lblTituloRelatorio: TLabel;
    ltbCampo: TListBox;
    btnIncluirCampo: TSpeedButton;
    btnRemoverCampo: TSpeedButton;
    ltbCampoSelecionado: TListBox;
    Label1: TLabel;
    btnCampoAcima: TSpeedButton;
    btnCampoAbaixo: TSpeedButton;
    pnlBotoes: TPanel;
    bbtGerar: TBitBtn;
    bbtFechar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirCampoClick(Sender: TObject);
    procedure btnRemoverCampoClick(Sender: TObject);
    procedure ltbCampoDblClick(Sender: TObject);
    procedure btnCampoAcimaClick(Sender: TObject);
    procedure btnCampoAbaixoClick(Sender: TObject);
    procedure bbtGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    qryTabela: TIBQuery;
   strBarraTitulo: string;
   Pagina: Integer;
   QrLabel: array[1..8] of TQrLabel;
   QrDbImage: array[1..8] of TqrDbImage;
   QrDbText: array[1..8] of TQrDbtext;
   Desc,Campo: array[1..8] of String;
   Largura: array[1..8] of Integer;
  function PosCampo(strCampo: String): Integer;
  end;

var
  frmRelatorioDinamico: TfrmRelatorioDinamico;

implementation

uses untRelatorio;

{$R *.dfm}


procedure TrimAppMemorySize;
  var
   MainHandle : THandle;
  begin
  try
   MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
   SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
   CloseHandle(MainHandle) ;
  except
 end;
   Application.ProcessMessages;
end;



function TfrmRelatorioDinamico.PosCampo(strCampo: String): Integer;
  var
   intCampo: integer;
  begin
   Result := 0;
    for intCampo := 1 to 8 do begin
      if (strCampo = Desc[intCampo]) then begin
         Result := intCampo;
         Break;
      end;
    end;
  end;

procedure TfrmRelatorioDinamico.FormShow(Sender: TObject);
  var
   intCampo, intCampoTabela: integer;
  begin
   Self.Caption := strBarraTitulo;
   Pagina := 0;
//Matriz com Nome de Campo na Tabela
   intCampo := 0;
    for intCampoTabela := 0 To (qryTabela.FieldCount - 1) do
      if (qryTabela.Fields[intCampoTabela].Visible) then begin
         Campo[intCampo + 1] :=
         qryTabela.Fields[intCampoTabela].FieldName;
         intCampo := intCampo + 1;
      end;
//Matriz Com Descrição das Colunas do Relatório
      intCampo := 0;
         for intCampoTabela := 0 To (qryTabela.FieldCount - 1) do
            if (qryTabela.Fields[intCampoTabela].Visible) then begin
               Desc[intCampo + 1] :=
               qryTabela.Fields[intCampoTabela].DisplayName;
               intCampo := intCampo + 1;
            end;
//Matriz Com a Largura das Colunas
            intCampo := 0;
         for intCampoTabela := 0 To (qryTabela.FieldCount - 1) do
            if (qryTabela.Fields[intCampoTabela].Visible) then begin
              if (Length(Desc[intCampo + 1]) >
                  qryTabela.Fields[intCampoTabela].DisplayWidth) then
                  Largura[intCampo + 1] := Length(Desc[intCampo + 1])
              else
               Largura[intCampo + 1] :=
               qryTabela.Fields[intCampoTabela].DisplayWidth;
               intCampo := intCampo + 1;
              end;
//Colocamos as Descrições dos Campos para Seleção
               edtTitulo.Clear;
               ltbCampo.Clear;
               ltbCampoSelecionado.Clear;
         for intCampo := 0 to (qryTabela.FieldCount - 1) do
            ltbCampo.Items.Add(Desc[intCampo + 1]);

  end;

procedure TfrmRelatorioDinamico.btnIncluirCampoClick(Sender: TObject);
  begin if (ltbCampo.ItemIndex >= 0) then begin
//Evitando que um campo Indisponível seja selecinado
    if (ltbCampo.Items.Strings[ltbCampo.ItemIndex] = 'Indisponível') then
      exit;
       if (Pagina + Largura[PosCampo(ltbCampo.Items.Strings[ltbCampo.ItemIndex])] >125) then
            Application.MessageBox('Campo Supera o Tamanho da Pagina', 'Aviso',
            MB_ICONINFORMATION + MB_OK)
       else begin
         Pagina := Pagina + Largura[PosCampo(ltbCampo.Items.Strings[ltbCampo.ItemIndex])];
         ltbCampoSelecionado.Items.Add(
         ltbCampo.Items.Strings[ltbCampo.ItemIndex]);
         ltbCampo.Items.Delete(ltbCampo.ItemIndex);
       end;
      end;
  end;

procedure TfrmRelatorioDinamico.btnRemoverCampoClick(Sender: TObject);
  begin if (ltbCampoSelecionado.Items.Count > 0) then begin
            Pagina:= Pagina - Largura[PosCampo(ltbCampoSelecionado.Items.Strings[ltbCampoSelecionado.ItemIndex])];
            ltbCampo.Items.Add(ltbCampoSelecionado.Items.Strings[ltbCampoSelecionado.ItemIndex]);
            ltbCampoSelecionado.Items.Delete(ltbCampoSelecionado.ItemIndex);
       end;
  end;

procedure TfrmRelatorioDinamico.ltbCampoDblClick(Sender: TObject);
  begin
   btnRemoverCampo.Click;
  end;

procedure TfrmRelatorioDinamico.btnCampoAcimaClick(Sender: TObject);
  var
   intCampo: integer;
    begin if (ltbCampoSelecionado.ItemIndex > 0) then begin
      intCampo := ltbCampoSelecionado.ItemIndex;
      ltbCampoSelecionado.Items.Move(intCampo,intCampo-1);
      ltbCampoSelecionado.ItemIndex := intCampo-1;
    end;
  end;

procedure TfrmRelatorioDinamico.btnCampoAbaixoClick(Sender: TObject);
  var
   intCampo: integer;
  begin if (ltbCampoSelecionado.ItemIndex <(ltbCampoSelecionado.Items.Count - 1)) then begin
            intCampo := ltbCampoSelecionado.ItemIndex;
            ltbCampoSelecionado.Items.Move(intCampo,intCampo+1);
            ltbCampoSelecionado.ItemIndex := intCampo+1;
        end;
  end;

procedure TfrmRelatorioDinamico.bbtGerarClick(Sender: TObject);
  var
     intCampo, intColuna, intTamCampo: integer;
     strNomeCampo: String;
    begin if (Trim(edtTitulo.Text) = '') then begin
            Application.MessageBox('Favor digitar um título para o relatório!','Aviso', MB_ICONINFORMATION + MB_OK);
            edtTitulo.SetFocus;
            exit;
    end;
  if (ltbCampoSelecionado.Items.Count > 0) then begin
      intColuna := 5;
//Criando o formulário que contém o relatório
   if (frmRelatorio = nil) then
      Application.CreateForm(TfrmRelatorio, frmRelatorio);
//Configuramos a fonte de dados do relatório
      FrmRelatorio.QuickRep1.DataSet := qryTabela;
// Informamos o Titulo do Relatório
      FrmRelatorio.QRLabel2.Caption := edtTitulo.Text;
      for intCampo := 0 to (ltbCampoSelecionado.Items.Count - 1) do begin
//Obtendo o Tamanho e Nome do Campo
         intTamCampo := Largura[PosCampo(ltbCampoSelecionado.Items.Strings[intCampo])] + 2;
         strNomeCampo := Campo[PosCampo(ltbCampoSelecionado.Items.Strings[intCampo])];
//Criando Componentes Para os Titulos de Colunas
         QrLabel[intCampo+1] := TQrLabel.Create(FrmRelatorio.QuickRep1.Bands.ColumnHeaderBand);
         QrLabel[intCampo+1].Parent := FrmRelatorio.QuickRep1.Bands.ColumnHeaderBand;
         QrLabel[intCampo+1].Left := intColuna;
         QrLabel[intCampo+1].Top := 4;
         QrLabel[intCampo+1].Caption := ltbCampoSelecionado.Items.Strings[intCampo];
         QrLabel[intCampo+1].Font.Style := [fsunderline,fsbold];
//Criando Componentes de Exibição Dados das Colunas
            if (qryTabela.FieldByName(strNomeCampo).DataType in [ftBlob]) then begin
               QrDbImage[intCampo+1] := TQrDbImage.Create(frmRelatorio.QuickRep1.Bands.DetailBand);
               QrDbImage[intCampo+1].Parent := frmRelatorio.QuickRep1.Bands.DetailBand;
               QrDbImage[intCampo+1].Left := intColuna;
               QrDbImage[intCampo+1].Top := 8;
               QrDbImage[intCampo+1].DataSet := qryTabela;
               QrDbImage[intCampo+1].DataField := strNomeCampo;
               QrDbImage[intCampo+1].Stretch := True;
               FrmRelatorio.DetailBand1.Height := QrDbImage[intCampo+1].Height;
               intColuna := intColuna + (5 * intTamCampo);
            end else begin
               QrDbtext[intCampo+1] := TQrDbtext.Create(FrmRelatorio.QuickRep1.Bands.DetailBand);
               QrDbText[intCampo+1].Parent := frmRelatorio.QuickRep1.Bands.DetailBand;
                if (qryTabela.FieldByName(strNomeCampo).DataType in [ftSmallint,ftInteger,ftFloat,ftCurrency,ftLargeint]) then begin
                     QrDbText[intCampo+1].AutoSize := False;
                     QrDbText[intCampo+1].Alignment := taRightJustify;
                     QrDbText[intCampo+1].Width := 4 * intTamCampo;
                end;
                  QrDbText[intCampo+1].Left := intColuna;
                  QrDbText[intCampo+1].Top := 8;
                  QrDbText[intCampo+1].DataSet := qryTabela;
                  QrDbText[intCampo+1].DataField := strNomeCampo;
                  intColuna := intColuna + (5 * intTamCampo);
            end;
         end;
//Chamamos o Relatório
      frmRelatorio.QuickRep1.Preview;
//Liberamos os Componentes utilizados
    for intCampo := 0 to ltbCampoSelecionado.Items.Count - 1 do begin
      QrLabel[intCampo + 1].free;
      QrDbText[intCampo + 1].free;
    end;
//Retirando o formulário do relatório da memória
      frmRelatorio.Destroy;
      frmRelatorio := nil;
    end else begin
      Application.MessageBox('Favor selecionar pelo menos um campo!', 'Aviso',
      MB_ICONINFORMATION + MB_OK);
      ltbCampo.SetFocus;
    end;
  end;

end.
