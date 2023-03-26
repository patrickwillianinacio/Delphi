unit untRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,QuickRpt,ExtCtrls, QRCtrls, DB, Printers;

type
  TfrmRelatorio = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;

implementation

uses untRelatorioDinamico;

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



procedure TfrmRelatorio.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
    begin if (frmRelatorioDinamico.Pagina <= 94) then
               QuickRep1.Page.Orientation := poPortrait
    else
      QuickRep1.Page.Orientation := poLandscape;
  end;

end.
