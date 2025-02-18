unit uGerenciaMarcas;

interface
  uses
    System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
    Data.Win.ADODB, Data.DB, uConexoes, Winapi.Windows;

function BuscaMarca(const Marca: string): Integer;
function BuscarDescricaoMarca(const IDMarca: integer): string;

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
      Application.MessageBox('Marca n�o encontrada', 'AVISO', MB_OK+MB_ICONERROR);
      Exit
    end;
  end;
end;

function BuscarDescricaoMarca(const IDMarca: integer): string;
  begin
    with dmConexoes do
    begin
      qrComando.Close;
      qrComando.SQL.Clear;
      qrComando.SQL.Add('SELECT MarcaDescricao FROM MARCAS WHERE IDMarca = :pIDMarca');
      qrComando.Parameters.ParamByName('pIDMarca').Value := IDMarca;
      qrComando.Open;

      if not qrComando.IsEmpty then
      begin
         Result:= qrComando.FieldByName('MarcaDescricao').AsString;
      end
      else
      begin
        Application.MessageBox('Marca n�o encontrada','AVISO', MB_OK+MB_ICONERROR);
        Exit
      end;
    end;
  end;
end.
