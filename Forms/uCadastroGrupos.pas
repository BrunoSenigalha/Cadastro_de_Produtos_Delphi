unit uCadastroGrupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  Datasnap.DBClient, uGerenciarBotoes;

type
  TfrmCadastroGrupos = class(TForm)
    pnPrincipal: TPanel;
    pnBot: TPanel;
    Label3: TLabel;
    DBEdit_ID: TDBEdit;
    dsGrupos: TDataSource;
    Label4: TLabel;
    DBEdit_Descricao: TDBEdit;
    DBCheckBox_Maior: TDBCheckBox;
    DBCheckBox_Inativo: TDBCheckBox;
    pnButtons: TPanel;
    btnExcluir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnSalvar: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    btnNovo: TSpeedButton;
    btnAnterior: TSpeedButton;
    btnProximo: TSpeedButton;
    btnSair: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);

  private
    procedure SetupInicial();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroGrupos: TfrmCadastroGrupos;

implementation

uses
  uConexoes;

{$R *.dfm}

procedure TfrmCadastroGrupos.SetupInicial();
begin
  uGerenciarBotoes.AtivarDesativarBotoes('INICIAL', [btnNovo, btnSalvar, btnEditar, btnCancelar, btnExcluir, btnAnterior, btnProximo]);
  uGerenciarBotoes.HabilitarGrupos(False);
end;

procedure TfrmCadastroGrupos.btnNovoClick(Sender: TObject);
begin
    dsGrupos.DataSet.Insert;
    uGerenciarBotoes.AtivarDesativarBotoes('NOVO', [btnNovo, btnSalvar, btnEditar, btnCancelar, btnExcluir, btnAnterior, btnProximo]);
    uGerenciarBotoes.HabilitarGrupos(True);
end;

procedure TfrmCadastroGrupos.btnSalvarClick(Sender: TObject);
begin
  if dsGrupos.DataSet.State in [dsEdit, dsInsert] then
    begin
      if Trim(DBEdit_Descricao.Text) = '' then
      begin
        Application.MessageBox('O campo descri��o n�o pode estar vazio', 'AVISO', MB_OK+MB_ICONWARNING);
        Exit
      end;
      dsGrupos.DataSet.Post;
    end;
    SetupInicial();
end;

procedure TfrmCadastroGrupos.FormShow(Sender: TObject);
begin

  with dmConexoes do
  begin
    qrGrupos.Close;
    qrGrupos.SQL.Clear;
    qrGrupos.SQL.Add('SELECT * FROM GRUPOS');
    qrGrupos.Open;
    qrGrupos.First;
  end;
  SetupInicial();
end;

procedure TfrmCadastroGrupos.btnCancelarClick(Sender: TObject);
begin
  dsGrupos.DataSet.Cancel;
  SetupInicial();
end;

procedure TfrmCadastroGrupos.btnEditarClick(Sender: TObject);
begin
  dsGrupos.DataSet.Edit;
  uGerenciarBotoes.AtivarDesativarBotoes('EDITAR', [btnNovo, btnSalvar, btnEditar, btnCancelar, btnExcluir, btnAnterior, btnProximo]);
  uGerenciarBotoes.HabilitarGrupos(True);
end;

procedure TfrmCadastroGrupos.btnExcluirClick(Sender: TObject);
begin
  if not dsGrupos.DataSet.IsEmpty then
    begin
      if Application.MessageBox('Deseja excluir?', '', MB_YESNO+MB_ICONQUESTION) = 6 then
        begin
          dsGrupos.DataSet.Delete;
          Application.MessageBox('Produto deletado', '', MB_OK+MB_ICONQUESTION);
        end;
    end;
    SetupInicial();
end;

procedure TfrmCadastroGrupos.btnAnteriorClick(Sender: TObject);
begin
  dsGrupos.DataSet.Prior;
end;

procedure TfrmCadastroGrupos.btnProximoClick(Sender: TObject);
begin
  dsGrupos.DataSet.Next;
end;

procedure TfrmCadastroGrupos.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
