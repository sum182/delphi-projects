object frmLeituraGuiasSelecionarGuia: TfrmLeituraGuiasSelecionarGuia
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Selecione a Guia Correta'
  ClientHeight = 440
  ClientWidth = 1049
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    TabOrder = 0
    Height = 81
    Width = 1049
    object cxLabel1: TcxLabel
      Left = 16
      Top = 32
      Caption = 
        'Foram encontrados mais de uma guia para esta carteirinha. Seleci' +
        'one a guia correta abaixo:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 81
    Align = alClient
    TabOrder = 1
    Height = 293
    Width = 1049
    object cxGrid1: TcxGrid
      Left = 2
      Top = 5
      Width = 1045
      Height = 286
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DMLeituraGuias.dsGuias
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Lote: TcxGridDBColumn
          Caption = 'Lote'
          DataBinding.FieldName = 'SEQUENCIAL_TRANSACAO'
        end
        object cxGrid1DBTableView1NUMERO_GUIA_PRESTADOR: TcxGridDBColumn
          Caption = 'Guia'
          DataBinding.FieldName = 'NUMERO_GUIA_PRESTADOR'
          Width = 79
        end
        object cxGrid1DBTableView1NOME_BENEFICIARIO: TcxGridDBColumn
          Caption = 'Nome do Benefici'#225'rio'
          DataBinding.FieldName = 'NOME_BENEFICIARIO'
          Width = 266
        end
        object cxGrid1DBTableView1NUMERO_CARTEIRA: TcxGridDBColumn
          Caption = 'Carteirinha'
          DataBinding.FieldName = 'NUMERO_CARTEIRA'
          Width = 95
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Procedimento'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 269
        end
        object cxGrid1DBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          Width = 75
        end
        object cxGrid1DBTableView1Tipo_Servico: TcxGridDBColumn
          Caption = 'Tipo de Servi'#231'o'
          DataBinding.FieldName = 'Tipo_Servico'
          Width = 183
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 374
    Align = alBottom
    TabOrder = 2
    Height = 66
    Width = 1049
    object btnOK: TcxButton
      Left = 839
      Top = 23
      Width = 80
      Height = 27
      Caption = 'OK'
      Default = True
      ModalResult = 1
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = DM.ImageList1
      TabOrder = 0
    end
    object btnCancelar: TcxButton
      Left = 934
      Top = 23
      Width = 80
      Height = 27
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = DM.ImageList1
      TabOrder = 1
    end
  end
end
