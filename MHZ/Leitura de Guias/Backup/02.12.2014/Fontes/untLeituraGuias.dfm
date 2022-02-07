object frmLeituraGuias: TfrmLeituraGuias
  Left = 0
  Top = 0
  Caption = 'Leitura de Guias'
  ClientHeight = 657
  ClientWidth = 1129
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    TabOrder = 0
    Height = 73
    Width = 1129
    object edtData: TcxDateEdit
      Left = 24
      Top = 37
      Properties.ShowTime = False
      Properties.OnChange = edtDataPropertiesChange
      TabOrder = 2
      Width = 145
    end
    object cxLabel1: TcxLabel
      Left = 24
      Top = 17
      Caption = 'Data'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel2: TcxLabel
      Left = 200
      Top = 17
      Caption = 'C'#243'digo de Barras'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edtCodigoBarras: TcxTextEdit
      Left = 200
      Top = 37
      TabOrder = 3
      OnKeyPress = edtCodigoBarrasKeyPress
      Width = 178
    end
    object btnLer: TcxButton
      Left = 390
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Ler Guia'
      TabOrder = 5
      OnClick = btnLerClick
    end
    object cxLabel3: TcxLabel
      Left = 528
      Top = 17
      Caption = 'Status'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object edtStatus: TcxTextEdit
      Left = 528
      Top = 34
      Enabled = False
      ParentFont = False
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 275
    end
    object lblStatus: TcxLabel
      Left = 534
      Top = 38
      Caption = 'Status'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 592
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      1129
      65)
    Height = 65
    Width = 1129
    object btnRetirarGuiaLote: TcxButton
      Left = 24
      Top = 25
      Width = 145
      Height = 27
      Caption = 'Retirar Guia do Lote'
      OptionsImage.ImageIndex = 18
      OptionsImage.Images = DM.ImageList1
      TabOrder = 0
      OnClick = btnRetirarGuiaLoteClick
    end
    object btnSair: TcxButton
      Left = 996
      Top = 25
      Width = 107
      Height = 27
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Sair'
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 20
      OptionsImage.Images = DM.ImageList1
      TabOrder = 1
      OnClick = btnSairClick
    end
    object btnGuiaBranco: TcxButton
      Left = 200
      Top = 25
      Width = 145
      Height = 27
      Caption = 'Guia em Branco'
      OptionsImage.ImageIndex = 34
      OptionsImage.Images = DM.ImageList1
      TabOrder = 2
      OnClick = btnGuiaBrancoClick
    end
  end
  object gbxDadosGuia: TcxGroupBox
    Left = 0
    Top = 73
    Align = alTop
    Caption = 'Dados da Guia em Leitura'
    TabOrder = 1
    Height = 120
    Width = 1129
    object Label1: TLabel
      Left = 440
      Top = 15
      Width = 53
      Height = 13
      Caption = 'Carteirinha'
    end
    object Label2: TLabel
      Left = 24
      Top = 15
      Width = 100
      Height = 13
      Caption = 'Nome do Benefici'#225'rio'
      FocusControl = cxDBTextEdit1
    end
    object Label4: TLabel
      Left = 592
      Top = 15
      Width = 21
      Height = 13
      Caption = 'Guia'
    end
    object Label5: TLabel
      Left = 744
      Top = 64
      Width = 26
      Height = 13
      Caption = 'Plano'
      FocusControl = cxDBTextEdit2
    end
    object Label6: TLabel
      Left = 24
      Top = 64
      Width = 65
      Height = 13
      Caption = 'Procedimento'
      FocusControl = cxDBTextEdit3
    end
    object Label7: TLabel
      Left = 1000
      Top = 64
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = cxDBCalcEdit1
    end
    object Label8: TLabel
      Left = 744
      Top = 15
      Width = 73
      Height = 13
      Caption = 'Tipo de Servi'#231'o'
      FocusControl = cxDBTextEdit2
    end
    object Label9: TLabel
      Left = 592
      Top = 64
      Width = 21
      Height = 13
      Caption = 'Lote'
      FocusControl = cxDBSpinEdit1
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 24
      Top = 32
      DataBinding.DataField = 'NOME_BENEFICIARIO'
      DataBinding.DataSource = DMLeituraGuias.dsGuias
      TabOrder = 0
      Width = 393
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 744
      Top = 80
      DataBinding.DataField = 'NOME_PLANO'
      DataBinding.DataSource = DMLeituraGuias.dsGuias
      TabOrder = 6
      Width = 241
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 24
      Top = 80
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = DMLeituraGuias.dsGuias
      TabOrder = 4
      Width = 551
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 1000
      Top = 80
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DMLeituraGuias.dsGuias
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 440
      Top = 32
      DataBinding.DataField = 'NUMERO_CARTEIRA'
      DataBinding.DataSource = DMLeituraGuias.dsGuias
      TabOrder = 1
      Width = 135
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 592
      Top = 32
      DataBinding.DataField = 'NUMERO_GUIA_PRESTADOR'
      DataBinding.DataSource = DMLeituraGuias.dsGuias
      TabOrder = 2
      Width = 135
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 744
      Top = 32
      DataBinding.DataField = 'Tipo_Servico'
      DataBinding.DataSource = DMLeituraGuias.dsGuias
      TabOrder = 3
      Width = 241
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 592
      Top = 80
      DataBinding.DataField = 'SEQUENCIAL_TRANSACAO'
      DataBinding.DataSource = DMLeituraGuias.dsGuias
      TabOrder = 5
      Width = 135
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 0
    Top = 193
    Align = alClient
    Caption = 'Leituras Realizadas'
    TabOrder = 2
    Height = 334
    Width = 1129
    object cxGrid2: TcxGrid
      Left = 2
      Top = 18
      Width = 1125
      Height = 314
      Align = alClient
      TabOrder = 0
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DMLeituraGuias.dsGuiasLidas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = 'Nenhum registro encontrado'
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1NOME_BENEFICIARIO: TcxGridDBColumn
          Caption = 'Nome do Benefici'#225'rio'
          DataBinding.FieldName = 'NOME_BENEFICIARIO'
          Width = 250
        end
        object cxGrid2DBTableView1NUMERO_CARTEIRA: TcxGridDBColumn
          Caption = 'Carteirinha'
          DataBinding.FieldName = 'NUMERO_CARTEIRA'
          Width = 101
        end
        object cxGrid2DBTableView1NUMERO_GUIA_PRESTADOR: TcxGridDBColumn
          Caption = 'Guia'
          DataBinding.FieldName = 'NUMERO_GUIA_PRESTADOR'
          Width = 94
        end
        object cxGrid2DBTableView1TIPO_SERVICO: TcxGridDBColumn
          Caption = 'Tipo de Servi'#231'o'
          DataBinding.FieldName = 'TIPO_SERVICO'
          Width = 162
        end
        object cxGrid2DBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Procedimento'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 326
        end
        object cxGrid2DBTableView1SEQUENCIAL_TRANSACAO: TcxGridDBColumn
          Caption = 'Lote'
          DataBinding.FieldName = 'SEQUENCIAL_TRANSACAO'
          Width = 85
        end
        object cxGrid2DBTableView1NOME_PLANO: TcxGridDBColumn
          Caption = 'Plano'
          DataBinding.FieldName = 'NOME_PLANO'
          Width = 201
        end
        object cxGrid2DBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 88
        end
        object cxGrid2DBTableView1DATA_LEITURA: TcxGridDBColumn
          Caption = 'Data Leitura'
          DataBinding.FieldName = 'DATA_LEITURA'
          Width = 99
        end
        object cxGrid2DBTableView1HORA_LEITURA: TcxGridDBColumn
          Caption = 'Hora Leitura'
          DataBinding.FieldName = 'HORA_LEITURA'
          Width = 85
        end
        object cxGrid2DBTableView1STATUS: TcxGridDBColumn
          Caption = 'Status de Leitura'
          DataBinding.FieldName = 'STATUS'
          Width = 183
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object cxGroupBox5: TcxGroupBox
    Left = 0
    Top = 527
    Align = alBottom
    Caption = 'Totais por Status de Leitura'
    TabOrder = 4
    Height = 65
    Width = 1129
    object lblStatus6: TcxLabel
      Left = 430
      Top = 19
      Caption = 'Guia Retirada do lote:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object lblStatus4: TcxLabel
      Left = 430
      Top = 39
      Caption = 'Guia com mais de um procedimento:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object lblStatus3: TcxLabel
      Left = 832
      Top = 39
      Caption = 'N'#186' da carteira em guias diferentes:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object lblStatus2: TcxLabel
      Left = 21
      Top = 39
      Caption = 'Erro '#8211' Guia n'#227'o localizada no Lote:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object lblStatus1: TcxLabel
      Left = 21
      Top = 19
      Caption = 'OK - Leitura Realizada com Sucesso:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object lblStatus5: TcxLabel
      Left = 832
      Top = 19
      Caption = 'Leitura j'#225' realizada anteriormente:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxDBLabel1: TcxDBLabel
      Left = 230
      Top = 19
      DataBinding.DataField = 'AgregStatus1'
      DataBinding.DataSource = DMLeituraGuias.dsGuiasLidas
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 76
    end
    object cxDBLabel2: TcxDBLabel
      Left = 218
      Top = 39
      DataBinding.DataField = 'AgregStatus2'
      DataBinding.DataSource = DMLeituraGuias.dsGuiasLidas
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 76
    end
    object cxDBLabel3: TcxDBLabel
      Left = 556
      Top = 19
      DataBinding.DataField = 'AgregStatus6'
      DataBinding.DataSource = DMLeituraGuias.dsGuiasLidas
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 76
    end
    object cxDBLabel4: TcxDBLabel
      Left = 1031
      Top = 39
      DataBinding.DataField = 'AgregStatus3'
      DataBinding.DataSource = DMLeituraGuias.dsGuiasLidas
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 76
    end
    object cxDBLabel5: TcxDBLabel
      Left = 1036
      Top = 19
      DataBinding.DataField = 'AgregStatus5'
      DataBinding.DataSource = DMLeituraGuias.dsGuiasLidas
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 76
    end
    object cxDBLabel6: TcxDBLabel
      Left = 640
      Top = 39
      DataBinding.DataField = 'AgregStatus4'
      DataBinding.DataSource = DMLeituraGuias.dsGuiasLidas
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 76
    end
    object cxLabel5: TcxLabel
      Left = 1208
      Top = 19
      Caption = 'Total de Registros:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object lblTotalRegistros: TcxLabel
      Left = 1322
      Top = 19
      Caption = '0'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Orientation = cxoLeftBottom
    end
  end
end
