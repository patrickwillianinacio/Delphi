unit uExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfrmExcel = class(TForm)
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    edtAtendimento: TEdit;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmExcel: TfrmExcel;
  bolLogin: Boolean = false;

implementation

uses uLogin, uGeracaoExcel, uDTM;

{$R *.dfm}

procedure TfrmExcel.btnOkClick(Sender: TObject);
var xExcel : TfrmGeracaoExcel;
    vAtedimentos: TStringList;
    i: Integer;
begin
   try
      btnOk.Enabled := false;

       { vAtedimentos := TStringlist.create;
        vAtedimentos.Add('2239082');
        vAtedimentos.Add('2237623');
        vAtedimentos.Add('2239014');
        vAtedimentos.Add('2241389');
        vAtedimentos.Add('2235073');
        vAtedimentos.Add('2239947');
        vAtedimentos.Add('2239953');
        vAtedimentos.Add('2242427');
        vAtedimentos.Add('2233125');
        vAtedimentos.Add('2237901');
        vAtedimentos.Add('2239792');
        vAtedimentos.Add('2238848');
        vAtedimentos.Add('2235112');
        vAtedimentos.Add('2240887');
        vAtedimentos.Add('2241577');
        vAtedimentos.Add('2237611');
        vAtedimentos.Add('2239521');
        vAtedimentos.Add('2237941');
        vAtedimentos.Add('2238107');
        vAtedimentos.Add('2238754');
        vAtedimentos.Add('2235412');
        vAtedimentos.Add('2236674');
        vAtedimentos.Add('2242342');
        vAtedimentos.Add('2242292');
        vAtedimentos.Add('2238825');
        vAtedimentos.Add('2232694');
        vAtedimentos.Add('2238128');
        vAtedimentos.Add('2240180');
        vAtedimentos.Add('2241967');
        vAtedimentos.Add('2234710');
        vAtedimentos.Add('2241434');
        vAtedimentos.Add('2240394');
        vAtedimentos.Add('2240917');
        vAtedimentos.Add('2240899');
        vAtedimentos.Add('2242590');
        vAtedimentos.Add('2240117');
        vAtedimentos.Add('2236535');
        vAtedimentos.Add('2241548');
        vAtedimentos.Add('2234534');
        vAtedimentos.Add('2233957');
        vAtedimentos.Add('2241154');
        vAtedimentos.Add('2241343');
        vAtedimentos.Add('2239291');
        vAtedimentos.Add('2241588');
        vAtedimentos.Add('2241918');
        vAtedimentos.Add('2233084');
        vAtedimentos.Add('2235105');
        vAtedimentos.Add('2236606');
        vAtedimentos.Add('2238463');
        vAtedimentos.Add('2236832');
        vAtedimentos.Add('2236609');
        vAtedimentos.Add('2241508');
        vAtedimentos.Add('2238316');
        vAtedimentos.Add('2241250');
        vAtedimentos.Add('2233900');
        vAtedimentos.Add('2235264');
        vAtedimentos.Add('2237688');
        vAtedimentos.Add('2238743');
        vAtedimentos.Add('2237977');
        vAtedimentos.Add('2236119');
        vAtedimentos.Add('2236211');
        vAtedimentos.Add('2232028');
        vAtedimentos.Add('2238059');
        vAtedimentos.Add('2236170');
        vAtedimentos.Add('2241750');
        vAtedimentos.Add('2237288');
        vAtedimentos.Add('2242281');
        vAtedimentos.Add('2237471');
        vAtedimentos.Add('2232366');
        vAtedimentos.Add('2235904');
        vAtedimentos.Add('2234097');
        vAtedimentos.Add('2237885');
        vAtedimentos.Add('2235452');
        vAtedimentos.Add('2236797');
        vAtedimentos.Add('2241902');
        vAtedimentos.Add('2236302');
        vAtedimentos.Add('2233152');
        vAtedimentos.Add('2239817');
        vAtedimentos.Add('2239246');
        vAtedimentos.Add('2236801');
        vAtedimentos.Add('2241922');
        vAtedimentos.Add('2239767');
        vAtedimentos.Add('2236461');
        vAtedimentos.Add('2236611');
        vAtedimentos.Add('2242171');
        vAtedimentos.Add('2241420');
        vAtedimentos.Add('2240133');
        vAtedimentos.Add('2193614');

         for i := 0 to vAtedimentos.Count-1 do begin
           xExcel := TfrmGeracaoExcel.create(Self);
           xExcel.CodigoAtendimento := vAtedimentos[i];
           DTMexcel.SQLQueryExcel.Active := false;
           DTMexcel.ClientDataSetExcel.Active := False;
           DTMexcel.SQLQueryExcel.ParamByName('CODIGOATENDIMENTO').asString := vAtedimentos[i];
           DTMexcel.ClientDataSetExcel.Active := True;
           DTMexcel.SQLQueryExcel.Active := true;
          xExcel.ExportaExcel;
          xExcel.Free;
         end;}

      if (Trim(edtAtendimento.Text) <> '') and not(StrToIntDef(edtAtendimento.Text, 0) = 0) then begin
         xExcel := TfrmGeracaoExcel.create(Self);
         xExcel.CodigoAtendimento := edtAtendimento.Text;
         DTMexcel.SQLQueryExcel.Active := false;
         DTMexcel.ClientDataSetExcel.Active := False;
         DTMexcel.SQLQueryExcel.ParamByName('CODIGOATENDIMENTO').AsInteger := StrtoInt(edtAtendimento.Text);
         DTMexcel.ClientDataSetExcel.Active := True;
         DTMexcel.SQLQueryExcel.Active := true;


         if not(DTMexcel.SQLQueryExcel.IsEmpty) then begin
            xExcel.ExportaExcel;
            xExcel.Free;
            frmGeracaoExcel.Close;
         end else begin
            SHowMessage('Atendimento n�o existe ou n�o h� itens na conta');
            edtAtendimento.Clear;
            edtAtendimento.SetFocus;
         end;
      end else begin
         SHowMessage('Digite um Atendimento v�lido');
         edtAtendimento.Clear;
         edtAtendimento.SetFocus;
      end;
      btnOk.Enabled := true;
   except
      btnOk.Enabled := true;
   end;

end;

procedure TfrmExcel.btnCancelarClick(Sender: TObject);
begin
   Close;
end;


procedure TfrmExcel.FormShow(Sender: TObject);
begin
  Try
     frmLogin := TfrmLogin.create(Self);
     frmLogin.ShowModal;
      
  finally
     frmLogin.UpDate;
     frmLogin.Free;
     frmLogin := Nil;
  end;

end;

end.
