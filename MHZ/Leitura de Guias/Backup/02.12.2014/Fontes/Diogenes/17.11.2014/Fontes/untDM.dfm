object DM: TDM
  OldCreateOrder = False
  Height = 299
  Width = 459
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 42
    Top = 88
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\MHZ\Leitura de Guias\BD\mhz.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 42
    Top = 32
  end
  object FDQueryGuias: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from guias')
    Left = 42
    Top = 144
  end
  object cdsBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBusca'
    Left = 384
    Top = 128
  end
  object fdqBusca: TFDQuery
    Connection = FDConnection
    Left = 384
    Top = 24
  end
  object dspBusca: TDataSetProvider
    DataSet = fdqBusca
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 384
    Top = 72
  end
end
