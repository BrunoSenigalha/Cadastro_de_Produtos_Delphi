program prjCadastroProdutos;

uses
  Vcl.Forms,
  uFormMain in 'Forms\uFormMain.pas' {frmMain},
  uGerenciarProduto in 'Forms\uGerenciarProduto.pas' {$R *.res},
  uValidacaoCampos in 'Forms\uValidacaoCampos.pas',
  uCadastroProdutos in 'Forms\uCadastroProdutos.pas' {frmCadastroProdutos},
  uCadastroGrupos in 'Forms\uCadastroGrupos.pas' {frmCadastroGrupos},
  uCadastroProdutosReformulado in 'Forms\uCadastroProdutosReformulado.pas' {CadastroProdutosRef},
  uConexoes in 'Forms\uConexoes.pas' {dmConexoes: TDataModule},
  uGerenciaGrupos in 'Forms\uGerenciaGrupos.pas',
  uGerenciaMarcas in 'Forms\uGerenciaMarcas.pas',
  uCadastroMarcas in 'Forms\uCadastroMarcas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmConexoes, dmConexoes);
  Application.CreateForm(TdmConexoes, dmConexoes);
  Application.CreateForm(TfrmCadastroProdutos, frmCadastroProdutos);
  Application.CreateForm(TfrmCadastroGrupos, frmCadastroGrupos);
  Application.CreateForm(TCadastroProdutosRef, CadastroProdutosRef);
  Application.CreateForm(TdmConexoes, dmConexoes);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
