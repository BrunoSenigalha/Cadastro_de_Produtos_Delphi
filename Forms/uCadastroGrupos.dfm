object frmCadastroGrupos: TfrmCadastroGrupos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadastroGrupos'
  ClientHeight = 682
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 30
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 813
    Height = 610
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 39
      Top = 97
      Width = 21
      Height = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'ID'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 39
      Top = 169
      Width = 90
      Height = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit4
    end
    object DBEdit3: TDBEdit
      Left = 39
      Top = 123
      Width = 286
      Height = 38
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'IDGrupo'
      DataSource = dsGrupos
      Enabled = False
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 39
      Top = 196
      Width = 748
      Height = 38
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'GrupoDescricao'
      DataSource = dsGrupos
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 39
      Top = 241
      Width = 194
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Maior +18'
      DataField = 'GrupoMaior18'
      DataSource = dsGrupos
      TabOrder = 2
    end
    object DBCheckBox2: TDBCheckBox
      Left = 39
      Top = 268
      Width = 194
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Inativo'
      DataField = 'GrupoInativo'
      DataSource = dsGrupos
      TabOrder = 3
    end
    object pnButtons: TPanel
      Left = 0
      Top = 0
      Width = 813
      Height = 67
      Align = alTop
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 4
      object btnExcluir: TSpeedButton
        Left = 205
        Top = 0
        Width = 103
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Excluir'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnExcluirClick
      end
      object btnEditar: TSpeedButton
        Left = 103
        Top = 0
        Width = 102
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Editar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnEditarClick
      end
      object btnSalvar: TSpeedButton
        Left = 0
        Top = 0
        Width = 103
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Salvar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnSalvarClick
      end
      object btnNovo: TSpeedButton
        Left = 308
        Top = 0
        Width = 102
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Novo'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnNovoClick
      end
      object btnAnterior: TSpeedButton
        Left = 410
        Top = 0
        Width = 102
        Height = 67
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Anterior'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnAnteriorClick
        ExplicitLeft = 572
      end
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 328
      Width = 813
      Height = 282
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ActivePage = TabSheet1
      Align = alBottom
      TabOrder = 5
      object TabSheet1: TTabSheet
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Consulta'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 805
          Height = 237
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          DataSource = dsGrupos
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
              FieldName = 'IDGrupo'
              Title.Caption = 'ID'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GrupoDescricao'
              Title.Caption = 'Descricao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GrupoMaior18'
              Title.Caption = 'Maior 18 Anos'
              Width = 155
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GrupoInativo'
              Title.Caption = 'Inativo'
              Visible = True
            end>
        end
      end
    end
  end
  object pnBot: TPanel
    Left = 0
    Top = 610
    Width = 813
    Height = 72
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Programa do Bruno'
    Color = 3355443
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object dsGrupos: TDataSource
    DataSet = dmConexoes.qrGrupos
    Left = 424
    Top = 104
  end
end
