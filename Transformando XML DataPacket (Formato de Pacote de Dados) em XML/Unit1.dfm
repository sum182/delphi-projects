object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 305
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 25
    Top = 39
    Width = 512
    Height = 225
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 8
    Width = 520
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button2: TButton
    Left = 461
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider1'
    Left = 232
    Top = 104
    object ClientDataSet1Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ClientDataSet1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 328
    Top = 104
  end
  object XMLTransformProvider1: TXMLTransformProvider
    TransformRead.TransformationFile = 
      'C:\Documents and Settings\alvaro\Desktop\Desenvolvimento\Delphi\' +
      'Exemplos\Transformando XML DataPacket (Formato de Pacote de Dado' +
      's) em XML\bin\ToDp.xtr'
    TransformWrite.TransformationFile = 
      'C:\Documents and Settings\alvaro\Desktop\Desenvolvimento\Delphi\' +
      'Exemplos\Transformando XML DataPacket (Formato de Pacote de Dado' +
      's) em XML\bin\ToXml.xtr'
    XMLDataFile = 
      'C:\Documents and Settings\alvaro\Desktop\Desenvolvimento\Delphi\' +
      'Exemplos\Transformando XML DataPacket (Formato de Pacote de Dado' +
      's) em XML\bin\New.xml'
    Left = 112
    Top = 104
  end
end
