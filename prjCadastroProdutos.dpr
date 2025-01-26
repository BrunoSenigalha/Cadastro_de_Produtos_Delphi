program prjCadastroProdutos;

uses
  Vcl.Forms,
  uFormMain in 'Forms\uFormMain.pas' {frmMain},
  uGerenciarProduto in 'Forms\uGerenciarProduto.pas' {$R *.res},
  uCadastroGrupos in 'Forms\uCadastroGrupos.pas' {frmCadastroGrupos},
  uCadastroProdutosReformulado in 'Forms\uCadastroProdutosReformulado.pas' {CadastroProdutosRef},
  uConexoes in 'Forms\uConexoes.pas' {dmConexoes: TDataModule},
  uGerenciaGrupos in 'Forms\uGerenciaGrupos.pas',
  uGerenciaMarcas in 'Forms\uGerenciaMarcas.pas',
  uPesquisaCodBarras in 'Forms\uPesquisaCodBarras.pas' {frmPesquisaCodBarras},
  uCadastroMarcas in 'Forms\uCadastroMarcas.pas' {frmCadastroMarcas},
  uGerenciarBotoes in 'Forms\uGerenciarBotoes.pas',
  uPesquisaProdutos in 'Forms\uPesquisaProdutos.pas' {frmPesquisaProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmConexoes, dmConexoes);
  Application.CreateForm(TfrmPesquisaProdutos, frmPesquisaProdutos);
  Application.Run;
end.
