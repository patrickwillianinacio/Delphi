program Sistema;

uses
  Forms,
  UMenuPrin in 'UMenuPrin.pas' {FrmMenuPrin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMenuPrin, FrmMenuPrin);
  Application.Run;
end.
