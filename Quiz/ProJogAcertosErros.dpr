program ProJogAcertosErros;

uses
  Forms,
  U_FrmPerguntaUM in 'U_FrmPerguntaUM.pas' {FrmPergunta1},
  U_DTM in 'U_DTM.pas' {DTM: TDataModule},
  U_FrmPerguntaDOIS in 'U_FrmPerguntaDOIS.pas' {FrmPergunta2},
  U_FrmPerguntaTRES in 'U_FrmPerguntaTRES.pas' {FrmPergunta3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDTM, DTM);
  Application.CreateForm(TFrmPergunta1, FrmPergunta1);
  Application.CreateForm(TFrmPergunta2, FrmPergunta2);
  Application.CreateForm(TFrmPergunta3, FrmPergunta3);
  Application.Run;
end.
