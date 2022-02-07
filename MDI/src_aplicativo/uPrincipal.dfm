object fMainForm: TfMainForm
  Left = 381
  Top = 223
  Caption = 'MDI Form'
  ClientHeight = 331
  ClientWidth = 491
  Color = clScrollBar
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 72
    Top = 64
    object mnuForms: TMenuItem
      Caption = 'Forms'
      object mnuFormInExe: TMenuItem
        Caption = 'Form In Exe'
        OnClick = mnuFormInExeClick
      end
      object mnuFormInDll: TMenuItem
        Caption = 'Form In Dll'
        OnClick = mnuFormInDllClick
      end
    end
  end
end
