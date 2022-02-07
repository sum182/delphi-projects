object Form1: TForm1
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Dados'
  end
  object lblpropriedade: TLabel
    Left = 304
    Top = 176
    Width = 66
    Height = 13
    Caption = 'lblpropriedade'
  end
  object lblvenda: TLabel
    Left = 320
    Top = 264
    Width = 40
    Height = 13
    Caption = 'lblvenda'
  end
  object Label2: TLabel
    Left = 256
    Top = 104
    Width = 38
    Height = 13
    Caption = 'Jogador'
  end
  object Label3: TLabel
    Left = 384
    Top = 104
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object lbldinheiro: TLabel
    Left = 408
    Top = 104
    Width = 47
    Height = 13
    Caption = 'lbldinheiro'
  end
  object lbljogador: TLabel
    Left = 312
    Top = 104
    Width = 45
    Height = 13
    Caption = 'lbljogador'
  end
  object eddados: TEdit
    Left = 128
    Top = 64
    Width = 41
    Height = 21
    TabOrder = 0
    Text = '2'
  end
  object btnjogar: TButton
    Left = 96
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Jogar'
    TabOrder = 1
    OnClick = btnjogarClick
  end
  object btnnovojogo: TButton
    Left = 96
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Novo Jogo'
    TabOrder = 2
    OnClick = btnnovojogoClick
  end
  object DBEdit1: TDBEdit
    Left = 64
    Top = 16
    Width = 121
    Height = 21
    DataField = 'Nome1'
    DataSource = dsjog1
    TabOrder = 3
  end
  object dbpropriedades: TDatabase
    AliasName = 'imob'
    Connected = True
    DatabaseName = 'dbpropriedades'
    LoginPrompt = False
    Params.Strings = (
      ''
      'ENABLE BCD=FALSE'
      'DEFAULT DRIVER=PARADOX')
    SessionName = 'Default'
    Left = 440
    Top = 40
  end
  object tbpropriedades: TTable
    DatabaseName = 'dbpropriedades'
    TableName = 'propriedades.DB'
    Left = 416
    Top = 40
  end
  object dspropriedades: TDataSource
    DataSet = tbpropriedades
    Left = 392
    Top = 40
  end
  object dsjog1: TDataSource
    DataSet = Form2.tbjog
    Left = 32
    Top = 16
  end
end
