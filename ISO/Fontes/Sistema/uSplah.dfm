object frmSplash: TfrmSplash
  AlignWithMargins = True
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsToolWindow
  Caption = 'frmSplash'
  ClientHeight = 198
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Panel1: TPanel
    Left = 0
    Top = 105
    Width = 428
    Height = 41
    Align = alTop
    TabOrder = 0
    object Gauge1: TGauge
      Left = 40
      Top = 12
      Width = 353
      Height = 21
      Align = alCustom
      ForeColor = clMoneyGreen
      ParentShowHint = False
      Progress = 0
      ShowHint = True
      ShowText = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 428
    Height = 105
    Align = alTop
    Caption = 'ISO'
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 157
    Width = 428
    Height = 41
    Align = alBottom
    TabOrder = 2
    object lblCarregando: TLabel
      Left = 16
      Top = 16
      Width = 67
      Height = 13
      Caption = 'lblCarregando'
    end
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 200
    Top = 32
  end
end
