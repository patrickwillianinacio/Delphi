unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
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
var  arq: TextFile; { declarando a variável "arq" do tipo arquivo texto }
    i, n: integer;
begin
  try
{ [ 1 ] Associa a variável do programa "arq" ao arquivo externo "tabuada.txt"
          na unidade de disco "d" }
    AssignFile(arq, 'C:\Users\root\Desktop\tabuada.txt');
    Rewrite(arq); { [ 2 ] Cria o arquivo texto "tabuada.txt" na unidade de disco "c" }
 
    n := StrToInt(Edit1.Text);

    Writeln(arq, '+--Resultado--+'); { [ 8 ] Grava uma linha no arquivo }
    for i:=1 to 10 do
    begin
{ [ 8 ] Grava uma linha da tabuada no arquivo }
      Writeln(arq, '| ', i:2, ' X ', n, ' = ', (i*n):2, ' |');
    end;
    Writeln(arq, '+-------------+'); { [ 8 ] Grava uma linha no arquivo }

    CloseFile(arq); { [ 8 ] Fecha o arquivo texto "tabuada.txt". }
 
    ShowMessage('Tabuada gravada com sucesso em "d:\tabuada.txt".');
  except
  end;
end;

end.
