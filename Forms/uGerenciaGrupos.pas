unit uGerenciaGrupos;

interface
  uses
    System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
    Data.Win.ADODB, Data.DB, uConexoes, Winapi.Windows;

function BuscaGrupo(const Grupo: string): Integer;
function BuscarDescricaoGrupo(const IDGrupo: integer): string;

implementation

function BuscaGrupo(const Grupo: string): Integer;
  begin
    with dmConexoes do
    begin
      qrComando.Close;
      qrComando.SQL.Clear;
      qrComando.SQL.Add('select IDGrupo from GRUPOS where GrupoDescricao like :pGrupoDescricao');
      qrComando.Parameters.ParamByName('pGrupoDescricao').Value := Grupo;
      qrComando.Open;

      if not qrComando.IsEmpty then
      begin
        Result:= qrComando.FieldByName('IDGrupo').AsInteger;
      end
      else
      begin
        Result:= -1;
        Application.MessageBox('Grupo não encontrado', 'AVISO', MB_OK+MB_ICONERROR);
        Exit
      end;
    end;
  end;

  function BuscarDescricaoGrupo(const IDGrupo: integer): string;
  begin
    with dmConexoes do
    begin
      qrComando.Close;
      qrComando.SQL.Clear;
      qrComando.SQL.Add('SELECT GrupoDescricao FROM GRUPOS WHERE IDGrupo = :pIDGrupo');
      qrComando.Parameters.ParamByName('pIDGrupo').Value := IDGrupo;
      qrComando.Open;

      if not qrComando.IsEmpty then
      begin
         Result:= qrComando.FieldByName('GrupoDescricao').AsString;
      end
      else
      begin
        Application.MessageBox('Grupo não encontrado','AVISO', MB_OK+MB_ICONERROR);
        Exit
      end;
    end;
  end;
end.
