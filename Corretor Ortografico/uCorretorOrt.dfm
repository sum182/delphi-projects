object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'HABS - Corretor Orgogr'#225'fico'
  ClientHeight = 377
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 559
    Height = 73
    Align = alTop
    TabOrder = 0
    object SpellLanguageComboBox1: TSpellLanguageComboBox
      Left = 22
      Top = 27
      Width = 215
      Height = 24
      SpellChecker = SpellChecker1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 243
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Corrigir'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 73
    Width = 559
    Height = 304
    Align = alClient
    HideSelection = False
    TabOrder = 1
  end
  object SpellChecker1: TSpellChecker
    Language = 0
    SpellerType = sptISpell
    UserLanguage = ulEnglish
    Options = [spoSuggestFromUserDict, spoIgnoreAllCaps, spoIgnoreMixedDigits, spoIgnoreRomanNumerals]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    MisspellFont.MspName = 'Arial'
    MisspellFont.MspColor = clRed
    MisspellFont.MspStyle = []
    ModalDialog = False
    ShowFinishMessage = False
    Left = 408
    Top = 24
  end
end
