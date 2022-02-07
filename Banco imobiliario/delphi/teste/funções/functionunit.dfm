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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 232
    Top = 136
    Width = 41
    Height = 13
  end
  object Label2: TLabel
    Left = 152
    Top = 136
    Width = 51
    Height = 13
    Caption = 'Resultado:'
  end
  object Label3: TLabel
    Left = 160
    Top = 48
    Width = 29
    Height = 13
    Caption = 'valor1'
  end
  object Label4: TLabel
    Left = 160
    Top = 80
    Width = 29
    Height = 13
    Caption = 'valor2'
  end
  object Edit1: TEdit
    Left = 224
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 224
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 176
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Soma'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Subtracao'
    TabOrder = 3
    OnClick = Button2Click
  end
end
