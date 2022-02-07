inherited frmAnaliseGeralGuias: TfrmAnaliseGeralGuias
  Caption = 'An'#225'lise Geral de Guias'
  ClientHeight = 772
  ClientWidth = 1445
  OnClose = FormClose
  ExplicitWidth = 1461
  ExplicitHeight = 810
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 1445
    ButtonWidth = 102
    ExplicitWidth = 1445
    inherited btnLocalizar: TToolButton
      ExplicitWidth = 102
    end
    inherited ToolButton1: TToolButton
      Left = 102
      ExplicitLeft = 102
      ExplicitWidth = 14
    end
    inherited btnNovo: TToolButton
      Left = 116
      ExplicitLeft = 116
      ExplicitWidth = 102
    end
    inherited btnSalvar: TToolButton
      Left = 218
      ExplicitLeft = 218
      ExplicitWidth = 102
    end
    inherited btnCancelar: TToolButton
      Left = 320
      ExplicitLeft = 320
      ExplicitWidth = 102
    end
    inherited btnAlterar: TToolButton
      Left = 422
      ExplicitLeft = 422
      ExplicitWidth = 102
    end
    inherited btnExcluir: TToolButton
      Left = 524
      ExplicitLeft = 524
      ExplicitWidth = 102
    end
    inherited btnImprimir: TToolButton
      Left = 626
      ExplicitLeft = 626
      ExplicitWidth = 102
    end
    inherited btnLocalizarTodosRegistros: TToolButton
      Left = 728
      ExplicitLeft = 728
      ExplicitWidth = 70
    end
    object btnExportExcel: TToolButton
      Left = 798
      Top = 0
      Caption = 'Exportar para Excel'
      ImageIndex = 11
      OnClick = btnExportExcelClick
    end
  end
  inherited PaCoPadrao: TPageControl
    Width = 1445
    Height = 731
    ActivePage = TaShConsulta
    OnChange = PaCoPadraoChange
    OnChanging = PaCoPadraoChanging
    ExplicitWidth = 1445
    ExplicitHeight = 731
    inherited TaShConsulta: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1437
      ExplicitHeight = 703
      inherited grbxPesquisa: TGroupBox
        Width = 1437
        Height = 121
        ExplicitWidth = 1437
        ExplicitHeight = 121
        inherited ToolBar1: TToolBar [5]
          Width = 1427
          ExplicitWidth = 1427
          inherited ToolButton3: TToolButton
            ExplicitWidth = 24
          end
          inherited ToolButton4: TToolButton
            ExplicitWidth = 24
          end
          inherited ToolButton5: TToolButton
            ExplicitWidth = 24
          end
          inherited ToolButton6: TToolButton
            ExplicitWidth = 24
          end
        end
        inherited EdConteudoReal: TEdit [6]
        end
        inherited EdConteudoDataInicial: TDateTimePicker [7]
        end
        inherited EdConteudoDataFinal: TDateTimePicker [8]
        end
        inherited CoBoCampos: TComboBox [9]
        end
        inherited EdConteudoNum: TEdit [10]
        end
        inherited BuProcessar: TBitBtn [11]
        end
        inherited EdConteudoTexto: TEdit [12]
        end
        object cxGroupBox1: TcxGroupBox
          Left = 2
          Top = 43
          Align = alClient
          Caption = 'Campos de Pesquisa'
          TabOrder = 9
          Height = 76
          Width = 1433
          object Label11: TLabel
            Left = 312
            Top = 16
            Width = 73
            Height = 13
            Caption = 'Tipo de Servi'#231'o'
            FocusControl = cxDBTextEdit2
          end
          object Label12: TLabel
            Left = 506
            Top = 16
            Width = 82
            Height = 13
            Caption = 'Status de Leitura'
            FocusControl = cxDBTextEdit2
          end
          object cxLabel1: TcxLabel
            Left = 24
            Top = 16
            Caption = 'Lote'
          end
          object edtData: TcxDateEdit
            Left = 152
            Top = 35
            Properties.ShowTime = False
            TabOrder = 3
            Width = 145
          end
          object cxLabel2: TcxLabel
            Left = 152
            Top = 16
            Caption = 'Data'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextStyle = []
            Style.IsFontAssigned = True
          end
          object btnPesquisar: TcxButton
            Left = 1015
            Top = 31
            Width = 107
            Height = 25
            Caption = 'Pesquisar'
            Default = True
            OptionsImage.ImageIndex = 30
            OptionsImage.Images = DM.ImageList1
            TabOrder = 10
            OnClick = btnPesquisarClick
          end
          object cmbTipoServico: TcxLookupComboBox
            Left = 312
            Top = 35
            Properties.KeyFieldNames = 'ID_TIPO_SERVICO'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRICAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsTipoServico
            TabOrder = 4
            Width = 178
          end
          object cmbStatus: TcxLookupComboBox
            Left = 506
            Top = 35
            Properties.KeyFieldNames = 'ID_LEITURA_STATUS'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRICAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsStatus
            TabOrder = 5
            Width = 212
          end
          object cmbLotes: TcxLookupComboBox
            Left = 24
            Top = 35
            Properties.KeyFieldNames = 'SEQUENCIAL_TRANSACAO'
            Properties.ListColumns = <
              item
                FieldName = 'SEQUENCIAL_TRANSACAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsLotes
            TabOrder = 1
            Width = 110
          end
          object edtCarteirinha: TcxTextEdit
            Left = 732
            Top = 35
            TabOrder = 6
            Width = 121
          end
          object cxLabel3: TcxLabel
            Left = 732
            Top = 16
            Caption = 'Carteirinha'
          end
          object cxLabel4: TcxLabel
            Left = 865
            Top = 16
            Caption = 'Guia'
          end
          object edtGuia: TcxTextEdit
            Left = 865
            Top = 35
            TabOrder = 7
            Width = 121
          end
        end
      end
      inherited grPesquisa: TsmDBGrid
        Left = 21
        Top = 127
        Width = 1057
        Height = 342
        Align = alCustom
      end
      inherited stbrConsulta: TStatusBar
        Left = 21
        Top = 486
        Width = 1227
        Align = alCustom
        ExplicitLeft = 21
        ExplicitTop = 486
        ExplicitWidth = 1227
      end
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 638
        Align = alBottom
        Caption = 'Totais por Status de Leitura'
        TabOrder = 3
        Height = 65
        Width = 1437
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
          Left = 1208
          Top = 39
          Caption = 'N'#186' da carteira em guias diferentes:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Visible = False
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
          DataBinding.DataSource = dsBusca
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
          DataBinding.DataSource = dsBusca
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
          DataBinding.DataSource = dsBusca
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
          Left = 1407
          Top = 39
          DataBinding.DataField = 'AgregStatus3'
          DataBinding.DataSource = dsBusca
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Visible = False
          Height = 21
          Width = 76
        end
        object cxDBLabel5: TcxDBLabel
          Left = 1036
          Top = 19
          DataBinding.DataField = 'AgregStatus5'
          DataBinding.DataSource = dsBusca
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
          DataBinding.DataSource = dsBusca
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
          Left = 832
          Top = 42
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
          Left = 946
          Top = 42
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
      object gbxGrid: TcxGroupBox
        Left = 0
        Top = 121
        Align = alClient
        Caption = 'Dados da Pesquisa'
        TabOrder = 4
        Height = 517
        Width = 1437
        object cxGrid2: TcxGrid
          Left = 2
          Top = 18
          Width = 1433
          Height = 497
          Align = alClient
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid2DBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGrid2DBTableView1CellDblClick
            DataController.DataSource = dsBusca
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
            object cxGrid2DBTableView1Data: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DATA'
              Width = 103
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
            object cxGrid2DBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Width = 93
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
            object cxGrid2DBTableView1LIDA: TcxGridDBColumn
              Caption = 'Guia Lida'
              DataBinding.FieldName = 'LIDA'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'Sim'
              Properties.DisplayUnchecked = 'N'#227'o'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'TRUE'
              Properties.ValueUnchecked = 'FALSE'
              Width = 53
            end
            object cxGrid2DBTableView1RETIRADA: TcxGridDBColumn
              Caption = 'Guia Retirada'
              DataBinding.FieldName = 'RETIRADA'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'Sim'
              Properties.DisplayUnchecked = 'N'#227'o'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'TRUE'
              Properties.ValueUnchecked = 'FALSE'
              Width = 80
            end
            object cxGrid2DBTableView1Guia_em_Branco: TcxGridDBColumn
              Caption = 'Guia em Branco'
              DataBinding.FieldName = 'GUIA_EM_BRANCO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'Sim'
              Properties.DisplayUnchecked = 'N'#227'o'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'TRUE'
              Properties.ValueUnchecked = 'FALSE'
              Width = 90
            end
            object cxGrid2DBTableView1GUIA_COM_DESCONTO: TcxGridDBColumn
              Caption = 'Guia com Desconto'
              DataBinding.FieldName = 'GUIA_COM_DESCONTO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'Sim'
              Properties.DisplayUnchecked = 'N'#227'o'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'TRUE'
              Properties.ValueUnchecked = 'FALSE'
              Width = 97
            end
            object cxGrid2DBTableView1CADASTRADA_MANUALMENTE: TcxGridDBColumn
              Caption = 'Cad. Manual'
              DataBinding.FieldName = 'CADASTRADA_MANUALMENTE'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'Sim'
              Properties.DisplayUnchecked = 'N'#227'o'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'TRUE'
              Properties.ValueUnchecked = 'FALSE'
              Width = 80
            end
            object cxGrid2DBTableView1LOTE_FINALIZADO: TcxGridDBColumn
              Caption = 'Lote Finalizado'
              DataBinding.FieldName = 'LOTE_FINALIZADO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'Sim'
              Properties.DisplayUnchecked = 'N'#227'o'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'TRUE'
              Properties.ValueUnchecked = 'FALSE'
              Width = 80
            end
            object cxGrid2DBTableView1LOTE_CANCELADO: TcxGridDBColumn
              Caption = 'Lote Cancelado'
              DataBinding.FieldName = 'LOTE_CANCELADO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'Sim'
              Properties.DisplayUnchecked = 'N'#227'o'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'TRUE'
              Properties.ValueUnchecked = 'FALSE'
              Width = 80
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
    end
    inherited TaShCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1437
      ExplicitHeight = 703
      object Label14: TLabel
        Left = 688
        Top = 237
        Width = 51
        Height = 13
        Caption = 'RETIRADA'
      end
      object gbxDadosGuia: TcxGroupBox
        Left = 0
        Top = 81
        Align = alTop
        Caption = 'Dados da Guia'
        TabOrder = 0
        Height = 216
        Width = 1437
        object Label2: TLabel
          Left = 440
          Top = 13
          Width = 53
          Height = 13
          Caption = 'Carteirinha'
        end
        object Label3: TLabel
          Left = 24
          Top = 13
          Width = 100
          Height = 13
          Caption = 'Nome do Benefici'#225'rio'
          FocusControl = cxDBTextEdit1
        end
        object Label4: TLabel
          Left = 592
          Top = 13
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
          Top = 13
          Width = 73
          Height = 13
          Caption = 'Tipo de Servi'#231'o'
          FocusControl = cxDBTextEdit2
        end
        object Label16: TLabel
          Left = 163
          Top = 111
          Width = 59
          Height = 13
          Caption = 'Hora Leitura'
          FocusControl = cxDBTimeEdit1
        end
        object Label10: TLabel
          Left = 24
          Top = 160
          Width = 82
          Height = 13
          Caption = 'Status de Leitura'
        end
        object Label15: TLabel
          Left = 24
          Top = 111
          Width = 59
          Height = 13
          Caption = 'Data Leitura'
        end
        object Label20: TLabel
          Left = 592
          Top = 64
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = cxDBDateEdit3
        end
        object Label9: TLabel
          Left = 1000
          Top = 13
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 24
          Top = 32
          DataBinding.DataField = 'NOME_BENEFICIARIO'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 0
          Width = 393
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 744
          Top = 80
          DataBinding.DataField = 'NOME_PLANO'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 5
          Width = 241
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 24
          Top = 80
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 4
          Width = 551
        end
        object cxDBCalcEdit1: TcxDBCalcEdit
          Left = 1000
          Top = 80
          DataBinding.DataField = 'VALOR'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 6
          Width = 135
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 440
          Top = 32
          DataBinding.DataField = 'NUMERO_CARTEIRA'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 1
          Width = 135
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 592
          Top = 32
          DataBinding.DataField = 'NUMERO_GUIA_PRESTADOR'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 2
          Width = 135
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 744
          Top = 32
          DataBinding.DataField = 'Tipo_Servico'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 3
          Width = 241
        end
        object chkGuiaLida: TcxDBCheckBox
          Left = 312
          Top = 178
          Caption = 'Guia Lida'
          DataBinding.DataField = 'LIDA'
          DataBinding.DataSource = dsCad
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'TRUE'
          Properties.ValueUnchecked = 'FALSE'
          TabOrder = 7
          Transparent = True
          OnClick = chkGuiaLidaClick
          Width = 73
        end
        object cxDBTimeEdit1: TcxDBTimeEdit
          Left = 163
          Top = 128
          DataBinding.DataField = 'HORA_LEITURA'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 8
          Width = 121
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 24
          Top = 128
          DataBinding.DataField = 'DATA_LEITURA'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 9
          Width = 121
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 24
          Top = 178
          DataBinding.DataField = 'ID_LEITURA_STATUS'
          DataBinding.DataSource = dsCad
          Properties.KeyFieldNames = 'ID_LEITURA_STATUS'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsStatus
          TabOrder = 10
          Width = 273
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 592
          Top = 80
          DataBinding.DataField = 'DATA'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 11
          Width = 121
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 402
          Top = 178
          Caption = 'Retirada do Lote'
          DataBinding.DataField = 'RETIRADA'
          DataBinding.DataSource = dsCad
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'TRUE'
          Properties.ValueUnchecked = 'FALSE'
          TabOrder = 12
          Transparent = True
          Width = 110
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 774
          Top = 178
          Caption = 'Cadastrada Manualmente'
          DataBinding.DataField = 'CADASTRADA_MANUALMENTE'
          DataBinding.DataSource = dsCad
          Enabled = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'TRUE'
          Properties.ValueUnchecked = 'FALSE'
          TabOrder = 13
          Transparent = True
          Width = 153
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 524
          Top = 178
          Caption = 'Guia em Branco'
          DataBinding.DataField = 'GUIA_EM_BRANCO'
          DataBinding.DataSource = dsCad
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'TRUE'
          Properties.ValueUnchecked = 'FALSE'
          TabOrder = 14
          Transparent = True
          Width = 110
        end
        object cxDBCheckBox6: TcxDBCheckBox
          Left = 637
          Top = 178
          Caption = 'Guia com Desconto'
          DataBinding.DataField = 'GUIA_COM_DESCONTO'
          DataBinding.DataSource = dsCad
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'TRUE'
          Properties.ValueUnchecked = 'FALSE'
          TabOrder = 15
          Transparent = True
          Width = 116
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 1000
          Top = 32
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 16
          Width = 135
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Dados do Lote'
        TabOrder = 1
        Height = 81
        Width = 1437
        object Label19: TLabel
          Left = 24
          Top = 24
          Width = 76
          Height = 13
          Caption = 'N'#250'mero do Lote'
          FocusControl = cxDBSpinEdit3
        end
        object cxDBSpinEdit3: TcxDBSpinEdit
          Left = 24
          Top = 43
          DataBinding.DataField = 'SEQUENCIAL_TRANSACAO'
          DataBinding.DataSource = dsCabecalho
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 176
          Top = 43
          Caption = 'Lote Cancelado'
          DataBinding.DataField = 'CANCELADO'
          DataBinding.DataSource = dsCabecalho
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'TRUE'
          Properties.ValueUnchecked = 'FALSE'
          TabOrder = 1
          Transparent = True
          Width = 121
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 303
          Top = 43
          Caption = 'Lote Finalizado'
          DataBinding.DataField = 'FINALIZADO'
          DataBinding.DataSource = dsCabecalho
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'TRUE'
          Properties.ValueUnchecked = 'FALSE'
          TabOrder = 2
          Transparent = True
          Width = 110
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 297
        Align = alTop
        Caption = 'Dados de Importa'#231#227'o'
        TabOrder = 2
        Height = 86
        Width = 1437
        object Label18: TLabel
          Left = 440
          Top = 25
          Width = 23
          Height = 13
          Caption = 'Hora'
          FocusControl = cxDBTimeEdit2
        end
        object Label17: TLabel
          Left = 294
          Top = 25
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = cxDBDateEdit2
        end
        object Label13: TLabel
          Left = 24
          Top = 25
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
          FocusControl = cxDBTextEdit7
        end
        object cxDBTimeEdit2: TcxDBTimeEdit
          Left = 440
          Top = 44
          DataBinding.DataField = 'HR_IMPORTACAO'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 294
          Top = 44
          DataBinding.DataField = 'DT_IMPORTACAO'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 24
          Top = 44
          DataBinding.DataField = 'LOGIN'
          DataBinding.DataSource = dsCad
          Enabled = False
          TabOrder = 2
          Width = 241
        end
      end
    end
    inherited TaShRelatorio: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1437
      ExplicitHeight = 703
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Botoes = [Localizar, Salvar, Cancelar, Alterar, Imprimir]
    BuscaSql.Strings = (
      'SELECT'
      '  GUIA.*,'
      '  CABEC.SEQUENCIAL_TRANSACAO,'
      '  CABEC.FINALIZADO AS LOTE_FINALIZADO,'
      '  CABEC.CANCELADO AS LOTE_CANCELADO,'
      '  TP.DESCRICAO AS  "TIPO_SERVICO",'
      '  STATUS.DESCRICAO AS STATUS'
      'FROM GUIAS_DETALHE GUIA'
      
        'INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_GUIAS_CABECALHO = ' +
        'GUIA.ID_GUIAS_CABECALHO)'
      
        'INNER JOIN GUIAS_GRUPO_LOTE GRUPO ON (GRUPO.ID_GUIAS_GRUPO_LOTE ' +
        '= CABEC.ID_GUIAS_GRUPO_LOTE)'
      
        'INNER JOIN TIPO_SERVICO TP ON (TP.ID_TIPO_SERVICO = GRUPO.ID_TIP' +
        'O_SERVICO)'
      
        'LEFT OUTER JOIN LEITURA_STATUS STATUS ON (STATUS.ID_LEITURA_STAT' +
        'US = GUIA.ID_LEITURA_STATUS)'
      'WHERE 1=2')
    Tabela = 'GUIAS_DETALHE'
    KeyField = 'ID_GUIAS_DETALHE'
    Left = 40
    Top = 296
  end
  inherited AcLi: TActionList
    Left = 40
    Top = 347
    inherited AcImprimir: TAction
      OnExecute = AcImprimirExecute
    end
  end
  inherited imgEnabled: TImageList
    Left = 40
    Top = 400
    Bitmap = {
      494C01010C00D8008C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001060100010601000106010001060100010601000106010001060
      1000106010001060100010601000287028000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000001060100000000000000000000000000000000000000000000000
      0000000000000000000000000000287028000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      000000000000000000000000000000000000000000000000000099330000CC66
      000099330000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      000000000000106010000000000000000000000000000000000000000000E3DF
      E30097BB97009BBB9B00C7EBC700307430000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000060606000CFCFCF000000
      0000000000001C681C00A0C0A00014641400287028002870280008600800ECD4
      EC002470240018681800FFF3FF002C742C000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      000099330000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC6600009933000000000000000000000000000099330000CC66
      0000CC660000993300000000000000000000878787004040400000000000DFDF
      DF00000000001060100000000000709070003078300020702000FFE0FF002070
      20002C742C007C987C000000000028702800000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC66000099330000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000D7CFD7001868180000000000000000006C906C00F8DCF800207020003478
      3400BBD3BB008BB38B0000000000287028000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000993300000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000002020
      2000000000001060100000000000B7DFB700B8D0B80024702400387C3800387C
      38007C987C00000000000000000028702800000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC66000099330000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000080808000101010000000
      00000000000014641400FBEBFB00A0C0A0001C681C002470240088A088002C74
      2C00247024006488640000000000287028000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      000099330000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC6600009933000000000000000000000000000099330000CC66
      0000CC66000099330000000000000000000000000000AFAFAF00000000000000
      00000000000018641800C7EBC7008FB38F0097BB9700F3E7F3000000000093B7
      93009FBF9F008BB38B0000000000287028000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000001060100000000000000000000000000000000000000000000000
      0000000000000000000000000000287028000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      000000000000000000000000000000000000000000000000000099330000CC66
      000099330000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000001060100010601000106010001060100010601000106010001060
      1000106010001060100010601000287028000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00C0C0C000E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000097433F009743
      3F00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B009330
      300097433F000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      000099330000000000000000000000000000CCCCCC0066999900666699009999
      9900E5E5E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000097433F00D6686800C660
      6000E5DEDF0092292A0092292A00E4E7E700E0E3E600D9DFE000CCC9CC008F20
      1F00AF46460097433F00000000000000000000000000CC996600FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000000000000066CCFF003399CC006666
      990099999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000097433F00D0656600C25F
      5F00E9E2E20092292A0092292A00E2E1E300E2E6E800DDE2E400CFCCCF008F22
      2200AD46460097433F000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      660099330000CC996600993300000000000000000000CCCCFF0066CCFF003399
      CC006666990099999900E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000097433F00D0656500C15D
      5D00ECE4E40092292A0092292A00DFDDDF00E1E6E800E0E5E700D3D0D2008A1E
      1E00AB44440097433F000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC9966009933000099330000000000000000000000000000CCCCFF0066CC
      FF003399CC006666990099999900E5E5E5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000097433F00D0656500C15B
      5C00EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D200962A
      2A00B24A4A0097433F000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC990000CC000000990000FFCC99000000FF000000CC00FFCC
      9900CC996600CC9966009933000000000000000000000000000000000000CCCC
      FF0066CCFF003399CC0066669900CCCCCC00FFCCCC00CC999900CC999900CC99
      9900CCCC9900E5E5E5000000000000000000000000000000000099330000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000097433F00CD626300C860
      6000C9676700CC727200CA727100C6696900C4646400CC6D6C00CA666700C55D
      5D00CD65650097433F000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC996600CC996600993300000000000000000000000000000000
      0000CCCCFF0066CCFF00B2B2B200CC999900CCCC9900F2EABF00FFFFCC00F2EA
      BF00F2EABF00CC999900ECC6D90000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000097433F00B6555300C27B
      7800D39D9C00D7A7A500D8A7A600D8A6A500D7A09F00D5A09F00D7A9A700D8AB
      AB00CC66670097433F000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600CC996600CC996600993300000000000000000000000000000000
      000000000000E5E5E500CC999900FFCC9900FFFFCC00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00FFFFFF00CC999900E5E5E500000000000000000099330000CC66
      0000CC66000099330000000000000000000099330000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F00000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600FFCC
      9900FFCC9900CC996600CC996600993300000000000000000000000000000000
      000000000000FFCCCC00CCCC9900FFFFCC00F2EABF00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00FFFFFF00F2EABF00CCCC9900000000000000000099330000CC66
      0000CC660000993300000000000099330000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F0000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600FFCC9900FFCC9900CC996600993300000000000000000000000000000000
      000000000000CCCC9900FFCC9900F2EABF00F2EABF00FFFFCC00FFFFCC00FFFF
      CC00FFFFFF00FFFFFF00F2EABF00CC999900000000000000000099330000CC66
      0000CC66000099330000000000000000000099330000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900CC66670097433F000000000000000000000000000000000000000000CC99
      6600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      000000000000CC999900F2EABF00F2EABF00F2EABF00F2EABF00FFFFCC00FFFF
      CC00FFFFCC00FFFFCC00FFFFCC00CC999900000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      000000000000CCCC9900F2EABF00FFFFCC00F2EABF00F2EABF00F2EABF00FFFF
      CC00FFFFCC00FFFFCC00F2EABF00CC999900000000000000000099330000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900CC66670097433F0000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      000000000000FFCCCC00CCCC9900FFFFFF00FFFFFF00F2EABF00F2EABF00F2EA
      BF00F2EABF00FFFFCC00CCCC9900CCCC9900000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F0000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      000000000000E5E5E500CC999900ECC6D900FFFFFF00FFFFCC00F2EABF00F2EA
      BF00F2EABF00FFCC9900CC999900E5E5E5000000000000000000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      000099330000993300000000000000000000000000000000000097433F00F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90097433F000000000000000000000000000000000000000000000000000000
      000000000000CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      00000000000000000000FFCCCC00CC999900FFCCCC00F2EABF00F2EABF00F2EA
      BF00CCCC9900CC999900FFCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500CCCC9900CC999900CC999900CC99
      9900CC999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B635A0073635A000000
      00007B736B005A524A006B635A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000732DE000732DE000000000000000000000000000000
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A525200D69494009C7B7B008473
      73009C737300DE8C8C004A42420000000000000000000732DE000732DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000732DE000732DE00000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B636B008C6B6B00EFA5A500FFAD
      AD00AD7B7B00635252000000000000000000000000000732DE000732DE000732
      DE00000000000000000000000000000000000000000000000000000000000000
      00000732DE000732DE0000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C7B7B00DE9C
      9C0052424200000000000000000000000000000000000732DE000732DD000732
      DE000732DE000000000000000000000000000000000000000000000000000732
      DE000732DE000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B635A0073635200736352007363
      52007363520073635200736352007363520073635200736352007B736B00DE9C
      9C003929210073635A0073635A0084736B0000000000000000000534ED000732
      DF000732DE000732DE00000000000000000000000000000000000732DE000732
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B635A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00847B7B00DEA5
      A500524A4200FFFFFF00635A5A0073635A000000000000000000000000000000
      00000732DE000732DE000732DD00000000000732DD000732DE000732DE000000
      000000000000000000000000000000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD840000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000006B635A00FFFFFF00E7390000D639
      0000CE310000B5310000B5310000A5290000A5290000FFFFFF00847B7B00DEA5
      A50063525200FFFFFF00635A5A00736352000000000000000000000000000000
      0000000000000732DD000633E6000633E6000633E9000732DC00000000000000
      0000000000000000000000000000000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B552002184290000000000000000000021A5009494F7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A500000000006B635A00FFFFFF00E7390000D639
      0000CE310000B5310000B5310000A5290000A5290000FFFFFF00847B7B00DEAD
      AD0063525200FFFFFF00635A5A00735A52000000000000000000000000000000
      000000000000000000000633E3000732E3000534EF0000000000000000000000
      0000000000000000000000000000000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C002184290000000000000000000021A500B5C6FF009CBD
      FF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638CF700638CF700638C
      F700526BF700526BF7000021A500000000006B635A00FFFFFF00E7390000D639
      0000CE310000B5310000B5310000A5290000A5290000FFFFFF00847B7B00DEB5
      B50063525200FFFFFF00635A5A00735A52000000000000000000000000000000
      0000000000000732DD000534ED000533E9000434EF000434F500000000000000
      000000000000000000000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD840000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000006B635A00FFFFFF00E7390000D639
      0000CE310000B5310000B5310000A5290000A5290000FFFFFF0084847B00DEB5
      B50063525200FFFFFF00635A5A00735A52000000000000000000000000000000
      00000434F4000534EF000533EB0000000000000000000434F4000335F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B635A00FFFFFF00E7390000D639
      0000CE310000B5310000B5310000A5290000A5290000FFFFFF0084848400DEBD
      BD0063525200FFFFFF00635A5200735A52000000000000000000000000000335
      FC000534EF000434F800000000000000000000000000000000000335FC000335
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B635A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700EFEFEF0084848400DEBD
      BD005A524A00FFFFFF00635A520073635A0000000000000000000335FB000335
      FB000335FC000000000000000000000000000000000000000000000000000335
      FB000335FB000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B635A006B635A006B635A006B63
      5A006B635A006B635A006B635A006B635A00635A5A005A524A00847B7B00DEC6
      C6004A4239006B635A006B635A0073635A00000000000335FB000335FB000335
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000335FB0000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848C8C005A525200948C8C00FFE7
      E7005A525200524A42006B5A5200000000000335FB000335FB000335FB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848C8C00EFEFEF00D6C6C6006B63
      6300DEC6C600FFE7E7004A4A4A00000000000335FB000335FB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B636300848C8C00948C8C000000
      0000848C8C00948C8C00948C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF800FC7FFE3FCFC3FBFEF87FFE1FC7C3FBE0F07FFE0FC3C39800
      E0018007C1C30A02C0018003C0C3030280018001C0430A06C0018003C0C39802
      E0018007C1C3B822F07FFE0FC3C3FBFEF87FFE1FC7C3F800FC7FFE3FCFC3FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFC007C00707FFFFFF
      8003800383FFFFFF8003000181FFC3F380030001C0FFC3E380030001E003C3C3
      80030000F001C38380030000F800C30380038000F800C2038003C000F800C303
      8003E001F800C3838003E007F800C3C38003F007F800C3E38003F003F800C3F3
      C007F803FC01FFFFFFFFFFFFFE03FFFFFFFFFFFFFF91FFFCFC3FFFFFFF019FF9
      FC3FFFFFFF038FF3FC3FFFFFFFC787E7FC3FFFFF0000C3CFFC3FFFFF0000F11F
      800180010000F83F800180010000FC7F800180010000F83F800180010000F19F
      FC3FFFFF0000E3CFFC3FFFFF0000C7E7FC3FFFFF00008FFBFC3FFFFFFF011FFF
      FC3FFFFFFF013FFFFFFFFFFFFF11FFFF00000000000000000000000000000000
      000000000000}
  end
  inherited imgDisabled: TImageList
    Left = 40
    Top = 448
    Bitmap = {
      494C01010B000C00800010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900000000000000000000000000000000000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC0099999900000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      990000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      990000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC0099999900000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900000000000000000000000000000000000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00C0C0C000E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      990099999900000000000000000000000000CCCCCC00B2B2B200999999009999
      9900E5E5E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC00999999000000000000000000B2B2B200CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00B2B2
      B200B2B2B20099999900000000000000000000000000CCCCCC00B2B2B2009999
      990099999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC009999990000000000B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B20099999900B2B2B200999999000000000000000000E5E5E500CCCCCC00B2B2
      B2009999990099999900E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC009999990000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00B2B2B2009999990099999900000000000000000000000000E5E5E500CCCC
      CC00B2B2B2009999990099999900E5E5E5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC009999990000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00B2B2B20099999900CCCCCC00B2B2B20099999900CCCC
      CC00B2B2B200B2B2B2009999990000000000000000000000000000000000E5E5
      E500CCCCCC00B2B2B20099999900CCCCCC00E5E5E50099999900999999009999
      9900B2B2B200E5E5E5000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00999999009999990099999900999999009999990099999900CCCC
      CC00CCCCCC00CCCCCC009999990000000000B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200B2B2B200B2B2B200999999000000000000000000000000000000
      0000E5E5E500CCCCCC00B2B2B20099999900B2B2B200CCCCCC00CCCCCC00CCCC
      CC00CCCCCC0099999900E5E5E50000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00B2B2B200B2B2B200B2B2B200999999000000000000000000000000000000
      000000000000E5E5E50099999900E5E5E500CCCCCC00CCCCCC00CCCCCC00E5E5
      E500E5E5E500E5E5E50099999900E5E5E500000000000000000099999900CCCC
      CC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC00CCCCCC00999999000000000000000000B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200CCCC
      CC00CCCCCC00B2B2B200B2B2B200999999000000000000000000000000000000
      000000000000E5E5E500B2B2B200CCCCCC00CCCCCC00CCCCCC00CCCCCC00E5E5
      E500E5E5E500E5E5E500CCCCCC00B2B2B200000000000000000099999900CCCC
      CC00CCCCCC00999999000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000B2B2B2000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200CCCCCC00CCCCCC00B2B2B200999999000000000000000000000000000000
      000000000000B2B2B200E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00E5E5E500E5E5E500CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF0099999900CCCCCC009999990000000000000000000000000000000000B2B2
      B20000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000000000B2B2
      B200B2B2B200B2B2B20099999900000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC009999990000000000000000000000000000000000B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      000000000000B2B2B200CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000099999900E5E5E5009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF00999999009999990099999900000000000000000000000000000000000000
      0000B2B2B20000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      000000000000E5E5E500B2B2B200E5E5E500E5E5E500CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00B2B2B200B2B2B200000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000000000000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      000000000000B2B2B20000000000000000000000000000000000000000000000
      000000000000E5E5E50099999900E5E5E500E5E5E500CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00E5E5E50099999900E5E5E5000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      000000000000B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B20000000000000000000000000000000000000000000000
      00000000000000000000E5E5E50099999900E5E5E500CCCCCC00CCCCCC00CCCC
      CC00B2B2B20099999900E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500B2B2B20099999900999999009999
      990099999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000081818100818181000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      80008080800080808000FFFFFF00000000000000000081818100818181000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008181810081818100000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080000000000000000000000000000000000081818100818181008181
      8100000000000000000000000000000000000000000000000000000000000000
      0000818181008181810000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000FFFFFF00FFFFFF00FFFFFF000000000081818100818181008181
      8100818181000000000000000000000000000000000000000000000000008181
      8100818181000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000888888008282
      8200818181008181810000000000000000000000000000000000818181008181
      8100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      0000818181008181810081818100000000008181810081818100818181000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      0000000000008181810085858500858585008686860080808000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000FFFFFF00000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000FFFFFF00000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      0000000000000000000083838300848484008989890000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      000000000000818181008888880086868600888888008B8B8B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      00008B8B8B00898989008787870000000000000000008B8B8B008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000008E8E
      8E00898989008D8D8D00000000000000000000000000000000008E8E8E008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800000000000808080008080
      800080808000FFFFFF0080808000FFFFFF0000000000000000008E8E8E008E8E
      8E008E8E8E000000000000000000000000000000000000000000000000008E8E
      8E008E8E8E000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000FFFFFF008080800080808000000000008E8E8E008E8E8E008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000008E8E8E0000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000FFFFFF0000000000000000008E8E8E008E8E8E008E8E8E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800000000000000000008E8E8E008E8E8E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000FC7FFE3FCFC30000F87FFE1FC7C30000F07FFE0FC3C30000
      E0018007C1C30000C0018003C0C3000080018001C0430000C0018003C0C30000
      E0018007C1C30000F07FFE0FC3C30000F87FFE1FC7C30000FC7FFE3FCFC30000
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF8FFFFFFFC001C00707FFFFFF
      8001800383FFFFFF8001000181FFC3F380014001C0FFC3E380014001E003C3C3
      80017FF0F001C38380014000F800C30380018000F800C2038001DFE0F800C303
      8001E821F800C3838001EFF7F800C3C38001F417F800C3E38001F7FBF800C3F3
      8001F803FC01FFFFFFFFFFFFFE03FFFFFFFFFFFFFFD1FFFCFF3FFFFFFF819FF9
      FE3FFFFFFFC78FF3FE3FFFFFFFC087E7FE3FFFFFC000C3CFFE3FFFFF8000F11F
      E001E0018000F83FC001C0018000FC7FC003C0038000F83FFE3FFFFF8000F19F
      FE3FFFFF8000E3CFFE3FFFFF8040C7E7FE3FFFFFFFC08FFBFE7FFFFFFFC31FFF
      FFFFFFFFFF833FFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited fdqCad: TFDQuery
    BeforeEdit = fdqCadBeforeEdit
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT'
      '  GUIA.*,'
      '  CABEC.SEQUENCIAL_TRANSACAO,'
      '  TP.DESCRICAO AS  "TIPO_SERVICO",'
      '  STATUS.DESCRICAO AS STATUS,'
      '  USUARIO.LOGIN,'
      '  GRUPO.DT_IMPORTACAO,'
      '  GRUPO.HR_IMPORTACAO'
      'FROM GUIAS_DETALHE GUIA'
      
        'INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_GUIAS_CABECALHO = ' +
        'GUIA.ID_GUIAS_CABECALHO)'
      
        'INNER JOIN GUIAS_GRUPO_LOTE GRUPO ON (GRUPO.ID_GUIAS_GRUPO_LOTE ' +
        '= CABEC.ID_GUIAS_GRUPO_LOTE)'
      
        'INNER JOIN TIPO_SERVICO TP ON (TP.ID_TIPO_SERVICO = GRUPO.ID_TIP' +
        'O_SERVICO)'
      
        'LEFT OUTER JOIN LEITURA_STATUS STATUS ON (STATUS.ID_LEITURA_STAT' +
        'US = GUIA.ID_LEITURA_STATUS)'
      
        'LEFT OUTER JOIN USUARIO ON (USUARIO.ID_USUARIO = GRUPO.ID_USUARI' +
        'O)'
      'WHERE GUIA.ID_GUIAS_DETALHE =:ID_GUIAS_DETALHE')
    Top = 560
    ParamData = <
      item
        Name = 'ID_GUIAS_DETALHE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqCadID_GUIAS_DETALHE: TIntegerField
      FieldName = 'ID_GUIAS_DETALHE'
      Origin = 'ID_GUIAS_DETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object fdqCadID_GUIAS_CABECALHO: TIntegerField
      FieldName = 'ID_GUIAS_CABECALHO'
      Origin = 'ID_GUIAS_CABECALHO'
      ReadOnly = True
      Required = True
    end
    object fdqCadREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Origin = 'REGISTRO_ANS'
      Size = 50
    end
    object fdqCadDATA_EMISSAO_GUIA: TDateField
      FieldName = 'DATA_EMISSAO_GUIA'
      Origin = 'DATA_EMISSAO_GUIA'
    end
    object fdqCadNUMERO_GUIA_PRESTADOR: TIntegerField
      FieldName = 'NUMERO_GUIA_PRESTADOR'
      Origin = 'NUMERO_GUIA_PRESTADOR'
    end
    object fdqCadDADOS_AUTORIZACAO: TStringField
      FieldName = 'DADOS_AUTORIZACAO'
      Origin = 'DADOS_AUTORIZACAO'
      Size = 50
    end
    object fdqCadNUMERO_CARTEIRA: TIntegerField
      FieldName = 'NUMERO_CARTEIRA'
      Origin = 'NUMERO_CARTEIRA'
    end
    object fdqCadNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      Origin = 'NOME_BENEFICIARIO'
      Size = 200
    end
    object fdqCadNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Origin = 'NOME_PLANO'
      Size = 50
    end
    object fdqCadNOME_CONTRATADO1: TStringField
      FieldName = 'NOME_CONTRATADO1'
      Origin = 'NOME_CONTRATADO1'
      Size = 200
    end
    object fdqCadNOME_PROFISSIONAL: TStringField
      FieldName = 'NOME_PROFISSIONAL'
      Origin = 'NOME_PROFISSIONAL'
      Size = 200
    end
    object fdqCadSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Origin = 'SIGLA_CONSELHO'
      Size = 30
    end
    object fdqCadNUMERO_CONSELHO: TStringField
      FieldName = 'NUMERO_CONSELHO'
      Origin = 'NUMERO_CONSELHO'
      Size = 30
    end
    object fdqCadUF_CONSELHO: TStringField
      FieldName = 'UF_CONSELHO'
      Origin = 'UF_CONSELHO'
      Size = 5
    end
    object fdqCadNOME_CONTRATADO2: TStringField
      FieldName = 'NOME_CONTRATADO2'
      Origin = 'NOME_CONTRATADO2'
      Size = 200
    end
    object fdqCadCARATER_ATENDIMENTO: TStringField
      FieldName = 'CARATER_ATENDIMENTO'
      Origin = 'CARATER_ATENDIMENTO'
    end
    object fdqCadTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Origin = 'TIPO_SAIDA'
      Size = 10
    end
    object fdqCadTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      Origin = 'TIPO_ATENDIMENTO'
      Size = 10
    end
    object fdqCadCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object fdqCadTIPO_TABELA: TStringField
      FieldName = 'TIPO_TABELA'
      Origin = 'TIPO_TABELA'
      Size = 10
    end
    object fdqCadDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
    object fdqCadDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdqCadQUANTIDADE_REALIZADA: TIntegerField
      FieldName = 'QUANTIDADE_REALIZADA'
      Origin = 'QUANTIDADE_REALIZADA'
    end
    object fdqCadVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object fdqCadVALORTOTAL_1: TFloatField
      FieldName = 'VALORTOTAL_1'
      Origin = 'VALORTOTAL_1'
    end
    object fdqCadVALORTOTAL_2: TFloatField
      FieldName = 'VALORTOTAL_2'
      Origin = 'VALORTOTAL_2'
    end
    object fdqCadLIDA: TStringField
      FieldName = 'LIDA'
      Origin = 'LIDA'
      Size = 5
    end
    object fdqCadRETIRADA: TStringField
      FieldName = 'RETIRADA'
      Origin = 'RETIRADA'
      Size = 5
    end
    object fdqCadDATA_LEITURA: TDateField
      FieldName = 'DATA_LEITURA'
      Origin = 'DATA_LEITURA'
    end
    object fdqCadHORA_LEITURA: TTimeField
      FieldName = 'HORA_LEITURA'
      Origin = 'HORA_LEITURA'
    end
    object fdqCadID_USUARIO_LEITURA: TIntegerField
      FieldName = 'ID_USUARIO_LEITURA'
      Origin = 'ID_USUARIO_LEITURA'
    end
    object fdqCadID_LEITURA_STATUS: TIntegerField
      FieldName = 'ID_LEITURA_STATUS'
      Origin = 'ID_LEITURA_STATUS'
    end
    object fdqCadSEQUENCIAL_TRANSACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEQUENCIAL_TRANSACAO'
      Origin = 'SEQUENCIAL_TRANSACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqCadTIPO_SERVICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_SERVICO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqCadSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqCadLOGIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqCadDT_IMPORTACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_IMPORTACAO'
      Origin = 'DT_IMPORTACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqCadHR_IMPORTACAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HR_IMPORTACAO'
      Origin = 'HR_IMPORTACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqCadCADASTRADA_MANUALMENTE: TStringField
      FieldName = 'CADASTRADA_MANUALMENTE'
      Origin = 'CADASTRADA_MANUALMENTE'
      Size = 5
    end
    object fdqCadGUIA_EM_BRANCO: TStringField
      FieldName = 'GUIA_EM_BRANCO'
      Origin = 'GUIA_EM_BRANCO'
      Size = 5
    end
    object fdqCadGUIA_COM_DESCONTO: TStringField
      FieldName = 'GUIA_COM_DESCONTO'
      Origin = 'GUIA_COM_DESCONTO'
      Size = 5
    end
  end
  inherited dsCad: TDataSource
    Top = 616
  end
  inherited dsBusca: TDataSource
    Left = 112
    Top = 616
  end
  inherited fdqBusca: TFDQuery
    OnCalcFields = fdqBuscaCalcFields
    AggregatesActive = True
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT'
      '  GUIA.*,'
      '  CABEC.SEQUENCIAL_TRANSACAO,'
      '  CABEC.FINALIZADO AS LOTE_FINALIZADO,'
      '  CABEC.CANCELADO AS LOTE_CANCELADO,'
      '  TP.DESCRICAO AS  "TIPO_SERVICO",'
      '  STATUS.DESCRICAO AS STATUS'
      'FROM GUIAS_DETALHE GUIA'
      
        'INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_GUIAS_CABECALHO = ' +
        'GUIA.ID_GUIAS_CABECALHO)'
      
        'INNER JOIN GUIAS_GRUPO_LOTE GRUPO ON (GRUPO.ID_GUIAS_GRUPO_LOTE ' +
        '= CABEC.ID_GUIAS_GRUPO_LOTE)'
      
        'INNER JOIN TIPO_SERVICO TP ON (TP.ID_TIPO_SERVICO = GRUPO.ID_TIP' +
        'O_SERVICO)'
      
        'LEFT OUTER JOIN LEITURA_STATUS STATUS ON (STATUS.ID_LEITURA_STAT' +
        'US = GUIA.ID_LEITURA_STATUS)')
    Left = 112
    Top = 560
    object fdqBuscaID_GUIAS_DETALHE: TIntegerField
      FieldName = 'ID_GUIAS_DETALHE'
      Origin = 'ID_GUIAS_DETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqBuscaID_GUIAS_CABECALHO: TIntegerField
      FieldName = 'ID_GUIAS_CABECALHO'
      Origin = 'ID_GUIAS_CABECALHO'
      Required = True
    end
    object fdqBuscaREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Origin = 'REGISTRO_ANS'
      Size = 50
    end
    object fdqBuscaDATA_EMISSAO_GUIA: TDateField
      FieldName = 'DATA_EMISSAO_GUIA'
      Origin = 'DATA_EMISSAO_GUIA'
    end
    object fdqBuscaNUMERO_GUIA_PRESTADOR: TIntegerField
      FieldName = 'NUMERO_GUIA_PRESTADOR'
      Origin = 'NUMERO_GUIA_PRESTADOR'
    end
    object fdqBuscaDADOS_AUTORIZACAO: TStringField
      FieldName = 'DADOS_AUTORIZACAO'
      Origin = 'DADOS_AUTORIZACAO'
      Size = 50
    end
    object fdqBuscaNUMERO_CARTEIRA: TIntegerField
      FieldName = 'NUMERO_CARTEIRA'
      Origin = 'NUMERO_CARTEIRA'
    end
    object fdqBuscaNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      Origin = 'NOME_BENEFICIARIO'
      Size = 200
    end
    object fdqBuscaNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Origin = 'NOME_PLANO'
      Size = 50
    end
    object fdqBuscaNOME_CONTRATADO1: TStringField
      FieldName = 'NOME_CONTRATADO1'
      Origin = 'NOME_CONTRATADO1'
      Size = 200
    end
    object fdqBuscaNOME_PROFISSIONAL: TStringField
      FieldName = 'NOME_PROFISSIONAL'
      Origin = 'NOME_PROFISSIONAL'
      Size = 200
    end
    object fdqBuscaSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Origin = 'SIGLA_CONSELHO'
      Size = 30
    end
    object fdqBuscaNUMERO_CONSELHO: TStringField
      FieldName = 'NUMERO_CONSELHO'
      Origin = 'NUMERO_CONSELHO'
      Size = 30
    end
    object fdqBuscaUF_CONSELHO: TStringField
      FieldName = 'UF_CONSELHO'
      Origin = 'UF_CONSELHO'
      Size = 5
    end
    object fdqBuscaNOME_CONTRATADO2: TStringField
      FieldName = 'NOME_CONTRATADO2'
      Origin = 'NOME_CONTRATADO2'
      Size = 200
    end
    object fdqBuscaCARATER_ATENDIMENTO: TStringField
      FieldName = 'CARATER_ATENDIMENTO'
      Origin = 'CARATER_ATENDIMENTO'
    end
    object fdqBuscaTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Origin = 'TIPO_SAIDA'
      Size = 10
    end
    object fdqBuscaTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      Origin = 'TIPO_ATENDIMENTO'
      Size = 10
    end
    object fdqBuscaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object fdqBuscaTIPO_TABELA: TStringField
      FieldName = 'TIPO_TABELA'
      Origin = 'TIPO_TABELA'
      Size = 10
    end
    object fdqBuscaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
    object fdqBuscaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdqBuscaQUANTIDADE_REALIZADA: TIntegerField
      FieldName = 'QUANTIDADE_REALIZADA'
      Origin = 'QUANTIDADE_REALIZADA'
    end
    object fdqBuscaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object fdqBuscaVALORTOTAL_1: TFloatField
      FieldName = 'VALORTOTAL_1'
      Origin = 'VALORTOTAL_1'
    end
    object fdqBuscaVALORTOTAL_2: TFloatField
      FieldName = 'VALORTOTAL_2'
      Origin = 'VALORTOTAL_2'
    end
    object fdqBuscaLIDA: TStringField
      FieldName = 'LIDA'
      Origin = 'LIDA'
      Size = 5
    end
    object fdqBuscaRETIRADA: TStringField
      FieldName = 'RETIRADA'
      Origin = 'RETIRADA'
      Size = 5
    end
    object fdqBuscaDATA_LEITURA: TDateField
      FieldName = 'DATA_LEITURA'
      Origin = 'DATA_LEITURA'
    end
    object fdqBuscaHORA_LEITURA: TTimeField
      FieldName = 'HORA_LEITURA'
      Origin = 'HORA_LEITURA'
    end
    object fdqBuscaID_USUARIO_LEITURA: TIntegerField
      FieldName = 'ID_USUARIO_LEITURA'
      Origin = 'ID_USUARIO_LEITURA'
    end
    object fdqBuscaID_LEITURA_STATUS: TIntegerField
      FieldName = 'ID_LEITURA_STATUS'
      Origin = 'ID_LEITURA_STATUS'
    end
    object fdqBuscaSEQUENCIAL_TRANSACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEQUENCIAL_TRANSACAO'
      Origin = 'SEQUENCIAL_TRANSACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqBuscaTIPO_SERVICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_SERVICO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqBuscaSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqBuscaIntCalcStatus1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus1'
    end
    object fdqBuscaIntCalcStatus2: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus2'
    end
    object fdqBuscaIntCalcStatus3: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus3'
    end
    object fdqBuscaIntCalcStatus4: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus4'
    end
    object fdqBuscaIntCalcStatus5: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus5'
    end
    object fdqBuscaIntCalcStatus6: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus6'
    end
    object fdqBuscaCADASTRADA_MANUALMENTE: TStringField
      FieldName = 'CADASTRADA_MANUALMENTE'
      Origin = 'CADASTRADA_MANUALMENTE'
      Size = 5
    end
    object fdqBuscaLOTE_FINALIZADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOTE_FINALIZADO'
      Origin = 'FINALIZADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object fdqBuscaLOTE_CANCELADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOTE_CANCELADO'
      Origin = 'CANCELADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object fdqBuscaGUIA_EM_BRANCO: TStringField
      FieldName = 'GUIA_EM_BRANCO'
      Origin = 'GUIA_EM_BRANCO'
      Size = 5
    end
    object fdqBuscaGUIA_COM_DESCONTO: TStringField
      FieldName = 'GUIA_COM_DESCONTO'
      Origin = 'GUIA_COM_DESCONTO'
      Size = 5
    end
    object fdqBuscaAgregStatus1: TAggregateField
      FieldName = 'AgregStatus1'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus1)'
    end
    object fdqBuscaAgregStatus3: TAggregateField
      FieldName = 'AgregStatus3'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus3)'
    end
    object fdqBuscaAgregStatus4: TAggregateField
      FieldName = 'AgregStatus4'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus4)'
    end
    object fdqBuscaAgregStatus5: TAggregateField
      FieldName = 'AgregStatus5'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus5)'
    end
    object fdqBuscaAgregStatus6: TAggregateField
      FieldName = 'AgregStatus6'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus6)'
    end
    object fdqBuscaAgregStatus2: TAggregateField
      FieldName = 'AgregStatus2'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus2)'
    end
  end
  object fdqStatus: TFDQuery
    IndexFieldNames = 'ID_LEITURA_STATUS'
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from leitura_status status'
      'order by status.id_leitura_status')
    Left = 168
    Top = 560
  end
  object dsStatus: TDataSource
    AutoEdit = False
    DataSet = fdqStatus
    Left = 168
    Top = 616
  end
  object fdqTipoServico: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from tipo_servico tipo')
    Left = 240
    Top = 560
    object fdqTipoServicoID_TIPO_SERVICO: TIntegerField
      FieldName = 'ID_TIPO_SERVICO'
      Origin = 'ID_TIPO_SERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqTipoServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object dsTipoServico: TDataSource
    AutoEdit = False
    DataSet = fdqTipoServico
    Left = 240
    Top = 616
  end
  object fdqLotes: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT DISTINCT(CABEC.SEQUENCIAL_TRANSACAO)'
      'FROM GUIAS_CABECALHO CABEC'
      'ORDER BY CABEC.SEQUENCIAL_TRANSACAO')
    Left = 312
    Top = 560
  end
  object dsLotes: TDataSource
    AutoEdit = False
    DataSet = fdqLotes
    Left = 312
    Top = 616
  end
  object fdqCabecalho: TFDQuery
    MasterSource = dsCad
    MasterFields = 'ID_GUIAS_CABECALHO'
    DetailFields = 'ID_GUIAS_CABECALHO'
    Connection = DM.FDConnection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from GUIAS_CABECALHO cabec'
      'where cabec.id_guias_cabecalho = :id_guias_cabecalho')
    Left = 400
    Top = 560
    ParamData = <
      item
        Name = 'ID_GUIAS_CABECALHO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqCabecalhoID_GUIAS_CABECALHO: TIntegerField
      FieldName = 'ID_GUIAS_CABECALHO'
      Origin = 'ID_GUIAS_CABECALHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqCabecalhoID_GUIAS_GRUPO_LOTE: TIntegerField
      FieldName = 'ID_GUIAS_GRUPO_LOTE'
      Origin = 'ID_GUIAS_GRUPO_LOTE'
      Required = True
    end
    object fdqCabecalhoTIPO_TRANSACAO: TStringField
      FieldName = 'TIPO_TRANSACAO'
      Origin = 'TIPO_TRANSACAO'
      Size = 50
    end
    object fdqCabecalhoSEQUENCIAL_TRANSACAO: TIntegerField
      FieldName = 'SEQUENCIAL_TRANSACAO'
      Origin = 'SEQUENCIAL_TRANSACAO'
      ReadOnly = True
    end
    object fdqCabecalhoDATA_REGISTRO_TRANSACAO: TDateField
      FieldName = 'DATA_REGISTRO_TRANSACAO'
      Origin = 'DATA_REGISTRO_TRANSACAO'
    end
    object fdqCabecalhoHORA_REGISTRO_TRANSACAO: TTimeField
      FieldName = 'HORA_REGISTRO_TRANSACAO'
      Origin = 'HORA_REGISTRO_TRANSACAO'
    end
    object fdqCabecalhoREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Origin = 'REGISTRO_ANS'
    end
    object fdqCabecalhoVERSAO_PADRAO: TStringField
      FieldName = 'VERSAO_PADRAO'
      Origin = 'VERSAO_PADRAO'
    end
    object fdqCabecalhoFINALIZADO: TStringField
      FieldName = 'FINALIZADO'
      Origin = 'FINALIZADO'
      Size = 5
    end
    object fdqCabecalhoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      Origin = 'CANCELADO'
      Size = 5
    end
  end
  object dsCabecalho: TDataSource
    AutoEdit = False
    DataSet = fdqCabecalho
    Left = 400
    Top = 616
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 43
    Top = 249
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid2
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 8307
      PrinterPage.GrayShading = True
      PrinterPage.Header = 8307
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41977.700534583330000000
      ReportTitle.Text = 'An'#225'lise Geral de Guias'
      ShrinkToPageWidth = True
      BuiltInReportLink = True
    end
  end
  object Salvar: TSaveDialog
    Left = 403
    Top = 509
  end
end
