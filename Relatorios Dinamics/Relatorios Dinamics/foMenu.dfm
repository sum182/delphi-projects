object Form1: TForm1
  Left = 313
  Top = 139
  Caption = 'Gerenciador de Relat'#243'rios'
  ClientHeight = 453
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 336
    Top = 224
    object RelatriosDinmicos1: TMenuItem
      Caption = 'Relat'#243'rios '
      object RelatriosDinmicos2: TMenuItem
        Caption = 'Relat'#243'rios Din'#226'micos'
        OnClick = RelatriosDinmicos2Click
      end
    end
  end
end
