program Sistema;

uses
  Forms,
  UMenuPrin in 'UMenuPrin.pas' {FrmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmSplash, FrmSplash);
  Application.Run;
end.
