object ClassMain: TClassMain
  OldCreateOrder = False
  Height = 256
  Width = 357
  object sqlGeral: TSQLDataSet
    SchemaName = 'sysdba'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmServer.sqlConection
    Left = 48
    Top = 24
  end
  object dspGeral: TDataSetProvider
    DataSet = sqlGeral
    Options = [poAllowCommandText]
    Left = 48
    Top = 80
  end
end
