unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ball_x, ball_y, ball_vx, ball_vy: Single;
  Rectangle_x, Rectangle_y, Rectangle_vx, Rectangle_vy: Single;
  backbuffer: TBitmap;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
//movimento horizontal (1/2 pixel para a direita)
  ball_vx:= 2.5;
  Rectangle_vx:= 2.5;
  //movimento vertical (1/2 pixel para baixo)
  ball_vy:= 2.5;
  Rectangle_vy:= 2.5;
  //Coloca a bolinha no centro da tela...
  ball_x:= (ClientWidth - 20) / 2;
  ball_y:= (ClientHeight - 20) / 2;
  Rectangle_x:= (ClientWidth - 600) / 2;
  Rectangle_y:= (ClientHeight + 400) / 2;

  //cria e inicializa o backbuffer...
  backbuffer:= TBitmap.Create;
  backbuffer.width:= ClientWidth;
  backbuffer.height:= ClientHeight;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
//verifica se a bolinha colidiu com algum canto da tela...
  //nossa bolinha vai ter 20 x 20 pixels
  if (ball_x < 0) or (ball_x + 20 > ClientWidth) then
    ball_vx:= -ball_vx;
  if (ball_y < 0) or (ball_y + 20 > ClientHeight) then
    ball_vy:= -ball_vy;

  if (Rectangle_x < 0) or (Rectangle_x + 20 > ClientWidth) then
    Rectangle_vx:= -Rectangle_vx;
  if (Rectangle_x < 0) or (Rectangle_x + 20 > ClientHeight) then
    Rectangle_vy:= -Rectangle_vy;
 
  //move a bolinha...
  ball_x:= ball_x + ball_vx;
  ball_y:= ball_y + ball_vy;

  Rectangle_x:= Rectangle_x + Rectangle_vx;
  Rectangle_y:= Rectangle_y + Rectangle_vy;
 
  //limpa a tela anterior...
  Canvas.Brush.Color:= clBlack;
  Canvas.FillRect(Rect(0,0,ClientWidth,ClientHeight));
  //Desenha a bolinha
  //Aqui foi preciso o round porque os pixels são números inteiros
  //(não existe o pixel 20.5, 10.2 ne?
  Canvas.Brush.Color:= clWhite;
  Canvas.Ellipse(Round(ball_x), Round(ball_y), Round(ball_x + 20), Round(ball_y + 20));

  //Canvas.Rectangle(10,10,90,30);
  Canvas.Brush.Color:= clWhite;
  Canvas.Rectangle(Round(Rectangle_x), Round(Rectangle_y), Round(Rectangle_x + 90), Round(Rectangle_y + 20));

  //verifica se a bolinha colidiu com algum canto da tela...
  //nossa bolinha vai ter 20 x 20 pixels
  if (ball_x < 0) or (ball_x + 20 > ClientWidth) then
    ball_vx:= -ball_vx;
  if (ball_y < 0) or (ball_y + 20 > ClientHeight) then
    ball_vy:= -ball_vy;


    if (Rectangle_x < 0) or (Rectangle_x + 90 > ClientWidth) then
    Rectangle_vx:= -Rectangle_vx;
  if (Rectangle_y < 0) or (Rectangle_y + 90 > ClientHeight) then
    Rectangle_vx:= -Rectangle_vy;

    if (ball_x = Rectangle_x)  then
    ball_vx:= -Rectangle_vx;
  if (ball_y = Rectangle_y) then
    ball_vy:= -Rectangle_vy;

  //move a bolinha...
  ball_x:= ball_x + ball_vx;
  ball_y:= ball_y + ball_vy;

  Rectangle_x:= Rectangle_x + Rectangle_vx;
  Rectangle_y:= Rectangle_y - Rectangle_vy;




  //Os eventos que seguem se referem ao canvas do backbuffer
  //aqui vamos desenhar todos os elementos visíveis para depois passá-los
  //para a tela
  with backbuffer.Canvas do
  begin
    //muda a cor do pincel para preto
    brush.Color:= clBlack;
    //preenche toda a tela com o pincel atual
    FillRect(Rect(0,0,ClientWidth,ClientHeight));
    //muda a cor do pincel para branco
    brush.Color:= clWhite;
    //desenha a bolinha
    Ellipse(Round(ball_x), Round(ball_y), Round(ball_x + 20), Round(ball_y + 20));
  end;

  //depois de desenhar tudo no backbuffer, envia o backbuffer para a tela
  Canvas.Draw(0,0,backbuffer);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
//libera o backbuffer da memória...
  backbuffer.Free;
end;



end.
