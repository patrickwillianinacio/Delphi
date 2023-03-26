unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComObj, StdCtrls, IdMessage, IdIOHandler, IdIOHandlerSocket,
  IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP;

type
  TForm1 = class(TForm)
    IdSMTP1: TIdSMTP;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket;
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
  Outlook: OleVariant;
  vMailItem: variant;
const
  olMailItem = 0;
begin
  try
    Outlook := GetActiveOleObject('Outlook.Application');
  except
    Outlook := CreateOleObject('Outlook.Application');
  end;
  vMailItem := Outlook.CreateItem(olMailItem);
  vMailItem.Recipients.Add('patrick@unimedrioclaro.com.br');
  vMailItem.Subject := 'Assunto do e-mail';
  vMailItem.Body := 'Corpo do e-mail';
  vMailItem.Attachments.Add('C:\Anexo.txt');
  vMailItem.GetInspector.Activate;
  vMailItem.Display(True);
  VarClear(Outlook);
end;

end.
