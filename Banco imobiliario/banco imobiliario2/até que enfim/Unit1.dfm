object Form1: TForm1
  Left = 197
  Top = 216
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
    Left = 80
    Top = 160
    Width = 66
    Height = 13
    Caption = 'lblpropriedade'
  end
  object lblvenda: TLabel
    Left = 96
    Top = 248
    Width = 40
    Height = 13
    Caption = 'lblvenda'
  end
  object Label2: TLabel
    Left = 32
    Top = 88
    Width = 38
    Height = 13
    Caption = 'Jogador'
  end
  object Label3: TLabel
    Left = 160
    Top = 88
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object lbldinheiro: TLabel
    Left = 184
    Top = 88
    Width = 47
    Height = 13
    Caption = 'lbldinheiro'
  end
  object lbljogador: TLabel
    Left = 88
    Top = 88
    Width = 45
    Height = 13
    Caption = 'lbljogador'
  end
  object Label1: TLabel
    Left = 136
    Top = 24
    Width = 31
    Height = 13
    Caption = 'Dados'
  end
  object Label4: TLabel
    Left = 288
    Top = 128
    Width = 47
    Height = 13
    Caption = 'Jogador 1'
  end
  object Label5: TLabel
    Left = 288
    Top = 160
    Width = 47
    Height = 13
    Caption = 'Jogador 2'
  end
  object Label6: TLabel
    Left = 288
    Top = 192
    Width = 47
    Height = 13
    Caption = 'Jogador 3'
  end
  object Label7: TLabel
    Left = 288
    Top = 224
    Width = 47
    Height = 13
    Caption = 'Jogador 4'
  end
  object Label8: TLabel
    Left = 288
    Top = 256
    Width = 47
    Height = 13
    Caption = 'Jogador 5'
  end
  object Label9: TLabel
    Left = 288
    Top = 288
    Width = 47
    Height = 13
    Caption = 'Jogador 6'
  end
  object Label10: TLabel
    Left = 368
    Top = 96
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object Label11: TLabel
    Left = 456
    Top = 96
    Width = 39
    Height = 13
    Caption = 'Dinheiro'
  end
  object Label12: TLabel
    Left = 416
    Top = 128
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object Label13: TLabel
    Left = 416
    Top = 160
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object Label14: TLabel
    Left = 416
    Top = 288
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object Label15: TLabel
    Left = 416
    Top = 224
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object Label16: TLabel
    Left = 416
    Top = 256
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object Label17: TLabel
    Left = 416
    Top = 192
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object lblnome1: TLabel
    Left = 352
    Top = 128
    Width = 42
    Height = 13
    Caption = 'lblnome1'
  end
  object lblvl1: TLabel
    Left = 448
    Top = 128
    Width = 24
    Height = 13
    Caption = 'lblvl1'
  end
  object lblvl2: TLabel
    Left = 448
    Top = 160
    Width = 24
    Height = 13
    Caption = 'lblvl2'
  end
  object lblvl3: TLabel
    Left = 448
    Top = 192
    Width = 24
    Height = 13
    Caption = 'lblvl3'
  end
  object lblvl4: TLabel
    Left = 448
    Top = 224
    Width = 24
    Height = 13
    Caption = 'lblvl4'
  end
  object lblvl5: TLabel
    Left = 448
    Top = 256
    Width = 24
    Height = 13
    Caption = 'lblvl5'
  end
  object lblvl6: TLabel
    Left = 448
    Top = 288
    Width = 24
    Height = 13
    Caption = 'lblvl6'
  end
  object lblnome2: TLabel
    Left = 352
    Top = 160
    Width = 42
    Height = 13
    Caption = 'lblnome2'
  end
  object lblnome3: TLabel
    Left = 352
    Top = 192
    Width = 42
    Height = 13
    Caption = 'lblnome3'
  end
  object lblnome4: TLabel
    Left = 352
    Top = 224
    Width = 42
    Height = 13
    Caption = 'lblnome4'
  end
  object lblnome5: TLabel
    Left = 352
    Top = 256
    Width = 42
    Height = 13
    Caption = 'lblnome5'
  end
  object lblnome6: TLabel
    Left = 352
    Top = 288
    Width = 42
    Height = 13
    Caption = 'lblnome6'
  end
  object btnjogar: TButton
    Left = 0
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Jogar'
    TabOrder = 0
    OnClick = btnjogarClick
  end
  object eddados: TEdit
    Left = 176
    Top = 24
    Width = 41
    Height = 21
    TabOrder = 1
    Text = '2'
  end
  object btnnovojogo: TButton
    Left = 0
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Novo Jogo'
    TabOrder = 2
    OnClick = btnnovojogoClick
  end
  object dbpropriedades: TDatabase
    AliasName = 'imob'
    Connected = True
    DatabaseName = 'dbpropriedades'
    Params.Strings = (
      ''
      'ENABLE BCD=FALSE'
      'DEFAULT DRIVER=PARADOX')
    SessionName = 'Default'
    Left = 384
    Top = 48
  end
  object tbpropriedades: TTable
    DatabaseName = 'dbpropriedades'
    TableName = 'propriedades.DB'
    Left = 360
    Top = 48
  end
  object dspropriedades: TDataSource
    DataSet = tbpropriedades
    Left = 336
    Top = 48
  end
  object tbjog: TTable
    DatabaseName = 'dbpropriedades'
    TableName = 'tbjogador.DB'
    Left = 288
  end
end
