program ProjectoDinamico;

uses
  Forms,
  Dinamico2 in 'Dinamico2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
