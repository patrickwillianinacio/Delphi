unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Chronometer;

type
  TForm1 = class(TForm)
    lblTempo: TLabel;
    Button1: TButton;
    Button2: TButton;
    Chronometer1: TChronometer;
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
 begin
   lblTempo.Caption := '00:00:00';
   Chronometer1.Start;
 end;

procedure TForm1.Button2Click(Sender: TObject);
 begin
   Chronometer1.Stop;
   lblTempo.Caption := TimeToStr(Chronometer1.ElapsedTime);
 end;

end.
