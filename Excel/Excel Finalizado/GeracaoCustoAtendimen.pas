unit GeracaoCustoAtendimen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, FMTBcd, Mask, DBCtrls, Grids,
  DBGrids, DB, SqlExpr, DBClient, Provider, UNMD_uDSDataProvider, FileCtrl;

type
  TfrGeracaoCustoAtendimento = class(TForm)
    dspPesquisaAtendimento: TDataSetProvider;
    cdsPesquisaAtendimento: TClientDataSet;
    SQLPesquisaAtendimento: TSQLQuery;
    dsAtendimento: TDataSource;
    cdsAtendimentos: TClientDataSet;
    cdsExtracao: TClientDataSet;
    dsExtracao: TDataSource;
    SQLExtracao: TSQLQuery;
    dspExtracao: TDataSetProvider;
    cdsAtendimentosCODIGOATENDIMENTO: TIntegerField;
    cdsAtendimentosNOMEPRONTUARIO: TStringField;
    cdsPesquisaAtendimentoCODIGOATENDIMENTO: TIntegerField;
    cdsPesquisaAtendimentoNOME: TStringField;
    GroupBox1: TGroupBox;
    spProcurarAtendimento: TSpeedButton;
    spCarregarAtendimento: TSpeedButton;
    txtCodigoAtendimento: TStaticText;
    edtCodigoAtendimento: TEdit;
    txtNomeProntuario: TStaticText;
    edtNomeProntuario: TEdit;
    GroupBox2: TGroupBox;
    grdpesquisaAtendimento: TDBGrid;
    imgCancelar: TImage;
    btnCancelar: TSpeedButton;
    btnOk: TSpeedButton;
    GroupBox3: TGroupBox;
    DBText1: TDBText;
    cdsAtendimentosTOTALITENS: TAggregateField;
   procedure btnOkClick(Sender: TObject);
   procedure btnCancelarClick(Sender: TObject);
   procedure spProcurarAtendimentoClick(Sender: TObject);
   procedure spCarregarAtendimentoClick(Sender: TObject);
   procedure edtCodigoAtendimentoKeyPress(Sender: TObject; var Key: Char);
   procedure FormKeyPress(Sender: TObject; var Key: Char);
   procedure grdpesquisaAtendimentoKeyPress(Sender: TObject; var Key: Char);
   procedure PesquisaAtendimento( Codigoatendimento :Integer =0);
   procedure edtCodigoAtendimentoExit(Sender: TObject);
   procedure grdpesquisaAtendimentoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
   procedure grdpesquisaAtendimentoCellClick(Column: TColumn);
   procedure FormShow(Sender: TObject);
   procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
   { Private declarations }
  public
   { Public declarations }
  end;

var
  frGeracaoCustoAtendimento: TfrGeracaoCustoAtendimento;

implementation

uses
  dmprincipal, uGeracaoCustoAtendimentoFuncoes, PesquisaAtendimento,
  ContaPaciente;

{$R *.dfm}

{ TfrGeracaoCustoAtendimento }

procedure TfrGeracaoCustoAtendimento.btnOkClick(Sender: TObject);
var vExcel : TfrGeracaoCustoAtendimentoFuncoes;
  chosenDirectory : string;
begin

  Try
    btnOk.Enabled := False;
    if (not cdsPesquisaAtendimento.IsEmpty) then begin

       if (not (cdsAtendimentos.IsEmpty)) then begin

          if selectdirectory('Select a directory', 'C:\', chosenDirectory) then begin
             cdsAtendimentos.First;

            while (not cdsAtendimentos.Eof) do begin
              vExcel := TfrGeracaoCustoAtendimentoFuncoes.Create(Self);
              vExcel.diretorioSalvar := chosenDirectory;
              cdsExtracao.Active := false;
              SQLExtracao.ParamByName('CODIGOATENDIMENTO').AsInteger := cdsAtendimentosCODIGOATENDIMENTO.AsInteger;
              cdsExtracao.Active := true;
              vExcel.CodigoAtendimento := cdsAtendimentosCODIGOATENDIMENTO.AsString;
              vExcel.NomeProntuario    := cdsAtendimentosNOMEPRONTUARIO.AsString;
              vExcel.ExportaExcel;
              vExcel.Free;
              cdsAtendimentos.Edit;
              cdsAtendimentos.Post;
              cdsAtendimentos.Next;
            end;
          MessageDlg('Arquivos gerados com sucesso!', mtInformation, [mbOK], 0);
         end;
       end else begin
         MessageDlg('A lista de Atendimentos está vazia!', mtInformation, [mbOK], 0);
       end;
    end else begin
      MessageDlg('A lista de Atendimentos está vazia!', mtInformation, [mbOK], 0);
    end;
    btnOk.Enabled := True;
  except
    btnOk.Enabled := True;
  end;

end;

procedure TfrGeracaoCustoAtendimento.btnCancelarClick(Sender: TObject);
begin
  Close;
end;


procedure TfrGeracaoCustoAtendimento.spProcurarAtendimentoClick(
Sender: TObject);
var  vNomePacienteVisualizado : String;
  vContaPaciente : TfrContaPaciente;
begin
    vContaPaciente := TfrContaPaciente.Create(Self);
    vNomePacienteVisualizado := Trim(vContaPaciente.cdsNOME.AsString);
    vContaPaciente.spContasComplementares.visible := False;

    edtCodigoAtendimento.Clear;
    edtCodigoAtendimento.SetFocus;
    vContaPaciente.plStatus.Caption := '';

    Try
      frPesquisaAtendimento := TfrPesquisaAtendimento.Create(Self);
      If (vNomePacienteVisualizado <> '') Then Begin
          frPesquisaAtendimento.NomePesquisarAutomaticamente := vNomePacienteVisualizado;
      End;
      If (frPesquisaAtendimento.ShowModal = mrOK) Then Begin
          edtCodigoAtendimento.Text := frPesquisaAtendimento.DBGrid2.Fields[0].Text;
          edtNomeProntuario.Text := frPesquisaAtendimento.DBGrid1.Fields[1].Text;
      End;
    Finally
      frPesquisaAtendimento.update;
      frPesquisaAtendimento.Free;
      frPesquisaAtendimento := Nil;
    End;
end;


procedure TfrGeracaoCustoAtendimento.spCarregarAtendimentoClick(
Sender: TObject);
begin
    if ((edtCodigoAtendimento.Text <> EmptyStr) and (not(StrToIntDef(edtCodigoAtendimento.Text, 0) = 0))) then begin
      PesquisaAtendimento(StrToInt(edtCodigoAtendimento.Text));
        if (cdsPesquisaAtendimento.RecordCount > 0) then begin
          cdsAtendimentos.Insert;
          cdsAtendimentosCODIGOATENDIMENTO.AsInteger := StrToInt(edtCodigoAtendimento.Text);
          cdsAtendimentosNOMEPRONTUARIO.AsString := edtNomeProntuario.Text;
          cdsAtendimentos.Post;
          edtCodigoAtendimento.Clear;
          edtNomeProntuario.Clear;
        end else begin
      //MessageDlg('Insira o Atendimento', mtInformation, [mbOK], 0);
      edtCodigoAtendimento.Text := EmptyStr;
      edtNomeProntuario.Text := EmptyStr;
    end;
  end;
end;


procedure TfrGeracaoCustoAtendimento.edtCodigoAtendimentoKeyPress(
Sender: TObject; var Key: Char);
begin
    If (Key <> Char(8)) Then Begin
      if Key <> #22 then begin
        If (Not (Key In ['0'..'9'])) Then Key:= #0;
      end;
    End;
end;



procedure TfrGeracaoCustoAtendimento.FormKeyPress(Sender: TObject;
var Key: Char);
begin
  if key=#13 then begin
    SelectNext(ActiveControl as TWinControl,True,True);
    key:=#0;
  end;
end;

procedure TfrGeracaoCustoAtendimento.grdpesquisaAtendimentoKeyPress(
Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    grdpesquisaAtendimento.Perform(WM_KEYDOWN, VK_TAB, 0);
  end;
end;

procedure TfrGeracaoCustoAtendimento.PesquisaAtendimento(Codigoatendimento: Integer);
begin
   cdsPesquisaAtendimento.Active := False;
   SQLPesquisaAtendimento.SQL.Clear;
   SQLPesquisaAtendimento.SQL.Add('SELECT A.CODIGOATENDIMENTO, P.NOME');
   SQLPesquisaAtendimento.SQL.Add('FROM ATENDIMENTO A');
   SQLPesquisaAtendimento.SQL.Add('INNER JOIN PRONTUARIO P ON P.CODIGOPRONTUARIO = A.CODIGOPRONTUARIO');
   SQLPesquisaAtendimento.SQL.Add('WHERE A.CODIGOATENDIMENTO = '+IntToStr(Codigoatendimento));
   SQLPesquisaAtendimento.SQL.Add('AND A.STATUS IS NULL');
   cdsPesquisaAtendimento.Active := True;
   if (cdsPesquisaAtendimento.RecordCount > 0) then begin
      edtCodigoAtendimento.Text := cdsPesquisaAtendimentoCODIGOATENDIMENTO.AsString;
      edtNomeProntuario.Text := cdsPesquisaAtendimentoNOME.AsString;
   end else begin
    edtCodigoAtendimento.Text := EmptyStr;
    edtNomeProntuario.Text := EmptyStr;
    MessageDlg('Atendimento não encontrado', mtInformation, [mbOK], 0);
   end;
end;

procedure TfrGeracaoCustoAtendimento.edtCodigoAtendimentoExit(
      Sender: TObject);
begin
  if ((edtCodigoAtendimento.Text <> EmptyStr) and (not(StrToIntDef(edtCodigoAtendimento.Text, 0) = 0))) then begin
     PesquisaAtendimento(StrToInt(edtCodigoAtendimento.Text));
  end else begin
      MessageDlg('Insira o Atendimento', mtInformation, [mbOK], 0);
      edtCodigoAtendimento.Clear;
    end;
end;

procedure TfrGeracaoCustoAtendimento.grdpesquisaAtendimentoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   If (NOT cdsPesquisaAtendimento.IsEmpty) Then Begin
         grdpesquisaAtendimento.Canvas.Brush.Color := clWhite;
         grdpesquisaAtendimento.Canvas.Font.Color := clBlack;
         grdpesquisaAtendimento.DefaultDrawColumnCell(Rect,DataCol,Column, State);

      If (Column.FieldName = 'EXCLUIR') Then Begin
          grdpesquisaAtendimento.Canvas.Draw(Rect.left + 2, Rect.Top, imgCancelar.Picture.Bitmap);
      End;
   end;
end;

procedure TfrGeracaoCustoAtendimento.grdpesquisaAtendimentoCellClick(
  Column: TColumn);
begin
   If (NOT cdsPesquisaAtendimento.IsEmpty) then begin
      If ((Column.FieldName = 'EXCLUIR') and (not cdsPesquisaAtendimentoCODIGOATENDIMENTO.IsNull) and (cdsAtendimentosCODIGOATENDIMENTO.AsString <> '')) Then Begin
         If (MessageDlg('Deseja excluir o atendimento [' + cdsAtendimentosCODIGOATENDIMENTO.AsString + ']?', mtInformation, [mbYes,mbNo],1) = mrYes) Then Begin
            cdsAtendimentos.Delete;
         end;
      End;
   End;
end;

procedure TfrGeracaoCustoAtendimento.FormShow(Sender: TObject);
begin
  frGeracaoCustoAtendimento.Height := 318;
end;

procedure TfrGeracaoCustoAtendimento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Key = VK_ESCAPE) then btnCancelar.Click;
end;

end.
