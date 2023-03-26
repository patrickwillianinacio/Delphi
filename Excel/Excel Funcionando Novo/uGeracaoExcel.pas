unit uGeracaoExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBSQL, IBCustomDataSet, IBUpdateSQL, DB, IBDatabase, IBQuery,
  StdCtrls, Grids, DBGrids, ComObj, ComCtrls, ExtCtrls, FMTBcd, DBClient,
  Provider, SqlExpr, DBXpress, OleServer;

type
  TfrmGeracaoExcel = class(TForm)
    DBGridExcel: TDBGrid;
    procedure ExportaExcel;
    function AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha: Variant) : Variant;
  private
    FCodigoAtendimento: String;
    { Private declarations }
    function NumeroImpar(const value: Integer): Boolean;
    procedure SetCodigoAtendimento(const Value: String);
  public
    { Public declarations }
    property CodigoAtendimento: String read FCodigoAtendimento write SetCodigoAtendimento;
  end;

var
  frmGeracaoExcel: TfrmGeracaoExcel;

implementation

{$R *.dfm}

uses uDTM;

{ TfrmGeracaoExcel }

function TfrmGeracaoExcel.AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha: Variant): Variant;
var LineBorder, OpenOffice : Variant;
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
   i, n : Integer; // Coluna
   j : Integer; // Linha
   xValor1, xValor2 : double;
   xExcel, xTotal, xTotalFinal: string;
   newFile : TextFile;
begin
  //Ir para primeira linha e coluna do DBGrid
   DTMExcel.SQLQueryExcel.FindFirst; //Minha tabela na Query
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

   System.AssignFile(newFile, 'C:/temp/'+FCodigoAtendimento+'.ods');
   System.Rewrite(newFile);
   System.CloseFile(newFile);
   
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

   i := 0;
//Cria linha em branco
   while i <= DBGridExcel.FieldCount - 1 do begin
      Sheet.GetCellByPosition(i,1).SetString(''); //alimentando uma linha vazia
      Sheet.GetCellByPosition(i,1).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA CIMA
      Sheet.GetCellByPosition(i,1).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA ESQUERDA
      Sheet.GetCellByPosition(i,1).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA DIREITA
      Sheet.GetCellByPosition(i,1).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA BAIXO
      i := i + 1;
   end;

// Preenche a planilha
   j := 2;
   xValor1 := 0;
   xValor2 := 0;
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
               end else
            if DBGridExcel.Fields[i].DataType in [ftFloat, ftCurrency] then begin
               if ((DBGridExcel.Fields[i].Value) <> Null) and (FloatToStr(DBGridExcel.Fields[i].Value) <> '') then Sheet.GetCellByPosition(i,j).SetValue(DBGridExcel.Fields[i].Value);
                  Sheet.GetCellByPosition(i,j).HoriJustify             := 1;
                  Sheet.GetCellByPosition(i,j).getColumns.OptimalWidth := True;
                  Sheet.GetCellByPosition(i,j).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               end else
            if DBGridExcel.Fields[i].DataType in [ftString] then begin
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

            if not(NumeroImpar(i)) then begin
              n := DBGridExcel.DataSource.DataSet.RecordCount - 1;
              n := n + 4;
              xValor1 := StrToFloat(xExcel) + xValor1;
              xValor1 := strtofloat(formatfloat('#0.00', xValor1));
              xTotal := FloatToStr(xValor1);
              Sheet.GetCellByPosition(0,n).SetString('TOTAL'); //Título da primeira coluna
              Sheet.GetCellByPosition(0,n).CharWeight              := 150; // NEGRITO
              Sheet.GetCellByPosition(0,n).GetColumns.OptimalWidth := True; // EXPANDIR A CÉLULA
              Sheet.GetCellByPosition(0,n).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA CIMA
              Sheet.GetCellByPosition(0,n).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA ESQUERDA
              Sheet.GetCellByPosition(0,n).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA DIREITA
              Sheet.GetCellByPosition(0,n).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA BAIXO
              Sheet.GetCellByPosition(i,n).SetString(xTotal);
              Sheet.GetCellByPosition(i,n).CharWeight              := 150; // NEGRITO
              Sheet.GetCellByPosition(i,n).HoriJustify             := 2;
              Sheet.GetCellByPosition(i,n).getColumns.OptimalWidth := True;
              Sheet.GetCellByPosition(i,n).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              Sheet.GetCellByPosition(i,n).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              Sheet.GetCellByPosition(i,n).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              Sheet.GetCellByPosition(i,n).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              n := j;
          end else begin
            n := j;
            n := DBGridExcel.DataSource.DataSet.RecordCount - 1;
            n := n + 4;
            xValor2 := StrToFloat(xExcel) + xValor2;
            xValor2 := strtofloat(formatfloat('#0.00', xValor2));
            xTotalFinal := FloatToStr(xValor2);
            Sheet.GetCellByPosition(i,n).SetString(xTotalFinal);
            Sheet.GetCellByPosition(i,n).CharWeight              := 150; // NEGRITO
            Sheet.GetCellByPosition(i,n).HoriJustify             := 2;
            Sheet.GetCellByPosition(i,n).getColumns.OptimalWidth := True;
            Sheet.GetCellByPosition(i,n).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
            Sheet.GetCellByPosition(i,n).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
            Sheet.GetCellByPosition(i,n).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
            Sheet.GetCellByPosition(i,n).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
            n := j;
          end;

         end;
         i := i + 1; // INCREMENTA COLUNA
      end;
      DBGridExcel.DataSource.DataSet.Next; // PULA LINHA NO GRID
      j := j + 1; // INCREMENTA LINHA
   end;

   Calc.storeAsURL('file:///C:/temp/'+FCodigoAtendimento+'.ods', VarArrayCreate([0,0], varVariant));
   Calc.Dispose;
//      Document.Dispose;

   Screen.Cursor := crArrow;
// Desconecta o OpenOffice
   OpenOffice := Unassigned;
   //ShowMessage('Concluído');
//exit;
end;

function TfrmGeracaoExcel.NumeroImpar(const value: Integer): Boolean;
begin
  Result:= (Frac(value/2)=0);
end;

procedure TfrmGeracaoExcel.SetCodigoAtendimento(const Value: String);
begin
  FCodigoAtendimento := Value;
end;

end.
