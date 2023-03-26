unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBSQL, IBCustomDataSet, IBUpdateSQL, DB, IBDatabase, IBQuery,
  StdCtrls, Grids, DBGrids, ComObj, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Excel: TButton;
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
    DBGrid1: TDBGrid;
    procedure ExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExportarToExcel;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


{ TForm1 }

procedure TForm1.ExportarToExcel;
begin
    ExportarToExcel();
end;

procedure TForm1.ExcelClick(Sender: TObject);
var
 OpenDesktop, Calc, Sheets, Sheet, wProperties : Variant;
 Connect, OpenOffice : Variant;
 i : Integer; // Coluna
 j : Integer; // Linha
 teste : string;
begin

//o segredo de pegar a dbgrid inteira é ir para primeira linha e coluna do DBGrid
   IBQuery1.FindFirst; //Minha tabela no Zeos
   DBGrid1.SelectedField := DBGrid1.Columns[0].Field;
   DBGrid1.SelectedIndex:=0;
   DBGrid1.SetFocus;

   Screen.Cursor := crSQLWait;
//aGrid.DataSource.DataSet.Open;
//aGrid.DataSource.DataSet.Last;

   DBGrid1.SelectedRows.CurrentRowSelected := True;

// Cria o link OLE com o OpenOffice
 if VarIsEmpty(OpenOffice) then
    OpenOffice := CreateOleObject('com.sun.star.ServiceManager');
    Connect := not (VarIsEmpty(OpenOffice) or VarIsNull(OpenOffice));

// Inicia o Calc
    OpenDesktop := OpenOffice.CreateInstance('com.sun.star.frame.Desktop');
    wProperties := VarArrayCreate([0, - 1], varVariant);
    Calc := OpenDesktop.LoadComponentFromURL('private:factory/scalc', '_blank', 0, wProperties);
    sheets := Calc.Sheets;
    Sheet := Sheets.getByIndex(0);

// Calc.ConvertFromUrl(calc);

// Cria linha de cabeçalho
    i := 0;
   while i <= DBGrid1.FieldCount - 1 do begin
//Sheet.getCellByPosition(i,0).setString(aGrid.Fields [i].FieldName);
    Sheet.getCellByPosition(i,0).setString(DBGrid1.Columns.Items[i].Title.Caption); //aqui resolvi pegar o titulo do DBGrid
    i := i + 1;
   end;

// Preenche a planilha
//j := 1;
//aGrid.First;

   while not DBGrid1.DataSource.DataSet.Eof do
   begin
    i := 0;
   while i <= DBGrid1.FieldCount - 1 do begin
   if DBGrid1.Fields[i].DataType in [ftDate, ftTime, ftDateTime] then begin
   if ((DateToStr(DBGrid1.Fields[i].Value) <> Null) and (DateToStr(DBGrid1.Fields[i].Value) <> '')) then
      Sheet.getCellByPosition(i,j).SetString(DBGrid1.Fields[i].Value);
   end
   else if DBGrid1.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint, ftString] then begin
   if (((DBGrid1.Fields[i].Value) <> Null) and ((DBGrid1.Fields[i].Value) <> '')) then
    Sheet.getCellByPosition(i,j).SetString(DBGrid1.Fields[i].Value);
    Sheets := Calc.Sheets;
    Sheet := Sheets.getByIndex(0);

// Cria linha de cabeçalho
    i := 0;
   while i <= DBGrid1.FieldCount - 1 do begin
//Sheet.getCellByPosition(i,0).setString(aGrid.Fields[i].FieldName);
    Sheet.getCellByPosition(i,0).setString(DBGrid1.Columns.Items[i].Title.Caption); //aqui resolvi pegar o titulo do DBGrid
    i := i + 1;
   end;

// Preenche a planilha
    j := 1;
    DBGrid1.DataSource.DataSet.First;
   while not DBGrid1.DataSource.DataSet.Eof do begin
    i := 0;
   while i <= DBGrid1.FieldCount - 1 do begin
   if DBGrid1.Fields[i].DataType in [ftDate, ftTime, ftDateTime] then begin
    if ((DateToStr(DBGrid1.Fields[i].Value) <> Null) and (DateToStr(DBGrid1.Fields[i].Value) <> '')) then
     Sheet.getCellByPosition(i,j).SetString(DBGrid1.Fields[i].Value);
    end
   else if DBGrid1.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint] then begin
      if ((IntToStr(DBGrid1.Fields[i].Value) <> Null) and (IntToStr(DBGrid1.Fields[i].Value) <> '')) then
       Sheet.getCellByPosition(i,j).SetValue(DBGrid1.Fields[i].Value);
      end
      else if DBGrid1.Fields[i].DataType in [ftFloat, ftCurrency] then begin
         if ((FloatToStr(DBGrid1.Fields[i].Value) <> Null) and (FloatToStr(DBGrid1.Fields[i].Value) <> '')) then
          Sheet.getCellByPosition(i,j).SetValue(DBGrid1.Fields[i].Value);
         end
         else begin
      if ((DBGrid1.Fields[i].Value <> Null) and (DBGrid1.Fields[i].Value <> '')) then begin
        teste := '';
        teste := DBGrid1.Fields[i].Value;
        Sheet.getCellByPosition(i,j).SetString(teste);
      end;
   end;
   i := i + 1;
  end;
   DBGrid1.DataSource.DataSet.Next;
   j := j + 1;
 end;
 Screen.Cursor := crArrow;
// Desconecta o OpenOffice
 OpenOffice := Unassigned;
 ShowMessage('Planilha Gerada');

//o segredo de pegar a dbgrid inteira é ir para primeira linha e coluna do DBGrid
 IBQuery1.FindFirst; //Minha tabela no Zeos
 DBGrid1.SelectedField := DBGrid1.Columns[0].Field;
 DBGrid1.SelectedIndex:=0;
 DBGrid1.SetFocus;
 exit;
  end;
  end;
 end;

end;

end.
