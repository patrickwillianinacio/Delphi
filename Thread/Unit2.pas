unit Unit2;

interface

uses Classes;

type
   TContador = class(TThread)
   protected
      procedure Execute; override;
 end;

implementation

uses Unit1;



{ TContador }

procedure TContador.Execute;
 var
   contador: integer;
 begin
      Priority:= tpLower;
      Form1.ProgressBar1.Max:= 100000;

       for contador:= 1 to 100000 do
         Form1.ProgressBar1.Position:= contador;

  inherited;

end;

end.
