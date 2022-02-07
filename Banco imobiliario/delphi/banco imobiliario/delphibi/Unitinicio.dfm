object Form1: TForm1
  Left = 199
  Top = 167
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
    Left = 189
    Top = 64
    Width = 53
    Height = 13
    Caption = 'Jogador 1 :'
  end
  object Label2: TLabel
    Left = 189
    Top = 104
    Width = 53
    Height = 13
    Caption = 'Jogador 2 :'
  end
  object Label3: TLabel
    Left = 189
    Top = 144
    Width = 53
    Height = 13
    Caption = 'Jogador 3 :'
  end
  object Label4: TLabel
    Left = 189
    Top = 184
    Width = 53
    Height = 13
    Caption = 'Jogador 4 :'
  end
  object Label5: TLabel
    Left = 189
    Top = 224
    Width = 53
    Height = 13
    Caption = 'Jogador 5 :'
  end
  object Label6: TLabel
    Left = 189
    Top = 264
    Width = 53
    Height = 13
    Caption = 'Jogador 6 :'
  end
  object Label7: TLabel
    Left = 400
    Top = 32
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object Label8: TLabel
    Left = 272
    Top = 32
    Width = 90
    Height = 13
    Caption = 'Nome do Jogador  '
  end
  object Label9: TLabel
    Left = 16
    Top = 72
    Width = 122
    Height = 13
    Caption = 'Quantidade de Jogadores'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 88
    Width = 121
    Height = 137
    TabOrder = 18
  end
  object dbnome1: TDBEdit
    Left = 248
    Top = 56
    Width = 121
    Height = 21
    Color = clMenu
    DataField = 'Nome1'
    DataSource = dsalv
    Enabled = False
    TabOrder = 0
  end
  object btnjogar: TButton
    Left = 208
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Jogar'
    TabOrder = 12
    OnClick = btnjogarClick
  end
  object dbnome2: TDBEdit
    Left = 248
    Top = 96
    Width = 121
    Height = 21
    Color = clMenu
    DataField = 'Nome2'
    DataSource = dsalv
    Enabled = False
    TabOrder = 2
  end
  object dbnome3: TDBEdit
    Left = 248
    Top = 136
    Width = 121
    Height = 21
    Color = clMenu
    DataField = 'Nome3'
    DataSource = dsalv
    Enabled = False
    TabOrder = 4
  end
  object dbnome4: TDBEdit
    Left = 248
    Top = 176
    Width = 121
    Height = 21
    Color = clMenu
    DataField = 'Nome4'
    DataSource = dsalv
    Enabled = False
    TabOrder = 6
  end
  object dbnome5: TDBEdit
    Left = 248
    Top = 216
    Width = 121
    Height = 21
    Color = clMenu
    DataField = 'Nome5'
    DataSource = dsalv
    Enabled = False
    TabOrder = 8
  end
  object dbnome6: TDBEdit
    Left = 248
    Top = 256
    Width = 121
    Height = 21
    Color = clMenu
    DataField = 'Nome6'
    DataSource = dsalv
    Enabled = False
    TabOrder = 10
  end
  object dbsenha1: TDBEdit
    Left = 392
    Top = 56
    Width = 57
    Height = 21
    Color = clMenu
    DataField = 'Senha1'
    DataSource = dsalv
    Enabled = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object dbsenha2: TDBEdit
    Left = 392
    Top = 96
    Width = 57
    Height = 21
    Color = clMenu
    DataField = 'Senha2'
    DataSource = dsalv
    Enabled = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object dbsenha3: TDBEdit
    Left = 392
    Top = 136
    Width = 57
    Height = 21
    Color = clMenu
    DataField = 'Senha3'
    DataSource = dsalv
    Enabled = False
    PasswordChar = '*'
    TabOrder = 5
  end
  object dbsenha5: TDBEdit
    Left = 392
    Top = 216
    Width = 57
    Height = 21
    Color = clMenu
    DataField = 'Senha5'
    DataSource = dsalv
    Enabled = False
    PasswordChar = '*'
    TabOrder = 9
  end
  object dbsenha6: TDBEdit
    Left = 392
    Top = 256
    Width = 57
    Height = 21
    Color = clMenu
    DataField = 'Senha6'
    DataSource = dsalv
    Enabled = False
    PasswordChar = '*'
    TabOrder = 11
  end
  object dbsenha4: TDBEdit
    Left = 392
    Top = 176
    Width = 57
    Height = 21
    Color = clMenu
    DataField = 'Senha4'
    DataSource = dsalv
    Enabled = False
    PasswordChar = '*'
    TabOrder = 7
  end
  object rb2jog: TRadioButton
    Left = 16
    Top = 96
    Width = 113
    Height = 17
    Caption = '2 Jogadores'
    TabOrder = 13
    OnClick = rb2jogClick
  end
  object rb3jog: TRadioButton
    Left = 16
    Top = 120
    Width = 113
    Height = 17
    Caption = '3 Jogadores'
    TabOrder = 14
    OnClick = rb3jogClick
  end
  object rb4jog: TRadioButton
    Left = 16
    Top = 144
    Width = 113
    Height = 17
    Caption = '4 Jogadores'
    TabOrder = 15
    OnClick = rb4jogClick
  end
  object rb5jog: TRadioButton
    Left = 16
    Top = 168
    Width = 113
    Height = 17
    Caption = '5 Jogadores'
    TabOrder = 16
    OnClick = rb5jogClick
  end
  object rb6jog: TRadioButton
    Left = 16
    Top = 192
    Width = 113
    Height = 17
    Caption = '6 Jogadores'
    TabOrder = 17
    OnClick = rb6jogClick
  end
  object dbvalor1: TDBEdit
    Left = 472
    Top = 128
    Width = 49
    Height = 21
    DataField = 'Valor1'
    DataSource = dsalv
    TabOrder = 19
    Visible = False
  end
  object dbvalor2: TDBEdit
    Left = 472
    Top = 160
    Width = 49
    Height = 21
    DataField = 'Valor2'
    DataSource = dsalv
    TabOrder = 20
    Visible = False
  end
  object dbvlor3: TDBEdit
    Left = 472
    Top = 192
    Width = 49
    Height = 21
    DataField = 'Valor3'
    DataSource = dsalv
    TabOrder = 21
    Visible = False
  end
  object dbvalor4: TDBEdit
    Left = 472
    Top = 224
    Width = 49
    Height = 21
    DataField = 'Valor4'
    DataSource = dsalv
    TabOrder = 22
    Visible = False
  end
  object dbvalor5: TDBEdit
    Left = 472
    Top = 256
    Width = 49
    Height = 21
    DataField = 'Valor5'
    DataSource = dsalv
    TabOrder = 23
    Visible = False
  end
  object dbvalor6: TDBEdit
    Left = 472
    Top = 288
    Width = 49
    Height = 21
    DataField = 'Valor6'
    DataSource = dsalv
    TabOrder = 24
    Visible = False
  end
  object Button1: TButton
    Left = 104
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 25
    OnClick = Button1Click
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
    Left = 504
  end
  object tbjog: TTable
    DatabaseName = 'dbalv'
    TableName = 'jogadores.db'
    Left = 504
    Top = 32
  end
  object dsalv: TDataSource
    DataSet = tbjog
    Left = 504
    Top = 72
  end
end
