unit uConexoes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmConexoes = class(TDataModule)
    SQLServerConnection: TADOConnection;
    qrProdutos: TADOQuery;
    qrGrupos: TADOQuery;
    qrGruposIDGrupo: TIntegerField;
    qrGruposGrupoDescricao: TStringField;
    qrGruposGrupoMaior18: TBooleanField;
    qrGruposGrupoInativo: TBooleanField;
    qrProdutosIDProduto: TAutoIncField;
    qrProdutosCodBarras: TStringField;
    qrProdutosProdDescricao: TStringField;
    qrProdutosProdGrupo: TIntegerField;
    qrProdutosProdMarca: TIntegerField;
    qrProdutosProdPreco: TBCDField;
    qrProdutosProdQuantidade: TIntegerField;
    qrProdutosProdInativo: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexoes: TdmConexoes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
