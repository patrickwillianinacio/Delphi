unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBXpress, DB, SqlExpr, DBClient, Provider,
  IBCustomDataSet, IBQuery, Menus, ImgList, ToolWin, ComCtrls;

type
  TfrmPrincipal = class(TForm)
    qryLogin: TSQLQuery;
    DataSetProviderPrincipal: TDataSetProvider;
    ClientDataSetPrincipal: TClientDataSet;
    SQLConnectionPrincipal: TSQLConnection;
    DataSourcePrincipal: TDataSource;
    tbPrincipal: TToolBar;
    imgPrincipal: TImageList;
    mmuPrincipal: TMainMenu;
    mmuArquivo: TMenuItem;
    mmuArqSair: TMenuItem;
    mmuCadastro: TMenuItem;
    mmuCadUsuarios: TMenuItem;
    mmuCadMaterial: TMenuItem;
    mmuAjuda: TMenuItem;
    mmuAjuSobre: TMenuItem;
    mmuCadClientes: TMenuItem;
    tbtSair: TToolButton;
    ToolButton1: TToolButton;
    tbtUsuarios: TToolButton;
    ToolButton2: TToolButton;
    tbtMaterial: TToolButton;
    ToolButton3: TToolButton;
    tbtClientes: TToolButton;
    ToolButton4: TToolButton;
    tbtSobre: TToolButton;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  bolLogin: Boolean = false;

implementation

uses uLogin;

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  if ((bolLogin = false) and (frmLogin = nil)) then begin
//Criando o formulário de Login
   Application.CreateForm(TfrmLogin, frmLogin);
   bolLogin := true;
   frmLogin.showmodal; //Exibindo o formulário de Login
  end;
//Colocando a aplicação no topo das aplicações
   SetForegroundWindow(Handle);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
   BarraTarefas: HWND; {Barra Iniciar}
   intAltBarraTarefas: Integer;
   tmRectBarraTarefas: TRect;
   con : string;
begin
     //localiza o Handle da janela iniciar
   BarraTarefas := FindWindow('Shell_TrayWnd', nil);
//Pega o "retângulo" que envolve a barra e sua altura
   GetWindowRect(BarraTarefas, tmRectBarraTarefas);
//Definindo posicionamento, altura e largura do formulário principal
   frmPrincipal.Left := 0;
   frmPrincipal.Top := 0;
   frmPrincipal.Height := Screen.Height - intAltBarraTarefas + 2;
   frmPrincipal.Width := Screen.Width;
   intAltBarraTarefas := tmRectBarraTarefas.Bottom - tmRectBarraTarefas.Top;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose := bolFechar;
end;

end.
