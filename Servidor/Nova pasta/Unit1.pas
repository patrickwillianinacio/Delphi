unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBSQL, IBCustomDataSet, IBUpdateSQL, DB, IBDatabase, IBQuery,
  Grids, DBGrids, StdCtrls, Comobj, ShellApi;

type
  TForm1 = class(TForm)
    Excel: TButton;
    DBGrid1: TDBGrid;
    IBDatabase1: TIBDatabase;
    IBQuery1: TIBQuery;
    IBQuery1NOMEPOSTO: TIBStringField;
    IBQuery1MATERIALCONTA: TIntegerField;
    IBQuery1NOMEMATERIALCONTA: TIBStringField;
    IBQuery1MATERIALSAIDA: TIntegerField;
    IBQuery1NOMEMATERIALSAIDA: TIBStringField;
    IBQuery1SUM: TFloatField;
    IBQuery1SUM1: TFloatField;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    IBUpdateSQL1: TIBUpdateSQL;
    IBSQL1: TIBSQL;
    procedure ExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExportarDBGrid(const xCaracter : String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}




{ TForm1 }

procedure TForm1.ExcelClick(Sender: TObject);
begin
   ExportarDBGrid(';');
end;

procedure TForm1.ExportarDBGrid(const xCaracter: String);
Var
     I : Integer;
     xArquivoTxt : TStringList;
     xLinhaCompleta : String;
  begin
     xArquivoTxt := TStringList.Create;
     while not DBGrid1.DataSource.DataSet.Eof do
     begin
        xLinhaCompleta := '';
        for I := 0 to DBGrid1.Columns.Count - 1 do
        begin
           xLinhaCompleta := xLinhaCompleta +    
           DBGrid1.Columns[I].Field.AsString + xCaracter;
        end;
        DBGrid1.DataSource.DataSet.Next;
        xArquivoTxt.Add(xLinhaCompleta);
     end;
     xArquivoTxt.SaveToFile('C:\Users\root\Desktop\arquivo.xls');
  { O motivo para termos dado uses em ShellAPI , foi para que pudéssemos 
    abrir diretamente o arquivo txt, usando a função ShellExecute }

     ShellExecute(handle,'open',PChar('C:\Users\root\Desktop\arquivo.xls'), '','',SW_SHOWNORMAL)

     //DBGrid1.columns.Autofit;
     //DBGrid1.Fields[4].Alignment := taLeftJustify;

end;

end.
