program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FrmJogodossete};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmJogodossete, FrmJogodossete);
  Application.Run;
end.
