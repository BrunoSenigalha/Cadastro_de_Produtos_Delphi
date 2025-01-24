unit uGerenciarProduto;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Data.Win.ADODB, Data.DB, uConexoes, Winapi.Windows;

procedure SalvarProdutos(codBarras, descricao: String; preco: Double; grupo, marca, quantidade, inativo: Integer);
procedure ExcluirProduto(codBarras : string);

procedure VerificarCodBarras(codBarras: string);
procedure CarregaProdutos;

implementation

procedure VerificarCodBarras(codBarras: string);
begin
  with dmConexoes do
  begin
    qrProdutos.Close;
    qrProdutos.SQL.Clear;
    qrProdutos.SQL.Add('SELECT * FROM PRODUTOS WHERE CodBarras = :pCodBarras');
    qrProdutos.Parameters.ParamByName('pCodBarras').Value:= codBarras;
    qrProdutos.Open;

  end;
end;

procedure SalvarProdutos(codBarras, descricao: String; preco: Double; grupo, marca, quantidade, inativo: Integer);
begin
  with dmConexoes do
  begin
    VerificarCodBarras(codBarras);

     if qrProdutos.IsEmpty then
      begin
        qrProdutos.Insert;
      end
      else
      begin
        Application.MessageBox('O C�digo de barras j� foi cadastrado!', 'AVISO', MB_OK+MB_ICONWARNING);
        Exit;
    end;

    qrProdutos.FieldByName('CodBarras').Value       :=codBarras;
    qrProdutos.FieldByName('ProdDescricao').Value   :=descricao;
    qrProdutos.FieldByName('ProdGrupo').Value       :=grupo;
    qrProdutos.FieldByName('ProdMarca').Value       :=marca;
    qrProdutos.FieldByName('ProdPreco').Value       :=preco;
    qrProdutos.FieldByName('ProdQuantidade').Value  :=quantidade;
    qrProdutos.FieldByName('ProdInativo').Value     :=inativo;
    qrProdutos.Post;


    Application.MessageBox('Produto cadastrado com sucesso!', 'AVISO', MB_OK+MB_ICONINFORMATION);

  end;
end;

procedure ExcluirProduto(codBarras : string);
begin
   with dmConexoes do
   begin
      qrProdutos.Close;
      qrProdutos.SQL.Clear;
      qrProdutos.SQL.Add('SELECT * FROM PRODUTOS WHERE CODBARRAS = :pCodBarras');
      qrProdutos.Parameters.ParamByName('pCodBarras').Value := codBarras;
      qrProdutos.Open;
   end;
end;

procedure CarregaProdutos;
begin
  with dmConexoes do
  begin
    qrProdutos.Close;
    qrProdutos.SQL.Clear;
    qrProdutos.SQL.Add('SELECT * FROM PRODUTOS');
    qrProdutos.Open;
    qrProdutos.First;
  end;
end;

end.
