unit uGerenciarProduto;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Data.Win.ADODB, Data.DB, uConexoes;

procedure InserirProdutos(codBarras, descricao, grupo, marca: String;
  preco: Double; quantidade: Integer);

implementation
  procedure InserirProdutos(codBarras, descricao, grupo, marca: String;
  preco: Double; quantidade: Integer);
  begin
     with dmConexoes do
      begin
         qrProdutos.Close;
         qrProdutos.SQL.Clear;
         qrProdutos.SQL.Text:= 'INSERT INTO PRODUTOS(CODBARRAS, PRODDESCRICAO, PRODGRUPO,' +
         'PRODMARCAS, PRODPRECO, PRODQUANTIDADE) VALUES (:codBarras, :descricao, :grupo, :marca, ' +
         ':preco, :quantidade)';
         qrProdutos.Parameters.ParamByName('codBarras').Value:= codBarras;
         qrProdutos.Parameters.ParamByName('descricao').Value:= descricao;
         qrProdutos.Parameters.ParamByName('grupo').Value:= grupo;
         qrProdutos.Parameters.ParamByName('marca').Value:= marca;
         qrProdutos.Parameters.ParamByName('preco').Value:= preco;
         qrProdutos.Parameters.ParamByName('quantidade').Value:= quantidade;
         qrProdutos.ExecSQL;
      end;
  end;
end.
