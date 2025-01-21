object CadastroProdutosRef: TCadastroProdutosRef
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadastroProdutosRef'
  ClientHeight = 722
  ClientWidth = 1068
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 19
  object pnButtons: TPanel
    Left = 0
    Top = 0
    Width = 1068
    Height = 101
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    object btnSalvar: TSpeedButton
      Left = 117
      Top = 0
      Width = 117
      Height = 101
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'SALVAR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnSalvarClick
      ExplicitTop = 128
      ExplicitHeight = 90
    end
    object btnEditar: TSpeedButton
      Left = 234
      Top = 0
      Width = 117
      Height = 101
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'EDITAR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 128
      ExplicitHeight = 90
    end
    object btnExcluir: TSpeedButton
      Left = 468
      Top = 0
      Width = 117
      Height = 101
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'EXCLUIR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnExcluirClick
      ExplicitTop = 128
      ExplicitHeight = 90
    end
    object btnCancelar: TSpeedButton
      Left = 351
      Top = 0
      Width = 117
      Height = 101
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'CALCELAR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 128
      ExplicitHeight = 90
    end
    object btnNovo: TSpeedButton
      Left = 0
      Top = 0
      Width = 117
      Height = 101
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'NOVO'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnNovoClick
      ExplicitTop = 128
      ExplicitHeight = 90
    end
  end
  object pnPrincipal: TPanel
    Left = 0
    Top = 101
    Width = 1068
    Height = 621
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 218
    ExplicitHeight = 531
    object lbCodBarras: TLabel
      Left = 17
      Top = 24
      Width = 137
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'C'#243'digo de Barras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbDescricao: TLabel
      Left = 305
      Top = 24
      Width = 76
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lb_grupo: TLabel
      Left = 588
      Top = 24
      Width = 50
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lb_marca: TLabel
      Left = 813
      Top = 24
      Width = 48
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 97
      Width = 44
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Pre'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 306
      Top = 97
      Width = 93
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object ed_codbarras: TEdit
      Left = 17
      Top = 54
      Width = 244
      Height = 27
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 0
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 314
      Width = 1068
      Height = 228
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ActivePage = TabSheet1
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 224
      object TabSheet1: TTabSheet
        Caption = 'Produtos'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 1060
          Height = 194
          Align = alClient
          DataSource = dsProdutos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'IDProduto'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodBarras'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProdDescricao'
              Width = 222
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProdGrupo'
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProdMarca'
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProdPreco'
              Width = 123
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProdQuantidade'
              Width = 152
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProdInativo'
              Width = 107
              Visible = True
            end>
        end
      end
    end
    object ed_descricao: TEdit
      Left = 305
      Top = 54
      Width = 244
      Height = 27
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 2
    end
    object ed_preco: TEdit
      Left = 17
      Top = 127
      Width = 176
      Height = 27
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 3
    end
    object ed_quantidade: TEdit
      Left = 306
      Top = 127
      Width = 176
      Height = 27
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 4
    end
    object pnBase: TPanel
      Left = 0
      Top = 542
      Width = 1068
      Height = 79
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Cadastro de Produto'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -26
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      ExplicitTop = 452
    end
    object dbCBGrupo: TDBComboBox
      Left = 588
      Top = 57
      Width = 189
      Height = 27
      DataField = 'GrupoDescricao'
      DataSource = dsGrupos
      TabOrder = 6
    end
    object dbCBMarca: TDBComboBox
      Left = 813
      Top = 57
      Width = 189
      Height = 27
      DataField = 'MarcaDescricao'
      DataSource = dsMarcas
      TabOrder = 7
    end
    object DBCheckBoxInativo: TDBCheckBox
      Left = 588
      Top = 132
      Width = 97
      Height = 17
      Caption = 'Inativo'
      DataField = 'ProdInativo'
      DataSource = dsProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object dsProdutos: TDataSource
    DataSet = dmConexoes.qrProdutos
    Left = 952
    Top = 330
  end
  object dsGrupos: TDataSource
    DataSet = dmConexoes.qrGrupos
    Left = 744
    Top = 330
  end
  object dsMarcas: TDataSource
    DataSet = dmConexoes.qrMarcas
    Left = 824
    Top = 346
  end
end
