unit uCadastroMarcas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  Datasnap.DBClient, uGerenciarBotoes;

type
  TfrmCadastroMarcas = class(TForm)
    pnPrincipal: TPanel;
    pnBot: TPanel;
    Label3: TLabel;
    DBEdit_ID: TDBEdit;
    dsMarcas: TDataSource;
    Label4: TLabel;
    DBEdit_Descricao: TDBEdit;
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
  frmCadastroMarcas: TfrmCadastroMarcas;

implementation

uses
  uConexoes;

{$R *.dfm}
procedure TfrmCadastroMarcas.SetupInicial();
begin
  uGerenciarBotoes.AtivarDesativarBotoes('INICIAL', [btnNovo, btnSalvar, btnEditar, btnCancelar, btnExcluir, btnAnterior, btnProximo]);
  uGerenciarBotoes.HabilitarMarcas(False);
end;

procedure TfrmCadastroMarcas.btnNovoClick(Sender: TObject);
begin
  dsMarcas.DataSet.Insert;
  uGerenciarBotoes.AtivarDesativarBotoes('NOVO', [btnNovo, btnSalvar, btnEditar, btnCancelar, btnExcluir, btnAnterior, btnProximo]);
  uGerenciarBotoes.HabilitarMarcas(True);
end;

procedure TfrmCadastroMarcas.btnSalvarClick(Sender: TObject);
begin
  if dsMarcas.DataSet.State in [dsEdit, dsInsert] then
    begin
    if Trim(DBEdit_Descricao.Text) = '' then
      begin
        Application.MessageBox('O campo descrição não pode estar vazio', 'AVISO', MB_OK+MB_ICONWARNING);
        Exit
      end;
      dsMarcas.DataSet.Post;
    end;
    SetupInicial();
end;

procedure TfrmCadastroMarcas.FormShow(Sender: TObject);
begin
  with dmConexoes do
  begin
    qrMarcas.Close;
    qrMarcas.SQL.Clear;
    qrMarcas.SQL.Add('SELECT * FROM MARCAS');
    qrMarcas.Open;
    qrMarcas.First;
  end;
  SetupInicial();
end;

procedure TfrmCadastroMarcas.btnCancelarClick(Sender: TObject);
begin
  dsMarcas.DataSet.Cancel;
  SetupInicial();
end;

procedure TfrmCadastroMarcas.btnEditarClick(Sender: TObject);
begin
  dsMarcas.DataSet.Edit;
  uGerenciarBotoes.AtivarDesativarBotoes('EDITAR', [btnNovo, btnSalvar, btnEditar, btnCancelar, btnExcluir, btnAnterior, btnProximo]);
  uGerenciarBotoes.HabilitarMarcas(True);
end;

procedure TfrmCadastroMarcas.btnExcluirClick(Sender: TObject);
begin
  if not dsMarcas.DataSet.IsEmpty then
    begin
      if Application.MessageBox('Deseja excluir?', '', MB_YESNO+MB_ICONQUESTION) = 6 then
        begin
          dsMarcas.DataSet.Delete;
          Application.MessageBox('Produto deletado', '', MB_OK+MB_ICONQUESTION);
        end;
    end;
    SetupInicial();
end;

procedure TfrmCadastroMarcas.btnAnteriorClick(Sender: TObject);
begin
  dsMarcas.DataSet.Prior;
end;

procedure TfrmCadastroMarcas.btnProximoClick(Sender: TObject);
begin
  dsMarcas.DataSet.Next;
end;

procedure TfrmCadastroMarcas.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
