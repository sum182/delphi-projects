object ServerCashSystem: TServerCashSystem
  OldCreateOrder = False
  OnDestroy = RemoteDataModuleDestroy
  Height = 671
  Width = 903
  object sqlGeral: TSQLDataSet
    SchemaName = 'sysdba'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 328
    Top = 136
  end
  object dspGeral: TDataSetProvider
    DataSet = sqlGeral
    Options = [poAllowCommandText]
    Left = 328
    Top = 192
  end
  object sqlTabelas: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM TABELAS WHERE TABE_ID = :TABE_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TABE_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 568
    Top = 298
  end
  object dspTabelas: TDataSetProvider
    DataSet = sqlTabelas
    Left = 568
    Top = 344
  end
  object sqlTabelasCampos: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM TABELAS_CAMPOS WHERE TABE_ID = :TABE_ID'
    DataSource = dsTabelas
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TABE_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 699
    Top = 296
  end
  object dspTabelasCampos: TDataSetProvider
    DataSet = sqlTabelasCampos
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 701
    Top = 344
  end
  object SqlDaSeMenu_Grupo: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 776
    Top = 450
  end
  object DaSePrMenu_Grupo: TDataSetProvider
    DataSet = SqlDaSeMenu_Grupo
    Options = [poAllowCommandText]
    Left = 776
    Top = 514
  end
  object SqlDaSeMenuBio: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 896
    Top = 450
  end
  object DaSePrMenuBio: TDataSetProvider
    DataSet = SqlDaSeMenuBio
    Options = [poAllowCommandText]
    Left = 896
    Top = 514
  end
  object SQLConnection: TSQLConnection
    ConnectionName = 'CashSystem'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=I:\Alvaro - Files\Delphi\_Desenvolvimento\Sistemas\Exec' +
        '\System 33\BD\BD.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 40
    Top = 24
  end
  object SqlMenuUsuario: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 80
    Top = 426
  end
  object DaSePrMenuUsuario: TDataSetProvider
    DataSet = SqlMenuUsuario
    Options = [poAllowCommandText]
    Left = 72
    Top = 514
  end
  object SqlMenuTabelas: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 304
    Top = 434
  end
  object DaSePrMenuTabelas: TDataSetProvider
    DataSet = SqlMenuTabelas
    Options = [poAllowCommandText]
    Left = 296
    Top = 522
  end
  object SqlDaSeUsuarios: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlCoUsuarios
    Left = 192
    Top = 434
  end
  object DaSePrUsuarios: TDataSetProvider
    DataSet = SqlDaSeUsuarios
    Options = [poAllowCommandText]
    Left = 188
    Top = 519
  end
  object SqlSrPrGrantRevoke: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'P_USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_TABELA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_DIREITO'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    StoredProcName = 'SP_GRANT_REVOKE'
    Left = 424
    Top = 434
  end
  object DaSePrGrantRevoke: TDataSetProvider
    DataSet = SqlSrPrGrantRevoke
    Left = 412
    Top = 527
  end
  object SqlCoUsuarios: TSQLConnection
    ConnectionName = 'FireBird'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Arquivos de programas\Firebird\Firebird_1_5\security' +
        '.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 40
    Top = 80
  end
  object sqlMaquinas: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM MAQUINAS WHERE MAQUINAS.MAQU_ID = :MAQU_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MAQU_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 144
    Top = 136
  end
  object dspMaquinas: TDataSetProvider
    DataSet = sqlMaquinas
    Left = 144
    Top = 192
  end
  object sqlMaquinasTipo: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM MAQUINAS_TIPO WHERE MAQUINAS_TIPO.MATI_ID = :MATI_' +
      'ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'MATI_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 240
    Top = 136
  end
  object dspMaquinasTipo: TDataSetProvider
    DataSet = sqlMaquinasTipo
    Left = 240
    Top = 192
  end
  object sqlUnidCalc: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM MAQUINAS_UNIDADE_CALCULO WHERE MAQUINAS_UNIDADE_CA' +
      'LCULO.MAUN_ID = :MAUN_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'MAUN_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 416
    Top = 136
  end
  object dsplUnidCalc: TDataSetProvider
    DataSet = sqlUnidCalc
    Left = 416
    Top = 192
  end
  object sqlDespesas: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM DESPESAS WHERE DESP_ID = :DESP_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DESP_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 504
    Top = 136
  end
  object dspDespesas: TDataSetProvider
    DataSet = sqlDespesas
    Left = 504
    Top = 184
  end
  object sqlDespesasTipo: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM DESPESAS_TIPO WHERE DETI_ID =  :DETI_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DETI_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 608
    Top = 136
  end
  object dsoDespesasTipo: TDataSetProvider
    DataSet = sqlDespesasTipo
    Left = 608
    Top = 184
  end
  object sqlPontos: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM PONTOS WHERE PONT_ID = :PONT_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PONT_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 328
    Top = 16
    object sqlPontosPONT_ID: TIntegerField
      FieldName = 'PONT_ID'
      Required = True
    end
    object sqlPontosPONT_GUERRA: TStringField
      FieldName = 'PONT_GUERRA'
      Required = True
    end
    object sqlPontosPONT_RAZAOSOCIAL: TStringField
      FieldName = 'PONT_RAZAOSOCIAL'
      Size = 30
    end
    object sqlPontosPONT_BAIRRO: TStringField
      FieldName = 'PONT_BAIRRO'
      Size = 15
    end
    object sqlPontosPONT_ESTADO: TStringField
      FieldName = 'PONT_ESTADO'
      FixedChar = True
      Size = 2
    end
    object sqlPontosPONT_CEP: TStringField
      FieldName = 'PONT_CEP'
      Size = 10
    end
    object sqlPontosPONT_CGC: TStringField
      FieldName = 'PONT_CGC'
    end
    object sqlPontosPONT_RESPONSAVEL: TStringField
      FieldName = 'PONT_RESPONSAVEL'
      Required = True
      Size = 30
    end
    object sqlPontosPONT_ENDERECO: TStringField
      FieldName = 'PONT_ENDERECO'
      Size = 30
    end
    object sqlPontosPONT_OBS: TBlobField
      FieldName = 'PONT_OBS'
      Size = 1
    end
  end
  object dspPontos: TDataSetProvider
    DataSet = sqlPontos
    Left = 328
    Top = 72
  end
  object dsPontos: TDataSource
    DataSet = sqlPontos
    Left = 400
    Top = 16
  end
  object sqlPontosTel: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM PONTOS_TELEFONES'#13#10'WHERE PONT_ID = :PONT_ID'
    DataSource = dsPontos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PONT_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 472
    Top = 72
  end
  object sqlPontosMaqu: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT *  FROM PONTOS_MAQUINAS'#13#10'WHERE PONT_ID = :PONT_ID'
    DataSource = dsPontos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PONT_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 472
    Top = 16
  end
  object sqlCobradores: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM COBRADORES '#13#10'WHERE COBR_ID = :COBR_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COBR_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 144
    Top = 16
  end
  object sqlCobradoresTel: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM COBRADORES_TELEFONES'#13#10'WHERE COBR_ID = :COBR_ID'
    DataSource = dsCobradores
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COBR_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 232
    Top = 64
  end
  object dsCobradores: TDataSource
    DataSet = sqlCobradores
    Left = 232
    Top = 16
  end
  object dspCobradores: TDataSetProvider
    DataSet = sqlCobradores
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 144
    Top = 64
  end
  object dsSocios: TDataSource
    DataSet = sqlSocios
    Left = 664
    Top = 16
  end
  object dspSocios: TDataSetProvider
    DataSet = sqlSocios
    Left = 600
    Top = 64
  end
  object sqlSociosMaqu: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM SOCIOS_MAQUINAS'#13#10'WHERE SOCI_ID = :SOCI_ID'
    DataSource = dsSocios
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SOCI_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 728
    Top = 16
  end
  object sqlSocios: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM SOCIOS WHERE SOCIOS.SOCI_ID = :SOCI_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SOCI_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 600
    Top = 16
  end
  object sqlSociosTel: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM SOCIOS_TELEFONES'#13#10'WHERE SOCI_ID = :SOCI_ID'
    DataSource = dsSocios
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SOCI_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 728
    Top = 72
  end
  object sqlLeituras: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM LEITURAS WHERE LEIT_ID = :LEIT_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LEIT_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 144
    Top = 288
  end
  object dspLeituras: TDataSetProvider
    DataSet = sqlLeituras
    Left = 144
    Top = 336
  end
  object dsLeituras: TDataSource
    DataSet = sqlLeituras
    Left = 256
    Top = 288
  end
  object sqlLeiturasComissSocios: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM LEITURAS_COMIS_SOCIOS'#13#10'WHERE LEIT_ID = :LEIT_ID'
    DataSource = dsLeituras
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LEIT_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 256
    Top = 336
  end
  object dsTabelas: TDataSource
    DataSet = sqlTabelas
    Left = 624
    Top = 296
  end
end
