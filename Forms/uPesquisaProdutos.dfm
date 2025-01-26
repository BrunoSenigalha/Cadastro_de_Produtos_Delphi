object frmPesquisaProdutos: TfrmPesquisaProdutos
  Left = 0
  Top = 0
  Caption = 'Pesquisar Produtos'
  ClientHeight = 767
  ClientWidth = 1274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 25
  object DBGrid1: TDBGrid
    Left = 0
    Top = 339
    Width = 1274
    Height = 428
    Align = alBottom
    DataSource = dmConexoes.dsConsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -18
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDProduto'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodBarras'
        Title.Caption = 'C'#243'digo de Barras'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 198
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProdDescricao'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 194
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProdGrupo'
        Title.Caption = 'Grupo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProdMarca'
        Title.Caption = 'Marca'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 144
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProdPreco'
        Title.Caption = 'Pre'#231'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 177
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProdQuantidade'
        Title.Caption = 'Quantidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProdInativo'
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 108
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1274
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 1336
    object btnConsultar: TSpeedButton
      Left = 0
      Top = 0
      Width = 153
      Height = 89
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'CONSULTAR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnConsultarClick
      ExplicitHeight = 129
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 1274
    Height = 250
    Align = alClient
    TabOrder = 2
    ExplicitTop = 99
    ExplicitWidth = 1427
    ExplicitHeight = 455
    object RadioGroup_AtivoInativo: TRadioGroup
      Left = 16
      Top = 16
      Width = 185
      Height = 145
      Caption = 'STATUS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Ativo'
        'Inativo')
      ParentFont = False
      TabOrder = 0
    end
  end
end
