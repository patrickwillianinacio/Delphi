unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmLogin = class(TForm)
    lblUsuario: TLabel;
    edtUsuario: TEdit;
    lblSenha: TLabel;
    edtSenha: TEdit;
    btnConfirma: TBitBtn;
    btnCancelar: TBitBtn;
    lblMsg: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  bolFechar: Boolean = false;

implementation

uses uPrincipal, uExcel;

{$R *.dfm}

procedure TfrmLogin.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   CanClose := bolFechar;
end;

procedure TfrmLogin.btnConfirmaClick(Sender: TObject);
begin
   frmGeracaoExcel.qryLogin.Active := false;
   frmGeracaoExcel.qryLogin.ParamByName('NUSUARIO').AsString:= LowerCase(Trim(edtUsuario.Text));
   frmGeracaoExcel.qryLogin.ParamByName('NSENHA').AsString:= LowerCase(Trim(edtSenha.Text));
   frmGeracaoExcel.qryLogin.Active := true;
  if (frmGeracaoExcel.qryLogin.RecordCount = 1) then begin
      bolFechar := true;
      frmLogin.Close;
    end else begin
      lblMsg.Caption:= 'Dados inválidos!';
      edtUsuario.Clear;
      edtSenha.Clear;
      edtUsuario.SetFocus;
    end;
end;

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
   Application.Terminate;
end;

end.
