program Project1;

uses
  Forms,
  uExcel in 'Excel Funcionando\uExcel.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
