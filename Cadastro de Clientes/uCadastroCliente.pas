unit uCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, DBCtrls, ImgList, DB,
  Menus;

type
  TfrmCadastroCliente = class(TForm)
    pnlBotoes: TPanel;
    dbnRegistro: TDBNavigator;
    pnlOrdemPesquisaClienteFiltro: TPanel;
    rgOrdem: TRadioGroup;
    grpPesquisa: TGroupBox;
    rbCodigoPesq: TRadioButton;
    rbDescricaoPesq: TRadioButton;
    edtPesquisa: TEdit;
    grpFiltro: TGroupBox;
    lblDe: TLabel;
    btnFiltro: TSpeedButton;
    lblAte: TLabel;
    rbCodigoFiltro: TRadioButton;
    rbDescricaoFiltro: TRadioButton;
    edtDe: TEdit;
    edtAte: TEdit;
    pgcClienteAbas: TPageControl;
    tbsCliente: TTabSheet;
    tbsTabela: TTabSheet;
    mmuCadastro: TMainMenu;
    mmuArquivo: TMenuItem;
    mmuArqSair: TMenuItem;
    mmuRegistro: TMenuItem;
    mmuRegPrimeiro: TMenuItem;
    mmuRegAnterior: TMenuItem;
    mmuRegPosterior: TMenuItem;
    mmuRegUltimo: TMenuItem;
    mmuRegSeparador1: TMenuItem;
    mmuRegIncluir: TMenuItem;
    mmuRegExcluir: TMenuItem;
    mmuRegAlterar: TMenuItem;
    mmuRegSeparador2: TMenuItem;
    mmuRegSalvar: TMenuItem;
    mmuRegCancelar: TMenuItem;
    mmuRegAtualizar: TMenuItem;
    mmuRegSeparador3: TMenuItem;
    mmuRegOrdenar: TMenuItem;
    mmuRegFiltrar: TMenuItem;
    mmuRegPesquisar: TMenuItem;
    mmuRegSeparador4: TMenuItem;
    mmuRegRelatorio: TMenuItem;
    dsRegistro: TDataSource;
    imglAbas: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

end.
