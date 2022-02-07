object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 262
  Width = 303
  object cnnConnection: TSQLConnection
    ConnectionName = 'TesteDeFuncionario'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=D:\Delphi\Projetos\Outros\Teste de Funcionario\bin\bd\B' +
        'D.FDB'
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
    Left = 24
    Top = 8
  end
  object dspGeral: TDataSetProvider
    DataSet = quGeral
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 80
    Top = 56
  end
  object cdsGeral: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TESTES'
    Params = <>
    ProviderName = 'dspGeral'
    Left = 144
    Top = 56
  end
  object dsGeral: TDataSource
    DataSet = cdsGeral
    Left = 216
    Top = 56
  end
  object quGeral: TSQLDataSet
    CommandText = 'SELECT * FROM TESTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cnnConnection
    Left = 24
    Top = 56
  end
  object quTestes: TSQLDataSet
    CommandText = 'SELECT * FROM TESTES'#13#10'ORDER BY TEST_DESCR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cnnConnection
    Left = 24
    Top = 112
  end
  object dspTestes: TDataSetProvider
    DataSet = quTestes
    Left = 80
    Top = 112
  end
  object cdsTestes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTestes'
    Left = 144
    Top = 112
  end
  object XPManifest: TXPManifest
    Left = 24
    Top = 176
  end
end
