object frmPesquisaCodBarras: TfrmPesquisaCodBarras
  Left = 0
  Top = 0
  Caption = 'frmPesquisaCodBarras'
  ClientHeight = 153
  ClientWidth = 333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 333
    Height = 153
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbDescricao: TLabel
      Left = 64
      Top = 19
      Width = 164
      Height = 17
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Informe o C'#243'digo de Barras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object ed_buscarcodbarras: TEdit
      Left = 24
      Top = 46
      Width = 265
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      StyleName = 'Windows'
      OnKeyPress = ed_buscarcodbarrasKeyPress
    end
    object Panel2: TPanel
      Left = 24
      Top = 79
      Width = 121
      Height = 41
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 1
      object btnBuscar: TSpeedButton
        Left = 0
        Top = 0
        Width = 121
        Height = 41
        Align = alClient
        Caption = 'Buscar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnBuscarClick
        ExplicitLeft = -8
        ExplicitTop = -16
        ExplicitWidth = 89
        ExplicitHeight = 25
      end
    end
    object Panel3: TPanel
      Left = 168
      Top = 79
      Width = 121
      Height = 41
      BevelOuter = bvNone
      Color = 3355443
      ParentBackground = False
      TabOrder = 2
      object btnCancelar: TSpeedButton
        Left = 0
        Top = 0
        Width = 121
        Height = 41
        Align = alClient
        Caption = 'Cancelar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelarClick
        ExplicitTop = -24
      end
    end
  end
end
