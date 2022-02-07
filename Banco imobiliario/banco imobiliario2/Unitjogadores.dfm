object Form2: TForm2
  Left = 167
  Top = 165
  Width = 544
  Height = 375
  Caption = 'Cadastro do Jogador'
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
    Left = 72
    Top = 48
    Width = 47
    Height = 13
    Caption = 'Jogador 1'
  end
  object Label2: TLabel
    Left = 72
    Top = 88
    Width = 50
    Height = 13
    Caption = 'Jogador 2 '
  end
  object Label3: TLabel
    Left = 72
    Top = 128
    Width = 50
    Height = 13
    Caption = 'Jogador 3 '
  end
  object Label4: TLabel
    Left = 72
    Top = 168
    Width = 47
    Height = 13
    Caption = 'Jogador 4'
  end
  object Label5: TLabel
    Left = 72
    Top = 208
    Width = 47
    Height = 13
    Caption = 'Jogador 5'
  end
  object Label6: TLabel
    Left = 72
    Top = 248
    Width = 47
    Height = 13
    Caption = 'Jogador 6'
  end
  object DBEdit1: TDBEdit
    Left = 136
    Top = 40
    Width = 121
    Height = 21
    DataField = 'Nome1'
    DataSource = dsjogador
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 136
    Top = 80
    Width = 121
    Height = 21
    DataField = 'Nome2'
    DataSource = dsjogador
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 136
    Top = 120
    Width = 121
    Height = 21
    DataField = 'Nome3'
    DataSource = dsjogador
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 136
    Top = 160
    Width = 121
    Height = 21
    DataField = 'Nome4'
    DataSource = dsjogador
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 136
    Top = 200
    Width = 121
    Height = 21
    DataField = 'Nome5'
    DataSource = dsjogador
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 136
    Top = 240
    Width = 121
    Height = 21
    DataField = 'Nome6'
    DataSource = dsjogador
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 280
    Top = 40
    Width = 121
    Height = 21
    DataField = 'Senha1'
    DataSource = dsjogador
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 280
    Top = 80
    Width = 121
    Height = 21
    DataField = 'Senha2'
    DataSource = dsjogador
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 280
    Top = 120
    Width = 121
    Height = 21
    DataField = 'Senha3'
    DataSource = dsjogador
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 280
    Top = 160
    Width = 121
    Height = 21
    DataField = 'Senha4'
    DataSource = dsjogador
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 280
    Top = 200
    Width = 121
    Height = 21
    DataField = 'Senha5'
    DataSource = dsjogador
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 280
    Top = 240
    Width = 121
    Height = 21
    DataField = 'Senha6'
    DataSource = dsjogador
    TabOrder = 11
  end
  object btnsalvar: TButton
    Left = 128
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 12
    OnClick = btnsalvarClick
  end
  object tbjog: TTable
    DatabaseName = 'dbjogador'
    TableName = 'tbjogador.db'
    Left = 464
    Top = 16
  end
  object dbjogador: TDatabase
    AliasName = 'imob'
    Connected = True
    DatabaseName = 'dbjogador'
    LoginPrompt = False
    Params.Strings = (
      ''
      'ENABLE BCD=FALSE'
      'DEFAULT DRIVER=PARADOX')
    SessionName = 'Default'
    Left = 488
    Top = 16
  end
  object dsjogador: TDataSource
    DataSet = tbjog
    Left = 440
    Top = 16
  end
end
