object Form2: TForm2
  Left = 269
  Top = 348
  Width = 544
  Height = 375
  Caption = 'Form2'
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
    Left = 296
    Top = 80
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 408
    Top = 80
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object Label3: TLabel
    Left = 480
    Top = 80
    Width = 40
    Height = 13
    Caption = 'Procurar'
  end
  object Label4: TLabel
    Left = 40
    Top = 248
    Width = 112
    Height = 13
    Caption = 'Esccolha a quantidade '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 264
    Width = 115
    Height = 13
    Caption = 'de jogadores digite  seu '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 280
    Width = 168
    Height = 13
    Caption = 'nome e sua senha, se você ja tiver '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 296
    Width = 156
    Height = 13
    Caption = 'se cadastrado  repita a operação'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 32
    Top = 312
    Width = 127
    Height = 13
    Caption = 'e clique no botão procurar.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ednome1: TEdit
    Left = 256
    Top = 104
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 0
    Text = 'ednome1'
  end
  object ednome2: TEdit
    Left = 256
    Top = 144
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 1
    Text = 'ednome2'
  end
  object ednome3: TEdit
    Left = 256
    Top = 184
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 2
    Text = 'ednome3'
  end
  object ednome4: TEdit
    Left = 256
    Top = 224
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 3
    Text = 'ednome4'
  end
  object ednome5: TEdit
    Left = 256
    Top = 264
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 4
    Text = 'ednome5'
  end
  object ednome6: TEdit
    Left = 256
    Top = 304
    Width = 121
    Height = 21
    Color = clMenu
    Enabled = False
    TabOrder = 5
    Text = 'ednome6'
  end
  object edsenha1: TEdit
    Left = 400
    Top = 104
    Width = 65
    Height = 21
    Color = clMenu
    Enabled = False
    PasswordChar = '*'
    TabOrder = 6
    Text = 'edsenha1'
  end
  object edsenha2: TEdit
    Left = 400
    Top = 144
    Width = 65
    Height = 21
    Color = clMenu
    Enabled = False
    PasswordChar = '*'
    TabOrder = 7
    Text = 'edsenha2'
  end
  object edsenha3: TEdit
    Left = 400
    Top = 184
    Width = 65
    Height = 21
    Color = clMenu
    Enabled = False
    PasswordChar = '*'
    TabOrder = 8
    Text = 'edsenha3'
  end
  object edsenha4: TEdit
    Left = 400
    Top = 224
    Width = 65
    Height = 21
    Color = clMenu
    Enabled = False
    PasswordChar = '*'
    TabOrder = 9
    Text = 'edsenha4'
  end
  object edsenha5: TEdit
    Left = 400
    Top = 264
    Width = 65
    Height = 21
    Color = clMenu
    Enabled = False
    PasswordChar = '*'
    TabOrder = 10
    Text = 'edsenha5'
  end
  object edsenha6: TEdit
    Left = 400
    Top = 304
    Width = 65
    Height = 21
    Color = clMenu
    Enabled = False
    PasswordChar = '*'
    TabOrder = 11
    Text = 'edsenha6'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 88
    Width = 121
    Height = 137
    TabOrder = 12
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
  object btnsalvar: TButton
    Left = 288
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Jogar'
    TabOrder = 18
    OnClick = btnsalvarClick
  end
  object btnproc1: TButton
    Left = 480
    Top = 104
    Width = 25
    Height = 25
    Caption = '...'
    Enabled = False
    TabOrder = 19
    OnClick = btnproc1Click
  end
  object btnproc2: TButton
    Left = 480
    Top = 144
    Width = 25
    Height = 25
    Caption = '...'
    Enabled = False
    TabOrder = 20
    OnClick = btnproc2Click
  end
  object btnproc5: TButton
    Left = 480
    Top = 264
    Width = 25
    Height = 25
    Caption = '...'
    Enabled = False
    TabOrder = 21
    OnClick = btnproc5Click
  end
  object btnproc4: TButton
    Left = 480
    Top = 224
    Width = 25
    Height = 25
    Caption = '...'
    Enabled = False
    TabOrder = 22
    OnClick = btnproc4Click
  end
  object btnproc3: TButton
    Left = 480
    Top = 184
    Width = 25
    Height = 25
    Caption = '...'
    Enabled = False
    TabOrder = 23
    OnClick = btnproc3Click
  end
  object btnproc6: TButton
    Left = 480
    Top = 304
    Width = 25
    Height = 25
    Caption = '...'
    Enabled = False
    TabOrder = 24
    OnClick = btnproc6Click
  end
  object dbjog: TDatabase
    AliasName = 'prj'
    Connected = True
    DatabaseName = 'dbjog'
    LoginPrompt = False
    Params.Strings = (
      ''
      'ENABLE BCD=FALSE'
      'DEFAULT DRIVER=PARADOX')
    SessionName = 'Default'
    Left = 496
    Top = 16
  end
  object tbjog: TTable
    DatabaseName = 'dbjog'
    TableName = 'tbjog.DB'
    Left = 464
    Top = 16
  end
  object dsjog: TDataSource
    DataSet = tbjog
    Left = 440
    Top = 16
  end
  object tbjogaux: TTable
    DatabaseName = 'dbjog'
    TableName = 'jogaux.db'
    Left = 128
    Top = 32
  end
  object dsjogaux: TDataSource
    DataSet = tbjogaux
    Left = 104
    Top = 32
  end
end
