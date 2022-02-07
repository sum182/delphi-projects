object ClassACP: TClassACP
  OldCreateOrder = False
  Height = 187
  Width = 215
  object sqlACP: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM TESTE_ACP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmServer.sqlConection
    Left = 40
    Top = 24
  end
  object dspACP: TDataSetProvider
    DataSet = sqlACP
    Options = [poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    Left = 40
    Top = 80
  end
end
