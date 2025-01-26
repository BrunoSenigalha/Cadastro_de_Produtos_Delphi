unit uConexoes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmConexoes = class(TDataModule)
    SQLServerConnection: TADOConnection;
    qrProdutos: TADOQuery;
    qrGrupos: TADOQuery;
    qrProdutosIDProduto: TAutoIncField;
    qrProdutosCodBarras: TStringField;
    qrProdutosProdDescricao: TStringField;
    qrProdutosProdGrupo: TIntegerField;
    qrProdutosProdMarca: TIntegerField;
    qrProdutosProdPreco: TBCDField;
    qrProdutosProdQuantidade: TIntegerField;
    qrProdutosProdInativo: TBooleanField;
    qrMarcas: TADOQuery;
    qrGruposIDGrupo: TAutoIncField;
    qrGruposGrupoDescricao: TStringField;
    qrGruposGrupoMaior18: TBooleanField;
    qrGruposGrupoInativo: TBooleanField;
    qrComando: TADOQuery;
    qrProdutosGrid: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    BCDField1: TBCDField;
    IntegerField3: TIntegerField;
    BooleanField1: TBooleanField;
    dsGrupos: TDataSource;
    dsMarcas: TDataSource;
    dsProdutos: TDataSource;
    qrMarcasIDMarca: TAutoIncField;
    qrMarcasMarcaDescricao: TStringField;
    qrMarcasMarcaInativa: TBooleanField;
    qrBuscaProdutos: TADOQuery;
    qrBuscaProdutosIDProduto: TAutoIncField;
    qrBuscaProdutosCodBarras: TStringField;
    qrBuscaProdutosProdDescricao: TStringField;
    qrBuscaProdutosProdGrupo: TIntegerField;
    qrBuscaProdutosProdMarca: TIntegerField;
    qrBuscaProdutosProdPreco: TBCDField;
    qrBuscaProdutosProdQuantidade: TIntegerField;
    qrBuscaProdutosProdInativo: TBooleanField;
    dsBuscaProdutos: TDataSource;
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
