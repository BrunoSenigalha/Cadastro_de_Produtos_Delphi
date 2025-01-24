object CadastroProdutosRef: TCadastroProdutosRef
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadastroProdutosRef'
  ClientHeight = 598
  ClientWidth = 1057
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
    Width = 1057
    Height = 81
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
      Left = 238
      Top = 0
      Width = 117
      Height = 81
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
      ExplicitLeft = 252
    end
    object btnEditar: TSpeedButton
      Left = 121
      Top = 0
      Width = 117
      Height = 81
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
      ExplicitLeft = 216
    end
    object btnExcluir: TSpeedButton
      Left = 472
      Top = 0
      Width = 117
      Height = 81
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
      ExplicitLeft = 468
      ExplicitTop = 128
      ExplicitHeight = 90
    end
    object btnCancelar: TSpeedButton
      Left = 355
      Top = 0
      Width = 117
      Height = 81
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
      ExplicitLeft = 351
    end
    object btnSair: TSpeedButton
      Left = 940
      Top = 0
      Width = 117
      Height = 81
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'SAIR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnSairClick
      ExplicitLeft = 756
    end
    object btnBuscar: TSpeedButton
      Left = 823
      Top = 0
      Width = 117
      Height = 81
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'BUSCAR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnSairClick
      ExplicitLeft = 756
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 121
      Height = 81
      Align = alLeft
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 0
      object btnNovo: TSpeedButton
        Left = 0
        Top = 0
        Width = 121
        Height = 81
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
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnNovoClick
        OnMouseEnter = btnNovoMouseEnter
        OnMouseLeave = btnNovoMouseLeave
        ExplicitLeft = -8
        ExplicitTop = 14
        ExplicitWidth = 117
      end
    end
  end
  object pnPrincipal: TPanel
    Left = 0
    Top = 81
    Width = 1057
    Height = 517
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
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
    object ed_descricao: TEdit
      Left = 306
      Top = 54
      Width = 244
      Height = 27
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 1
    end
    object ed_preco: TEdit
      Left = 17
      Top = 132
      Width = 176
      Height = 27
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 2
    end
    object ed_quantidade: TEdit
      Left = 306
      Top = 132
      Width = 176
      Height = 27
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 3
    end
    object pnBase: TPanel
      Left = 0
      Top = 438
      Width = 1057
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
      TabOrder = 4
    end
    object dbCBGrupo: TDBComboBox
      Left = 588
      Top = 57
      Width = 189
      Height = 27
      DataField = 'GrupoDescricao'
      TabOrder = 5
    end
    object dbCBMarca: TDBComboBox
      Left = 813
      Top = 57
      Width = 189
      Height = 27
      DataField = 'MarcaDescricao'
      TabOrder = 6
    end
    object DBCheckBoxInativo: TDBCheckBox
      Left = 588
      Top = 130
      Width = 97
      Height = 17
      Caption = 'Inativo'
      DataField = 'ProdInativo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
end
