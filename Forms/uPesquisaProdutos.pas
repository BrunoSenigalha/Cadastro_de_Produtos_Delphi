unit uPesquisaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, uConexoes, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Data.Win.ADODB;

type
  TfrmPesquisaProdutos = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    RadioGroup_AtivoInativo: TRadioGroup;
    btnConsultar: TSpeedButton;
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaProdutos: TfrmPesquisaProdutos;

implementation

uses
  uCadastroProdutosReformulado;

{$R *.dfm}

procedure TfrmPesquisaProdutos.btnConsultarClick(Sender: TObject);
begin
  with dmConexoes do
  begin
    vwConsultaProdutos.Active := false;
    vwConsultaProdutos.Close;
    vwConsultaProdutos.SQL.Clear;
    vwConsultaProdutos.SQL.ADD('SELECT * FROM PRODUTOS ');

    case RadioGroup_AtivoInativo.ItemIndex of
      1: vwConsultaProdutos.SQL.Append(' WHERE ProdInativo = 0');
      2: vwConsultaProdutos.SQL.Append(' WHERE ProdInativo = 1')
    end;
    vwConsultaProdutos.Open;
    vwConsultaProdutos.Active := true;
  end;

end;

end.
