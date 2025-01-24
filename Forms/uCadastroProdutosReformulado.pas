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
    btnSair: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnNovo: TSpeedButton;
    ed_codbarras: TEdit;
    lbCodBarras: TLabel;
    ed_descricao: TEdit;
    lbDescricao: TLabel;
    lb_grupo: TLabel;
    lb_marca: TLabel;
    Label4: TLabel;
    ed_preco: TEdit;
    Label5: TLabel;
    ed_quantidade: TEdit;
    dbCBGrupo: TDBComboBox;
    dbCBMarca: TDBComboBox;
    DBCheckBoxInativo: TDBCheckBox;
    btnBuscar: TSpeedButton;
    Panel1: TPanel;
    procedure CarregarComboBoxGrupos;
    procedure CarregarComboBoxMarcas;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoMouseEnter(Sender: TObject);
    procedure btnNovoMouseLeave(Sender: TObject);

  private
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




procedure TCadastroProdutosRef.FormCreate(Sender: TObject);
var
  IDGrupo: integer;
  IDMarca: integer;
begin
  CarregarComboBoxGrupos();
  CarregarComboBoxMarcas();

  with dmConexoes do
  begin
    uGerenciarProduto.CarregaProdutos();

    ed_codbarras.Text   := dsProdutos.DataSet.FieldByName('CodBarras').AsString;
    ed_descricao.Text   := dsProdutos.DataSet.FieldByName('ProdDescricao').AsString;
    ed_preco.Text       := dsProdutos.DataSet.FieldByName('ProdPreco').AsString;
    IDGrupo             := dsProdutos.DataSet.FieldByName('ProdGrupo').AsInteger;
    dbCBGrupo.Text      := uGerenciaGrupos.BuscarDescricaoGrupo(IDGrupo);
    IDMarca             := dsProdutos.DataSet.FieldByName('ProdMarca').AsInteger;
    dbCBMarca.Text      := uGerenciaMarcas.BuscarDescricaoMarca(IDMarca);
    ed_quantidade.Text  := dsProdutos.DataSet.FieldByName('ProdQuantidade').AsString;
  end;
end;

procedure TCadastroProdutosRef.CarregarComboBoxGrupos;
begin
  with dmConexoes do
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

end;

procedure TCadastroProdutosRef.CarregarComboBoxMarcas;
begin
  with dmConexoes do
  begin
     dbCBMarca.Items.Clear;

    dsMarcas.DataSet.First;

    while not dsMarcas.DataSet.Eof do
      begin
        dbCBMarca.Items.Add(dsMarcas.DataSet.FieldByName('MarcaDescricao').AsString);
        dsMarcas.DataSet.Next;
      end;
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





procedure TCadastroProdutosRef.btnNovoMouseEnter(Sender: TObject);
begin
  Panel1.Color := $00716A6A;
end;

procedure TCadastroProdutosRef.btnNovoMouseLeave(Sender: TObject);
begin
  Panel1.Color := $00333333;
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
        Application.MessageBox('Preencher o c�digo de Barras', 'Aviso', MB_OK+MB_ICONERROR);
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

procedure TCadastroProdutosRef.btnSairClick(Sender: TObject);
begin
  Close;
end;
end.
