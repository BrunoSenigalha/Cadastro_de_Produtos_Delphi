unit uCadastroGrupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  Datasnap.DBClient;

type
  TfrmCadastroGrupos = class(TForm)
    pnPrincipal: TPanel;
    pnBot: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    dsGrupos: TDataSource;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    pnButtons: TPanel;
    btnExcluir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnSalvar: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    btnNovo: TSpeedButton;
    btnAnterior: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
  private
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

procedure TfrmCadastroGrupos.btnSalvarClick(Sender: TObject);
begin
  if dsGrupos.DataSet.State in [dsEdit, dsInsert] then
    begin
      dsGrupos.DataSet.Post;
    end;
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
end;

procedure TfrmCadastroGrupos.btnAnteriorClick(Sender: TObject);
begin
  dsGrupos.DataSet.Prior;
  // dsGrupos.DataSet.Next;
end;

procedure TfrmCadastroGrupos.btnEditarClick(Sender: TObject);
begin
  dsGrupos.DataSet.Edit;
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
end;

procedure TfrmCadastroGrupos.btnNovoClick(Sender: TObject);
begin
    dsGrupos.DataSet.Insert;
end;

end.