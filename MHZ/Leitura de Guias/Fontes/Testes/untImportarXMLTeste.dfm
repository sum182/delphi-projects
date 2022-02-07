object frmImportarXMLTeste: TfrmImportarXMLTeste
  Left = 0
  Top = 0
  Caption = 'frmImportarXMLTeste'
  ClientHeight = 552
  ClientWidth = 1040
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'cxGroupBox1'
    TabOrder = 0
    Height = 105
    Width = 1040
    object BitBtn2: TBitBtn
      Left = 272
      Top = 40
      Width = 75
      Height = 25
      Caption = 'BitBtn2'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 105
    Width = 1040
    Height = 447
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet4
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 447
    ClientRectRight = 1040
    ClientRectTop = 24
    object cxTabSheet3: TcxTabSheet
      Caption = 'cxTabSheet3'
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1040
        Height = 423
        Align = alClient
        DataSource = DMImportarXML.dsXMLCabecalho
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ans_tipoTransacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ans_sequencialTransacao'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ans_dataRegistroTransacao'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ans_horaRegistroTransacao'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ans_registroANS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ans_versaoPadrao'
            Width = 64
            Visible = True
          end>
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'cxTabSheet4'
      ImageIndex = 3
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 1040
        Height = 423
        Align = alClient
        DataSource = DMImportarXML.dsXMLGuias
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 40
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object FDSchemaAdapter1: TFDSchemaAdapter
    Left = 512
    Top = 280
  end
  object XMLDocument1: TXMLDocument
    Left = 520
    Top = 288
    DOMVendorDesc = 'MSXML'
  end
end
