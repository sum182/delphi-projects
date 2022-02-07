object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Kill Task'
  ClientHeight = 152
  ClientWidth = 442
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
  object BitBtn1: TBitBtn
    Left = 48
    Top = 64
    Width = 113
    Height = 25
    Caption = 'Executar Calc'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 192
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Kill Calc'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 320
    Top = 64
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
end
