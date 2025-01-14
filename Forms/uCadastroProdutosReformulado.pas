unit uCadastroProdutosReformulado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, uConexoes, Datasnap.DBClient, uGerenciarProduto,
  Vcl.DBCtrls, System.Math;

type
  TCadastroProdutosRef = class(TForm)
    pnButtons: TPanel;
    pnPrincipal: TPanel;
    pnBase: TPanel;
    pnPesquisar: TPanel;
    btnPesquisar: TSpeedButton;
    cbFiltro: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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
    lb_marca: TLabel;
    Label4: TLabel;
    ed_preco: TEdit;
    Label5: TLabel;
    ed_quantidade: TEdit;
    Label6: TLabel;
    TabSheet1: TTabSheet;
    dsProdutos: TDataSource;
    DBGrid1: TDBGrid;
    dbCBGrupo: TDBComboBox;
    dsGrupos: TDataSource;
    dsMarcas: TDataSource;
    dbCBMarca: TDBComboBox;
    dbCBGrupoPesquisar: TDBComboBox;
    dbCBMarcaPesquisar: TDBComboBox;
    DBCheckBoxInativo: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure CarregarComboBoxGrupos;
    procedure CarregarComboBoxMarcas;
    procedure FormCreate(Sender: TObject);
    function BuscaGrupo(const Grupo: String): Integer;
    function BuscaMarca(const Marca: String): Integer;
    procedure btnSalvarClick(Sender: TObject);
  private
    procedure CarregaGrid();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroProdutosRef: TCadastroProdutosRef;

implementation

{$R *.dfm}
procedure TCadastroProdutosRef.CarregaGrid();
begin
  with dmConexoes do
  begin
    qrProdutosGrid.Close;
    qrProdutosGrid.SQL.Clear;
    qrProdutosGrid.SQL.Add('SELECT * FROM PRODUTOS');
    qrProdutosGrid.Open;
    qrProdutosGrid.First;


  end;
end;

procedure TCadastroProdutosRef.FormCreate(Sender: TObject);
begin
  CarregarComboBoxGrupos();
  CarregarComboBoxMarcas();
end;

procedure TCadastroProdutosRef.FormShow(Sender: TObject);
begin
   CarregaGrid();
end;

procedure TCadastroProdutosRef.CarregarComboBoxGrupos;
begin
  if not dsGrupos.DataSet.Active then
   dsGrupos.DataSet.Open;

   dbCBGrupo.Items.Clear;
   dbCBGrupoPesquisar.Items.Clear;

  dsGrupos.DataSet.First;

  while not dsGrupos.DataSet.Eof do
  begin
    dbCBGrupo.Items.Add(dsGrupos.DataSet.FieldByName('GrupoDescricao').AsString);
    dbCBGrupoPesquisar.Items.Add(dsGrupos.DataSet.FieldByName('GrupoDescricao').AsString);
    dsGrupos.DataSet.Next;
  end;
end;

procedure TCadastroProdutosRef.CarregarComboBoxMarcas;
begin
  dbCBMarca.Items.Clear;
  dbCBMarcaPesquisar.Items.Clear;

  dsMarcas.DataSet.First;

  while not dsMarcas.DataSet.Eof do
  begin
    dbCBMarca.Items.Add(dsMarcas.DataSet.FieldByName('MarcaDescricao').AsString);
    dbCBMarcaPesquisar.Items.Add(dsMarcas.DataSet.FieldByName('MarcaDescricao').AsString);
    dsMarcas.DataSet.Next;
  end;
end;

procedure TCadastroProdutosRef.btnSalvarClick(Sender: TObject);
var
  idGrupo : Integer;
  idMarca : Integer;
  descricaoGrupo : string;
begin

  with dmConexoes do
  begin
    if ed_codbarras.Text = '' then
    begin
        Application.MessageBox('Preencher o c�digo de Barras', 'Aviso', MB_OK+MB_ICONERROR);
        Exit;
    end;

    qrProdutos.Close;
    qrProdutos.SQL.Clear;
    qrProdutos.SQL.Add('SELECT * FROM PRODUTOS WHERE CodBarras = :pCodBarras');
    qrProdutos.Parameters.ParamByName('pCodBarras').Value:= ed_codbarras.Text;
    qrProdutos.Open;

    if qrProdutos.IsEmpty then
    begin
      qrProdutos.Insert;
    end
    else
    begin
      Application.MessageBox('O C�digo de barras j� foi cadastrado!', 'AVISO', MB_OK+MB_ICONWARNING);
      Exit;
    end;

    idGrupo:= BuscaGrupo(dbCBGrupo.Text);
    idMarca:= BuscaMarca(dbCBMarca.Text);

    qrProdutos.FieldByName('CodBarras').Value       :=ed_codbarras.Text;
    qrProdutos.FieldByName('ProdDescricao').Value   :=ed_descricao.Text;
    qrProdutos.FieldByName('ProdGrupo').Value       :=idGrupo;
    qrProdutos.FieldByName('ProdMarca').Value       :=idMarca;
    qrProdutos.FieldByName('ProdPreco').Value       :=StrToFloat(ed_preco.Text);
    qrProdutos.FieldByName('ProdQuantidade').Value  :=StrToInt(ed_quantidade.Text);
    qrProdutos.FieldByName('ProdInativo').Value     :=IfThen(DBCheckBoxInativo.State = cbChecked, 1, 0);
    qrProdutos.Post;

    Application.MessageBox('Produto cadastrado com sucesso!', 'AVISO', MB_OK+MB_ICONINFORMATION);
    dsProdutos.DataSet.Refresh;
    DBGrid1.Refresh;

  end;
end;

function TCadastroProdutosRef.BuscaGrupo(const Grupo: string): Integer;
begin
  with dmConexoes do
  begin
    qrComando.Close;
    qrComando.SQL.Clear;
    qrComando.SQL.Add('select IDGrupo from GRUPOS where GrupoDescricao like :pGrupoDescricao');
    qrComando.Parameters.ParamByName('pGrupoDescricao').Value := Grupo;
    qrComando.Open;

    if not qrComando.IsEmpty then
    begin
      Result:= qrComando.FieldByName('IDGrupo').AsInteger;
    end
    else
    begin
      Result:= -1;
      Application.MessageBox('Grupo n�o encontrado', 'AVISO', MB_OK+MB_ICONERROR);
      Exit
    end;
  end;
end;

function TCadastroProdutosRef.BuscaMarca(const Marca: string): Integer;
begin
  with dmConexoes do
  begin
    qrComando.Close;
    qrComando.SQL.Clear;
    qrComando.SQL.Add('SELECT IDMarca FROM MARCAS WHERE MarcaDescricao Like :pMarcaDescricao');
    qrComando.Parameters.ParamByName('pMarcaDescricao').Value := '%' + Marca + '%' ;
    qrComando.Open;

    if not qrGrupos.IsEmpty then
    begin
      Result:= qrComando.FieldByName('IDMarca').AsInteger;
    end
    else
    begin
      Result:= -1;
      Application.MessageBox('Marca n�o encontrada', 'AVISO', MB_OK+MB_ICONERROR);
      Exit
    end;
  end;
end;

end.
