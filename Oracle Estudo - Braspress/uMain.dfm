object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Braspress'
  ClientHeight = 405
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 48
    Top = 48
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object abeladeTeste1: TMenuItem
        Caption = 'Tabela de Teste'
        OnClick = abeladeTeste1Click
      end
    end
  end
end
