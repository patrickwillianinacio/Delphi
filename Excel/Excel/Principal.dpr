program Principal;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uExcel in 'uExcel.pas' {frmGeracaoExcel};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
