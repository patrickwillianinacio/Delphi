program Mensagem;

uses
  Forms,
  Chat in 'Chat.pas' {ChatFal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TChatFal, ChatFal);
  Application.Run;
end.
