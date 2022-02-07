object FoPermissoes: TFoPermissoes
  Left = 217
  Top = 186
  Width = 696
  Height = 480
  Caption = 'FoPermissoes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ClDaSePemissoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DaSePrPermissoes'
    Left = 56
    Top = 104
  end
  object DaSePrPermissoes: TDataSetProvider
    DataSet = DaMoBio.SQLDaSeGeral
    Options = [poAllowCommandText]
    Left = 56
    Top = 40
  end
  object ClDaSeTabelas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DaSePrTabelas'
    Left = 192
    Top = 104
  end
  object DaSePrTabelas: TDataSetProvider
    DataSet = DaMoBio.SQLDaSeGeral
    Options = [poAllowCommandText]
    Left = 192
    Top = 40
  end
end
