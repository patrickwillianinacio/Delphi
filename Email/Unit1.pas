unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdSMTP, IdMessage, IdSSLOpenSSL, ComObj, StdCtrls,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdBaseComponent,
  IdComponent, IdIOHandler, IdIOHandlerSocket;

type
  TForm1 = class(TForm)
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket;
    IdSMTP: TIdSMTP;
    IdMessage1: TIdMessage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  // objetos necess�rios para o funcionamento
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocket;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  CaminhoAnexo: string;
begin
  // instancia��o dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocket.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

  try
    // Configura��o do SSL
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configura��o do SMTP
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.AuthenticationType := atLogin;
    IdSMTP.Port := 465;
    IdSMTP.Host := 'smtp.gmail.com';
    IdSMTP.Username := 'patrickinacio@gmail.com';
    IdSMTP.Password := '';

    // Tentativa de conex�o e autentica��o
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Erro na conex�o e/ou autentica��o: ' +
                    E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    // Configura��o da mensagem
    IdMessage.From.Address := 'patrickinacio@gmail.com';
    IdMessage.From.Name := 'Patrick';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.EMailAddresses := 'patrick@unimedrioclaro.com.br';
    IdMessage.Subject := 'eu ';
    IdMessage.Body.Text := 'nao sei';
 
    // Anexo da mensagem (opcional)
    CaminhoAnexo := 'C:\Anexo.txt';
    if FileExists(CaminhoAnexo) then
      TIdAttachment.Create(IdMessage.MessageParts, CaminhoAnexo);
 
    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      MessageDlg('Mensagem enviada com sucesso.', mtInformation, [mbOK], 0);
    except
      On E:Exception do
        MessageDlg('Erro ao enviar a mensagem: ' +
                    E.Message, mtWarning, [mbOK], 0);
    end;
  finally
    // libera��o dos objetos da mem�ria
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
end;


end.
