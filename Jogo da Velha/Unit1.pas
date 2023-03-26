unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,XPMan, StdCtrls, ExtCtrls;

type
  TFrmJogo = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    XPManifest1: TXPManifest;
    procedure JogoNovo;
    procedure Verificar;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmJogo: TFrmJogo;
  Botao: array [1..9] of TButton;
  intNumeroVezes: Integer;

implementation

{$R *.dfm}

procedure TFrmJogo.FormCreate(Sender: TObject);
  begin
   Randomize;
   Botao[1]:= Button1;
   Botao[2]:= Button2;
   Botao[3]:= Button3;
   Botao[4]:= Button4;
   Botao[5]:= Button5;
   Botao[6]:= Button6;
   Botao[7]:= Button7;
   Botao[8]:= Button8;
   Botao[9]:= Button9;
   JogoNovo;
  end;

procedure TFrmJogo.JogoNovo;
  var
   intM,i: Integer;
  begin for i:= 1 to 9 do
   Botao[i].Caption:= '';
   intM:= Trunc(Random * 10);
   intNumeroVezes:=0;
  end;

procedure TFrmJogo.Verificar;

 label 1,2;
  var
   intResposta: Integer;
   i: Integer;
  begin if (Button1.Caption='x') and (Button2.Caption='x') and (Button3.Caption='x') then goto 1;
  if (Button4.Caption='x') and (Button5.Caption='x') and (Button6.Caption='x') then goto 1;
  if (Button7.Caption='x') and (Button8.Caption='x') and (Button9.Caption='x') then goto 1;
  if (Button1.Caption='x') and (Button4.Caption='x') and (Button7.Caption='x') then goto 1;
  if (Button2.Caption='x') and (Button5.Caption='x') and (Button8.Caption='x') then goto 1;
  if (Button3.Caption='x') and (Button6.Caption='x') and (Button9.Caption='x') then goto 1;
  if (Button1.Caption='x') and (Button5.Caption='x') and (Button9.Caption='x') then goto 1;
  if (Button3.Caption='x') and (Button5.Caption='x') and (Button7.Caption='x') then goto 1;

  repeat i:=Trunc (Random * 10) until Botao[i].Caption='';
   Botao[i].Caption:='o';

  if (Button1.Caption='o') and (Button2.Caption='o') and (Button3.Caption='o') then goto 2;
  if (Button4.Caption='o') and (Button5.Caption='o') and (Button6.Caption='o') then goto 2;
  if (Button7.Caption='o') and (Button8.Caption='o') and (Button9.Caption='o') then goto 2;
  if (Button1.Caption='o') and (Button4.Caption='o') and (Button7.Caption='o') then goto 2;
  if (Button2.Caption='o') and (Button5.Caption='o') and (Button8.Caption='o') then goto 2;
  if (Button3.Caption='o') and (Button6.Caption='o') and (Button9.Caption='o') then goto 2;
  if (Button1.Caption='o') and (Button5.Caption='o') and (Button9.Caption='o') then goto 2;
  if (Button3.Caption='o') and (Button5.Caption='o') and (Button7.Caption='o') then goto 2;
  if intNumeroVezes= 4 then begin
   Showmessage('Partida Empatada');
   JogoNovo;
   exit;
  end;
 exit;

1:
  begin
   intResposta:=Application.MessageBox('Você ganhou, quer jogar novamente?','Vencedor',36);
  if intResposta = 7 then Close;
   JogoNovo;
   exit;
  end;

2:
  begin
   intResposta:=Application.MessageBox('Eu Ganhei, quer jogar novamente?','Vencedor',36);
  if intResposta = 7 then Close;
   JogoNovo;
  exit;
  end;
end;

procedure TFrmJogo.Button1Click(Sender: TObject);
  begin
   intNumeroVezes:= intNumeroVezes + 1;
   Button1.Caption:='x';
   Verificar;
  end;

procedure TFrmJogo.Button2Click(Sender: TObject);
  begin
   intNumeroVezes:= intNumeroVezes + 1;
   Button2.Caption:='x';
   Verificar;
  end;

procedure TFrmJogo.Button3Click(Sender: TObject);
  begin
   intNumeroVezes:= intNumeroVezes + 1;
   Button3.Caption:='x';
   Verificar;
  end;

procedure TFrmJogo.Button4Click(Sender: TObject);
  begin
   intNumeroVezes:= intNumeroVezes + 1;
   Button4.Caption:='x';
   Verificar;
  end;

procedure TFrmJogo.Button5Click(Sender: TObject);
  begin
   intNumeroVezes:= intNumeroVezes + 1;
   Button5.Caption:='x';
   Verificar;
  end;

procedure TFrmJogo.Button6Click(Sender: TObject);
  begin
   intNumeroVezes:= intNumeroVezes + 1;
   Button6.Caption:='x';
   Verificar;
  end;

procedure TFrmJogo.Button7Click(Sender: TObject);
  begin
   intNumeroVezes:= intNumeroVezes + 1;
   Button7.Caption:='x';
   Verificar;
  end;

procedure TFrmJogo.Button8Click(Sender: TObject);
  begin
   intNumeroVezes:= intNumeroVezes + 1;
   Button8.Caption:='x';
   Verificar;
  end;

procedure TFrmJogo.Button9Click(Sender: TObject);
  begin
   intNumeroVezes:= intNumeroVezes + 1;
   Button9.Caption:='x';
   Verificar;
  end;

end.
