unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Math;

type
  TFrmJogodossete = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Lblmoedas: TLabel;
    Lblpontuacao: TLabel;
    Caixa1: TPanel;
    Caixa2: TPanel;
    Caixa3: TPanel;
    BtnApostar: TButton;
    BtnReiniciar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure TestarResultado;
    procedure BtnApostarClick(Sender: TObject);
    procedure BtnReiniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmJogodossete: TFrmJogodossete;
  contmoeda, contpontos: integer; // vari�veis contadoras de moedas e pontos
  a, b, c :integer; // vari�veis que armazenar�o os n�meros sorteados

implementation

{$R *.dfm}

procedure TFrmJogodossete.FormCreate(Sender: TObject);
   begin
        contmoeda := 20; // atribuie-se 20 moedas de in�cio
        contpontos := 0; // nenhum ponto no come�o da partida
        Lblmoedas.caption := inttostr(contmoeda);
        Lblpontuacao.Caption := inttostr(contpontos);
        BtnApostar.Enabled := true; // Bot�o apostar � habilitado no come�o
        BtnReiniciar.Enabled := false; // Bot�o reiniciar � desabilitado no come�o
   end;

procedure TFrmJogodossete.TestarResultado;
   begin if (a <> 7) and (b <> 7) and (c <> 7) then // Se nos tr�s sorteios n�o der nenhum 7
            contmoeda := contmoeda -1; // v� tirando da quantidade de moedas
            Caixa1.Caption := inttostr(a); // Fas a primeira caixa receber o primeiro n�mero sorteado
            Caixa2.Caption := inttostr(b); // Fas a segunda caixa receber o segundo n�mero sorteado
            Caixa3.Caption := inttostr(c); // Fas a terceira caixa receber o terceiro n�mero sorteado
            Lblmoedas.Caption := inttostr(contmoeda); // Faz a caixa moedas mostrar a quantidade de moedas
            Lblpontuacao.Caption := inttostr(contpontos); // Faz a caixa pontos mostrar a pontua��o obtida
         if (a =7) and (b = 7) and (c = 7) then // Se der sorte de tirar 3 7 simult�neos
            begin
              contmoeda := contmoeda +100; // Incremente 100 nas moedas
              contpontos := contpontos +100; // Incrementa 100 nos pontos
              Lblmoedas.Caption := inttostr(contmoeda); // Faz a label receber a novas moedas
              Lblpontuacao.Caption := inttostr(contpontos); // Faz a label receber a nova pontua��o
              showmessage('voc� venceu!!!'); // Mostra uma mensagem dizendo que venceu
              BtnApostar.Enabled := false; // desabilita o botao apostar
              BtnReiniciar.Enabled := true; // habilita o bot�o para zerar a partida e recome�ar
   end;
   if  contmoeda = 0 then // Se a quantidade de moedas zerar
      begin
         showmessage('voc� perdeu'); // Mostra a mensagem que perdeu
         BtnApostar.Enabled := false; // desabilita o botao apostar
         BtnReiniciar.Enabled := true; // habilita o bot�o para zerar a partida e recome�ar
      end;
   end;

procedure TFrmJogodossete.BtnApostarClick(Sender: TObject); // Aqui onde tudo acontece
   begin
       Randomize;
       a:= RandomRange(0,9); // Sorteia n�meros no intervalo de 0 a 9 e joga em A
       b:= RandomRange(0,9); // Sorteia n�meros no intervalo de 0 a 9 e joga em B
       c:= RandomRange(0,9); // Sorteia n�meros no intervalo de 0 a 9 e joga em C
       Caixa1.Font.Color := clBlack; // Atribui a primeira caixa a cor preta
       Caixa2.Font.Color := clBlack; // Atribui a segunda caixa a cor preta
       Caixa3.Font.Color := clBlack; // Atribui a terceira caixa a cor preta
       if (a = 7) then // Se der sorte da primeira sorteada for o n�mero 7
        begin
        inc (contmoeda); // Incrementa na quantidade de moedas
        inc (contpontos); // Incrementa na quantidade de pontos
        // Se o primeiro valor sorteado for 7 ele incrementa 2 pontos para cada vari�vel seguindo a l�gica
        Caixa2.Font.Color := clRed; // Destaca o 7 deixando a caixa com a cor vermelha
        end;
        if (c = 7) then // Se der sorte da terceira vari�vel for o n�mero 7
         begin
           inc (contmoeda); // Incrementa na quantidade de moedas
           inc (contpontos); // Incrementa na quantidade de pontos
           Caixa3.Font.Color := clRed; // Destaca o 7 deixando a caixa com a cor vermelha
         end;
         TestarResultado; // Ap�s v� para o procedimento que testa o resultado
   end;

procedure TFrmJogodossete.BtnReiniciarClick(Sender: TObject); // Este bot�o retorna ao resultado original
   begin
       contmoeda := 20;
       contpontos := 0;
       lblmoedas.Caption := inttostr(contmoeda);
       lblpontuacao.Caption := inttostr(contpontos);
       Caixa1.Caption := '';
       Caixa2.Caption := '';
       Caixa3.Caption := '';
       BtnApostar.Enabled := true;
       BtnReiniciar.Enabled := false;
       BtnApostar.SetFocus;
   end;

end.
