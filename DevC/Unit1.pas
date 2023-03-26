unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   Lista: Array[1..7] of Byte;
   I, J, X: Byte; 
begin
     Lista[1]:= 5;
     Lista[2]:= 2;
     Lista[3]:= 4;
     Lista[4]:= 7;
     Lista[5]:= 1;
     Lista[6]:= 3;
     Lista[7]:= 6;
     for I:= 1 to 6 do
         for J:= I + 1 to 7 do
         begin 
              if Lista[I] > Lista[J] then
              begin 
                   X:= Lista[I];
                   Lista[I]:= Lista[J];
                   Lista[J]:= X
              end; 
         end; 

     for I:= 1 to 7 do
     begin 
          ListBox1.Items.Add(IntToStr(Lista[I]));
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var 
   Lista: Array[1..7] of Byte;
   I, J, X: Byte; 
begin 
     Lista[1]:= 5;
     Lista[2]:= 2;
     Lista[3]:= 4;
     Lista[4]:= 7;
     Lista[5]:= 1;
     Lista[6]:= 3;
     Lista[7]:= 6;
     for I:= Low(Lista) to (High(Lista)-1) do
     begin 
         for J:= I+1 to High(Lista) do
         begin 
              if Lista[I] > Lista[J] then
              begin
                   X:= Lista[I];
                   Lista[I]:= Lista[J];
                   Lista[J]:= X
              end; 
         end; 
     end; 

     for I := Low(Lista) to High(Lista) do
     begin
          ListBox1.Items.Add(IntToStr(Lista[I]));
     end;

end;

end.
