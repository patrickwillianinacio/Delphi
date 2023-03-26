unit untSobre;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TfrmSobre = class(TForm)
    Panel1: TPanel;
    imgSobre: TImage;
    lblNomeProduto: TLabel;
    lblVersao: TLabel;
    lblCopyright: TLabel;
    lblComentarios: TLabel;
    OKButton: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}


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


procedure TfrmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
   Action := caFree;
   frmSobre := nil;
  end;

end.
 
