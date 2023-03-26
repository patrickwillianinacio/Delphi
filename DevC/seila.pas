unit seila;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  end;
  type
   TTipo = record
      nome: string[30];
      uf_origem: string[02];
      colocacao: Integer;
      pontuacao: integer;
      end;
 // private
    { Private declarations }

  //public
    { Public declarations }
  //end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var
   Posicao_1, Posicao_2: Integer;
   Matriz: array[0..1] of TTipo;
   Temporario: TTipo; // Variável Temporária para Alternar Valores
  begin  Memo1.Lines.Clear;
    for Posicao_1:= 0 to Length(Matriz) - 1 do begin
       for Posicao_2:= 0 to (Length(Matriz) - 2) do begin
          if (Matriz[Posicao_2].pontuacao > Matriz[Posicao_2 + 1].pontuacao) then begin // Ordem Crescente
            Temporario:= Matriz[Posicao_2];
            Matriz[Posicao_2]:= Matriz[Posicao_2 + 1];
            Matriz[Posicao_2 + 1]:= Temporario;
          end;
          Memo1.Lines.Add(IntToStr(Temporario.pontuacao));
          Application.ProcessMessages; //Processa mensagens pendentes...
       end;
    end;
    Label1.Caption := 'Total de combinações: '+IntToStr(Memo1.Lines.Count);
  end;

end.


