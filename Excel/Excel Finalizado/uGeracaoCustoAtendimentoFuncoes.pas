unit uGeracaoCustoAtendimentoFuncoes;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, IBSQL, IBCustomDataSet, IBUpdateSQL, DB, IBDatabase, IBQuery,
 StdCtrls, Grids, DBGrids, ComObj, ComCtrls, ExtCtrls, FMTBcd, DBClient,
 Provider, SqlExpr, DBXpress, OleServer, DBCtrls, Buttons;

type
  TfrGeracaoCustoAtendimentoFuncoes = class(TForm)
    Panel2: TPanel;
    dbgExcel: TDBGrid;
    procedure ExportaExcel;
    function AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha: Variant) : Variant;
    procedure dbgExcelKeyPress(Sender: TObject; var Key: Char);
  private
    FCodigoAtendimento: String;
    FdiretorioSalvar: String;
    FNomeProntuario: String;
    function NumeroImpar(const value: Integer): Boolean;
    procedure SetCodigoAtendimento(const Value: String);
    procedure SetdiretorioSalvar(const Value: String);
    procedure SetNomeProntuario(const Value: string);
    { Private declarations }
  public
    property CodigoAtendimento: String read FCodigoAtendimento write SetCodigoAtendimento;
    property diretorioSalvar : String  read FdiretorioSalvar write SetdiretorioSalvar;
    property NomeProntuario  : String  read FNomeProntuario write SetNomeProntuario;
    { Public declarations }
  end;

var
  frGeracaoCustoAtendimentoFuncoes: TfrGeracaoCustoAtendimentoFuncoes;


implementation

uses
  GeracaoCustoAtendimen;

{$R *.dfm}


{ TfrGeracaoCustoAtendimentoFuncoes }

function TfrGeracaoCustoAtendimentoFuncoes.AtribuirBordas(Cor, EspLinInter,
  EspLinExter, DistLinha: Variant): Variant;
var LineBorder, OpenOffice : Variant;
begin
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

procedure TfrGeracaoCustoAtendimentoFuncoes.ExportaExcel;
var OpenDesktop, Calc, Sheets, Sheet, wProperties, Connect, OpenOffice  : Variant;
   Cor, EspLinInter, EspLinExter, DistLinha : Variant;
   i : Integer; // Coluna
   j , n : Integer; // Linha
   //vValor1, vValor2, vTotal1, vTotal2 : double;
   vExcel : string;
begin
//Ir para primeira linha e coluna do DBGrid
   frGeracaoCustoAtendimento.SQLExtracao.FindFirst; //Minha tabela na Query
   dbgExcel.SelectedField                   := dbgExcel.Columns[0].Field;
   dbgExcel.SelectedIndex                   := 0;
   Screen.Cursor                            := crSQLWait;
   dbgExcel.SelectedRows.CurrentRowSelected := True;
//Cria o link OLE com o OpenOffice
   if VarIsEmpty(OpenOffice) then begin
      OpenOffice := CreateOleObject('com.sun.star.ServiceManager');
   end;
//Faz a conexão
   Connect := not (VarIsEmpty(OpenOffice) or VarIsNull(OpenOffice));
//Inicia o Calc
   OpenDesktop := OpenOffice.CreateInstance('com.sun.star.frame.Desktop');
   wProperties := VarArrayCreate([0, - 1], varVariant);
   Calc        := OpenDesktop.LoadComponentFromURL('private:factory/scalc', '_blank', 0, wProperties);
   sheets      := Calc.Sheets;
   Sheet       := Sheets.getByIndex(0);

//Cria linha de cabeçalho
   i := 0;
   while i <= dbgExcel.FieldCount - 1 do begin
      Sheet.GetCellByPosition(i,0).SetString(dbgExcel.Columns.Items[i].Title.Caption); //aqui pega o titulo do DBGrid
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
   while i <= dbgExcel.FieldCount - 1 do begin
      Sheet.GetCellByPosition(i,1).SetString(''); //alimentando uma linha vazia
      Sheet.GetCellByPosition(i,1).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA CIMA
      Sheet.GetCellByPosition(i,1).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA ESQUERDA
      Sheet.GetCellByPosition(i,1).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA DIREITA
      Sheet.GetCellByPosition(i,1).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha); // BORDA BAIXO
      i := i + 1;
   end;

//Preenche a planilha
   j := 2;
   //vValor1 := 0;
   //vValor2 := 0;
   dbgExcel.DataSource.DataSet.First;
   while not dbgExcel.DataSource.DataSet.Eof do begin
      i := 0;
      while i <= dbgExcel.FieldCount - 1 do begin
         if dbgExcel.Fields[i].DataType in [ftSmallint, ftInteger, ftLargeint] then begin
               if ((dbgExcel.Fields[i].Value) <> Null) and (IntToStr(dbgExcel.Fields[i].Value) <> '')
               then Sheet.GetCellByPosition(i,j).SetValue(dbgExcel.Fields[i].Value);
                  Sheet.GetCellByPosition(i,j).HoriJustify             := 1;
                  Sheet.GetCellByPosition(i,j).getColumns.OptimalWidth := True;
                  Sheet.GetCellByPosition(i,j).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               end else
            if dbgExcel.Fields[i].DataType in [ftFloat, ftCurrency] then begin
               if ((dbgExcel.Fields[i].Value) <> Null) and (FloatToStr(dbgExcel.Fields[i].Value) <> '')
               then Sheet.GetCellByPosition(i,j).SetValue(dbgExcel.Fields[i].Value);
                  Sheet.GetCellByPosition(i,j).HoriJustify             := 1;
                  Sheet.GetCellByPosition(i,j).getColumns.OptimalWidth := True;
                  Sheet.GetCellByPosition(i,j).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               end else
            if dbgExcel.Fields[i].DataType in [ftString] then begin
               if ((dbgExcel.Fields[i].Value) <> Null) and ((dbgExcel.Fields[i].Value) <> '')
               then Sheet.GetCellByPosition(i,j).SetString(dbgExcel.Fields[i].Value);
                  Sheet.GetCellByPosition(i,j).HoriJustify             := 1;
                  Sheet.GetCellByPosition(i,j).getColumns.OptimalWidth := True;
                  Sheet.GetCellByPosition(i,j).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
                  Sheet.GetCellByPosition(i,j).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
            end else begin
               vExcel := '';
               vExcel := dbgExcel.Fields[i].Value;
               Sheet.GetCellByPosition(i,j).SetValue(vExcel);
               Sheet.GetCellByPosition(i,j).HoriJustify             := 2;
               Sheet.GetCellByPosition(i,j).getColumns.OptimalWidth := True;
               Sheet.GetCellByPosition(i,j).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               Sheet.GetCellByPosition(i,j).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               Sheet.GetCellByPosition(i,j).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
               Sheet.GetCellByPosition(i,j).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);

            if not(NumeroImpar(i)) then begin
              n := dbgExcel.DataSource.DataSet.RecordCount - 1;
              n := n + 4;
              //vValor1 := StrToFloat(vExcel) + vValor1;
              //vValor1 := strtofloat(formatfloat('#0.00', vValor1));
              //vTotal1 := vValor1;
              Sheet.GetCellByPosition(0,n).SetString('TOTAL');
              Sheet.GetCellByPosition(0,n).CharWeight              := 150;
              Sheet.GetCellByPosition(0,n).GetColumns.OptimalWidth := True;
              Sheet.GetCellByPosition(0,n).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              Sheet.GetCellByPosition(0,n).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              Sheet.GetCellByPosition(0,n).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              Sheet.GetCellByPosition(0,n).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              //Sheet.GetCellByPosition(i,n).SetValue(vTotal1);
              Sheet.getCellByPosition(i,n).Formula := '=SUM(F3'+':F'+(IntToStr(n - 1))+')';//TOTAL AUTOSOMA COLUNA(F)
              Sheet.GetCellByPosition(i,n).CharWeight              := 150;
              Sheet.GetCellByPosition(i,n).HoriJustify             := 2;
              Sheet.GetCellByPosition(i,n).getColumns.OptimalWidth := True;
              Sheet.GetCellByPosition(i,n).TopBorder               := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              Sheet.GetCellByPosition(i,n).LeftBorder              := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              Sheet.GetCellByPosition(i,n).RightBorder             := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              Sheet.GetCellByPosition(i,n).BottomBorder            := AtribuirBordas(Cor, EspLinInter, EspLinExter, DistLinha);
              n := j;
          end else begin
            n := j;
            n := dbgExcel.DataSource.DataSet.RecordCount - 1;
            n := n + 4;
            //vValor2 := StrToFloat(vExcel) + vValor2;
            //vValor2 := strtofloat(formatfloat('#0.00', vValor2));
            //vTotal2 := vValor2;
            //Sheet.GetCellByPosition(i,n).SetValue(vTotal2);
            Sheet.getCellByPosition(i,n).Formula := '=SUM(G3'+':G'+(IntToStr(n - 1))+')';//TOTAL AUTOSOMA COLUNA(G)
            Sheet.GetCellByPosition(i,n).CharWeight              := 150; 
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
      dbgExcel.DataSource.DataSet.Next; // PULA LINHA NO GRID
      j := j + 1; // INCREMENTA LINHA
   end;

   diretorioSalvar := StringReplace(diretorioSalvar, '\', '/', [rfReplaceAll, rfIgnoreCase]);
   Calc.storeAsURL('file:///'+diretorioSalvar+'/'+FCodigoAtendimento+''+' '+''+FNomeProntuario+'.ods', VarArrayCreate([0,0], varVariant));
   Calc.Dispose;
   Screen.Cursor := crArrow;
   OpenOffice := Unassigned;
end;

function TfrGeracaoCustoAtendimentoFuncoes.NumeroImpar(
  const value: Integer): Boolean;
begin
  Result:= (Frac(value/2)=0);
end;

procedure TfrGeracaoCustoAtendimentoFuncoes.SetCodigoAtendimento(
  const Value: String);
begin
 FCodigoAtendimento := Value;
end;

procedure TfrGeracaoCustoAtendimentoFuncoes.dbgExcelKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
      dbgExcel.Perform(WM_KEYDOWN, VK_TAB, 0);
  end;
end;

procedure TfrGeracaoCustoAtendimentoFuncoes.SetdiretorioSalvar(
  const Value: String);
begin
  FdiretorioSalvar := Value;
end;

procedure TfrGeracaoCustoAtendimentoFuncoes.SetNomeProntuario(
  const Value: string);
begin
  FNomeProntuario := Value;
end;

end.
