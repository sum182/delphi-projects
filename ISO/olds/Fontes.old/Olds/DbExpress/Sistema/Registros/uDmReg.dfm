object DmReg: TDmReg
  OldCreateOrder = False
  Height = 363
  Width = 350
  object cdsLocalArm: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from reg_local_arm order by reg_local_arm.relo_descr'
    Params = <>
    ProviderName = 'dspConsulta'
    ReadOnly = True
    RemoteServer = DmShared.LocalCnn
    Left = 40
    Top = 307
    object cdsLocalArmRELO_ID: TIntegerField
      FieldName = 'RELO_ID'
      Required = True
    end
    object cdsLocalArmRELO_DESCR: TStringField
      FieldName = 'RELO_DESCR'
      Size = 50
    end
  end
  object cdsFormArm: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from reg_forma_arm order by reg_forma_arm.refo_descr'
    Params = <>
    ProviderName = 'dspConsulta'
    ReadOnly = True
    RemoteServer = DmShared.LocalCnn
    Left = 120
    Top = 307
    object cdsFormArmREFO_ID: TIntegerField
      FieldName = 'REFO_ID'
      Required = True
    end
    object cdsFormArmREFO_DESCR: TStringField
      FieldName = 'REFO_DESCR'
      Size = 50
    end
  end
  object cdsRetencao: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from reg_retencao order by reg_retencao.rere_descr'
    Params = <>
    ProviderName = 'dspConsulta'
    ReadOnly = True
    RemoteServer = DmShared.LocalCnn
    Left = 200
    Top = 307
  end
  object cdsIndexacao: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from reg_indexacao order by reg_indexacao.rein_descr'
    Params = <>
    ProviderName = 'dspConsulta'
    ReadOnly = True
    RemoteServer = DmShared.LocalCnn
    Left = 280
    Top = 307
  end
  object sqlReg: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM REGISTROS'#13#10'WHERE REGI_IDENT = :REGI_IDENT'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'REGI_IDENT'
        ParamType = ptInput
      end>
    SQLConnection = DMConnection.Cnn
    Left = 40
    Top = 65
  end
  object dspReg: TDataSetProvider
    DataSet = sqlReg
    Left = 120
    Top = 65
  end
  object LocalCnn: TLocalConnection
    Left = 40
    Top = 16
  end
  object sqlRetensao: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM REG_RETENCAO'#13#10'WHERE RERE_ID = :RERE_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RERE_ID'
        ParamType = ptInput
      end>
    SQLConnection = DMConnection.Cnn
    Left = 40
    Top = 112
  end
  object dspRetensao: TDataSetProvider
    DataSet = sqlRetensao
    Left = 120
    Top = 112
  end
  object sqlLocal: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM REG_LOCAL_ARM'#13#10'WHERE RELO_ID = :RELO_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RELO_ID'
        ParamType = ptInput
      end>
    SQLConnection = DMConnection.Cnn
    Left = 40
    Top = 160
  end
  object dspLocal: TDataSetProvider
    DataSet = sqlLocal
    Left = 120
    Top = 160
  end
  object sqlFormArm: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM REG_FORMA_ARM'#13#10'WHERE REFO_ID = :REFO_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REFO_ID'
        ParamType = ptInput
      end>
    SQLConnection = DMConnection.Cnn
    Left = 40
    Top = 208
  end
  object dspFormArm: TDataSetProvider
    DataSet = sqlFormArm
    Left = 120
    Top = 208
  end
  object sqlInd: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM REG_INDEXACAO'#13#10'WHERE REIN_ID = :REIN_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REIN_ID'
        ParamType = ptInput
      end>
    SQLConnection = DMConnection.Cnn
    Left = 40
    Top = 255
  end
  object dspIndex: TDataSetProvider
    DataSet = sqlInd
    Left = 120
    Top = 255
  end
end
