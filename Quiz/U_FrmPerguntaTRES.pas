unit U_FrmPerguntaTRES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TFrmPergunta3 = class(TForm)
    ImgFundo: TImage;
    GroupBox1: TGroupBox;
    lbltempo: TLabel;
    ProgressBar1: TProgressBar;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdtAcertos: TEdit;
    EdtErros: TEdit;
    RdgResposta1: TRadioGroup;
    BtnAvancar: TButton;
    Tempo1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RdgResposta1Click(Sender: TObject);
    procedure Tempo1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPergunta3: TFrmPergunta3;

implementation

uses U_DTM;

{$R *.dfm}

procedure TFrmPergunta3.FormShow(Sender: TObject);
   begin
      Dtm.contagem :=3; // Estamos inicializando a contagem dos segundos
      tempo1.Enabled :=true; // Estamos habilitando o tempo para o usu�rio responder
      dtm.hora := strtotime('00:00:00'); // Vari�vel hora recebe o tempo zerado
   end;

procedure TFrmPergunta3.FormClose(Sender: TObject;
  var Action: TCloseAction);
   begin
      Application.terminate; // Se o usu�rio fechar, o jogo � automaticamente encerrado
   end;

procedure TFrmPergunta3.RdgResposta1Click(Sender: TObject);
   begin
    tempo1.Enabled :=false; // Se o usu�rio respondeu, a contagem � desfeita desabilitando o timer tempo1
   if RdgResposta1.itemindex =1 then // Se o usu�rio clicou na resposta certa
      begin
         showmessage('Voc� Acertou!!!!!!'); // Uma mensagem de acerto � exibida
         inc(dtm.acerto); // A vari�vel global acerto no data module � incrementada
      end else begin// Se o usu�rio errou
         showmessage('Voc� Errou!!!!!!!'); // Uma mensagem de erro � exibida
         inc(dtm.erro); // A vari�vel global erro no data module � incrementada
   end;
     RdgResposta1.Enabled :=false; // As respostas s�o desabilitadas
     edtacertos.text :=inttostr(dtm.acerto); // A quantidade de acertos � exibida
     EdtErros.Text :=inttostr(dtm.erro); // A quantidade de erros � exibida
   end;

procedure TFrmPergunta3.Tempo1Timer(Sender: TObject);
   begin
      ProgressBar1.position :=  ProgressBar1.position +3; // Vai adicionando barras no ProgressBar
      dtm.hora := dtm.hora+strtotime('00:00:00'); // Vai incrementando 1 segundo no nosso cronometro
      lbltempo.caption := timetostr(dtm.hora); // Mostra o conte�do armazenado dentro da vari�vel hora
      if dtm.contagem = 30 then // Se j� passaram os 30 segundos
      begin
         tempo1.Enabled :=false; // O timer volta a ser desabilitado
         showmessage('Tempo Esgotado'); // Uma mensagem de tempo esgotado � exibida
         Application.Terminate; // A aplica��o � encerrada
      end;
         inc(dtm.contagem); // Os segundos s�o incrementados aqui desde que o tempo de 30 segundos n�o seja extrapolado
   end;

end.
