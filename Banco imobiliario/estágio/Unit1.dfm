object Form1: TForm1
  Left = 205
  Top = 134
  Width = 544
  Height = 375
  Caption = 'Banco Imobiliário'
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
  object lblpropriedade: TLabel
    Left = 472
    Top = 104
    Width = 66
    Height = 13
    Caption = 'lblpropriedade'
  end
  object lblnome: TLabel
    Left = 472
    Top = 72
    Width = 36
    Height = 13
    Caption = 'lblnome'
  end
  object lbldinheiro: TLabel
    Left = 472
    Top = 136
    Width = 47
    Height = 13
    Caption = 'lbldinheiro'
  end
  object Label1: TLabel
    Left = 312
    Top = 80
    Width = 40
    Height = 13
    Caption = 'Dados : '
    Transparent = True
  end
  object Label2: TLabel
    Left = 400
    Top = 72
    Width = 47
    Height = 13
    Caption = 'Jogador : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 408
    Top = 104
    Width = 29
    Height = 13
    Caption = 'Local:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 400
    Top = 136
    Width = 39
    Height = 13
    Caption = 'Dinheiro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblteste: TLabel
    Left = 112
    Top = 176
    Width = 33
    Height = 13
    Caption = 'lblteste'
  end
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Jogadores'
    TabOrder = 0
    OnClick = Button1Click
  end
  object eddados: TEdit
    Left = 320
    Top = 96
    Width = 25
    Height = 21
    Enabled = False
    TabOrder = 1
    Text = 'eddados'
  end
  object Button2: TButton
    Left = 360
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Jogar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object btnconstruir: TButton
    Left = 200
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Construir'
    Enabled = False
    TabOrder = 3
  end
  object edcasas: TEdit
    Left = 208
    Top = 288
    Width = 49
    Height = 21
    TabOrder = 4
    Text = 'edcasas'
    Visible = False
  end
  object rd2rosa: TRadioButton
    Left = 24
    Top = 224
    Width = 113
    Height = 17
    Caption = '2 casas'
    TabOrder = 5
    Visible = False
    OnClick = rd2rosaClick
  end
  object rd3rosa: TRadioButton
    Left = 24
    Top = 248
    Width = 113
    Height = 17
    Caption = '3 casas'
    TabOrder = 6
    Visible = False
    OnClick = rd3rosaClick
  end
  object rd4rosa: TRadioButton
    Left = 24
    Top = 272
    Width = 113
    Height = 17
    Caption = '4 casas'
    TabOrder = 7
    Visible = False
    OnClick = rd4rosaClick
  end
  object rdhrosa: TRadioButton
    Left = 24
    Top = 296
    Width = 113
    Height = 17
    Caption = 'Hotel'
    TabOrder = 8
    Visible = False
    OnClick = rdhrosaClick
  end
  object dbpropriedades: TDatabase
    AliasName = 'prj'
    Connected = True
    DatabaseName = 'dbpropriedades'
    LoginPrompt = False
    Params.Strings = (
      ''
      'ENABLE BCD=FALSE'
      'DEFAULT DRIVER=PARADOX')
    SessionName = 'Default'
    Left = 448
    Top = 320
  end
  object tbpropriedades: TTable
    DatabaseName = 'dbpropriedades'
    TableName = 'propriedades.DB'
    Left = 416
    Top = 320
  end
  object dspropriedades: TDataSource
    DataSet = tbpropriedades
    Left = 392
    Top = 320
  end
  object tbjogaux: TTable
    DatabaseName = 'dbpropriedades'
    TableName = 'jogaux.db'
    Left = 504
    Top = 320
  end
  object dsjogaux: TDataSource
    DataSet = tbjogaux
    Left = 480
    Top = 320
  end
end
