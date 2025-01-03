unit uConexoes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmConexoes = class(TDataModule)
    SQLServerConnection: TADOConnection;
    qrProdutos: TADOQuery;
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