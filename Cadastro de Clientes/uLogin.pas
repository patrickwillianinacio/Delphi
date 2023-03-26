unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmLogin = class(TForm)
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    btnOK: TButton;
    btnCancelar: TButton;
    lblMsg: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  bolFechar: Boolean = false;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TfrmLogin.btnOkClick(Sender: TObject);
begin
  frmPrincipal.qryLogin.Active := false;
  frmPrincipal.qryLogin.ParamByName('NUSUARIO').AsString:= LowerCase(Trim(edtUsuario.Text));
  frmPrincipal.qryLogin.ParamByName('NSENHA').AsString:= LowerCase(Trim(edtSenha.Text));
  frmPrincipal.qryLogin.Active := true;
  if (frmPrincipal.qryLogin.RecordCount = 1) then begin
      bolFechar := true;
      frmLogin.Close;
    end else begin
      lblMsg.Caption:= 'Dados inv�lidos!';
      edtUsuario.Clear;
      edtSenha.Clear;
      edtUsuario.SetFocus;
 end;
end;


procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose := bolFechar;
end;

end.