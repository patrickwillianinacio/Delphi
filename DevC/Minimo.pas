{Programa que percorre uma lista e armazena o menor valor dela}

unit Minimo;
 
interface
 
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
 
type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function ExisteNoArray(const Numero: Integer; var UmArray: array of Integer): Boolean;
  end;
 
var
  Form1: TForm1;

implementation
 
uses Math;
 
{$R *.dfm}
 
procedure TForm1.Button1Click(Sender: TObject);
var
  A: array[0..9] of Integer;
  ValorMinimo: Integer;
begin
  A[0] := 1;
  A[1] := 10;
  A[2] := 6;
  A[3] := 4;
  A[4] := 5;
  A[5] := 2;
  A[6] := 8;
  A[8] := 7;
  A[9] := 9;
 
  // Armazena o menor valor do Array;
  ValorMinimo := A[Low(A)];

  // Garante que o Valor Mínimo seja sempre maior que zero;
  if (ValorMinimo <= 0) then
    ValorMinimo := 1;

  // Percorre o Array verificando se o Valor mínimo existe no Array;
  while (ExisteNoArray(ValorMinimo, A)) do
  begin
    // Incrementa + 1 até chegar ao valor mínimo maior que zero e que não exista em A;
    Inc(ValorMinimo);
  end;
 
  ShowMessage(' O Valor Mínimo positivo maior que zero e que não ocorre em A é: ' + IntToStr(ValorMinimo));
end;
 
function TForm1.ExisteNoArray(const Numero: Integer;
  var UmArray: array of Integer): Boolean;
var
  i: Integer;
begin
  Result := False;
 
  for i := Low(UmArray) to High(UmArray) do
  begin
    if (Numero = UmArray[i]) then
    begin
      Result := True;
      Break;
    end
  end;
end;

End.
