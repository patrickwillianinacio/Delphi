unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    A: TImage;
    P: TImage;
    Fundo: TImage;
    PD: TImage;
    PE: TImage;
    PC: TImage;
    AD: TImage;
    PB: TImage;
    AE: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    Dragon: TImage;
    Pontos: TLabel;
    Timer3: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  varPontos: Integer;

implementation

{$R *.dfm}


function bateu(obj1:TImage; obj2:TImage): boolean;
 begin
 Result := true;
 
   if (obj1.Left+obj1.Width<obj2.Left) or
      (obj1.Left>obj2.Width+obj2.Left) or
      (obj1.Top+obj1.Height<obj2.Top) or
      (obj1.Top> obj2.Top+obj2.Height)  then
      Result := false;
   end;

procedure novojogo();
   begin
      Form1.Timer1.Enabled := true;
      Form1.Timer2.Enabled := true;
      Form1.Timer3.Enabled := true;
 
      Form1.dragon.Left := random(800);
      Form1.dragon.Top := random(400);
 
      Form1.A.Left := 780 ;
      Form1.A.top :=  180;
 
      Form1.P.Left :=  60;
      Form1.P.top :=   200;
 
      Form1.pontos.Caption := '0';
      VarPontos :=0;
 
   end;

procedure TForm1.Timer1Timer(Sender: TObject);
   begin if (getkeystate(vk_left)<0) then begin
             p.Left:=p.Left-5 ;
             p.Picture := PE.Picture;
   end else if (getkeystate(vk_Right)<0) then begin
                p.Left:=p.Left+5;
                p.Picture := PD.Picture;
   end else if (getkeystate(vk_up)<0)  then begin
                p.top:=p.top-5;
                p.Picture := PC.Picture;
   end else if (getkeystate(vk_down)<0)  then begin
                p.top:=p.top+5;
                p.Picture := PB.Picture;
            end;
   end;

procedure TForm1.FormCreate(Sender: TObject);
   begin
      DoubleBuffered := true;
      novoJogo;
   end;

procedure TForm1.Timer2Timer(Sender: TObject);
   begin if (p.Left+p.Width<a.Left) then  begin
            a.Left := a.Left -5;
            a.Picture := ae.Picture;
   end;
 
   if (p.Left>a.Width+a.Left) then  begin
      a.Left := a.Left +5;
      a.Picture := ad.Picture;
   end;
 
   if (p.Top+p.Height<a.Top)  then
      a.Top := a.Top-5;
 
   if (p.Top> a.Top+a.Height) then
      a.Top := a.Top+5;
   end;

procedure TForm1.Timer3Timer(Sender: TObject);
   begin if bateu(p,dragon) then begin
            randomize;
            dragon.Left := random(800);
            dragon.Top := random(400);
            VarPontos := VarPontos+1;
            pontos.Caption := IntToStr(VarPontos);
   end;
 
   if bateu(p,a) then begin
      Timer1.Enabled := false;
      Timer2.Enabled := false;
      Timer3.Enabled := false;
 
   if   MessageBox(Handle,PChar('Você perdeu, deseja jogar novamente?'),'Fim de Jogo!',MB_YESNO) = mryes  then begin
 novoJogo;
   end else begin Application.Terminate;
            end;
      end;
   end;

end.
