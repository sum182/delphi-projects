object ClassRH: TClassRH
  OldCreateOrder = False
  Height = 150
  Width = 215
  object sqlRH: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM TESTE_RH'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmServer.sqlConection
    Left = 40
    Top = 24
  end
  object dspRH: TDataSetProvider
    DataSet = sqlRH
    Options = [poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    Left = 40
    Top = 80
  end
end
