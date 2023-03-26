program ProJogAcertosErros;

uses
  Forms,
  U_DTM in '..\..\Jogo de Conhecimento\U_DTM.pas' {DTM: TDataModule},
  U_FrmPerguntaUM in 'U_FrmPerguntaUM.pas' {FrmPergunta1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDTM, DTM);
  Application.CreateForm(TFrmPergunta1, FrmPergunta1);
  Application.Run;
end.
