unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, ComCtrls, StdCtrls, Unit2;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    XPManifest1: TXPManifest;
    procedure Button1Click(Sender: TObject);
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
   ThreadContador: TContador;
 begin
    ThreadContador:= TContador.Create(True);
    ThreadContador.FreeOnTerminate:= True;
    ThreadContador.Resume;
end;

end.
