unit Calcular;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Edit3: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
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



function IMC(peso, alt: real): real;
   begin
         IMC := peso / (alt * alt);
   end;

function faixaIMC(vlrIMC: real): integer;
   begin if (vlrIMC < 18.5) then faixaIMC := 1
            else if ((vlrIMC >= 18.5) and (vlrIMC < 25.0)) then faixaIMC := 2
                  else if ((vlrIMC >= 25.0) and (vlrIMC < 30.0)) then faixaIMC := 3
            // Valores de IMC maior ou igual a 30,0
            else faixaIMC := 4;
   end;

procedure corResultado(indice: integer; fr: TForm);
   var i, fim: integer;
      begin fim := (fr.ComponentCount - 1);
         for i:=0 to fim do // percorre o vetor de componentes do formulário
  // verifica se o i-esimo componente do formulário é um TPanel
            begin if (fr.Components[i] is TPanel)then // como um TPanel verifica se o valor
            // da propriedade Tag é igual a faixa do IMC
                  if ((fr.Components[i] as TPanel).Tag = indice) then begin
                     (fr.Components[i] as TPanel).Color := clSkyBlue;
                     (fr.Components[i] as TPanel).Font.Color := clBlue;
                 end
            else begin
                     (fr.Components[i] as TPanel).Color := clBtnFace;
                     (fr.Components[i] as TPanel).Font.Color := clBlack;
            end;
    end;
  end;
  
procedure TForm1.Button1Click(Sender: TObject);
   var peso, alt, vlrIMC: real;
               indice: integer;
      begin try
            Edit1.Text  := stringreplace(Edit1.Text, '.', ',',[rfReplaceAll, rfIgnoreCase]);
            Edit2.Text  := stringreplace(Edit2.Text, '.', ',',[rfReplaceAll, rfIgnoreCase]);
            peso := StrToFloat(Edit1.Text);
            alt := StrToFloat(Edit2.Text);
 
            vlrIMC := IMC(peso, alt);
            indice := faixaIMC(vlrIMC);
 
            Edit3.Text := FloatToStr(vlrIMC);
            corResultado(indice, Form1);
            except
      end;
   end;


end.



