unit uValidacaoCampos;

interface

  uses
     System.SysUtils, System.Classes, Vcl.StdCtrls, Vcl.Dialogs, System.Character,
     System.Generics.Collections, Vcl.Forms;

function ValidarEntradaNumerica(var Key: Char): string;
function VerificaCampoVazio(const ListaCampos: TList<TEdit>): String;
function CriarMensagemDeErro(const Campo: TEdit): String;
procedure LimparTodosEdits(Form: TForm);
//function ValidarTodosOsCampos(const ListaCampos: TList<TEdit>): string;
//function RetornarMensagemDeErro(const MsgErro: String): String;

implementation

function ValidarEntradaNumerica(var Key: Char): string;
begin
  // Permitir teclas de controle como Backspace
   if CharInSet(Key, [#8]) then Exit;

  // Permitir apenas números (0 a 9)
  if not CharInSet(Key, ['0'..'9']) then
   begin
      Key := #0; //Cancela a entrada
      Result:= 'Insira apenas numeros';
   end;
end;


function VerificaCampoVazio(const ListaCampos: TList<TEdit>): String;
  var
  Campo: TEdit;

begin
  for Campo in ListaCampos do
  begin
     if Trim(Campo.Text) = '' then
     begin
       Result:= CriarMensagemDeErro(Campo);
       ListaCampos.Free;
       Exit;
     end
     else
      Result:= '';
  end;
end;

function CriarMensagemDeErro(const Campo: TEdit): String;
var
  MsgErro: string;

begin
  MsgErro:= 'O seguinte campo não pode ser vazio: ';

  if Campo.Name = 'ed_codbarras' then
    Result:= MsgErro + 'Código de Barras'

  else if Campo.Name = 'ed_descricao' then
    Result:= MsgErro + 'Descrição'

  else if Campo.Name = 'ed_grupo' then
    Result:= MsgErro + 'Grupo'

  else if Campo.Name = 'ed_marca' then
    Result:= MsgErro + 'Marca'

  else if Campo.Name = 'ed_preco' then
    Result:= MsgErro + 'Preço'

  else if Campo.Name = 'ed_quantidade' then
    Result:= MsgErro + 'Quantidade'
  else
    Result:= 'campo não identificado';

end;

procedure LimparTodosEdits(Form: TForm);
var
  I: Integer;
begin
  for I := 0 to Form.ComponentCount -1 do
  begin
    if Form.Components[I] is TEdit then
      TEdit(Form.Components[I]).Text:= '';
  end;
end;

//function ValidarTodosOsCampos(const ListaCampos: TList<TEdit>): string;
// var
//  MsgErro: string;
//
//begin
//   try
//    MsgErro:= VerificaCampoVazio(ListaCampos);
//    Result:= MsgErro;
//
//   finally
//    ListaCampos.Free;
//
//   end;
//end;

//function RetornarMensagemDeErro(const MsgErro: String): String;
//begin
//   Result:= MsgErro;
//end;

end.
