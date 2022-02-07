object frmImportarXML: TfrmImportarXML
  Left = 0
  Top = 0
  Caption = 'Importar Arquivos XML'
  ClientHeight = 613
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    TabOrder = 0
    Height = 105
    Width = 485
    object btnAbrirArquivos: TBitBtn
      Left = 48
      Top = 48
      Width = 153
      Height = 25
      Caption = 'Abrir Arquivos'
      TabOrder = 0
      OnClick = btnAbrirArquivosClick
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 105
    Align = alClient
    Caption = 'Arquivos Selecionados'
    TabOrder = 1
    Height = 508
    Width = 485
    object lstbxArquivos: TListBox
      Left = 19
      Top = 24
      Width = 270
      Height = 265
      Align = alCustom
      ItemHeight = 13
      TabOrder = 0
    end
    object TcxGroupBox
      Left = 2
      Top = 442
      Align = alBottom
      TabOrder = 1
      Height = 64
      Width = 481
      object btnImportar: TBitBtn
        Left = 303
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Importar'
        TabOrder = 0
        OnClick = btnImportarClick
      end
      object btnCancelar: TBitBtn
        Left = 384
        Top = 24
        Width = 75
        Height = 25
        Cancel = True
        Caption = 'Cancelar'
        TabOrder = 1
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivos XML|*.xml'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Title = 'Selecione os arquivos xml'
    Left = 408
    Top = 40
  end
end
