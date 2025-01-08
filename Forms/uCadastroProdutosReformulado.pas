unit uCadastroProdutosReformulado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, uConexoes, Datasnap.DBClient;

type
  TCadastroProdutosRef = class(TForm)
    pnButtons: TPanel;
    pnPrincipal: TPanel;
    pnBase: TPanel;
    pnPesquisar: TPanel;
    btnPesquisar: TSpeedButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox3: TComboBox;
    Edit2: TEdit;
    Label3: TLabel;
    pnBotaoPesquisar: TPanel;
    Panel2: TPanel;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnNovo: TSpeedButton;
    btnLimparCampos: TSpeedButton;
    ed_codbarras: TEdit;
    PageControl1: TPageControl;
    lbCodBarras: TLabel;
    ed_descricao: TEdit;
    lbDescricao: TLabel;
    lb_grupo: TLabel;
    ComboBox4: TComboBox;
    lb_marca: TLabel;
    ComboBox5: TComboBox;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    TabSheet1: TTabSheet;
    dsProdutos: TDataSource;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroProdutosRef: TCadastroProdutosRef;

implementation

{$R *.dfm}

end.