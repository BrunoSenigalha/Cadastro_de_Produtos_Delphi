unit uFormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, uCadastroProdutos;

type
  TfrmMain = class(TForm)
    MenuProdutos: TMainMenu;
    Produtos1: TMenuItem;
    Produtos2: TMenuItem;
    Sair1: TMenuItem;
    Grupo1: TMenuItem;
    Produtos21: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure Produtos21Click(Sender: TObject);
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

end.
