unit uValidacaoCampos;

interface

  uses
     System.SysUtils, System.Classes, Vcl.StdCtrls, Vcl.Dialogs, System.Character,
     System.Generics.Collections;

function ValidarEntradaNumerica(var Key: Char): string;
function VerificaCampoVazio(const ListaCampos: TList<TEdit>): String;
function CriarMensagemDeErro(const Campo: TEdit): String;
function ValidarTodosOsCampos(const ListaCampos: TList<TEdit>): Boolean;
//function RetornarMensagemDeErro(const MsgErro: String): String;

implementation

function ValidarEntradaNumerica(var Key: Char): string;
begin
  // Permitir teclas de controle como Backspace
   if CharInSet(Key, [#8]) then Exit;

  // Permitir apenas n�meros (0 a 9)
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
  MsgErro:= 'O seguinte campo n�o pode ser vazio: ';

  if Campo.Name = 'ed_codbarras' then
    Result:= MsgErro + 'C�digo de Barras'

  else if Campo.Name = 'ed_descricao' then
    Result:= MsgErro + 'Descri��o'

  else if Campo.Name = 'ed_grupo' then
    Result:= MsgErro + 'Grupo'

  else if Campo.Name = 'ed_marca' then
    Result:= MsgErro + 'Marca'

  else if Campo.Name = 'ed_preco' then
    Result:= MsgErro + 'Pre�o'

  else if Campo.Name = 'ed_quantidade' then
    Result:= MsgErro + 'Quantidade'
  else
    Result:= 'campo n�o identificado';

end;

function ValidarTodosOsCampos(const ListaCampos: TList<TEdit>): Boolean;
 var
  MsgErro: string;

begin
   try
    MsgErro:= VerificaCampoVazio(ListaCampos);
    if Trim(MsgErro) = '' then
      Result:= True
    else
      Result:= False;

   finally
    ListaCampos.Free;

   end;
end;

//function RetornarMensagemDeErro(const MsgErro: String): String;
//begin
//   Result:= MsgErro;
//end;

end.