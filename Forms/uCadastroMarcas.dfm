object frmCadastroMarcas: TfrmCadastroMarcas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Marcas'
  ClientHeight = 559
  ClientWidth = 838
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 30
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 487
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 813
    ExplicitHeight = 610
    object Label3: TLabel
      Left = 39
      Top = 82
      Width = 12
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'ID'
      FocusControl = DBEdit_ID
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 191
      Top = 82
      Width = 57
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit_Descricao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit_ID: TDBEdit
      Left = 39
      Top = 107
      Width = 114
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'IDMarca'
      DataSource = dsMarcas
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit_Descricao: TDBEdit
      Left = 191
      Top = 107
      Width = 286
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'MarcaDescricao'
      DataSource = dsMarcas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBCheckBox_Inativo: TDBCheckBox
      Left = 39
      Top = 148
      Width = 194
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Inativo'
      DataField = 'MarcaInativa'
      DataSource = dsMarcas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object pnButtons: TPanel
      Left = 0
      Top = 0
      Width = 838
      Height = 67
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 3
      ExplicitWidth = 813
      object btnExcluir: TSpeedButton
        Left = 410
        Top = 0
        Width = 103
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Excluir'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnExcluirClick
        ExplicitLeft = 205
      end
      object btnEditar: TSpeedButton
        Left = 205
        Top = 0
        Width = 102
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Editar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnEditarClick
        ExplicitLeft = 103
      end
      object btnSalvar: TSpeedButton
        Left = 102
        Top = 0
        Width = 103
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Salvar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnSalvarClick
        ExplicitLeft = 0
      end
      object btnNovo: TSpeedButton
        Left = 0
        Top = 0
        Width = 102
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Novo'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnNovoClick
        ExplicitLeft = -51
        ExplicitTop = 7
      end
      object btnAnterior: TSpeedButton
        Left = 513
        Top = 0
        Width = 102
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Anterior'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnAnteriorClick
        ExplicitLeft = 572
      end
      object btnProximo: TSpeedButton
        Left = 615
        Top = 0
        Width = 102
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Pr'#243'ximo'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnProximoClick
        ExplicitLeft = 634
      end
      object btnSair: TSpeedButton
        Left = 736
        Top = 0
        Width = 102
        Height = 67
        Cursor = crHandPoint
        Align = alRight
        Caption = 'Sair'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnSairClick
        ExplicitLeft = 711
        ExplicitHeight = 599
      end
      object btnCancelar: TSpeedButton
        Left = 307
        Top = 0
        Width = 103
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Cancelar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnCancelarClick
        ExplicitLeft = 205
      end
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 227
      Width = 838
      Height = 260
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ActivePage = TabSheet1
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      ExplicitTop = 228
      ExplicitWidth = 782
      object TabSheet1: TTabSheet
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 830
          Height = 224
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          DataSource = dsMarcas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -21
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'IDMarca'
              Title.Caption = 'ID'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MarcaDescricao'
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 380
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MarcaInativa'
              Title.Caption = 'Inativa'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 165
              Visible = True
            end>
        end
      end
    end
  end
  object pnBot: TPanel
    Left = 0
    Top = 487
    Width = 838
    Height = 72
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
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
    TabOrder = 1
    ExplicitTop = 610
    ExplicitWidth = 813
  end
  object dsMarcas: TDataSource
    DataSet = dmConexoes.qrMarcas
    Left = 640
    Top = 192
  end
end
