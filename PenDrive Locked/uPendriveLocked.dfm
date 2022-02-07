object frmuPendriveLocked: TfrmuPendriveLocked
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = ':: Pen Drive Locked ::'
  ClientHeight = 58
  ClientWidth = 249
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 249
    Height = 58
    Align = alClient
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 43
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Bloquear '
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 133
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Desbloquear'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object XPManifest1: TXPManifest
    Left = 88
    Top = 56
  end
end
