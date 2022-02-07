object frmTesteRH: TfrmTesteRH
  Left = 0
  Top = 0
  Caption = 'RH'
  ClientHeight = 286
  ClientWidth = 456
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
  object Label1: TLabel
    Left = 24
    Top = 88
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 128
    Width = 26
    Height = 13
    Caption = 'DESC'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 104
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 144
    Width = 394
    Height = 21
    DataField = 'DESC'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 16
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Apply'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRH'
    RemoteServer = DM.RH
    Left = 336
    Top = 32
    object ClientDataSet1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ClientDataSet1DESC: TStringField
      FieldName = 'DESC'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 336
    Top = 88
  end
end
