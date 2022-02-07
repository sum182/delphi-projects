object frmVendas: TfrmVendas
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 383
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 485
    Height = 25
    DataSource = dsVendas
    Align = alTop
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 485
    Height = 358
    Align = alClient
    DataSource = dsVendas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object sqlVendas: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM VENDORS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMConnection.Cnn
    Left = 56
    Top = 136
  end
  object dspVendas: TDataSetProvider
    DataSet = sqlVendas
    Left = 56
    Top = 184
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendas'
    AfterPost = cdsVendasAfterPost
    Left = 56
    Top = 232
  end
  object dsVendas: TDataSource
    DataSet = cdsVendas
    Left = 56
    Top = 280
  end
end
