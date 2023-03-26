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
//Formulário de Abertura
   frmAbertura := TfrmAbertura.Create(Application);
   frmAbertura.Show;
   frmAbertura.Refresh;
//Formulário Principal
   Application.CreateForm(TfrmPrincipal, frmPrincipal);
  //Tempo de exibição do formulário de abertura
   sleep(1500); //declarar na seção uses: SysUtils
//Fechando e liberando da memória o formulário de abertura
   frmAbertura.Free;
   Application.Run;
end.
