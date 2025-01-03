program prjCadastroProdutos;

uses
  Vcl.Forms,
  uFormMain in 'Forms\uFormMain.pas' {frmMain},
  uConexoes in 'Forms\uConexoes.pas' {dmConexoes: TDataModule},
  uGerenciarProduto in 'Forms\uGerenciarProduto.pas',
  uValidacaoCampos in 'Forms\uValidacaoCampos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmConexoes, dmConexoes);
  Application.CreateForm(TdmConexoes, dmConexoes);
  Application.Run;
end.
