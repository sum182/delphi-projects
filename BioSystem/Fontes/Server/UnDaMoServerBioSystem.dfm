object Server_BioSystem: TServer_BioSystem
  OldCreateOrder = False
  OnDestroy = RemoteDataModuleDestroy
  Left = 193
  Top = 408
  Height = 192
  Width = 704
  object SqlDaSeGeral: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 128
    Top = 24
  end
  object DaSePrGeral: TDataSetProvider
    DataSet = SqlDaSeGeral
    Options = [poAllowCommandText]
    Left = 128
    Top = 88
  end
  object SqlDaSeTabelas: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 224
    Top = 24
  end
  object DaSePrTabelas: TDataSetProvider
    DataSet = SqlDaSeTabelas
    Options = [poAllowCommandText]
    Left = 224
    Top = 88
  end
  object SqlDaSeTabelas_Campos: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 344
    Top = 24
  end
  object DaSePrTabelas_Campos: TDataSetProvider
    DataSet = SqlDaSeTabelas_Campos
    Options = [poAllowCommandText]
    Left = 344
    Top = 88
  end
  object SqlDaSeMenu_Grupo: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 472
    Top = 24
  end
  object DaSePrMenu_Grupo: TDataSetProvider
    DataSet = SqlDaSeMenu_Grupo
    Options = [poAllowCommandText]
    Left = 472
    Top = 88
  end
  object SqlDaSeMenuBio: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 592
    Top = 24
  end
  object DaSePrMenuBio: TDataSetProvider
    DataSet = SqlDaSeMenuBio
    Options = [poAllowCommandText]
    Left = 592
    Top = 88
  end
  object SQLConnection: TSQLConnection
    ConnectionName = 'BioSystem'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\Delphi\Sistemas\CashSystem\BD\bd.fdb'
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
    Top = 24
  end
end
