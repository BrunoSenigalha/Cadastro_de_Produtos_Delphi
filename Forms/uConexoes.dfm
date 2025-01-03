object dmConexoes: TdmConexoes
  Height = 624
  Width = 791
  PixelsPerInch = 144
  object SQLServerConnection: TADOConnection
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
    Connection = SQLServerConnection
    Parameters = <>
    Left = 160
    Top = 272
  end
end
