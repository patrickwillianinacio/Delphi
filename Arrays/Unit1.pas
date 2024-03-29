unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls ,ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    RadioButton1: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
end;

var
  Form1: TForm1;
  // Na declara��o dos arrays din�micos n�o � necess�rio informar os �ndices
  vetor: array of integer;
  matriz: array of array of integer;
  n: integer; // tamanho do vetor // RadioGroup para selecionar o "Tipo do Array"
  type rg = record campo1: integer; campo2:
  string[35];
  end; // vetores unidimensionais
  var vetorA: array[1..10] of integer;
  vetorB: array[10..20] of real;
  vetorC: array[1..100] of rg; // vetores bidimensionais (matrizes)
  matrizA: array[1..3, 1..3] of integer;
  matrizB: array[1..4, 1..5] of integer;
  j: integer;

implementation

{$R *.dfm}

{A��o para despejar mem�ria}
procedure TrimAppMemorySize;
  var
   MainHandle : THandle;
  begin
  try
   MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
   SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
   CloseHandle(MainHandle) ;
  except
 end;
   Application.ProcessMessages;
end;


procedure TForm1.RadioGroup1Click(Sender: TObject);
  begin if (RadioGroup1.ItemIndex = 0)
    then begin Button1.Caption:= 'Criar o Vetor';
      Label1.Caption:= 'Tamanho do Vetor:';
    end
    else begin Button1.Caption:= 'Criar a Matriz';
      Label1.Caption := 'Ordem da Matriz:';
    end;
  end; // Bot�o "Criar Vetor"

procedure TForm1.Button2Click(Sender: TObject);
  begin if (RadioGroup1.ItemIndex = 0) then Finalize(vetor)
    else Finalize(matriz);
      Button1.Enabled:= True;
      Button2.Enabled:= False;
      Memo1.Clear; //Limpa a tabela
    end;

procedure TForm1.Button1Click(Sender: TObject); //Inicia a opera��o
  var i, j: integer;
    s: string;
    begin try n:= StrToInt(Edit1.Text);
      randomize;
    if (RadioGroup1.ItemIndex = 0) then begin
         SetLength(vetor,n); // cria o vetor dinamicamente
      for i:=low(vetor) to high(vetor) do begin vetor[i]:= random(100); //Gera n�meros aleat�rios de 0 a 100
         Memo1.Lines.Add(Format('vetor[%2d] = % 2 d ', [i, vetor[i]]));
     end;
       end else begin SetLength(matriz, n); // cria a matriz dinamicamente
         for i:=low(matriz) to high(matriz) do begin s:= Format('%2da. linha = ', [i + 1]); // cria a i-�sima linha da matriz dinamicamente
            SetLength(matriz[i], n);
           for j:= low(matriz[i]) to high(matriz[i])
             do begin matriz[i, j]:= random(100); //Gera n�meros aleat�rios de 0 a 100
               s:= s + Format('%2d ', [matriz[i, j]]);
             end;
         Memo1.Lines.Add(s); // Alimenta a tabela
       end;
    end;
      Button1.Enabled:= False;
      Button2.Enabled:= True;
    except
   end;
  end;


procedure TForm1.FormCreate(Sender: TObject);
begin
   Memo1.Text := ''; //Iniciar a tabela vazia
end;

procedure TForm1.btnfecharClick(Sender: TObject);
  begin
   self.free;              //usado somente se estiver dentro de uma form ou datamodule
   application.free;    //se o objeto application estiver dispon�vel;
   exitprocess(0);    //por �ltimo, pra finalizar.
  end;

end.
