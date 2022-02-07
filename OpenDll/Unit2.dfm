object frmMainMenu: TfrmMainMenu
  Left = 0
  Top = 0
  Caption = 'Teste de DLL'
  ClientHeight = 370
  ClientWidth = 635
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
    Left = 72
    Top = 32
    object DLL1: TMenuItem
      Caption = 'DLL'
      object OpenDLL1: TMenuItem
        Caption = 'Open DLL'
        OnClick = OpenDLL1Click
      end
    end
    object Relatiorios1: TMenuItem
      Caption = 'Relatorios'
      object Relat11: TMenuItem
        Caption = 'Relat 1'
      end
      object Relat21: TMenuItem
        Caption = 'Relat 2'
      end
      object Relat31: TMenuItem
        Caption = 'Relat 3'
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object mnCadastros: TMenuItem
      end
    end
  end
end
