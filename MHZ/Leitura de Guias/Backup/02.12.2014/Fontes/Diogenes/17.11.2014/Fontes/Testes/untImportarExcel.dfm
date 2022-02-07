object frmImportarExcel: TfrmImportarExcel
  Left = 0
  Top = 0
  Caption = 'frmImportarExcel'
  ClientHeight = 669
  ClientWidth = 948
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 948
    Height = 105
    Align = alTop
    Caption = 'GroupBox1'
    TabOrder = 0
    object btnAbrirExcel: TBitBtn
      Left = 64
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Abrir Excel'
      TabOrder = 0
      OnClick = btnAbrirExcelClick
    end
    object btnImportar: TBitBtn
      Left = 176
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Importar'
      TabOrder = 1
      OnClick = btnImportarClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 105
    Width = 948
    Height = 564
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Excel'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 940
        Height = 536
        Align = alClient
        DataSource = dsExcel
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'DB'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 940
        Height = 536
        Align = alClient
        DataSource = dsGuias
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Desenvolvi' +
      'mento\Desktop\Projeto Marcos\marcos222.xls;Persist Security Info' +
      '=False;'
    LoginPrompt = False
    Mode = cmRead
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 472
  end
  object tbExcel: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'Plan1$'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 56
    Top = 536
  end
  object dsExcel: TDataSource
    DataSet = tbExcel
    Left = 56
    Top = 592
  end
  object dsGuias: TDataSource
    DataSet = FDQueryGuias
    Left = 776
    Top = 512
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 784
    Top = 392
  end
  object FDQueryGuias: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from guias')
    Left = 778
    Top = 448
  end
end
