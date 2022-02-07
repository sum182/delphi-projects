object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Tray ICO'
  ClientHeight = 217
  ClientWidth = 404
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
    Left = 20
    Top = 13
    Width = 19
    Height = 13
    Caption = 'Hint'
  end
  object Label4: TLabel
    Left = 20
    Top = 59
    Width = 26
    Height = 13
    Caption = 'Titulo'
  end
  object BitBtn1: TBitBtn
    Left = 166
    Top = 176
    Width = 139
    Height = 25
    Caption = 'Exibir Ballon'
    Default = True
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object edHint: TEdit
    Left = 20
    Top = 32
    Width = 371
    Height = 21
    TabOrder = 1
    Text = 'Hint do Ballon'
  end
  object RadioGroup1: TRadioGroup
    Left = 20
    Top = 118
    Width = 99
    Height = 91
    Caption = 'Tipo'
    ItemIndex = 1
    Items.Strings = (
      'Error'
      'Info'
      'None'
      'Warning')
    TabOrder = 2
  end
  object edTitulo: TEdit
    Left = 20
    Top = 78
    Width = 371
    Height = 21
    TabOrder = 3
    Text = 'Sistema'
  end
  object BitBtn2: TBitBtn
    Left = 316
    Top = 176
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object TrayIcon1: TTrayIcon
    Animate = True
    AnimateInterval = 10
    Hint = 'hint'
    BalloonHint = 'Existe uma nova vers'#227'o deste sistema...'
    BalloonTitle = 'Atualiza'#231#227'o de Aplica...'
    BalloonTimeout = 20
    Visible = True
    Left = 320
    Top = 112
  end
end
