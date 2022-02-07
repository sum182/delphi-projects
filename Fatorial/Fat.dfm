object Form1: TForm1
  Left = 192
  Top = 107
  Width = 377
  Height = 247
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelN: TLabel
    Left = 56
    Top = 72
    Width = 8
    Height = 13
    Caption = 'N'
  end
  object LabelFat: TLabel
    Left = 56
    Top = 104
    Width = 11
    Height = 13
    Caption = 'N!'
  end
  object EditN: TEdit
    Left = 96
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EditFat: TEdit
    Left = 96
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ButtonDireto: TButton
    Left = 248
    Top = 24
    Width = 105
    Height = 25
    Caption = 'Cálculo &Direto'
    TabOrder = 2
    OnClick = ButtonDiretoClick
  end
  object ButtonFunction: TButton
    Left = 248
    Top = 56
    Width = 105
    Height = 25
    Caption = 'Cálculo Por &Função'
    TabOrder = 3
    OnClick = ButtonFunctionClick
  end
  object ButtonProcedure: TButton
    Left = 248
    Top = 88
    Width = 113
    Height = 25
    Caption = 'Cálculo Por &Procedure'
    TabOrder = 4
    OnClick = ButtonProcedureClick
  end
  object ButtonRecursao: TButton
    Left = 248
    Top = 120
    Width = 113
    Height = 25
    Caption = 'Cálculo Por &Recursão'
    TabOrder = 5
    OnClick = ButtonRecursaoClick
  end
  object ButtonClear: TButton
    Left = 248
    Top = 152
    Width = 105
    Height = 25
    Caption = '&Limpar'
    TabOrder = 6
    OnClick = ButtonClearClick
  end
  object ButtonExit: TButton
    Left = 248
    Top = 184
    Width = 105
    Height = 25
    Caption = '&Sair'
    TabOrder = 7
    OnClick = ButtonExitClick
  end
end
