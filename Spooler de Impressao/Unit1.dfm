object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Spooler de Impress'#227'o'
  ClientHeight = 146
  ClientWidth = 290
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
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 144
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
end
