object ClassReg: TClassReg
  OldCreateOrder = False
  Height = 150
  Width = 215
  object sqlREG: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM TESTE_REG'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmServer.sqlConection
    Left = 40
    Top = 24
  end
  object dspREG: TDataSetProvider
    DataSet = sqlREG
    Options = [poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    Left = 40
    Top = 80
  end
end
