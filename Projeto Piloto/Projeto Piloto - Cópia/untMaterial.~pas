unit untMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, ToolWin, ComCtrls, DB, IBCustomDataSet, IBQuery,
  IBDatabase, StdCtrls, dblogdlg;

type
  TfrmPrincipal = class(TForm)
    imgPrincipal: TImageList;
    mmuPrincipal: TMainMenu;
    mmuArquivo: TMenuItem;
    mmuCadastro: TMenuItem;
    mmuAjuda: TMenuItem;
    mmuArqSair: TMenuItem;
    mmuCadGrupo: TMenuItem;
    mmuCadMaterial: TMenuItem;
    mmuAjuSobre: TMenuItem;
    tbPrincipal: TToolBar;
    ToolButton2: TToolButton;
    tbtCadGrupo: TToolButton;
    tbtCadMaterial: TToolButton;
    ToolButton5: TToolButton;
    tbtSobre: TToolButton;
    tbtSair: TToolButton;
    sbPrincipal: TStatusBar;
    dbMaterial: TIBDatabase;
    tstMaterial: TIBTransaction;
    qryLogin: TIBQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mmuAjuSobreClick(Sender: TObject);
    procedure mmuArqSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mmuCadGrupoClick(Sender: TObject);
    procedure mmuCadMaterialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  bolLogin: Boolean = false;

implementation

uses untLogin, untSobre, untCadGrupo, untCadMaterial;

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

procedure TfrmPrincipal.FormActivate(Sender: TObject);
  begin
   sbPrincipal.Panels[1].Text :=
   FormatDateTime(' dddd", " dd " de " mmmm " de " yyyy', Now);
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

procedure TfrmPrincipal.mmuAjuSobreClick(Sender: TObject);
  begin if (frmSobre = nil) then
   Application.CreateForm(TfrmSobre, frmSobre);
   frmSobre.showmodal;
  end;

procedure TfrmPrincipal.mmuArqSairClick(Sender: TObject);
  begin
   Close;
  end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var
   intResposta: integer;
  begin
   intResposta := Application.MessageBox('Deseja sair da aplicação?','Confirmação', mb_YesNo + mb_DefButton2 + mb_IconQuestion);
  if (intResposta = IDNO) then CanClose := False;
  end;

procedure TfrmPrincipal.mmuCadGrupoClick(Sender: TObject);
  begin if (frmCadGrupo = nil)then
   Application.CreateForm(TfrmCadGrupo, frmCadGrupo);
   frmCadGrupo.showmodal;
  end;

procedure TfrmPrincipal.mmuCadMaterialClick(Sender: TObject);
  begin if (frmCadMaterial = nil)then
   Application.CreateForm(TfrmCadMaterial, frmCadMaterial);
   frmCadMaterial.showmodal;
  end;

end.
