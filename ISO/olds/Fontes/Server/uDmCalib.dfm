object ClassCalib: TClassCalib
  OldCreateOrder = False
  Height = 150
  Width = 215
  object sqlCalib: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM TESTE_CALIB'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmServer.sqlConection
    Left = 40
    Top = 24
  end
  object dspCalib: TDataSetProvider
    DataSet = sqlCalib
    Options = [poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    Left = 40
    Top = 80
  end
end
