unit Dinamico2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    edAluno: TEdit;
    Label1: TLabel;
    edNota1: TEdit;
    Label2: TLabel;
    edNota2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    procedure edNota1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

type rgAluno = record
  nome: string[35];
  nota1: real;
  nota2: real;
  end;
  var aluno: array of rgAluno;
  n: integer = 0; // tamanho do vetor
  x: rgAluno;
  // Evento "OnKeyPress" dos Edits "1a. Nota" e "2a. Nota" // Verificando e aceitando somente valores numéricos do tipo real



procedure TForm1.edNota1KeyPress(Sender: TObject; var Key: Char);
  begin
        if (Key in ['.', ',']) then
  if (pos(',', (Sender as TEdit).Text) = 0) then Key:= ','
    else Key:= #7 else if (not(Key in ['0'..'9', #8])) then Key:= #7;
  end; // Botão "Gravar Aluno"


procedure TForm1.Button1Click(Sender: TObject);
  begin
   //if para não duplicar alunos
    if ((edAluno.Text <> '') and (edNota1.Text <> '') and (edNota2.Text <> ''))
    then begin
      x.nome:= edAluno.Text;
      x.nota1:= StrToFloat(edNota1.Text);
      x.nota2:= StrToFloat(edNota2.Text);
      n:= n + 1; // redimensiona o vetor "aluno" aumentando uma posição // para adicionar o novo aluno no final do conjunto
      SetLength(aluno, n);
      aluno[n-1] := x;
      Memo1.Lines.Add(x.nome + ', gravado com sucesso.');
    end;
  end;

procedure TForm1.Button2Click(Sender: TObject);
  var
   nreg, i: integer;
   media: real;
  begin Memo1.Lines.Add('');
   nreg:= 0;
  for i:= 0 to n - 1 do begin
   x:= aluno[i];
   nreg:= nreg + 1; {
   processando
   e exibindo os dados recuperados
  }
   media:= (x.nota1 + x.nota2) / 2;
   Memo1.Lines.Add('Registro Nro.: ' + IntToStr(nreg));
   Memo1.Lines.Add('Nome do Aluno: ' + x.nome);
   Memo1.Lines.Add('1a. nota.....: ' + Format('%.2f', [x.nota1]));
   Memo1.Lines.Add('2a. nota.....: ' + Format('%.2f', [x.nota2]));
   Memo1.Lines.Add('Média........: ' + Format('%.2f', [media]));
    if (media >= 6.0) then Memo1.Lines.Add('Situação.....: Aprovado')
    else Memo1.Lines.Add('Situação.....: Reprovado');
     Memo1.Lines.Add('');
    end;
  end;

procedure TForm1.Button3Click(Sender: TObject);
  begin
   edAluno.Clear;
   edNota1.Clear;
   edNota2.Clear;
  end;  // Botão "Limpar Campos"

procedure TForm1.FormCreate(Sender: TObject);
  begin
   Memo1.Text:= '';
  end;

end.
