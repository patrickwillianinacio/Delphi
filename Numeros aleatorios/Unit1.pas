unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    btnfechar: TButton;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Hora: TDateTime; {Como mostro no EXEMPLO, declare na VAR
                    do form uma variável do tipo TDateTime}
implementation

{$R *.dfm}

procedure TrimAppMemorySize;
var
   MainHandle : THandle;
  begin
  try
   MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
   SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
   CloseHandle(MainHandle) ;
  except
 end;
   Application.ProcessMessages;
end;

Function fExecutando(N:TDateTime):String;
Var
   Final: TDateTime;
  begin
   Final:= Time;
   Result:= TimeToStr(Final-N);
end;


procedure TForm1.Button1Click(Sender: TObject);
var
   s:string;
   i,j,k,l,m,n:integer;
   Inicio, Fim: Cardinal;
  Tempo: Extended;
//   TS: TStrings;
 begin Memo1.Lines.Clear;
//   TS := TStringList.Create;
   for i := 1 to 20 do begin
     for j := i+1 to 20 do begin
       for k:=j+1 to 20 do begin
         for l:=k+1 to 20 do begin
           for m:=l+1 to 20 do begin
             for n:=m+1 to 20 do begin
               s := IntToStr(i)+','+IntToStr(j)+','+IntToStr(k)
               +','+IntToStr(l)+','+IntToStr(m)+','+IntToStr(n);
               //TS.Add(s);
               Memo1.Lines.add(s); //
               TrimAppMemorySize(); //Limpa a memória
               Application.ProcessMessages; //Processa mensagens pendentes...
             end;
           end;
         end;
       end;
     end;
   end;
//   Memo1.Lines.Assign(TS);
//   TS.Free;
   Label1.Caption:= 'Total de combinações: '+IntToStr(Memo1.Lines.Count);
end;


procedure TForm1.btnfecharClick(Sender: TObject);
begin
   self.free;              //usado somente se estiver dentro de uma form ou datamodule
   application.free;    //se o objeto application estiver disponível;
   exitprocess(0);    //por último, pra finalizar.
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
   StatusBar1.Panels[0].Text:= fExecutando(Hora);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   Hora:=Time;
end;

end.
