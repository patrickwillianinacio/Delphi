unit Chat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Sockets, ScktComp, ExtCtrls;

type
  TChatFal = class(TForm)
    Quadro: TMemo;
    Status: TMemo;
    C_Comandos: TGroupBox;
    Servir: TButton;
    Conectar: TButton;
    Host: TEdit;
    Label1: TLabel;
    Lbl_Servidor: TLabel;
    Apelido: TEdit;
    S_Cliente: TClientSocket;
    S_Server: TServerSocket;
    C_Texto: TEdit;
    Image1: TImage;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure C_TextoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ConectarClick(Sender: TObject);
    procedure S_ClienteConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure S_ClienteDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure S_ClienteError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure S_ClienteRead(Sender: TObject; Socket: TcustomWinSocket);
    procedure ServirClick(Sender: TObject);
    procedure S_ServerListen(Sender: TObject; Socket: TCustomWinSocket);
    procedure S_ServerClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure S_ServerClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure S_ServerClientRead(Sender: TObject; Socket: TcustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChatFal: TChatFal;
  BitmapImage : TBitmap;

implementation

{$R *.dfm}

procedure TChatFal.FormCreate(Sender: TObject);
   begin
      Quadro.Text := '';
      BitmapImage := TBitmap.Create;
      BitmapImage.LoadFromFile('C:\Users\root\Desktop\Chat\icons\fundo3.bmp');
      Quadro.brush.Bitmap:= TBitmap.Create;
      Quadro.brush.Bitmap.LoadFromFile('C:\Users\root\Desktop\Chat\icons\fundo3.bmp');
      BitmapImage := TBitmap.Create;
      BitmapImage.LoadFromFile('C:\Users\root\Desktop\Chat\icons\fundo3.bmp');
      Status.brush.Bitmap:= TBitmap.Create;
      Status.brush.Bitmap.LoadFromFile('C:\Users\root\Desktop\Chat\icons\fundo3.bmp');
   end;

procedure TChatFal.C_TextoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   begin if Key = VK_Return then begin
      S_Cliente.Socket.SendText(C_Texto.Text + '::::' + Apelido.Text);
      C_Texto.Text := '';
   end;
end;

procedure TChatFal.ConectarClick(Sender: TObject);
   begin if S_Cliente.Active then begin
      S_Cliente.Active := False;
      Conectar.Caption := 'Conectar';
   end
   else begin
      S_Cliente.Host := Host.Text;
      S_Cliente.Active := True;
   end;
end;

procedure TChatFal.S_ClienteConnect(Sender: TObject; Socket: TCustomWinSocket);
   begin
      Status.Lines.Add('Cliente ::> Conectado a: ' + S_Cliente.Host);
      Conectar.Caption := 'Desconectar';
      Apelido.Enabled := False;
      S_Cliente.Socket.SendText('NICK::::' + Apelido.Text);
   end;

procedure TChatFal.S_ClienteDisconnect(Sender: TObject; Socket: TCustomWinSocket);
   begin
      Status.Lines.Add('Cliente ::> Desconectado ');
      Conectar.Caption := 'Conectar';
      Apelido.Enabled := True;
   end;

procedure TChatFal.S_ClienteError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
   begin
      Status.Lines.Add('Cliente ::> ERRO ao tentar conectar a: ' + S_Cliente.Host);
   end;

procedure TChatFal.S_ClienteRead(Sender: TObject; Socket: TCustomWinSocket);
   begin
      Quadro.Lines.Add(Socket.ReceiveText);
   end;

procedure TChatFal.ServirClick(Sender: TObject);
   begin if S_Server.Active = True then begin
      S_Server.Active := False;
      Status.Lines.Add('Servidor ::> Servidor Desligado!');
      Servir.Caption := 'Iniciar Servidor';
      S_Cliente.Active := False;
      Host.Enabled := True;
      Conectar.Enabled := True;
   end else begin
      S_Server.Active := True;
      Servir.Caption := 'Parar Servidor';
      Host.Enabled := False;
      Conectar.Enabled := False;
      S_Cliente.Host := '192.168.2.97';
      S_Cliente.Active := True;
      end;
   end;

procedure TChatFal.S_ServerClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
   begin
      Status.Lines.Add('Servidor ::> Usuário Conectado => '+ Socket.RemoteAddress);
   end;

procedure TChatFal.S_ServerClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
   begin
      Status.Lines.Add('Servidor ::> Usuário Desconectado => '+ Socket.RemoteAddress);
   end;

procedure TChatFal.S_ServerClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
   var texto: array[0..1] of string;
      temptexto: string;
      Index: integer;
   begin
      temptexto := Socket.ReceiveText;
      texto[0] := Copy(temptexto, 1,Pos('::::', temptexto) -1);
      texto[1] := Copy(temptexto, Pos('::::', temptexto) + Length('::::'),Length(temptexto));
   if texto[0] = 'NICK' then {Verifica se a mensagem eh de entrada} begin
      WITH S_Server.Socket DO BEGIN {Se a msg for de entrada avisa a todos os clientes quem entrou }
      FOR Index := 0 TO ActiveConnections-1 DO BEGIN
         Connections[Index].SendText(texto[1] + ' entrou na sala: ');
      end;
   end;
end
   else begin
      WITH S_Server.Socket DO BEGIN {Se nao for de entrada, então eh msg normal, no caso passa para todos a msg}
      FOR Index := 0 TO ActiveConnections-1 DO BEGIN
         Connections[Index].SendText('(' + texto[1] + ') escreveu: ' + texto[0]);
      end;
      end;
         Status.Lines.Add('Servidor ::> ' + texto[1] + ' (' + Socket.RemoteAddress + ') escreveu: '+ texto[0]);
   end;
end;


procedure TChatFal.S_ServerListen(Sender: TObject;
      Socket: TCustomWinSocket);
   begin
      Status.Lines.Add('Servidor ::> Servidor Ligado!');
   end;
end.
