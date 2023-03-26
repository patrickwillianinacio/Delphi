unit Calculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    um: TButton;
    dois: TButton;
    tres: TButton;
    quatro: TButton;
    cinco: TButton;
    seis: TButton;
    sete: TButton;
    oito: TButton;
    nove: TButton;
    limpar: TButton;
    zero: TButton;
    maismenos: TButton;
    igual: TButton;
    virgula: TButton;
    visor: TEdit;
    mais: TButton;
    menos: TButton;
    dividir: TButton;
    multiplicar: TButton;
    procedure umClick(Sender: TObject);
    procedure doisClick(Sender: TObject);
    procedure tresClick(Sender: TObject);
    procedure quatroClick(Sender: TObject);
    procedure cincoClick(Sender: TObject);
    procedure seisClick(Sender: TObject);
    procedure seteClick(Sender: TObject);
    procedure oitoClick(Sender: TObject);
    procedure noveClick(Sender: TObject);
    procedure zeroClick(Sender: TObject);
    procedure maisClick(Sender: TObject);
    procedure menosClick(Sender: TObject);
    procedure dividirClick(Sender: TObject);
    procedure maismenosClick(Sender: TObject);
    procedure multiplicarClick(Sender: TObject);
    procedure igualClick(Sender: TObject);
    procedure virgulaClick(Sender: TObject);
    procedure limparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  valor1 : real;
  valor2 : real;
  funcao : integer;

implementation

{$R *.dfm}


procedure TForm1.umClick(Sender: TObject);
begin
visor.Text := visor.Text + (Sender as TButton).Caption
end;

procedure TForm1.doisClick(Sender: TObject);
begin
visor.Text := visor.Text + (Sender as TButton).Caption
end;

procedure TForm1.tresClick(Sender: TObject);
begin
visor.Text := visor.Text + (Sender as TButton).Caption
end;

procedure TForm1.quatroClick(Sender: TObject);
begin
visor.Text := visor.Text + (Sender as TButton).Caption
end;

procedure TForm1.cincoClick(Sender: TObject);
begin
visor.Text := visor.Text + (Sender as TButton).Caption
end;

procedure TForm1.seisClick(Sender: TObject);
begin
visor.Text := visor.Text + (Sender as TButton).Caption
end;

procedure TForm1.seteClick(Sender: TObject);
begin
visor.Text := visor.Text + (Sender as TButton).Caption
end;

procedure TForm1.oitoClick(Sender: TObject);
begin
visor.Text := visor.Text + (Sender as TButton).Caption
end;

procedure TForm1.noveClick(Sender: TObject);
begin
visor.Text := visor.Text + (Sender as TButton).Caption
end;

procedure TForm1.zeroClick(Sender: TObject);
begin
visor.Text := visor.Text + (Sender as TButton).Caption
end;

procedure TForm1.maisClick(Sender: TObject);
begin
   valor1 := StrToFloat(visor.Text);
   visor.Text := '';
   funcao := 1;
end;

procedure TForm1.menosClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 2;
end;


procedure TForm1.dividirClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 4;
end;


procedure TForm1.maismenosClick(Sender: TObject);
begin
  visor.Text:='-'+visor.Text;
end;

procedure TForm1.multiplicarClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 3;
end;

procedure TForm1.igualClick(Sender: TObject);
var
  soma: real;
begin
  valor2:=StrToFloat(visor.Text);
  case (funcao) of
  1:
  begin
    soma:=valor1+valor2;
    visor.text:=FloatToStr(soma);
  end;
  2:
  begin
    soma:=valor1-valor2;
    visor.text:=FloatToStr(soma);
  end;
  3:
  begin
    soma:=valor1*valor2;
    visor.text:=FloatToStr(soma);
  end;
  4:
  begin
    if(valor2<>0)then
      begin
        soma:=valor1/valor2;
        visor.text:=FloatToStr(soma);
      end
    else
      begin
        SHowMessage('Divisão por zero!!');
        visor.Text:='ERRO';
      end
    end
end;  //finaliza o  case

end;

procedure TForm1.virgulaClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 2;
end;


procedure TForm1.limparClick(Sender: TObject);
begin
  visor.Text:='';
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Valor1 := 0;
  valor2 := 0;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_NUMPAD1 then
    um.click;
  if Key = VK_NUMPAD2 then
    dois.click;
  if Key = VK_NUMPAD3 then
    tres.click;
  if Key = VK_NUMPAD4 then
    quatro.click;
  if Key = VK_NUMPAD5 then
    cinco.click;
  if Key = VK_NUMPAD6 then
    seis.click;
  if Key = VK_NUMPAD7 then
    sete.click;
  if Key = VK_NUMPAD8 then
    oito.click;
  if Key = VK_NUMPAD9 then
    nove.click;
  if Key = VK_NUMPAD0 then
    zero.click;
  if Key = VK_ADD then
    mais.click;
  if Key = VK_SUBTRACT then
    menos.click;
  if Key = VK_MULTIPLY then
    multiplicar.click;
  if Key = VK_DIVIDE then
    dividir.click;
  if Key = VK_RETURN then
    igual.click;
  if Key = VK_DECIMAL then
    virgula.click;
  if Key = VK_DELETE then
    limpar.click;
end;

end.
