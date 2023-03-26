unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TfrmLogin = class(TForm)
    lblUsuario: TLabel;
    lblSenha: TLabel;
    lblMsg: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    btnConfirma: TBitBtn;
    btnCancelar: TBitBtn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtUsuarioChange(Sender: TObject);
    procedure edtSenhaClick(Sender: TObject);
    procedure edtUsuarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    tentativas : Smallint;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  bolFechar: Boolean = false;

implementation

uses uGeracaoExcel, uDTM, uExcel;

{$R *.dfm}

procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   CanClose := bolFechar;
end;

procedure TfrmLogin.btnConfirmaClick(Sender: TObject);
begin
    DTMexcel.qryLogin.Close;
    DTMexcel.qryLogin.SQL.Clear;  // Adicionei esta linha para limpar o SQL
    DTMexcel.qryLogin.SQL.Add('select NSENHA from colaboradores ');
    DTMexcel.qryLogin.SQL.Add(' WHERE NSENHA = ' + QuotedStr(edtSenha.Text));
    DTMexcel.qryLogin.Open;

    if (Trim(edtSenha.Text) <> '') and not(DTMexcel.qryLogin.IsEmpty) then begin //Verifica se o login é válido
       ModalResult := mrOk
    end else begin//Caso o login não seja válido então
      dec(tentativas); //Incrementa em 1 o valor da variável tentativas
      if tentativas > 0 then begin

        if edtSenha.CanFocus then
           edtSenha.SetFocus;
        end else begin
          MessageDlg('Senha não confere', mtInformation, [mbOk], 0);
          Application.Terminate;
        end;
	    end;

      if (Trim(edtSenha.Text) <> '') and not(DTMexcel.qryLogin.IsEmpty) then begin
         bolFechar := true;
         frmLogin.Close;
      end else begin
         //MessageDlg('Senha não confere, %dª tentativa de acesso ao sistema.', mtInformation, [mbOk], 0);
         MessageDlg(Format('Senha não confere, faltam %dª ',
         [tentativas]) + ' tentativas.', mtInformation, [mbOk], 0);
         edtSenha.Clear;
         edtSenha.SetFocus;
    end;
end;

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TfrmLogin.edtUsuarioChange(Sender: TObject);
var carater : string;
    i,n : integer;
begin

  if edtUsuario.Text <> '' then

  for i := 0 to n-1 do begin
   carater := edtUsuario.Text;
   
   exit;
  end else begin
         edtUsuario.Text := '';
     exit;
  end;

end;

procedure TfrmLogin.edtSenhaClick(Sender: TObject);
begin
  DTMexcel.qryLogin.Close;
  DTMexcel.qryLogin.SQL.Clear;  // Adicionei esta linha para limpar o SQL
  DTMexcel.qryLogin.SQL.Add('select NUSUARIO from colaboradores ');
  DTMexcel.qryLogin.SQL.Add(' WHERE NUSUARIO = ' + QuotedStr(edtUsuario.Text));
  DTMexcel.qryLogin.Open;

  if (Trim(edtUsuario.Text) <> '') and not(DTMexcel.qryLogin.IsEmpty) then begin //Verifica se o login é válido
    ModalResult := mrOk

    end else begin//Caso o usuário não seja válido então
      dec(tentativas); //Incrementa em 1 o valor da variável tentativas
      if tentativas > 0 then begin

        if edtUsuario.CanFocus then
           edtUsuario.SetFocus;
        end else begin
          MessageDlg('Usuário não encontrado, usuário inválido', mtInformation, [mbOk], 0);
          Application.Terminate;
        end;
      end;

      if (Trim(edtUsuario.Text) <> '') and not(DTMexcel.qryLogin.IsEmpty) then begin
        edtSenha.SetFocus;
      end else begin
      MessageDlg(Format('Usuário não cadastrado, faltam %dª',
      [tentativas]) + ' tentativas.', mtInformation, [mbOk], 0);
       edtUsuario.SetFocus;
    end;
end;

procedure TfrmLogin.edtUsuarioClick(Sender: TObject);
begin
  DTMexcel.qryLogin.Close;
  DTMexcel.qryLogin.SQL.Clear;  // Adicionei esta linha para limpar o SQL
  DTMexcel.qryLogin.SQL.Add('select NSENHA from colaboradores ');
  DTMexcel.qryLogin.SQL.Add(' WHERE NSENHA = ' + QuotedStr(edtUsuario.Text));
  DTMexcel.qryLogin.Open;

  if (Trim(edtUsuario.Text) <> '') and not(DTMexcel.qryLogin.IsEmpty) then begin //Verifica se o login é válido
    ModalResult := mrOk

    end else begin//Caso o usuário não seja válido então
      dec(tentativas); //Incrementa em 1 o valor da variável tentativas
      if tentativas > 0 then begin

        if edtUsuario.CanFocus then
           edtUsuario.SetFocus;
        end else begin
          MessageDlg('Senha não confere', mtInformation, [mbOk], 0);
          Application.Terminate;
        end;
	   end;

      if (Trim(edtUsuario.Text) <> '') and not(DTMexcel.qryLogin.IsEmpty) then begin
        edtSenha.SetFocus;
      end else begin
         MessageDlg(Format('Senha não confere, faltam %dª',
         [tentativas]) + ' tentativas.', mtInformation, [mbOk], 0);
         edtUsuario.SetFocus;
    end;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  tentativas := 3;
end;

end.
