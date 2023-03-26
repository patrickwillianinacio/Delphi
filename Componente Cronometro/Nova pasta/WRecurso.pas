unit WRecurso;

interface

uses
  SysUtils, Classes;

type
  TWRecurso = class(TComponent)
  private
    { Private declarations }
    FFileName: String;
    FDados: TMemoryStream;
  protected
    { Protected declarations }
    procedure SetFileName (AFileName: String);
    procedure DefineProperties(Filer: TFiler);
    procedure LoadDadosProperty(Reader: TStream);
    procedure StoreDadosProperty(Writer: TStream);
  public
    { Public declarations }
    property Dados: TMemoryStream read FDados;
  published
    { Published declarations }
    property FileName: String read FFileName write SetFileName;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('ACTIVEDELPHI', [TWRecurso]);
end;

{ TWRecurso }

procedure TWRecurso.SetFileName(AFileName: String);
 begin
    if FileName <> AFileNAme then begin
       FFileName := AFileName;
       FDados.Clear;
      if (FileExists (AFileName) ) then
          FDados.LoadFromFile(AFileName);
      end;
 end;

procedure TWRecurso.DefineProperties(Filer: TFiler);
 function DeveGravar: Boolean;
  begin
      Result := (FDados.Size > 0);
  end;
 begin
  inherited;
   Filer.DefineBinaryProperty('Dados', LoadDadosProperty, StoreDadosProperty, DeveGravar);
 end;

procedure TWRecurso.LoadDadosProperty(Reader: TStream);
 var lSize : Int64;
 begin
   FDados.Clear;
   Reader.Read(lSize, sizeof (lSize));
   FDados.CopyFrom (Reader, lSize);
 end;

procedure TWRecurso.StoreDadosProperty(Writer: TStream);
 var lSize : Int64;
 begin
   FDados.Position := 0;
   lSize := FDados.Size;
   Writer.Write(lSize, sizeof (lSize));
   Writer.CopyFrom(FDados, FDados.Size);
 end;

end.
 