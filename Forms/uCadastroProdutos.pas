unit uCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Data.Win.ADODB, Data.DB, uGerenciarProduto, uConexoes,
  uValidacaoCampos, System.Generics.Collections;

type
  TfrmCadastroProdutos = class(TForm)
    pnBotoes: TPanel;
    lb_codbarras: TLabel;
    ed_codbarras: TEdit;
    lb_descricao: TLabel;
    ed_descricao: TEdit;
    pnSuperior: TPanel;
    lb_grupo: TLabel;
    ed_grupo: TEdit;
    lb_marca: TLabel;
    ed_marca: TEdit;
    lb_preco: TLabel;
    ed_preco: TEdit;
    lb_quantidade: TLabel;
    ed_quantidade: TEdit;
    sbtn_pesquisar: TSpeedButton;
    sbtn_sair: TSpeedButton;
    sbutton_salvar: TSpeedButton;
    sbutton_incluir: TSpeedButton;
    sbutton_excluir: TSpeedButton;
    sbutton_alterar: TSpeedButton;
    sbutton_cancelar: TSpeedButton;
    pnErros: TPanel;
    lb_erros: TLabel;
    procedure sbutton_incluirClick(Sender: TObject);
    procedure ed_codbarrasKeyPress(Sender: TObject; var Key: Char);
    procedure ed_quantidadeKeyPress(Sender: TObject; var Key: Char);


  private
//     function EhSomenteNumero(const Texto: string):Boolean;
     function ValidarTodosOsCampos: Boolean;
     function CriarListaCampos: TList<TEdit>;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProdutos: TfrmCadastroProdutos;

implementation

{$R *.dfm}


procedure TfrmCadastroProdutos.ed_codbarrasKeyPress(Sender: TObject;
  var Key: Char);
begin
   lb_erros.Caption:= uValidacaoCampos.ValidarEntradaNumerica(Key);
end;

procedure TfrmCadastroProdutos.ed_quantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  lb_erros.Caption:= uValidacaoCampos.ValidarEntradaNumerica(Key);
end;

function TfrmCadastroProdutos.CriarListaCampos: TList<TEdit>;
var
  ListaCampos: TList<TEdit>;
begin
  ListaCampos:= TList<TEdit>.Create;

  ListaCampos.Add(ed_codbarras);
  ListaCampos.Add(ed_descricao);
  ListaCampos.Add(ed_grupo);
  ListaCampos.Add(ed_marca);
  ListaCampos.Add(ed_preco);
  ListaCampos.Add(ed_quantidade);

  Result:= ListaCampos;

end;

function TfrmCadastroProdutos.ValidarTodosOsCampos: Boolean;
var
  ListaCampos: TList<TEdit>;
begin
   try
    ListaCampos:= CriarListaCampos;
    lb_erros.Caption:= uValidacaoCampos.VerificaCampoVazio(ListaCampos);
    if Trim(lb_erros.Caption) = '' then
      Result:= True
    else
      Result:= False;

   finally
    ListaCampos.Free;

   end;
end;

//function TfrmCadastroProdutos.EhSomenteNumero(const Texto: string):Boolean;
//var
//  I: Integer;
//begin
//  Result:= True;
//  for I := 1 to Length(Texto) do
//  begin
//    if not CharInSet(Texto[I], ['0'..'9']) then
//    begin
//      Result:= False;
//      Break;
//    end;
//  end;
//end;

procedure TfrmCadastroProdutos.sbutton_incluirClick(Sender: TObject);
var
  preco: Double;
  quantidade: Integer;
  Preenchido: Boolean;
begin
  lb_erros.Caption:= '';

  Preenchido:= ValidarTodosOsCampos;

  if Preenchido = True then
  begin

   preco:= StrToFloat(ed_preco.Text);
   quantidade:= StrToInt(ed_quantidade.Text);

   try
    uGerenciarProduto.InserirProdutos(ed_codbarras.Text, ed_descricao.Text, ed_grupo.Text,
    ed_marca.Text, preco, quantidade);

      ShowMessage('Produto inserido com sucesso!');
    except
      on E: Exception do
      ShowMessage('Erro ao inserir produto: ' + E.Message);
    end;
  end;

end;
end.