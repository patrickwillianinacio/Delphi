unit Unit1;

interface

uses
  SysUtils, Classes, HTTPApp, DBXpress, FMTBcd, DB, SqlExpr, DBWeb, HTTPProd, DSProd;

type
  TWebModule1 = class(TWebModule)
    SQLConnection1: TSQLConnection;
    tbMaterial: TSQLDataSet;
    SQLGeral: TSQLQuery;
    SQLInclui: TSQLQuery;
    SQLAltera: TSQLQuery;
    SQLExclui: TSQLQuery;
    PPClientes: TDataSetTableProducer;
    procedure PPClientesFormatCell(Sender: TObject; CellRow,
      CellColumn: Integer; var BgColor: THTMLBgColor;
      var Align: THTMLAlign; var VAlign: THTMLVAlign; var CustomAttrs,
      CellData: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModule1: TWebModule1;

implementation

{$R *.xfm}

procedure TWebModule1.PPClientesFormatCell(Sender: TObject; CellRow,
  CellColumn: Integer; var BgColor: THTMLBgColor; var Align: THTMLAlign;
  var VAlign: THTMLVAlign; var CustomAttrs, CellData: String);
begin
if (CellRow>0) and (CellColumn=2) then
CellData:='<a href="altera?codigo='+tbMaterial.FieldByName('CODIGOGRUPO').AsString+   '"><img src="\imagens\altera.gif" border=0> </a>';
 if (CellRow>0) and (CellColumn=3) then
 CellData:='<a href="exclui?codigo='+tbMaterial.FieldByName('CODIGOGRUPO').AsString+   '"><img src="\imagens\elimina.gif" border=0></a>';
end;

end.
