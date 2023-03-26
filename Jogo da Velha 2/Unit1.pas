unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan;

type
  TForm1 = class(TForm)
    procedure FormPaint(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  bXPlayer:Boolean=false;

implementation

{$R *.dfm}

procedure TForm1.FormPaint(Sender: TObject);
begin
     // Alteramos cor e espessura da linha a ser
   // desenhada
   Canvas.Pen.Color:=clBlack;
   Canvas.Pen.Width:=2;
   // 1� linha horizontal
   Canvas.MoveTo(0,200);
   Canvas.LineTo(600,200);
   //2� linha horizontal
   Canvas.MoveTo(0,400);
   Canvas.LineTo(600,400);
   //1� linha vertical
   Canvas.MoveTo(200,0);
   Canvas.LineTo(200,600);
   //2� linha vertical
   Canvas.MoveTo(400,0);
   Canvas.LineTo(400,600);
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   XPosition,
   YPosition:integer;
   Rect:TRect;
begin
   // Calculos para verifica��o da posi��o
   // do clique do mouse
   XPosition:=(X div 200)*200;
   YPosition:=(Y div 200)*200;
   // Desenho dos s�mbolos do jogo de
   // acordo com a jogada
   case bXplayer of
      True: // Se "X"
      Begin
         // Altera��o  da cor do pincel
         Canvas.Pen.Color:=clRed;
         
         // Desenho das linhas que comp�em o �X� 
         Canvas.MoveTo(XPosition,YPosition);
         Canvas.LineTo(XPosition+200,YPosition+200);
         Canvas.MoveTo(XPosition,YPosition+200);
         Canvas.LineTo(XPosition+200,YPosition);
      end;
      False: // Se "Y"
      Begin
         // Para desenhar o c�rculo, precisamos preencher
        // uma estrutura TRect com os limites do c�rculo
         Canvas.Pen.Color:=clGreen;
         Rect.Left:=XPosition;
         Rect.Right:=XPosition+200;
         Rect.Top:=YPosition;
         Rect.Bottom:=YPosition+200;
         Canvas.Ellipse(Rect);
      end;
   end;
   bXplayer:=not bXplayer;// Altera��o da jogada
end;

end.
