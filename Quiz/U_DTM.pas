unit U_DTM;

interface

uses
  SysUtils, Classes;

type
  TDTM = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    contagem, acerto, erro : integer; // Vari�veis que contaram os erros e acertos
    hora : TDateTime; // Vari�veis que nos auxilia a contar o tempo do usu�rio
  end;

var
  DTM: TDTM;

implementation

{$R *.dfm}

procedure TDTM.DataModuleCreate(Sender: TObject);
   begin
     acerto := 0;
      erro := 0;
   end;

end.
