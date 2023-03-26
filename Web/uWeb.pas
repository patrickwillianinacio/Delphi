unit uWeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Web: TWebBrowser;
    btnVoltar: TButton;
    btnAvancar: TButton;
    btnParar: TButton;
    btnAtualizar: TButton;
    Edit1: TEdit;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnPararClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure WebTitleChange(Sender: TObject; const Text: WideString);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then
    web.Navigate(Edit1.Text);
end;

procedure TForm1.btnVoltarClick(Sender: TObject);
begin
 web.GoBack;
end;

procedure TForm1.btnAvancarClick(Sender: TObject);
begin
 web.GoForward;
end;

procedure TForm1.btnPararClick(Sender: TObject);
begin
 web.Stop;
end;

procedure TForm1.btnAtualizarClick(Sender: TObject);
begin
 web.Refresh;
end;

procedure TForm1.WebTitleChange(Sender: TObject; const Text: WideString);
begin
 Caption := Text;
end;

end.
