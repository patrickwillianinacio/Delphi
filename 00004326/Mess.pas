unit Mess;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Db, DBTables, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Timer1: TTimer;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    Label6: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit2Change(Sender: TObject);

  private
    { Private declarations }
    function Delay2 (nSegundos: Integer) : Integer ;
    function RetStrZero(nNumero:Integer; nTamanho:Integer ): String;
    function RetDireita(Busca,Text : string) : integer;
    function RetMaiuscula(Text : string) : string;
    function EnviaMens( cUsuario:String ): Integer;
    function Encrypt(Msg1: string; EncryptNo: integer): string;
    function Decrypt(Msg1: string; DecryptNo: integer): string;
    function EditaArq(filename,Text:String): Boolean;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button2Click(Sender: TObject);
begin
   Application.Terminate;
end;



procedure TForm1.Button1Click(Sender: TObject);
var
  cUsuario  : String;
  cUsuarios : String;
begin
  cUsuarios := trim(Edit2.text);
  while length(cUsuarios) > 0 do
    begin
       cUsuario  := copy( cUsuarios,1, pos(' ',cUsuarios+' ') );
       cusuarios   := trim(copy( cUsuarios,pos(' ',cUsuarios+' '),999 ));
       EnviaMens( cUsuario );
    end;
end;

function TForm1.EnviaMens( cUsuario:String ): Integer;
var
  ccommand  : String ;
  retorno   : String;
  Arqlog    : TextFile;
  ArqTxt    : String;
  SearchRec : TSearchRec;
  nTamanho  : integer;
  ST        : TSystemTime;
  cData     : String;
  cHora     : String;
  cStatus   : String;
  cArqUser  : String;
  cTexto    : String;

begin
ArqTxt := trim(edit1.text)+'.log';
if FileExists(ArqTxt) then DeleteFile(ArqTxt);
   ccommand := 'nets.bat "'+trim(cUsuario)+'"  "'+trim(edit3.Text)+' [['+trim(edit1.text)+']]"    '+trim(edit1.text);

getlocaltime(ST);
cHora := RetStrzero( ST.wHour,2)+':'+RetStrZero(ST.wMinute,2)+':'+RetStrzero( ST.wSecond,2);
cData := RetStrzero( ST.wYear,4)+RetStrZero(ST.wMonth,2)+RetStrzero( ST.wDay,2);
label6.Font.Color := clGreen;
label6.Caption := 'TENTANDO ENVIAR MENSAGEM ... AGUARDE!';
WinExec (Pchar(ccommand), SW_SHOWNORMAL );
Timer1.Enabled := True;
Button1.Enabled := False;
delay2(1000);
retorno := 'Não foi possível enviar mensagem';

if not fileexists(ArqTxt) then
   repeat
     begin
        delay2(500);
     end;
   until (fileexists(ArqTxt));

if fileexists(ArqTxt) then
   begin
      FindFirst(ArqTxt, faAnyFile, SearchRec);
      nTamanho := SearchRec.Size;
      if nTamanho < 1 then
         begin
           delay2(18000);
           FindFirst(ArqTxt, faAnyFile, SearchRec);
           nTamanho := SearchRec.Size;
         end;

      if nTamanho > 0 then
         begin
           AssignFile(ArqLog,ArqTxt);
           Reset (ArqLog );
           Readln(ArqLog,retorno);
           CloseFile(ArqLog);
           DeleteFile(ArqTxt);
         end;
   end;

retorno := RetMaiuscula( retorno );

if POS('XITO',retorno)>0 then
   begin
      cStatus := 'OK  ';
      label6.Font.Color := clBlue;
      label6.caption := 'Ultima mensagem enviada com sucesso!';
   end
else
   begin
     label6.Font.Color := clRed;
     label6.Caption := 'Não foi possível enviar a ultima mensagem!';
     cStatus := '??? ';
   end;
memo1.Lines.Add( '['+cHora+']  ['+cUsuario+'] '+cStatus+' => '+Edit3.Text);
memo1.Lines.Add(' ');
cArqUser := Encrypt( trim(edit1.text),3) ;
cTexto   :=  encrypt(cData+cHora+cUsuario+cStatus+Edit3.Text, 33 );
EditaArq(cArqUser,cTexto);
Button1.Enabled := True;
Result := 1;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
Timer1.Enabled := False;
end;


procedure TForm1.FormCreate(Sender: TObject);
var
Result : string;
I: integer;
begin
  Result := '';
  I := GetEnvironmentVariable('USERNAME', nil, 0);
  if I > 0 then begin
     SetLength(Result, I);
     GetEnvironmentVariable('USERNAME', PChar(Result), I);
  end;
  Edit1.Text := Result;
  if trim(Edit1.Text) = trim('Patrick') then
     begin
        Edit2.text := Edit1.text;
        Edit3.text := 'Teste de mensagem';
     end;
end;



function tform1.delay2 (nSegundos : integer) : integer;
var
  lnTickCount: LongInt;
begin
  lnTickCount := GetTickCount;
  repeat
    Application.ProcessMessages;
  until ((GetTickCount - lnTickCount) >= LongInt(nSegundos));
  result := 1;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
Timer1.Enabled := False;
end;

function TForm1.RetStrZero(nNumero:Integer; nTamanho:Integer ): String;
begin
 result := FormatFloat( StringOfChar('0', nTamanho), nNumero );
end;

function TForm1.RetDireita(Busca,Text : string) : integer;
var n,retorno : integer;
begin
 retorno := 0;
 for n := length(Text) downto 1 do
   begin
     if Copy(Text,n,1) = Busca then
        begin
          retorno := n;
          break;
        end;
     end;
  Result := retorno;
end;

function TForm1.RetMaiuscula(Text : string) : string;
var
  i : Integer; nTamanho: Integer;
begin
  nTamanho := Length( Text );
  for i := 1 to nTamanho do
      if i mod 1 = 0 then Text[i] := UpCase( Text[i] );
  Result := Text;
end;

function TForm1.Encrypt (Msg1: string; EncryptNo: integer): string;
var
   ResultStr: string;
   Temp: char;
   I, EncryptIndex: integer;
begin
   ResultStr := '';
   Temp := ' ';
{ Encrypt message routine }
for I := 1 to length(Msg1) do
   begin
      for EncryptIndex := 1 to EncryptNo do
         begin
            Temp := Succ (Msg1[I]);
            Msg1[I] := Temp;
         end;
      ResultStr := ResultStr + Temp;
   end;
   Encrypt := ResultStr;
end;

function TForm1.Decrypt(Msg1: string; DecryptNo: integer): string;
var
ResultStr: string;
Temp: char;
I, DecryptIndex: integer;
begin
ResultStr := '';
Temp := ' ';
{ Decrypt message routine }
for I := 1 to length(Msg1) do
begin
for DecryptIndex := 1 to DecryptNo do
begin
Temp := Pred (Msg1[I]);
Msg1[I] := Temp;
end;
ResultStr := ResultStr + Temp;
end;
Decrypt:= ResultStr;
end;

function TForm1.EditaArq(filename,Text:String): Boolean;
var
   arquivo : TStringList;
begin
   result := False;
try
   arquivo := TStringList.Create;
   if fileexists(filename) then
      begin
        arquivo.LoadFromFile(filename);
      end;
      if arquivo.Count >= 100 then
        begin
          result := False;
        end
      else
        begin
          arquivo.Add(Text);
          arquivo.SaveToFile(filename);
          result := True;
        end;
Except
   Result := False;
end;
arquivo.free;
end;




END. //// FIM


