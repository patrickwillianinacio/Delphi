program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FrmJogo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmJogo, FrmJogo);
  Application.Run;
end.
