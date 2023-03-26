program prgExcel;

uses
  Forms,
  uExcel in 'uExcel.pas' {frmExcel},
  uGeracaoExcel in 'uGeracaoExcel.pas' {frmGeracaoExcel},
  uLogin in 'uLogin.pas' {frmLogin},
  uDTM in 'uDTM.pas' {DTMExcel: TDataModule};

{$R *.res}

begin
  Application.Initialize;
   //Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDTMExcel, DTMExcel);
  Application.CreateForm(TfrmExcel, frmExcel);
  Application.CreateForm(TfrmGeracaoExcel, frmGeracaoExcel);
  Application.Run;
end.
