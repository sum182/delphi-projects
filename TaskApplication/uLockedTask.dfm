object svLockedTask: TsvLockedTask
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = '::  Locked Task  ::'
  ClientHeight = 48
  ClientWidth = 147
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Locked: TBitBtn
    Left = 0
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Locked'
    TabOrder = 0
    OnClick = LockedClick
  end
  object Unlockd: TBitBtn
    Left = 74
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Unlocked'
    TabOrder = 1
    OnClick = UnlockdClick
  end
  object Hide: TBitBtn
    Left = 0
    Top = 24
    Width = 149
    Height = 25
    Caption = 'Hide'
    TabOrder = 2
    OnClick = HideClick
  end
  object XPManifest1: TXPManifest
    Left = 160
    Top = 104
  end
end
