unit uExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBSQL, IBCustomDataSet, IBUpdateSQL, DB, IBDatabase, IBQuery,
  StdCtrls, Grids, DBGrids, ComObj, ComCtrls, ExtCtrls, FMTBcd, DBClient,
  Provider, SqlExpr, DBXpress, OleServer;

type
  TfrmGeracaoExcel = class(TForm)
   DataSourceExcel      : TDataSource;
   DBGridExcel          : TDBGrid;
   SQLQueryExcel        : TSQLQuery;
   DataSetProviderExcel : TDataSetProvider;
   ClientDataSetExcel   : TClientDataSet;
   SQLConnectionExcel   : TSQLConnection;
    qryLogin: TSQLQuery;
    DataSourceLogin: TDataSource;
  private
    { Private declarations }

  public
    { Public declarations }
    procedure ExportaExcel;
    function AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha: Variant) : Variant;
  end;

var
  frmGeracaoExcel : TfrmGeracaoExcel;

implementation

{$R *.dfm}

{ TForm1 }

function TfrmGeracaoExcel.AtribuirBordas(Cor, EspLinInter, EspLinExter,
  DistLinha : Variant) : Variant;
var LineBorder , OpenOffice : Variant;
begin
// Cria o link OLE com o OpenOffice
   if VarIsEmpty(OpenOffice) then begin
      OpenOffice := CreateOleObject('com.sun.star.ServiceManager');
   end;

   LineBorder := OpenOffice.createInstance('com.sun.star.reflection.CoreReflection');
   LineBorder.forName('com.sun.star.table.BorderLine').CreateObject(Result);
   result.Color           := 0;
   result.InnerLineWidth  := EspLinInter;
   result.OuterLineWidth  := 5;
   result.LineDistance    := DistLinha;
end;

procedure TfrmGeracaoExcel.ExportaExcel;
var OpenDesktop, Calc, Sheets, Sheet, wProperties, Connect, OpenOffice  : Variant;
   Cor, EspLinInter, EspLinExter, DistLinha : Variant;
   i : Integer; // Coluna
   j : Integer; // Linha
   xExcel : string;
begin
  //Ir para primeira linha e coluna do DBGrid
   SQLQueryExcel.FindFirst; //Minha tabela na Query
   DBGridExcel.SelectedField                   := DBGridExcel.Columns[0].Field;
   DBGridExcel.SelectedIndex                   := 0;
   Screen.Cursor                               := crSQLWait;
   DBGridExcel.SelectedRows.CurrentRowSelected := True;
// Cria o link OLE com o OpenOffice
   if VarIsEmpty(OpenOffice) then begin
      OpenOffice := CreateOleObject('com.sun.star.ServiceManager');
   end;
// Faz a conexão
   Connect := not (VarIsEmpty(OpenOffice) or VarIsNull(OpenOffice));
// Inicia o Calc
   OpenDesktop := OpenOffice.CreateInstance('com.sun.star.frame.Desktop');
   wProperties := VarArrayCreate([0, - 1], varVariant);
   Calc        := OpenDesktop.LoadComponentFromURL('private:factory/scalc', '_blank', 0, wProperties);
   sheets      := Calc.Sheets;
   Sheet       := Sheets.getByIndex(0);
// Cria linha de cabeçalho
   i := 0;
   while i <= DBGridExcel.FieldCount - 1 do begin
      Sheet.GetCellByPosition(i,0).SetString(DBGridExcel.Columns.Items[i].Title.Caption); //aqui pega o titulo do DBGrid
      Sheet.GetCellByPosition(i,0).HoriJustify             := 2; // CENTRALIZAR
      Sheet.GetCellByPosition(i,0).CharWeight              := 150; // NEGRITO
      Sheet.GetCellByPosition(i,0).GetColumns.OptimalWidth := True; // EXPANDIR A CÉLULA
      Sheet.GetCellByPosition(i,0).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA CIMA
      Sheet.GetCellByPosition(i,0).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA ESQUERDA
      Sheet.GetCellByPosition(i,0).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA DIREITA
      Sheet.GetCellByPosition(i,0).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA BAIXO
      i := i + 1;
   end;
// Preenche a planilha
   j := 1;
   DBGridExcel.DataSource.DataSet.First;
   while not DBGridExcel.DataSource.DataSet.Eof do begin
      i := 0;
      while i <= DBGridExcel.FieldCount - 1 do begin
         if DBGridExcel.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint] then begin
            if ((DBGridExcel.Fields[i].Value) <> Null) and (IntToStr(DBGridExcel.Fields[i].Value) <> '') then Sheet.GetCellByPosition(i,j).SetValue(DBGridExcel.Fields[i].Value);
               Sheet.GetCellByPosition(i,j).HoriJustify             := 1;
               Sheet.GetCellByPosition(i,j).getColumns.OptimalWidth := True;
               Sheet.GetCellByPosition(i,j).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               Sheet.GetCellByPosition(i,j).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               Sheet.GetCellByPosition(i,j).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               Sheet.GetCellByPosition(i,j).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
            end else if DBGridExcel.Fields[i].DataType in [ftFloat, ftCurrency] then begin
                  if ((DBGridExcel.Fields[i].Value) <> Null) and (FloatToStr(DBGridExcel.Fields[i].Value) <> '') then Sheet.GetCellByPosition(i,j).SetValue(DBGridExcel.Fields[i].Value);
                     Sheet.GetCellByPosition(i,j).HoriJustify             := 1;
                     Sheet.GetCellByPosition(i,j).getColumns.OptimalWidth := True;
                     Sheet.GetCellByPosition(i,j).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                     Sheet.GetCellByPosition(i,j).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                     Sheet.GetCellByPosition(i,j).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                     Sheet.GetCellByPosition(i,j).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  end else if DBGridExcel.Fields[i].DataType in [ftString] then begin
            if ((DBGridExcel.Fields[i].Value) <> Null) and ((DBGridExcel.Fields[i].Value) <> '') then Sheet.GetCellByPosition(i,j).SetString(DBGridExcel.Fields[i].Value);
               Sheet.GetCellByPosition(i,j).HoriJustify             := 1;
               Sheet.GetCellByPosition(i,j).getColumns.OptimalWidth := True;
               Sheet.GetCellByPosition(i,j).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               Sheet.GetCellByPosition(i,j).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               Sheet.GetCellByPosition(i,j).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               Sheet.GetCellByPosition(i,j).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
            end else begin
            xExcel := '';
            xExcel := DBGridExcel.Fields[i].Value;
            Sheet.GetCellByPosition(i,j).SetString(xExcel);
            Sheet.GetCellByPosition(i,j).HoriJustify             := 2;
            Sheet.GetCellByPosition(i,j).getColumns.OptimalWidth := True;
            Sheet.GetCellByPosition(i,j).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
            Sheet.GetCellByPosition(i,j).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
            Sheet.GetCellByPosition(i,j).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
            Sheet.GetCellByPosition(i,j).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
         end;
         i := i + 1; // INCREMENTA COLUNA
      end;
      DBGridExcel.DataSource.DataSet.Next; // PULA LINHA NO GRID
      j := j + 1; // INCREMENTA LINHA
   end;
   Screen.Cursor := crArrow;
// Desconecta o OpenOffice
   OpenOffice := Unassigned;
   ShowMessage('Concluído');
//exit;
end;


end.
