unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    TimeOld: TDateTime;
    INICIO :TDateTime;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
   begin
         Label1.Caption := FormatDateTime('HH:MM:SS:ZZZ', INICIO + NOW -TimeOld);
         //O label receber� o tempo que ser� calculado de acordo com o que for inserido no edit
   end;

procedure TForm1.Button1Click(Sender: TObject);
   begin
      INICIO := StrToDateTime(EDIT1.Text); //Inicia a contagem a partir da hora informada no Edit

      if Button1.Caption = 'Ativar' then begin//Se o texto Bot�o for igual a ATIVAR
         TimeOld := Now;                  //Inicia uma nova contagem
         Timer1.Enabled := True;          //Ativa o Timer
         Button1.Caption := 'Desativar';  //O texto do bot�o fica DESATIVAR
         Edit1.Enabled := false;          //Desabilita a edi��o do Edit
      end else begin                      //Se o texto do bot�o for DESATIVAR
         Timer1.Enabled := False; //Timer fica false
         Button1.Caption := 'Ativar'; //Texto do Bot�o fica ATIVAR
         Edit1.Enabled := true;   //Habilita a edi��o do Edit - Caso o usu�rio queira iniciar a contagem de um tempo espec�fio
      end;

   end;
procedure TForm1.FormCreate(Sender: TObject);
begin
    Edit1.Text:='0';
end;

end.
