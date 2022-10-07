program PCalculadora;

uses
  Forms,
  UCalculadora in 'UCalculadora.pas' {frmCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Calculadora';
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;
end.
