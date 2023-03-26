program prgLogin;

uses
  Forms,
  SysUtils,
  uLogin in 'uLogin.pas' {frmLogin},
  uCadastroCliente in 'uCadastroCliente.pas' {frmCadastroCliente},
  uAbertura in 'uAbertura.pas' {frmAbertura},
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uSobre in 'uSobre.pas' {frmSobre},
  uCadastroUsuarios in 'uCadastroUsuarios.pas' {frmCadastroUsuarios};

{$R *.res}

begin
  Application.Initialize;
 Application.Title := 'Cadastro de Produtos';
//Formulário de Abertura
   frmAbertura := TfrmAbertura.Create(Application);
   frmAbertura.Show;
   frmAbertura.Refresh;
//Formulário Principal
   Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.CreateForm(TfrmCadastroUsuarios, frmCadastroUsuarios);
  //Tempo de exibição do formulário de abertura
   sleep(1500); //declarar na seção uses: SysUtils
//Fechando e liberando da memória o formulário de abertura
   frmAbertura.Free;
   Application.Run;
end.
