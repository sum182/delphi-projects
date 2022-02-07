object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Criptografia'
  ClientHeight = 175
  ClientWidth = 252
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 122
    Height = 13
    Caption = 'Chave de Criptografia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 51
    Width = 35
    Height = 13
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 91
    Width = 124
    Height = 13
    Caption = 'Senha - Criptografada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 16
    Top = 24
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 16
    Top = 64
    Width = 233
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 16
    Top = 107
    Width = 233
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 138
    Width = 100
    Height = 25
    Caption = 'CriptoGrafar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 149
    Top = 138
    Width = 100
    Height = 25
    Caption = 'Descriptografar'
    TabOrder = 4
    OnClick = Button2Click
  end
end
