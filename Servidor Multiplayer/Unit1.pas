unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent, IdComponent,
  IdTCPServer, IdTCPConnection, IdStack, StdCtrls;

  Type 
   TJogador = Record
   IP : string[15];
   HostName : string[40];
   ThreadID: Cardinal;
   Connection: TidTCPConnection;
  end;
   PJogador = ^TJogador;

  type
  TForm1 = class(TForm)
    ss: TIdTCPServer;
    IdAntiFreeze1: TIdAntiFreeze;
    Button1: TButton;
    procedure ssConnect(AThread: TIdPeerThread);
    procedure ssDisconnect(AThread: TIdPeerThread);
    procedure ssExecute(AThread: TIdPeerThread);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure MandarMsg(mensagem: string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  principal, user, msg: string; 
  FConexoes: TList;

implementation

{$R *.dfm}

//Função responsável por tratar as strings passadas pelo client 
  function TextoEntre(Texto, Delimitador1, Delimitador2: String; CaseSensitive : boolean = false): string;
  var Inicio, Fim : Integer;
      Saida : string; 
  begin
  // Passar o texto para variável temporária 
   Saida := Texto;
  // Verificar se é sensível ao caso 
  // Pegar o início 
  if CaseSensitive then
    Inicio := Pos(Delimitador1, Saida)
  else 
    Inicio := Pos(ansiUpperCase(Delimitador1), ansiLowerCase(Saida)); 
  // Verificar se localizou 
  if Inicio > 0 then 
    Saida := Copy(Saida, Inicio + Length(Delimitador1), Length(Saida)); 
  // Pegar o fim 
  if CaseSensitive then 
    Fim := Pos(Delimitador2, Saida) 
  else 
    Fim := Pos(ansiUpperCase(Delimitador2), ansiUpperCase(Saida)); 

  // Verificar se localizou 
  if Fim > 0 then 
    Saida := Copy(Saida, 1, Fim - 1); 

  // retornar o resultado 
   Result := Saida;
  end;
//Fim Função

procedure TForm1.MandarMsg(mensagem: string); 
  var
   i : integer;
   Cliente : PJogador; 
  begin for I := 0 to FConexoes.Count-1 do begin
   Cliente := PJogador(FConexoes.Items[i]);
   Cliente.Connection.WriteLn(mensagem);
   end;
  end;


procedure TForm1.ssConnect(AThread: TIdPeerThread);
  var
ClienteNovo : PJogador; 
  begin
   GetMem(ClienteNovo,Sizeof(TJogador));
   ClienteNovo.IP := Athread.Connection.Socket.Binding.PeerIP;
   ClienteNovo.HostName := GStack.WSGetHostByAddr(ClienteNovo.IP);
   ClienteNovo.Connection := Athread.Connection;
   Athread.Data := TObject(ClienteNovo);
   FConexoes.Add(ClienteNovo); 
  end;

procedure TForm1.ssDisconnect(AThread: TIdPeerThread);
  Var
   Cliente : PJogador;
  begin
   Cliente := PJogador(Athread.Data);
   FConexoes.Remove(Cliente);
   Athread.Data := nil;
   FreeMem(Cliente,SizeOf(TJogador));
  end;

procedure TForm1.ssExecute(AThread: TIdPeerThread);
  var
   principal, user, msg: string;
   Cliente : PJogador;
  begin
   Cliente := PJogador(Athread.Data);
   principal := Cliente.Connection.ReadLn;
   user:= TextoEntre(principal, '[', ']');
   msg := TextoEntre(principal, '(', ')');
   Mandarmsg('(['+user+'] escreveu: '+msg+')');
  end;

procedure TForm1.Button1Click(Sender: TObject);
  begin if ss.Active = false then begin
   ss.Active:=true;
   button1.Caption:= 'Desativar';
  end else begin
   ss.Active:=false;
   button1.Caption:= 'Ativar';
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
  begin
   FConexoes := TList.Create;
  end;

procedure TForm1.FormDestroy(Sender: TObject);
  begin
   FConexoes.Free;
  end;

end.
