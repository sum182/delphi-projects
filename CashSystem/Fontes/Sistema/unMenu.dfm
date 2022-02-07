object FoMenu: TFoMenu
  Left = 248
  Top = 353
  Caption = 'Menu Principal'
  ClientHeight = 486
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object AnProgress: TAnimate
    Left = 853
    Top = 10
    Width = 155
    Height = 17
    Align = alCustom
    AutoSize = False
    Repetitions = 999
    StopFrame = 23
    Transparent = False
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 16
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Pontos1: TMenuItem
        Caption = 'Pontos'
        OnClick = Pontos1Click
      end
      object Cobradores1: TMenuItem
        Caption = 'Cobradores'
        OnClick = Cobradores1Click
      end
      object Scios1: TMenuItem
        Caption = 'S'#243'cios'
        OnClick = Scios1Click
      end
    end
    object Mquina1: TMenuItem
      Caption = 'M'#225'quinas'
      object CadastrodeMquinas1: TMenuItem
        Caption = 'Cadastro de M'#225'quinas'
        OnClick = CadastrodeMquinas1Click
      end
      object UnidadesdeCalculo1: TMenuItem
        Caption = 'Unidades de Calculo'
        OnClick = UnidadesdeCalculo1Click
      end
      object iposdeMquinas1: TMenuItem
        Caption = 'Tipos de M'#225'quinas'
        OnClick = iposdeMquinas1Click
      end
    end
    object Despesas1: TMenuItem
      Caption = 'Despesas'
      object LanamentodeDespesas1: TMenuItem
        Caption = 'Lan'#231'amento'
        OnClick = LanamentodeDespesas1Click
      end
      object ipodeDespesas1: TMenuItem
        Caption = 'Tipo de Despesas'
        OnClick = ipodeDespesas1Click
      end
      object RelatriodeDespesas1: TMenuItem
        Caption = 'Relat'#243'rio'
        OnClick = RelatriodeDespesas1Click
      end
    end
    object Desenvolvimento1: TMenuItem
      Caption = 'Desenvolvimento'
      object abelas1: TMenuItem
        Caption = 'Tabelas'
        OnClick = abelas1Click
      end
    end
    object Leituras1: TMenuItem
      Caption = 'Leituras'
      object Lanamento1: TMenuItem
        Caption = 'Lan'#231'amento'
        OnClick = Lanamento1Click
      end
      object Relatrio1: TMenuItem
        Caption = 'Relat'#243'rio'
        OnClick = Relatrio1Click
      end
    end
  end
end
