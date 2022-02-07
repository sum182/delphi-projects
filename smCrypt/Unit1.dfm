object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 155
  ClientWidth = 525
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
  object Label3: TLabel
    Left = 24
    Top = 89
    Width = 55
    Height = 13
    Caption = 'Criptofrafia'
  end
  object Label4: TLabel
    Left = 232
    Top = 89
    Width = 28
    Height = 13
    Caption = 'String'
  end
  object Label1: TLabel
    Left = 24
    Top = 25
    Width = 28
    Height = 13
    Caption = 'String'
  end
  object Label2: TLabel
    Left = 232
    Top = 25
    Width = 55
    Height = 13
    Caption = 'Criptofrafia'
  end
  object Edit1: TEdit
    Left = 24
    Top = 44
    Width = 180
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 232
    Top = 44
    Width = 180
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 428
    Top = 42
    Width = 89
    Height = 25
    Caption = 'Criptografar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object Edit3: TEdit
    Left = 24
    Top = 108
    Width = 180
    Height = 21
    TabOrder = 3
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 232
    Top = 108
    Width = 180
    Height = 21
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 428
    Top = 106
    Width = 89
    Height = 25
    Caption = 'Descriptografar'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
end
