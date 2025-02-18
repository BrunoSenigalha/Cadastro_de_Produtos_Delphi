unit uPesquisaCodBarras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, uGerenciarProduto,
  uGerenciaGrupos, uGerenciaMarcas;

type
  TfrmPesquisaCodBarras = class(TForm)
    Panel1: TPanel;
    ed_buscarcodbarras: TEdit;
    lbDescricao: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnBuscar: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure ed_buscarcodbarrasKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaCodBarras: TfrmPesquisaCodBarras;

implementation

{$R *.dfm}

uses uConexoes, uCadastroProdutosReformulado;

procedure TfrmPesquisaCodBarras.btnBuscarClick(Sender: TObject);
var
  IDGrupo, IDMarca: integer;
  Inativo : boolean;
begin
 with dmConexoes do
   begin
    if not qrProdutos.locate('CodBarras', ed_buscarcodbarras.Text,[]) then
      Application.MessageBox('Produto n�o localizado', 'AVISO', MB_OK+MB_ICONINFORMATION)
    else
     begin
       with CadastroProdutosRef do
       begin
         ed_codbarras.Text   := qrProdutos.FieldByName('CodBarras').AsString;
         ed_descricao.Text   := qrProdutos.FieldByName('ProdDescricao').AsString;
         ed_preco.Text       := qrProdutos.FieldByName('ProdPreco').AsString;
         ed_quantidade.Text  := qrProdutos.FieldByName('ProdQuantidade').AsString;
         IDGrupo             := dsProdutos.DataSet.FieldByName('ProdGrupo').AsInteger;
         dbCBGrupo.Text      := uGerenciaGrupos.BuscarDescricaoGrupo(IDGrupo);

         IDMarca             := dsProdutos.DataSet.FieldByName('ProdMarca').AsInteger;
         dbCBMarca.Text      := uGerenciaMarcas.BuscarDescricaoMarca(IDMarca);

         Inativo             := dsProdutos.DataSet.FieldByName('ProdInativo').AsBoolean;

         if Inativo then
          begin
            DBCheckBoxInativo.State := cbChecked;
          end
          else
          begin
            DBCheckBoxInativo.State := cbUnchecked;
          end;
       end;
       frmPesquisaCodBarras.Close;
     end;
   end;
end;

procedure TfrmPesquisaCodBarras.btnCancelarClick(Sender: TObject);
begin
  frmPesquisaCodBarras.Close;
end;

procedure TfrmPesquisaCodBarras.ed_buscarcodbarrasKeyPress(Sender: TObject;
  var Key: Char);
begin
  CadastroProdutosRef.ValidarEntradaNumerica(Key);
end;

end.
