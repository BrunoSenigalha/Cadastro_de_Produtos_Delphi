object dmConexoes: TdmConexoes
  Height = 616
  Width = 791
  PixelsPerInch = 144
  object SQLServerConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=@66E$Y$;Persist Security Info=True;' +
      'User ID=SA;Initial Catalog=DBPRODUTOS;Data Source=DESKTOP-80QK7L' +
      'E'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 160
    Top = 112
  end
  object qrProdutos: TADOQuery
    Active = True
    Connection = SQLServerConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 78
    Top = 370
    object qrProdutosIDProduto: TAutoIncField
      FieldName = 'IDProduto'
      ReadOnly = True
    end
    object qrProdutosCodBarras: TStringField
      FieldName = 'CodBarras'
      Size = 13
    end
    object qrProdutosProdDescricao: TStringField
      FieldName = 'ProdDescricao'
      Size = 255
    end
    object qrProdutosProdGrupo: TIntegerField
      FieldName = 'ProdGrupo'
    end
    object qrProdutosProdMarca: TIntegerField
      FieldName = 'ProdMarca'
    end
    object qrProdutosProdPreco: TBCDField
      FieldName = 'ProdPreco'
      Precision = 5
      Size = 2
    end
    object qrProdutosProdQuantidade: TIntegerField
      FieldName = 'ProdQuantidade'
    end
    object qrProdutosProdInativo: TBooleanField
      FieldName = 'ProdInativo'
    end
  end
  object qrGrupos: TADOQuery
    Active = True
    Connection = SQLServerConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM GRUPOS')
    Left = 88
    Top = 488
    object qrGruposIDGrupo: TAutoIncField
      FieldName = 'IDGrupo'
      ReadOnly = True
    end
    object qrGruposGrupoDescricao: TStringField
      FieldName = 'GrupoDescricao'
      Size = 50
    end
    object qrGruposGrupoMaior18: TBooleanField
      FieldName = 'GrupoMaior18'
    end
    object qrGruposGrupoInativo: TBooleanField
      FieldName = 'GrupoInativo'
    end
  end
  object qrMarcas: TADOQuery
    Active = True
    Connection = SQLServerConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MARCAS')
    Left = 181
    Top = 489
    object qrMarcasIDMarca: TAutoIncField
      FieldName = 'IDMarca'
      ReadOnly = True
    end
    object qrMarcasMarcaDescricao: TStringField
      FieldName = 'MarcaDescricao'
      Size = 50
    end
    object qrMarcasMarcaInativa: TBooleanField
      FieldName = 'MarcaInativa'
    end
  end
  object qrComando: TADOQuery
    Active = True
    Connection = SQLServerConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM GRUPOS')
    Left = 416
    Top = 376
  end
  object qrProdutosGrid: TADOQuery
    Active = True
    Connection = SQLServerConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 304
    Top = 272
    object AutoIncField1: TAutoIncField
      FieldName = 'IDProduto'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'CodBarras'
      Size = 13
    end
    object StringField2: TStringField
      FieldName = 'ProdDescricao'
      Size = 255
    end
    object IntegerField1: TIntegerField
      FieldName = 'ProdGrupo'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ProdMarca'
    end
    object BCDField1: TBCDField
      FieldName = 'ProdPreco'
      Precision = 5
      Size = 2
    end
    object IntegerField3: TIntegerField
      FieldName = 'ProdQuantidade'
    end
    object BooleanField1: TBooleanField
      FieldName = 'ProdInativo'
    end
  end
  object dsGrupos: TDataSource
    DataSet = qrGrupos
    Left = 624
    Top = 154
  end
  object dsMarcas: TDataSource
    DataSet = qrMarcas
    Left = 521
    Top = 186
  end
  object dsProdutos: TDataSource
    DataSet = qrProdutos
    Left = 529
    Top = 98
  end
  object qrBuscaProdutos: TADOQuery
    Active = True
    Connection = SQLServerConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 632
    Top = 400
    object qrBuscaProdutosIDProduto: TAutoIncField
      DisplayWidth = 10
      FieldName = 'IDProduto'
      ReadOnly = True
    end
    object qrBuscaProdutosCodBarras: TStringField
      DisplayWidth = 13
      FieldName = 'CodBarras'
      Size = 13
    end
    object qrBuscaProdutosProdDescricao: TStringField
      DisplayWidth = 59
      FieldName = 'ProdDescricao'
      Size = 150
    end
    object qrBuscaProdutosProdGrupo: TIntegerField
      DisplayWidth = 26
      FieldName = 'ProdGrupo'
    end
    object qrBuscaProdutosProdMarca: TIntegerField
      DisplayWidth = 19
      FieldName = 'ProdMarca'
    end
    object qrBuscaProdutosProdPreco: TBCDField
      DisplayWidth = 18
      FieldName = 'ProdPreco'
      Precision = 5
      Size = 2
    end
    object qrBuscaProdutosProdQuantidade: TIntegerField
      DisplayWidth = 22
      FieldName = 'ProdQuantidade'
    end
    object qrBuscaProdutosProdInativo: TBooleanField
      DisplayWidth = 20
      FieldName = 'ProdInativo'
    end
  end
  object dsBuscaProdutos: TDataSource
    DataSet = qrBuscaProdutos
    Left = 624
    Top = 496
  end
end
