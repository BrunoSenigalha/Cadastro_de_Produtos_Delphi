unit uTest;

interface
  uses
    uConexoes, System.SysUtils, Vcl.Dialogs; // Adicionado Vcl.Dialogs para ShowMessage

implementation

procedure TestExtensions;
var
  i: Integer;
  linhaResultado: string;
begin
  with dmConexoes do
  begin
    qrGrupos.Close;
    qrGrupos.SQL.Clear;
    qrGrupos.SQL.Add('SELECT * FROM GRUPOS');
    qrGrupos.Open;

    // Verifica se existem registros retornados
    if not qrGrupos.IsEmpty then
    begin
      qrGrupos.First; // Garante que começa no primeiro registro

      while not qrGrupos.Eof do
      begin
        linhaResultado := ''; // Inicializa a variável para armazenar a linha atual

        // Itera por todos os campos do registro atual
        for i := 0 to qrGrupos.FieldCount - 1 do
        begin
          linhaResultado := linhaResultado + qrGrupos.Fields[i].FieldName + ': ' +
            qrGrupos.Fields[i].AsString + ' | ';
        end;

        // Exibe a linha formatada
        ShowMessage(linhaResultado);

        // Move para o próximo registro
        qrGrupos.Next;
      end;
    end
    else
    begin
      ShowMessage('Nenhum registro encontrado.');
    end;
  end;
end;

end.

