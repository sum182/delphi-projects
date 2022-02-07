object frmCustomer: TfrmCustomer
  Left = 0
  Top = 0
  Caption = 'Customer'
  ClientHeight = 394
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 581
    Height = 25
    DataSource = dsCustomer
    Align = alTop
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 581
    Height = 369
    Align = alClient
    DataSource = dsCustomer
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object sqlCustomer: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM CUSTOMER'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMConnection.Cnn
    Left = 56
    Top = 136
  end
  object dspCustomer: TDataSetProvider
    DataSet = sqlCustomer
    Left = 56
    Top = 184
  end
  object cdsCustomer: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCustomer'
    AfterPost = cdsCustomerAfterPost
    Left = 56
    Top = 232
  end
  object dsCustomer: TDataSource
    DataSet = cdsCustomer
    Left = 56
    Top = 280
  end
end
