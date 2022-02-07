object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 412
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 509
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 644
  end
  object smDBGrid2: TsmDBGrid
    Left = 0
    Top = 41
    Width = 509
    Height = 371
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    AlternateColor = 15658734
    Columns = <
      item
        Expanded = False
        FieldName = 'NM_EMPREGADO'
        Title.Caption = 'Funcion'#225'rio'
        Width = 241
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Width = 204
        Visible = True
      end>
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FileName = 'D:\Delphi\Projetos\Outros\GridOrdenar\bin\Dados.xml'
    Params = <>
    Left = 216
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 216
    Top = 208
  end
end
