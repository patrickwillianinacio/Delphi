unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBDatabase, IBCustomDataSet, IBQuery, Grids,
  DBGrids, IBUpdateSQL, IBSQL, ComObj;

type
  TForm1 = class(TForm)
    IBDatabase1: TIBDatabase;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    IBUpdateSQL1: TIBUpdateSQL;
    IBSQL1: TIBSQL;
    IBQuery1NOMEPOSTO: TIBStringField;
    IBQuery1MATERIALCONTA: TIntegerField;
    IBQuery1NOMEMATERIALCONTA: TIBStringField;
    IBQuery1MATERIALSAIDA: TIntegerField;
    IBQuery1NOMEMATERIALSAIDA: TIBStringField;
    IBQuery1SUM: TFloatField;
    IBQuery1SUM1: TFloatField;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure pExportarDadosExcel(Query : TIBQuery);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


{ TForm1 }


procedure TForm1.pExportarDadosExcel(Query: TIBQuery);
var
  Excel    : Variant;
  Linha, i : Integer;
begin
  if not Query.IsEmpty then
  begin
    IBQuery1.First;
    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := True;
    Excel.Workbooks.Add;
    Linha := 1;
    for i := 0 to IBQuery1.FieldCount - 1 do
      Excel.WorkBooks[1].Sheets[1].Cells[Linha,i+1] := IBQuery1.Fields[i].DisplayName;
    Linha := 2;
    While not IBQuery1.Eof do
    Begin
      for i := 0 to Query.FieldCount - 1 do
        Excel.WorkBooks[1].Sheets[1].Cells[Linha,i+1] := IBQuery1.Fields[i].Value;
      IBQuery1.Next;
      Linha:=Linha+1;
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    pExportarDadosExcel;
end;

end.
