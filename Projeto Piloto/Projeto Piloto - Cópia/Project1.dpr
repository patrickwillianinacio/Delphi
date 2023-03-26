program Project1;

uses
  Forms,
   SysUtils,
   untMaterial in 'untMaterial.pas' {frmPrincipal},
   untLogin in 'untLogin.pas' {frmLogin},
   untRelatorio in 'untRelatorio.pas' {frmRelatorio},
   untRelatorioDinamico in 'untRelatorioDinamico.pas' {frmRelatorioDinamico},
   untSobre in 'untSobre.pas' {frmSobre},
   untAbertura in 'untAbertura.pas' {frmAbertura},
   untCadGrupo in 'untCadGrupo.pas' {frmCadGrupo},
   untCadMaterial in 'untCadMaterial.pas' {frmCadMaterial},
   untCadPadrao in 'untCadPadrao.pas' {frmCadPadrao};

{$R *.res}

begin
 Application.Initialize;
 Application.Title := 'Controle de Materiais';
//Formul�rio de Abertura
   frmAbertura := TfrmAbertura.Create(Application);
   frmAbertura.Show;
   frmAbertura.Refresh;
//Formul�rio Principal
   Application.CreateForm(TfrmPrincipal, frmPrincipal);
  //Tempo de exibi��o do formul�rio de abertura
   sleep(1500); //declarar na se��o uses: SysUtils
//Fechando e liberando da mem�ria o formul�rio de abertura
   frmAbertura.Free;
   Application.Run;
end.
