object frmOpenDLL: TfrmOpenDLL
  Left = 0
  Top = 0
  Caption = 'Open DLL'
  ClientHeight = 79
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 11
    Height = 13
    Caption = 'Dll'
  end
  object BitBtn1: TBitBtn
    Left = 330
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Open DLL'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 20
    Top = 47
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 283
    Top = 45
    Width = 26
    Height = 25
    Caption = '...'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 421
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Close DLL'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object OpenDialog: TOpenDialog
    Filter = '*.dll'
    InitialDir = '\Dll\bin'
    Left = 184
  end
  object MainMenu1: TMainMenu
    Left = 240
    Top = 40
  end
end
