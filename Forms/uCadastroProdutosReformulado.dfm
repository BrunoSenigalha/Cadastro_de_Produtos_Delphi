object CadastroProdutosRef: TCadastroProdutosRef
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadastroProdutosRef'
  ClientHeight = 438
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 19
  object pnButtons: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 73
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1081
    object btnSalvar: TSpeedButton
      Left = 238
      Top = 0
      Width = 117
      Height = 73
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'SALVAR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnSalvarClick
      ExplicitLeft = 252
      ExplicitHeight = 81
    end
    object btnEditar: TSpeedButton
      Left = 121
      Top = 0
      Width = 117
      Height = 73
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'EDITAR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnEditarClick
      ExplicitLeft = 129
      ExplicitHeight = 81
    end
    object btnExcluir: TSpeedButton
      Left = 472
      Top = 0
      Width = 117
      Height = 73
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'EXCLUIR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnExcluirClick
      ExplicitLeft = 468
      ExplicitTop = 128
      ExplicitHeight = 90
    end
    object btnCancelar: TSpeedButton
      Left = 355
      Top = 0
      Width = 117
      Height = 73
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'CALCELAR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnCancelarClick
      ExplicitLeft = 351
      ExplicitHeight = 81
    end
    object btnSair: TSpeedButton
      Left = 907
      Top = 0
      Width = 117
      Height = 73
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'SAIR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnSairClick
      ExplicitLeft = 756
      ExplicitHeight = 81
    end
    object btnBuscar: TSpeedButton
      Left = 790
      Top = 0
      Width = 117
      Height = 73
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'BUSCAR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnBuscarClick
      ExplicitLeft = 856
      ExplicitTop = -10
      ExplicitHeight = 81
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 121
      Height = 73
      Align = alLeft
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object btnNovo: TSpeedButton
        Left = 0
        Top = 0
        Width = 121
        Height = 73
        Cursor = crHandPoint
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        Caption = 'NOVO'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnNovoClick
        ExplicitLeft = -8
        ExplicitTop = 14
        ExplicitWidth = 117
        ExplicitHeight = 81
      end
    end
  end
  object pnPrincipal: TPanel
    Left = 0
    Top = 73
    Width = 1024
    Height = 365
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 1081
    ExplicitHeight = 534
    object lbCodBarras: TLabel
      Left = 17
      Top = 24
      Width = 103
      Height = 17
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'C'#243'digo de Barras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbDescricao: TLabel
      Left = 237
      Top = 24
      Width = 57
      Height = 17
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lb_grupo: TLabel
      Left = 516
      Top = 21
      Width = 37
      Height = 17
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lb_marca: TLabel
      Left = 741
      Top = 21
      Width = 37
      Height = 17
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 97
      Width = 33
      Height = 17
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Pre'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 238
      Top = 97
      Width = 68
      Height = 17
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object ed_codbarras: TEdit
      Left = 17
      Top = 54
      Width = 192
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = ed_codbarrasKeyPress
    end
    object ed_descricao: TEdit
      Left = 238
      Top = 54
      Width = 244
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ed_preco: TEdit
      Left = 17
      Top = 132
      Width = 176
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ed_quantidade: TEdit
      Left = 238
      Top = 132
      Width = 176
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = ed_quantidadeKeyPress
    end
    object pnBase: TPanel
      Left = 0
      Top = 286
      Width = 1024
      Height = 79
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Sistema de Cadastro'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      ExplicitTop = 455
      ExplicitWidth = 1081
    end
    object dbCBGrupo: TDBComboBox
      Left = 516
      Top = 54
      Width = 189
      Height = 25
      DataField = 'GrupoDescricao'
      DataSource = dmConexoes.dsGrupos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object dbCBMarca: TDBComboBox
      Left = 741
      Top = 54
      Width = 189
      Height = 25
      DataField = 'MarcaDescricao'
      DataSource = dmConexoes.dsMarcas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBCheckBoxInativo: TDBCheckBox
      Left = 516
      Top = 132
      Width = 97
      Height = 17
      Caption = 'Inativo'
      DataField = 'ProdInativo'
      DataSource = dmConexoes.dsProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
end
