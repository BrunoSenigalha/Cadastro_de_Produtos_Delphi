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

      end;
  end;
end.
