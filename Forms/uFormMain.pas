unit uFormMain;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, uCadastroProdutos, uCadastroMarcas,
  uConexoes, Vcl.Imaging.jpeg; // Adicionado uConexoes para acesso ao DataModule

type
  TfrmMain = class(TForm)
    MenuProdutos: TMainMenu;
    Produtos1: TMenuItem;
    Sair1: TMenuItem;
    Grupo1: TMenuItem;
    Produtos21: TMenuItem;
    Background: TImage;
    Consu1: TMenuItem;
    Produtos2: TMenuItem;
    Marca1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure Produtos21Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Marca1Click(Sender: TObject);
  private

    { Private declarations }
  public

    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  uCadastroGrupos, uCadastroProdutosReformulado;
  function ConverterRGB(r, g, b: Byte) : TColor;
  begin
    Result:= RGB(r, g, b);
  end;

{$R *.dfm}


procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja realmente sair? ', 'AVISO', MB_YESNO+MB_ICONQUESTION) = IDNO then
     Action := caNone
  else
    Action := caFree;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
   frmMain.Color:= ConverterRGB(189, 202, 226);
end;

procedure TfrmMain.Grupo1Click(Sender: TObject);
begin
  frmCadastroGrupos:= TfrmCadastroGrupos.Create(self);
  frmCadastroGrupos.ShowModal;
  frmCadastroGrupos.Free;
end;

procedure TfrmMain.Marca1Click(Sender: TObject);
begin
  frmCadastroMarcas:= TfrmCadastroMarcas.Create(self);
  frmCadastroMarcas.ShowModal;
  frmCadastroMarcas.Free;
end;

procedure TfrmMain.Produtos21Click(Sender: TObject);
begin
  CadastroProdutosRef:= TCadastroProdutosRef.Create(self);
  CadastroProdutosRef.ShowModal;
  CadastroProdutosRef.Free;
end;

procedure TfrmMain.Produtos2Click(Sender: TObject);
begin
  //Application.CreateForm(TfrmCadastroProdutos, frmCadastroProdutos);
  frmCadastroProdutos:= TfrmCadastroProdutos.Create(self);
  frmCadastroProdutos.ShowModal;
  frmCadastroProdutos.Free;
end;

procedure TfrmMain.Sair1Click(Sender: TObject);
begin
  Close;
end;
end.
