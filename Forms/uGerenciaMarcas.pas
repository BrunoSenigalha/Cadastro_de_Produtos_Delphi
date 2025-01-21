unit uGerenciaMarcas;

interface
  uses
    System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
    Data.Win.ADODB, Data.DB, uConexoes, Winapi.Windows;

function BuscaMarca(const Marca: string): Integer;

implementation


function BuscaMarca(const Marca: string): Integer;
begin
  with dmConexoes do
  begin
    qrComando.Close;
    qrComando.SQL.Clear;
    qrComando.SQL.Add('SELECT IDMarca FROM MARCAS WHERE MarcaDescricao Like :pMarcaDescricao');
    qrComando.Parameters.ParamByName('pMarcaDescricao').Value := '%' + Marca + '%' ;
    qrComando.Open;

    if not qrGrupos.IsEmpty then
    begin
      Result:= qrComando.FieldByName('IDMarca').AsInteger;
    end
    else
    begin
      Result:= -1;
      Application.MessageBox('Marca não encontrada', 'AVISO', MB_OK+MB_ICONERROR);
      Exit
    end;
  end;
end;
end.
