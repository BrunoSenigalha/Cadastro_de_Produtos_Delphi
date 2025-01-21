unit uCadastroProdutosReformulado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, uConexoes, Datasnap.DBClient, uGerenciarProduto,
  Vcl.DBCtrls, System.Math, uValidacaoCampos, uGerenciaGrupos, uGerenciaMarcas;

type
  TCadastroProdutosRef = class(TForm)
    pnButtons: TPanel;
    pnPrincipal: TPanel;
    pnBase: TPanel;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnNovo: TSpeedButton;
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
    TabSheet1: TTabSheet;
    dsProdutos: TDataSource;
    DBGrid1: TDBGrid;
    dbCBGrupo: TDBComboBox;
    dsGrupos: TDataSource;
    dsMarcas: TDataSource;
    dbCBMarca: TDBComboBox;
    DBCheckBoxInativo: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure CarregarComboBoxGrupos;
    procedure CarregarComboBoxMarcas;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    procedure CarregaGrid();
    procedure LimparCampos();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroProdutosRef: TCadastroProdutosRef;

implementation

{$R *.dfm}
procedure TCadastroProdutosRef.LimparCampos();
begin
  ed_codbarras.Text  := '';
  ed_descricao.Text  := '';
  ed_preco.Text      := '';
  ed_quantidade.Text := '';
end;

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


  dsGrupos.DataSet.First;

  while not dsGrupos.DataSet.Eof do
  begin
    dbCBGrupo.Items.Add(dsGrupos.DataSet.FieldByName('GrupoDescricao').AsString);
    dsGrupos.DataSet.Next;
  end;
end;

procedure TCadastroProdutosRef.CarregarComboBoxMarcas;
begin
  dbCBMarca.Items.Clear;

  dsMarcas.DataSet.First;

  while not dsMarcas.DataSet.Eof do
  begin
    dbCBMarca.Items.Add(dsMarcas.DataSet.FieldByName('MarcaDescricao').AsString);
    dsMarcas.DataSet.Next;
  end;
end;

procedure TCadastroProdutosRef.btnExcluirClick(Sender: TObject);
begin
  with dmConexoes do
  begin
    if Application.MessageBox('Deseja Excluir?', 'Aviso',MB_YESNO+MB_ICONQUESTION) = 6 then
     begin
        uGerenciarProduto.ExcluirProduto(ed_codbarras.Text);

        if not qrProdutos.IsEmpty then
        begin
          qrProdutos.Delete;
          LimparCampos();
        end;
     end;
  end;
end;

procedure TCadastroProdutosRef.btnNovoClick(Sender: TObject);
begin
  with dmConexoes do
  begin
    LimparCampos();
    qrProdutos.Insert;
  end;
end;

procedure TCadastroProdutosRef.btnSalvarClick(Sender: TObject);
var
  idGrupo, idMarca, inativo : Integer;
  descricaoGrupo : string;
begin
  with dmConexoes do
  begin
    if ed_codbarras.Text = '' then
    begin
        Application.MessageBox('Preencher o código de Barras', 'Aviso', MB_OK+MB_ICONERROR);
        Exit;
    end;

    idGrupo := uGerenciaGrupos.BuscaGrupo(dbCBGrupo.Text);
    idMarca := uGerenciaMarcas.BuscaMarca(dbCBMarca.Text);
    inativo := IfThen(DBCheckBoxInativo.State = cbChecked, 1, 0);

    try
      uGerenciarProduto.SalvarProdutos(ed_codbarras.Text, ed_descricao.Text, StrToFloat(ed_preco.Text),
        idGrupo, idMarca, StrToInt(ed_quantidade.Text), inativo);

    except
      on E: Exception do
      begin
        Application.MessageBox ('Erro ao cadastrar produto!',  'AVISO', MB_OK+MB_ICONERROR);
        ShowMessage(E.message);
      end;
    end;
  end;
end;
end.
