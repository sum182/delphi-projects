object DmTeste: TDmTeste
  OldCreateOrder = False
  Height = 354
  Width = 301
  object sqlTesteReg: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM TESTE_REG'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DMConnection.Cnn
    Left = 32
    Top = 84
  end
  object dspTesteReg: TDataSetProvider
    DataSet = sqlTesteReg
    Left = 120
    Top = 84
  end
  object sqlTesteACP: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM TESTE_ACP'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DMConnection.Cnn
    Left = 32
    Top = 131
  end
  object dspTesteACP: TDataSetProvider
    DataSet = sqlTesteACP
    Left = 120
    Top = 131
  end
  object sqlTesteCalib: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 'SELECT * FROM TESTE_CALIB'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DMConnection.Cnn
    Left = 32
    Top = 179
  end
  object dspTesteCalib: TDataSetProvider
    DataSet = sqlTesteCalib
    Left = 120
    Top = 179
  end
  object sqlTesteRh: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 'SELECT * FROM TESTE_RH'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DMConnection.Cnn
    Left = 32
    Top = 225
  end
  object dspTesteRh: TDataSetProvider
    DataSet = sqlTesteRh
    Left = 120
    Top = 225
  end
  object LocalCnn: TLocalConnection
    Left = 112
    Top = 16
  end
end
