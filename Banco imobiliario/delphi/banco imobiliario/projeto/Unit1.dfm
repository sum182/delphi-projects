object Form1: TForm1
  Left = 195
  Top = 163
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
    Left = 248
    Top = 56
    Width = 100
    Height = 13
    Caption = 'Nome dos Jogadores'
  end
  object Label2: TLabel
    Left = 392
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object Label3: TLabel
    Left = 176
    Top = 80
    Width = 50
    Height = 13
    Caption = 'Jogador 1 '
  end
  object Label4: TLabel
    Left = 176
    Top = 120
    Width = 47
    Height = 13
    Caption = 'Jogador 2'
  end
  object Label5: TLabel
    Left = 176
    Top = 160
    Width = 50
    Height = 13
    Caption = 'Jogador 3 '
  end
  object Label6: TLabel
    Left = 176
    Top = 200
    Width = 50
    Height = 13
    Caption = 'Jogador 4 '
  end
  object Label7: TLabel
    Left = 176
    Top = 240
    Width = 47
    Height = 13
    Caption = 'Jogador 5'
  end
  object Label8: TLabel
    Left = 176
    Top = 280
    Width = 50
    Height = 13
    Caption = 'Jogador 6 '
  end
  object Label9: TLabel
    Left = 32
    Top = 64
    Width = 122
    Height = 13
    Caption = 'Quantidade de Jogadores'
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 80
    Width = 129
    Height = 153
    TabOrder = 17
  end
  object dbnome1: TDBEdit
    Left = 232
    Top = 80
    Width = 121
    Height = 21
    DataField = 'Nome1'
    DataSource = dsalv
    TabOrder = 0
  end
  object dbnome2: TDBEdit
    Left = 232
    Top = 120
    Width = 121
    Height = 21
    DataField = 'Nome2'
    DataSource = dsalv
    TabOrder = 1
  end
  object dbnome3: TDBEdit
    Left = 232
    Top = 160
    Width = 121
    Height = 21
    DataField = 'Nome3'
    DataSource = dsalv
    TabOrder = 2
  end
  object dbnome4: TDBEdit
    Left = 232
    Top = 200
    Width = 121
    Height = 21
    DataField = 'Nome4'
    DataSource = dsalv
    TabOrder = 3
  end
  object dbnome5: TDBEdit
    Left = 232
    Top = 240
    Width = 121
    Height = 21
    DataField = 'Nome5'
    DataSource = dsalv
    TabOrder = 4
  end
  object dbnome6: TDBEdit
    Left = 232
    Top = 280
    Width = 121
    Height = 21
    DataField = 'Nome6'
    DataSource = dsalv
    TabOrder = 5
  end
  object dbsenha1: TDBEdit
    Left = 376
    Top = 80
    Width = 65
    Height = 21
    DataField = 'Senha1'
    DataSource = dsalv
    PasswordChar = '*'
    TabOrder = 6
  end
  object dbsenha2: TDBEdit
    Left = 376
    Top = 120
    Width = 65
    Height = 21
    DataField = 'Senha2'
    DataSource = dsalv
    PasswordChar = '*'
    TabOrder = 7
  end
  object dbsenha3: TDBEdit
    Left = 376
    Top = 160
    Width = 65
    Height = 21
    DataField = 'Senha3'
    DataSource = dsalv
    PasswordChar = '*'
    TabOrder = 8
  end
  object dbsenha4: TDBEdit
    Left = 376
    Top = 200
    Width = 65
    Height = 21
    DataField = 'Senha4'
    DataSource = dsalv
    PasswordChar = '*'
    TabOrder = 9
  end
  object dbsenha5: TDBEdit
    Left = 376
    Top = 240
    Width = 65
    Height = 21
    DataField = 'Senha5'
    DataSource = dsalv
    PasswordChar = '*'
    TabOrder = 10
  end
  object dbsenha6: TDBEdit
    Left = 376
    Top = 280
    Width = 65
    Height = 21
    DataField = 'Senha6'
    DataSource = dsalv
    PasswordChar = '*'
    TabOrder = 11
  end
  object RadioButton1: TRadioButton
    Left = 48
    Top = 104
    Width = 113
    Height = 17
    Caption = '2 Jogadores'
    TabOrder = 12
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 48
    Top = 128
    Width = 113
    Height = 17
    Caption = '3 Jogadores'
    TabOrder = 13
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 48
    Top = 152
    Width = 113
    Height = 17
    Caption = '4 Jogadores'
    TabOrder = 14
    OnClick = RadioButton3Click
  end
  object RadioButton4: TRadioButton
    Left = 48
    Top = 176
    Width = 113
    Height = 17
    Caption = '5 Jogadores'
    TabOrder = 15
    OnClick = RadioButton4Click
  end
  object RadioButton5: TRadioButton
    Left = 48
    Top = 200
    Width = 113
    Height = 17
    Caption = '6 Jogadores'
    TabOrder = 16
    OnClick = RadioButton5Click
  end
  object Btnjogar: TButton
    Left = 48
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Jogar'
    TabOrder = 18
    OnClick = BtnjogarClick
  end
  object Edit1: TEdit
    Left = 120
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 19
    Text = 'Edit1'
  end
  object Database1: TDatabase
    AliasName = 'aliasalv'
    Connected = True
    DatabaseName = 'dbalv'
    LoginPrompt = False
    Params.Strings = (
      ''
      'ENABLE BCD=FALSE'
      'DEFAULT DRIVER=PARADOX')
    SessionName = 'Default'
    Left = 480
    Top = 24
  end
  object tbjog: TTable
    DatabaseName = 'dbalv'
    TableName = 'jogadores.DB'
    Left = 480
    Top = 64
  end
  object dsalv: TDataSource
    DataSet = tbjog
    Left = 480
    Top = 112
  end
end
