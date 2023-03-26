unit Unit1; 

interface 

uses 
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

type 
TForm1 = class(TForm)
    ipin: TImage;
    iwin: TImage;
    btjog: TSpeedButton;
    Timer1: TTimer;
//ipin: TImage;
//iwin: TImage;
//btjog: TSpeedButton;
//Timer1: TTimer;
procedure btjogClick(Sender: TObject); 
procedure FormKeyDown(Sender: TObject; var Key: Word; 
Shift: TShiftState); 
procedure Timer1Timer(Sender: TObject); 
private 
{ Private declarations } 
public 
{ Public declarations } 
F,V,l,t,AI,AM:integer; 
end; 

var 
Form1: TForm1; 

implementation 

uses Math; 

{$R *.dfm} 

procedure TForm1.btjogClick(Sender: TObject); 
begin
iwin.Visible:=true;
ipin.Visible:=true;
btjog.Visible:=false;
Timer1.Enabled:=true;
iwin.Left:=RandomRange(0,696);
Randomize; 
iwin.top:=RandomRange(0,480); 
Randomize; 

l:=iwin.Left; 
t:=iwin.Top; 
v:=-5; 
F:=-5;



while 
    ((ipin.Left < (iwin.Left - ipin.Width)) or (ipin.Left > (iwin.Left + iwin.Width)))
    or 
    ((ipin.Top < (iwin.Top - ipin.Height)) or (ipin.Top > (iwin.Top + iwin.Height)))
  do
    begin 
      Randomize; 
      //Move "Objeto 1": 
      ipin.Left:= Random(Self.ClientWidth-ipin.Width);
      ipin.Top:= Random(Self.ClientHeight-ipin.Height);
      //Move "Objeto 2":
      iwin.Left:= Random(Self.ClientWidth-iwin.Width);
      iwin.Top:= Random(Self.ClientHeight-iwin.Height);
      Self.Repaint;
      Sleep(1000);
    end; 
  ShowMessage('Os objetos colidiram!');
  end;

//if (((iwin.Left <ipin> (ipin.Left + ipin.Width))) or (((iwin.Top <ipin> (ipin.Top + ipin.Height)))
//then showmessage ('You Lose');
//end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; 
Shift: TShiftState); 
begin
if key=vk_left then 
ipin.Left:=ipin.Left-10; 

if key=vk_right then
ipin.Left:=ipin.Left+10;

if key=vk_up then 
ipin.top:=ipin.top-10;

if key=vk_down then 
ipin.top:=ipin.top+10; 

end; 

procedure TForm1.Timer1Timer(Sender: TObject); 

begin

if iwin.left <> Form1.Width then
F:=F*(-1);
iwin.Left:=iwin.left +F;

if iwin.Top <> Form1.Height then
V:=V*(-1);
iwin.Top:=iwin.Top +V;
end;

end.
