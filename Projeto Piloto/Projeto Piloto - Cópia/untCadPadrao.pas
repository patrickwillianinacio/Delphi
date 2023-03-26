unit untCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DB, DBCtrls, Buttons, ComCtrls, ImgList, Grids, DBGrids, IBQuery,
  StdCtrls;

type
  TfrmCadPadrao = class(TForm)
    mmuCadastro: TMainMenu;
    mmuArquivo: TMenuItem;
    mmuArqSair: TMenuItem;
    mmuRegistro: TMenuItem;
    mmuRegPrimeiro: TMenuItem;
    mmuRegAnterior: TMenuItem;
    mmuRegUltimo: TMenuItem;
    mmuRegSeparador1: TMenuItem;
    mmuRegIncluir: TMenuItem;
    mmuRegExcluir: TMenuItem;
    mmuRegAlterar: TMenuItem;
    mmuRegSeparador2: TMenuItem;
    mmuRegSalvar: TMenuItem;
    mmuRegCancelar: TMenuItem;
    mmuRegAtualizar: TMenuItem;
    mmuRegSeparador3: TMenuItem;
    mmuRegOrdenar: TMenuItem;
    mmuRegFiltrar: TMenuItem;
    mmuRegPesquisar: TMenuItem;
    mmuRegSeparador4: TMenuItem;
    mmuRegRelatorio: TMenuItem;
    pnlBotoes: TPanel;
    dsRegistro: TDataSource;
    dbnRegistro: TDBNavigator;
    sbtSair: TSpeedButton;
    pnlOrdemPesquisaFiltro: TPanel;
    rgOrdem: TRadioGroup;
    grpPesquisa: TGroupBox;
    rbCodigoPesq: TRadioButton;
    rbDescricaoPesq: TRadioButton;
    edtPesquisa: TEdit;
    grpFiltro: TGroupBox;
    rbCodigoFiltro: TRadioButton;
    rbDescricaoFiltro: TRadioButton;
    lblDe: TLabel;
    edtDe: TEdit;
    btnFiltro: TSpeedButton;
    lblAte: TLabel;
    edtAte: TEdit;
    imglAbas: TImageList;
    pgcAbas: TPageControl;
    tbsFormulario: TTabSheet;
    tbsTabela: TTabSheet;
    mmuRegPosterior: TMenuItem;
    sbtRelatorio: TSpeedButton;
    dbgDados: TDBGrid;
    procedure rbCodigoPesqClick(Sender: TObject);
    procedure rbDescricaoPesqClick(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure rbCodigoFiltroClick(Sender: TObject);
    procedure rbDescricaoFiltroClick(Sender: TObject);
    procedure edtDeKeyPress(Sender: TObject; var Key: Char);
    procedure edtDeChange(Sender: TObject);
    procedure edtAteKeyPress(Sender: TObject; var Key: Char);
    procedure edtAteChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure dsRegistroDataChange(Sender: TObject; Field: TField);
    procedure mmuRegPrimeiroClick(Sender: TObject);
    procedure mmuRegAnteriorClick(Sender: TObject);
    procedure mmuRegPosteriorClick(Sender: TObject);
    procedure mmuRegUltimoClick(Sender: TObject);
    procedure mmuRegIncluirClick(Sender: TObject);
    procedure mmuRegExcluirClick(Sender: TObject);
    procedure mmuRegAlterarClick(Sender: TObject);
    procedure mmuRegSalvarClick(Sender: TObject);
    procedure mmuRegCancelarClick(Sender: TObject);
    procedure mmuRegAtualizarClick(Sender: TObject);
    procedure mmuRegRelatorioClick(Sender: TObject);
    procedure mmuArqSairClick(Sender: TObject);
    procedure sbtRelatorioClick(Sender: TObject);
    procedure sbtSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  BarraNavReg = class(TDbNavigator);

var
  frmCadPadrao: TfrmCadPadrao;

implementation

uses untRelatorioDinamico;

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



procedure TfrmCadPadrao.rbCodigoPesqClick(Sender: TObject);
  begin
   edtPesquisa.Clear;
   edtPesquisa.SetFocus;
  end;

procedure TfrmCadPadrao.rbDescricaoPesqClick(Sender: TObject);
  begin
   edtPesquisa.Clear;
   edtPesquisa.SetFocus;
  end;

procedure TfrmCadPadrao.edtPesquisaExit(Sender: TObject);
  begin
   edtPesquisa.Clear;
  end;

procedure TfrmCadPadrao.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
  begin if ((rbCodigoPesq.Checked) and (not(Key in ['0'..'9', #8]))) then
            Key := #0;
  end;

procedure TfrmCadPadrao.rbCodigoFiltroClick(Sender: TObject);
  begin
   edtDe.Enabled := True;
   edtDe.Clear;
   edtAte.Clear;
   edtDe.SetFocus;
  end;

procedure TfrmCadPadrao.rbDescricaoFiltroClick(Sender: TObject);
  begin
   edtDe.Enabled := True;
   edtDe.Clear;
   edtAte.Clear;
   edtDe.SetFocus;
  end;

procedure TfrmCadPadrao.edtDeKeyPress(Sender: TObject; var Key: Char);
  begin if ((rbCodigoFiltro.Checked) and (not(Key in ['0'..'9', #8]))) then
   Key := #0;
  end;

procedure TfrmCadPadrao.edtDeChange(Sender: TObject);
  begin if (Trim(edtDe.Text) = '') then begin
            edtDe.Text := '';
            btnFiltro.Enabled := False;
            edtAte.Enabled := False;
  end else begin
            btnFiltro.Enabled := True;
            edtAte.Enabled := True;
      end;
  end;

procedure TfrmCadPadrao.edtAteKeyPress(Sender: TObject; var Key: Char);
  begin if ((rbCodigoFiltro.Checked) and (not(Key in ['0'..'9', #8]))) then
   Key := #0;
  end;

procedure TfrmCadPadrao.edtAteChange(Sender: TObject);
  begin if (Trim(edtAte.Text) = '') then
            edtAte.Text := '';
  end;

procedure TfrmCadPadrao.btnFiltroClick(Sender: TObject);
  begin if ((Trim(edtDe.Text) <> '') AND (Trim(edtAte.Text) = '')) Then //Se for preenchido somente o inicial, o final recebe o inicial
            edtAte.Text := edtDe.Text;
    if (btnFiltro.Caption = 'Habilitar') then begin
         btnFiltro.Caption := 'Desabilitar';
         rbCodigoFiltro.Enabled := False;
         rbDescricaoFiltro.Enabled := False;
         edtDe.Enabled := False;
         edtAte.Enabled := False;
    end else begin
         btnFiltro.Caption := 'Habilitar';
         rbCodigoFiltro.Enabled := True;
         rbCodigoFiltro.Checked := False;
         rbDescricaoFiltro.Enabled := True;
         rbDescricaoFiltro.Checked := False;
         edtDe.Clear;
         edtDe.Enabled := False;
         edtAte.Clear;
         edtAte.Enabled := False;
    end;
  end;

procedure TfrmCadPadrao.FormCreate(Sender: TObject);
  begin
   BarraNavReg(dbnRegistro).buttons[nbFirst].Hint := 'Primeiro [Ctrl+Home]';
   BarraNavReg(dbnRegistro).buttons[nbPrior].Hint := 'Anterior [Ctrl+PgUp]';
   BarraNavReg(dbnRegistro).buttons[nbNext].Hint := 'Posterior [Ctrl+PgDn]';
   BarraNavReg(dbnRegistro).buttons[nbLast].Hint := 'Último [Ctrl+End]';
   BarraNavReg(dbnRegistro).buttons[nbInsert].Hint := 'Incluir [Ctrl+Ins]';
   BarraNavReg(dbnRegistro).buttons[nbDelete].Hint := 'Excluir [Ctrl+Del]';
   BarraNavReg(dbnRegistro).buttons[nbEdit].Hint := 'Alterar [Ctrl+Enter]';
   BarraNavReg(dbnRegistro).buttons[nbPost].Hint := 'Salvar [Ctrl+S]';
   BarraNavReg(dbnRegistro).buttons[nbCancel].Hint := 'Cancelar [Ctrl+BkSp]';
   BarraNavReg(dbnRegistro).buttons[nbRefresh].Hint := 'Atualizar [F5]';
  end;

procedure TfrmCadPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
  begin
   frmRelatorioDinamico.Destroy;
   frmRelatorioDinamico := nil;
  end;

procedure TfrmCadPadrao.FormCloseQuery(Sender: TObject;
var CanClose: Boolean);
  var
   intResposta: integer;
  begin
   intResposta:= Application.MessageBox('Deseja salvar as alterações?','Confirmação', mb_YesNo + mb_DefButton2 + mb_IconQuestion);
    if (intResposta = IDYES) then
         TIBQuery(dsRegistro.DataSet).Post
    else
         TIBQuery(dsRegistro.DataSet).Cancel;
  end;

procedure TfrmCadPadrao.FormShow(Sender: TObject);
  begin if (frmRelatorioDinamico = nil) then
   Application.CreateForm(TfrmRelatorioDinamico, frmRelatorioDinamico);
   frmRelatorioDinamico.qryTabela := TIBQuery(dsRegistro.DataSet);
   frmRelatorioDinamico.strBarraTitulo := Self.Caption;
   dsRegistro.DataSet.Last;
   dsRegistro.DataSet.First;
  end;

procedure TfrmCadPadrao.dsRegistroDataChange(Sender: TObject;
  Field: TField);
  var
   bolPodeModificar, bolEdicao: boolean;
   bolAnterior, bolPosterior: boolean;
   bolVazio: boolean;
   intComponente: integer;
  begin
   bolPodeModificar := dsRegistro.DataSet.Active and
   dsRegistro.DataSet.CanModify;
   bolEdicao := dsRegistro.DataSet.State in [dsEdit, dsInsert];
   bolAnterior := dsRegistro.DataSet.Active and (not dsRegistro.DataSet.BOF);
   bolPosterior := dsRegistro.DataSet.Active and (not dsRegistro.DataSet.EOF);
   bolVazio := dsRegistro.DataSet.Bof and dsRegistro.DataSet.Eof;
   mmuRegPrimeiro.Enabled := bolAnterior;
   mmuRegAnterior.Enabled := bolAnterior;
   mmuRegPosterior.Enabled := bolPosterior;
   mmuRegUltimo.Enabled := bolPosterior;
   mmuRegIncluir.Enabled := bolPodeModificar;
   mmuRegExcluir.Enabled := bolPodeModificar and (not bolVazio);
   mmuRegAlterar.Enabled := bolPodeModificar and (not bolEdicao);
   mmuRegSalvar.Enabled := bolPodeModificar and bolEdicao;
   mmuRegCancelar.Enabled := bolPodeModificar and bolEdicao;
   mmuRegAtualizar.Enabled := bolPodeModificar;
   mmuRegRelatorio.Enabled := not bolVazio;
   sbtRelatorio.Enabled := not bolVazio;
//Habilita ou desabilita a alteração dos dados nos campos
    for intComponente := 0 to ComponentCount - 1 do begin
//Declarar na seção uses: DBCtrls
        if (Components[intComponente] is TDBEdit) then
            (Components[intComponente] as TDBEdit).ReadOnly := not(bolEdicao);
        end;
    if (dsRegistro.DataSet.State in [dsInsert, dsEdit]) then
   pgcAbas.ActivePageIndex := 0;
  end;

procedure TfrmCadPadrao.mmuRegPrimeiroClick(Sender: TObject);
  begin
   dbnRegistro.BtnClick(nbFirst);
  end;

procedure TfrmCadPadrao.mmuRegAnteriorClick(Sender: TObject);
  begin
   dbnRegistro.BtnClick(nbPrior);
  end;

procedure TfrmCadPadrao.mmuRegPosteriorClick(Sender: TObject);
  begin
   dbnRegistro.BtnClick(nbNext);
  end;

procedure TfrmCadPadrao.mmuRegUltimoClick(Sender: TObject);
  begin
   dbnRegistro.BtnClick(nbLast);
  end;

procedure TfrmCadPadrao.mmuRegIncluirClick(Sender: TObject);
  begin
   dbnRegistro.BtnClick(nbInsert);
  end;

procedure TfrmCadPadrao.mmuRegExcluirClick(Sender: TObject);
  begin
   dbnRegistro.BtnClick(nbDelete);
  end;

procedure TfrmCadPadrao.mmuRegAlterarClick(Sender: TObject);
  begin
   dbnRegistro.BtnClick(nbEdit);
  end;

procedure TfrmCadPadrao.mmuRegSalvarClick(Sender: TObject);
  begin
   dbnRegistro.BtnClick(nbPost);
  end;

procedure TfrmCadPadrao.mmuRegCancelarClick(Sender: TObject);
  begin
   dbnRegistro.BtnClick(nbCancel);
  end;

procedure TfrmCadPadrao.mmuRegAtualizarClick(Sender: TObject);
  begin
   dbnRegistro.BtnClick(nbRefresh);
  end;

procedure TfrmCadPadrao.mmuRegRelatorioClick(Sender: TObject);
  begin
   sbtRelatorio.Click;
  end;

procedure TfrmCadPadrao.mmuArqSairClick(Sender: TObject);
  begin
   Close;
  end;

procedure TfrmCadPadrao.sbtRelatorioClick(Sender: TObject);
  begin
   frmRelatorioDinamico.showmodal;
  end;

procedure TfrmCadPadrao.sbtSairClick(Sender: TObject);
  begin
   mmuArqSair.Click;
  end;

end.
