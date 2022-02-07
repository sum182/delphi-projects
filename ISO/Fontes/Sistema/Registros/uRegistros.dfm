inherited frmRegistros: TfrmRegistros
  Caption = 'Registros - Cadastro'
  ClientHeight = 592
  ClientWidth = 886
  ExplicitWidth = 894
  ExplicitHeight = 626
  PixelsPerInch = 96
  TextHeight = 13
  inherited edFocus: TEdit
    TabOrder = 2
  end
  inherited ToBaCadastro: TToolBar
    Width = 886
    ExplicitWidth = 886
    inherited ToolButton1: TToolButton
      ExplicitWidth = 14
    end
    inherited btnLocalizarTodosRegistros: TToolButton
      ExplicitWidth = 70
    end
  end
  inherited PaCoPadrao: TcxPageControl
    Width = 886
    Height = 552
    ActivePage = TaShCadastro
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 886
    ExplicitHeight = 552
    ClientRectBottom = 548
    ClientRectLeft = 2
    ClientRectRight = 882
    ClientRectTop = 22
    inherited TaShConsulta: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 880
      ExplicitHeight = 526
      inherited grGrid: TcxGrid
        Width = 880
        Height = 411
        ExplicitWidth = 880
        ExplicitHeight = 411
      end
      inherited stbrConsulta: TStatusBar
        Top = 508
        Width = 880
        ExplicitLeft = 0
        ExplicitTop = 508
        ExplicitWidth = 880
      end
      inherited grbxPesquisa: TcxGroupBox
        ExplicitTop = 0
        ExplicitWidth = 880
        Width = 880
        inherited EdConteudoReal: TEdit
          TabOrder = 5
        end
        inherited EdConteudoDataInicial: TDateTimePicker
          TabOrder = 6
        end
        inherited EdConteudoDataFinal: TDateTimePicker
          TabOrder = 7
        end
        inherited CoBoCampos: TComboBox
          TabOrder = 2
        end
        inherited EdConteudoNum: TEdit
          TabOrder = 3
        end
        inherited BuProcessar: TBitBtn
          TabOrder = 1
        end
        inherited EdConteudoTexto: TEdit
          TabOrder = 4
        end
        inherited CoBoModoPesquisa: TComboBox
          TabOrder = 8
        end
        inherited ToolBar1: TToolBar
          Width = 870
          TabOrder = 0
          ExplicitLeft = 5
          ExplicitTop = 19
          ExplicitWidth = 870
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
      end
    end
    inherited TaShCadastro: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 880
      ExplicitHeight = 526
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 880
        Height = 526
        Align = alClient
        TabOrder = 0
        object Bevel1: TBevel
          Left = 2
          Top = 15
          Width = 876
          Height = 172
          Align = alTop
          Shape = bsSpacer
        end
        object Label6: TLabel
          Left = 258
          Top = 63
          Width = 126
          Height = 13
          Caption = 'Forma de Armazenamento'
        end
        object Label5: TLabel
          Left = 17
          Top = 63
          Width = 120
          Height = 13
          Caption = 'Local de Armazenamento'
        end
        object Label2: TLabel
          Left = 17
          Top = 18
          Width = 62
          Height = 13
          Caption = 'Identifica'#231#227'o'
          FocusControl = DBEdit1
        end
        object Label9: TLabel
          Left = 165
          Top = 18
          Width = 27
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEdit3
        end
        object Label3: TLabel
          Left = 550
          Top = 18
          Width = 116
          Height = 13
          Caption = 'Procedimento Associado'
        end
        object DBEdit1: TcxDBTextEdit
          Left = 17
          Top = 33
          DataBinding.DataField = 'REGI_IDENT'
          DataBinding.DataSource = dsCad
          TabOrder = 0
          Width = 134
        end
        object DBEdit3: TcxDBTextEdit
          Left = 165
          Top = 33
          DataBinding.DataField = 'REGI_NOME'
          DataBinding.DataSource = dsCad
          TabOrder = 1
          Width = 368
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 550
          Top = 33
          DataBinding.DataField = 'PROC_ID'
          DataBinding.DataSource = dsCad
          Properties.KeyFieldNames = 'PROC_ID'
          Properties.ListColumns = <
            item
              FieldName = 'PROC_DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DmReg.dsProcedimentos
          TabOrder = 2
          Width = 218
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 256
          Top = 77
          DataBinding.DataField = 'REFO_ID'
          DataBinding.DataSource = dsCad
          Properties.KeyFieldNames = 'REFO_ID'
          Properties.ListColumns = <
            item
              FieldName = 'REFO_DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DmReg.dsFormArm
          TabOrder = 4
          Width = 218
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 17
          Top = 77
          DataBinding.DataField = 'RELO_ID'
          DataBinding.DataSource = dsCad
          Properties.KeyFieldNames = 'RELO_ID'
          Properties.ListColumns = <
            item
              FieldName = 'RELO_DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DmReg.dsLocalArm
          TabOrder = 3
          Width = 218
        end
        object cxGroupBox1: TcxGroupBox
          Left = 17
          Top = 104
          Caption = 'Reten'#231#227'o'
          TabOrder = 5
          Height = 70
          Width = 326
          object Label10: TLabel
            Left = 7
            Top = 20
            Width = 56
            Height = 13
            Caption = 'Quantidade'
          end
          object Label8: TLabel
            Left = 87
            Top = 20
            Width = 46
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object DBEdit4: TcxDBTextEdit
            Left = 7
            Top = 37
            DataBinding.DataField = 'REGI_RETENCAO_QTDE'
            DataBinding.DataSource = dsCad
            TabOrder = 0
            Width = 74
          end
          object cxDBLookupComboBox4: TcxDBLookupComboBox
            Left = 87
            Top = 37
            DataBinding.DataField = 'RERE_ID'
            DataBinding.DataSource = dsCad
            Properties.KeyFieldNames = 'RERE_ID'
            Properties.ListColumns = <
              item
                FieldName = 'RERE_DESCR'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DmReg.dsRetencao
            TabOrder = 1
            Width = 218
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 2
          Top = 187
          Align = alTop
          Caption = 'Descri'#231#227'o'
          TabOrder = 6
          Height = 128
          Width = 876
          object cxDBMemo1: TcxDBMemo
            Left = 2
            Top = 16
            Align = alClient
            DataBinding.DataField = 'REGI_DESCR'
            DataBinding.DataSource = dsCad
            TabOrder = 0
            Height = 110
            Width = 872
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 2
          Top = 315
          Align = alClient
          Caption = 'Revis'#245'es'
          TabOrder = 7
          Height = 209
          Width = 876
          object cxGrid1: TcxGrid
            Left = 2
            Top = 48
            Width = 872
            Height = 159
            Align = alClient
            TabOrder = 0
            object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsRevisoes
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              Bands = <
                item
                end>
            end
            object cxGrid1DBBandedTableView2: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsRevisoes
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsCustomize.ColumnFiltering = False
              OptionsView.GroupByBox = False
              Bands = <
                item
                  Width = 48
                end
                item
                  Caption = 'Elabora'#231#227'o'
                end
                item
                  Caption = 'Aprova'#231#227'o'
                end
                item
                  Caption = 'Revis'#227'o'
                end>
              object cxGrid1DBBandedTableView2REVI_ID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'REVI_ID'
                Visible = False
                Width = 61
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView2REGI_IDENT: TcxGridDBBandedColumn
                DataBinding.FieldName = 'REGI_IDENT'
                Visible = False
                Width = 117
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView2REVI_ELAB_USUARIO: TcxGridDBBandedColumn
                Caption = 'Usu'#225'rio'
                DataBinding.FieldName = 'REVI_ELAB_USUARIO'
                Width = 120
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView2REVI_ELAB_DT: TcxGridDBBandedColumn
                Caption = 'Data'
                DataBinding.FieldName = 'REVI_ELAB_DT'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DateOnError = deToday
                Properties.PostPopupValueOnTab = True
                Width = 70
                Position.BandIndex = 1
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView2REVI_APROV_USUARIO: TcxGridDBBandedColumn
                Caption = 'Usu'#225'rio'
                DataBinding.FieldName = 'REVI_APROV_USUARIO'
                Width = 120
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView2REVI_APROV_DT: TcxGridDBBandedColumn
                Caption = 'Data'
                DataBinding.FieldName = 'REVI_APROV_DT'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DateOnError = deToday
                Properties.PostPopupValueOnTab = True
                Width = 70
                Position.BandIndex = 2
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView2REVI_REVISAO_USUARIO: TcxGridDBBandedColumn
                Caption = 'Usu'#225'rio'
                DataBinding.FieldName = 'REVI_REVISAO_USUARIO'
                Width = 120
                Position.BandIndex = 3
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView2REVI_REVISAO_DT: TcxGridDBBandedColumn
                Caption = 'Data'
                DataBinding.FieldName = 'REVI_REVISAO_DT'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DateOnError = deToday
                Properties.PostPopupValueOnTab = True
                Width = 70
                Position.BandIndex = 3
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView2REVI_NUMREV: TcxGridDBBandedColumn
                DataBinding.FieldName = 'REVI_NUMREV'
                Options.Focusing = False
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBBandedTableView2
            end
          end
          object ToolBar2: TToolBar
            AlignWithMargins = True
            Left = 5
            Top = 19
            Width = 866
            Height = 26
            AutoSize = True
            ButtonWidth = 69
            Caption = #218'ltimo'
            Customizable = True
            DisabledImages = DmShared.imgDisabled
            DrawingStyle = dsGradient
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            GradientEndColor = 11319229
            HotImages = DmShared.imgHot
            Images = DmShared.imgEnabled
            List = True
            ParentShowHint = False
            ShowCaptions = True
            ShowHint = True
            TabOrder = 1
            Transparent = False
            object btnRevNew: TToolButton
              Left = 0
              Top = 0
              Hint = 'Novo  | Novo Registro'
              Caption = 'Novo'
              ImageIndex = 0
              OnClick = btnRevNewClick
            end
            object btnRevPost: TToolButton
              Left = 69
              Top = 0
              Hint = 'Salvar | Salvar Informa'#231#245'es'
              Caption = 'Salvar'
              ImageIndex = 4
              OnClick = btnRevPostClick
            end
            object btnRevCancel: TToolButton
              Left = 138
              Top = 0
              Hint = 'Cancelar | Cancelar Altera'#231#245'es'
              Caption = 'Cancelar'
              ImageIndex = 3
              OnClick = btnRevCancelClick
            end
            object btnRevAlterar: TToolButton
              Left = 207
              Top = 0
              Hint = 'Alterar| Alterar Registro'
              Caption = 'Alterar'
              ImageIndex = 2
              OnClick = btnRevAlterarClick
            end
            object btnRevDelete: TToolButton
              Left = 276
              Top = 0
              Hint = 'Deletar | Deletar Registro'
              Caption = 'Deletar'
              ImageIndex = 1
              OnClick = btnRevDeleteClick
            end
          end
        end
      end
    end
    inherited TaShRelatorio: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 880
      ExplicitHeight = 526
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'REGISTROS'
    FieldsBusca = <
      item
        FieldName = 'REGI_IDENT'
        DisplayName = 'Identifica'#231#227'o'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'REGI_NOME'
        DisplayName = 'Nome'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'Local'
        DisplayName = 'Local'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'Forma'
        DisplayName = 'Forma'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'Indexacao'
        DisplayName = 'Indexacao'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'Retencao'
        DisplayName = 'Retencao'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'REGI_DTREV'
        DisplayName = 'Regi_dtrev'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftDate
      end
      item
        FieldName = 'REGI_DESCR'
        DisplayName = 'Regi_descr'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftMemo
      end
      item
        FieldName = 'RELO_ID'
        DisplayName = 'Relo_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'REFO_ID'
        DisplayName = 'Refo_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'REIN_ID'
        DisplayName = 'Rein_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'RERE_ID'
        DisplayName = 'Rere_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end>
    KeyField = 'REGI_IDENT'
    Left = 648
    Top = 280
  end
  inherited AcLi: TActionList
    Left = 640
    Top = 339
    inherited AcFirst: TDataSetFirst
      Enabled = False
    end
    inherited AcPrior: TDataSetPrior
      Enabled = False
    end
    inherited AcNext: TDataSetNext
      Enabled = False
    end
    inherited AcLast: TDataSetLast
      Enabled = False
    end
  end
  inherited dsCad: TDataSource
    DataSet = cdsCad
    Left = 304
    Top = 275
  end
  inherited imgDisabled: TImageList
    Left = 568
    Top = 344
  end
  inherited imgEnabled: TImageList
    Left = 552
    Top = 288
  end
  inherited dsConsulta: TDataSource
    Left = 464
    Top = 336
  end
  inherited quConsulta: TIBOQuery
    Left = 464
    Top = 280
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'REGI_IDENT'
        ParamType = ptInput
      end>
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    ColumnAttributes.Strings = (
      'REGI_IDENT=REQUIRED')
    DeleteSQL.Strings = (
      'DELETE FROM REGISTROS'
      'WHERE'
      '   REGI_IDENT = :OLD_REGI_IDENT')
    EditSQL.Strings = (
      'UPDATE REGISTROS SET'
      '   REGI_IDENT = :REGI_IDENT, /*PK*/'
      '   REGI_NOME = :REGI_NOME,'
      '   REGI_DESCR = :REGI_DESCR,'
      '   RELO_ID = :RELO_ID,'
      '   REFO_ID = :REFO_ID,'
      '   RERE_ID = :RERE_ID,'
      '   REGI_RETENCAO_QTDE = :REGI_RETENCAO_QTDE,'
      '   PROC_ID = :PROC_ID'
      'WHERE'
      '   REGI_IDENT = :OLD_REGI_IDENT')
    InsertSQL.Strings = (
      'INSERT INTO REGISTROS('
      '   REGI_IDENT, /*PK*/'
      '   REGI_NOME,'
      '   REGI_DESCR,'
      '   RELO_ID,'
      '   REFO_ID,'
      '   RERE_ID,'
      '   REGI_RETENCAO_QTDE,'
      '   PROC_ID)'
      'VALUES ('
      '   :REGI_IDENT,'
      '   :REGI_NOME,'
      '   :REGI_DESCR,'
      '   :RELO_ID,'
      '   :REFO_ID,'
      '   :RERE_ID,'
      '   :REGI_RETENCAO_QTDE,'
      '   :PROC_ID)')
    SQL.Strings = (
      'SELECT * FROM REGISTROS'
      'WHERE REGI_IDENT = :REGI_IDENT')
    Left = 96
  end
  object quRevisoes: TIBOQuery
    Params = <
      item
        DataType = ftString
        Name = 'REGI_IDENT'
        ParamType = ptInput
      end>
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    DatabaseName = 'D:\Alvaro\Alvaro - Files\Delphi\Projetos\ISO\BD\DBISO.FDB'
    DeleteSQL.Strings = (
      'DELETE FROM REG_REVISOES'
      'WHERE'
      '   REVI_ID = :OLD_REVI_ID')
    EditSQL.Strings = (
      'UPDATE REG_REVISOES SET'
      '   REVI_ID = :REVI_ID, /*PK*/'
      '   REGI_IDENT = :REGI_IDENT,'
      '   REVI_ELAB_USUARIO = :REVI_ELAB_USUARIO,'
      '   REVI_ELAB_DT = :REVI_ELAB_DT,'
      '   REVI_APROV_USUARIO = :REVI_APROV_USUARIO,'
      '   REVI_APROV_DT = :REVI_APROV_DT,'
      '   REVI_REVISAO_USUARIO = :REVI_REVISAO_USUARIO,'
      '   REVI_REVISAO_DT = :REVI_REVISAO_DT,'
      '   REVI_NUMREV = :REVI_NUMREV'
      'WHERE'
      '   REVI_ID = :OLD_REVI_ID')
    IB_Connection = DMConnection.IBOCnn
    InsertSQL.Strings = (
      'INSERT INTO REG_REVISOES('
      '   REVI_ID, /*PK*/'
      '   REGI_IDENT,'
      '   REVI_ELAB_USUARIO,'
      '   REVI_ELAB_DT,'
      '   REVI_APROV_USUARIO,'
      '   REVI_APROV_DT,'
      '   REVI_REVISAO_USUARIO,'
      '   REVI_REVISAO_DT,'
      '   REVI_NUMREV)'
      'VALUES ('
      '   :REVI_ID,'
      '   :REGI_IDENT,'
      '   :REVI_ELAB_USUARIO,'
      '   :REVI_ELAB_DT,'
      '   :REVI_APROV_USUARIO,'
      '   :REVI_APROV_DT,'
      '   :REVI_REVISAO_USUARIO,'
      '   :REVI_REVISAO_DT,'
      '   :REVI_NUMREV)')
    KeyLinks.Strings = (
      'REG_REVISOES.REVI_ID')
    RecordCountAccurate = True
    DataSource = dsCad_x_Rev
    SQL.Strings = (
      'SELECT * FROM REG_REVISOES'
      'WHERE REG_REVISOES.REGI_IDENT = :REGI_IDENT')
    FieldOptions = []
    Left = 96
    Top = 328
  end
  object dsRevisoes: TDataSource
    DataSet = cdsRevisoes
    OnDataChange = dsRevisoesDataChange
    Left = 304
    Top = 328
  end
  object dspCad: TDataSetProvider
    DataSet = quCad
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 272
  end
  object cdsCad: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'REGI_IDENT'
        ParamType = ptInput
      end>
    ProviderName = 'dspCad'
    Left = 232
    Top = 272
    object cdsCadREGI_IDENT: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'REGI_IDENT'
      Origin = 'REGISTROS.REGI_IDENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cdsCadREGI_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'REGI_NOME'
      Origin = 'REGISTROS.REGI_NOME'
      Size = 50
    end
    object cdsCadRELO_ID: TIntegerField
      DisplayLabel = 'Local de Armazenamento'
      FieldName = 'RELO_ID'
      Origin = 'REGISTROS.RELO_ID'
    end
    object cdsCadREFO_ID: TIntegerField
      DisplayLabel = 'Forma de Armazenamento'
      FieldName = 'REFO_ID'
      Origin = 'REGISTROS.REFO_ID'
    end
    object cdsCadRERE_ID: TIntegerField
      DisplayLabel = 'Reten'#231#227'o  - Descri'#231#227'o'
      FieldName = 'RERE_ID'
      Origin = 'REGISTROS.RERE_ID'
    end
    object cdsCadREGI_RETENCAO_QTDE: TIntegerField
      DisplayLabel = 'Reten'#231#227'o - Quantidade'
      FieldName = 'REGI_RETENCAO_QTDE'
      Origin = 'REGISTROS.REGI_RETENCAO_QTDE'
    end
    object cdsCadPROC_ID: TIntegerField
      DisplayLabel = 'Procedimento'
      FieldName = 'PROC_ID'
      Origin = 'REGISTROS.PROC_ID'
    end
    object cdsCadREGI_DESCR: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'REGI_DESCR'
      Origin = 'REGISTROS.REGI_DESCR'
      BlobType = ftMemo
      Size = 8
    end
    object cdsCadquRevisoes: TDataSetField
      FieldName = 'quRevisoes'
    end
  end
  object dspRevisoes: TDataSetProvider
    DataSet = quRevisoes
    Left = 168
    Top = 328
  end
  object cdsRevisoes: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsCadquRevisoes
    Params = <
      item
        DataType = ftString
        Name = 'REGI_IDENT'
        ParamType = ptInput
      end>
    BeforePost = cdsRevisoesBeforePost
    OnNewRecord = cdsRevisoesNewRecord
    Left = 232
    Top = 328
    object cdsRevisoesREVI_ID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'REVI_ID'
      Origin = 'REG_REVISOES.REVI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRevisoesREGI_IDENT: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'REGI_IDENT'
      Origin = 'REG_REVISOES.REGI_IDENT'
      Size = 50
    end
    object cdsRevisoesREVI_NUMREV: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'REVI_NUMREV'
      Origin = 'REG_REVISOES.REVI_NUMREV'
      Required = True
    end
    object cdsRevisoesREVI_ELAB_USUARIO: TStringField
      DisplayLabel = 'Elabora'#231#227'o - Usu'#225'rio'
      FieldName = 'REVI_ELAB_USUARIO'
      Origin = 'REG_REVISOES.REVI_ELAB_USUARIO'
      Required = True
      Size = 50
    end
    object cdsRevisoesREVI_ELAB_DT: TDateField
      DisplayLabel = 'Elabora'#231#227'o - Data'
      FieldName = 'REVI_ELAB_DT'
      Origin = 'REG_REVISOES.REVI_ELAB_DT'
      Required = True
    end
    object cdsRevisoesREVI_APROV_USUARIO: TStringField
      DisplayLabel = 'Aprova'#231#227'o - Usu'#225'rio'
      FieldName = 'REVI_APROV_USUARIO'
      Origin = 'REG_REVISOES.REVI_APROV_USUARIO'
      Required = True
      Size = 50
    end
    object cdsRevisoesREVI_APROV_DT: TDateField
      DisplayLabel = 'Aprova'#231#227'o - Data'
      FieldName = 'REVI_APROV_DT'
      Origin = 'REG_REVISOES.REVI_APROV_DT'
      Required = True
    end
    object cdsRevisoesREVI_REVISAO_USUARIO: TStringField
      DisplayLabel = 'Revis'#227'o - Usu'#225'rio'
      FieldName = 'REVI_REVISAO_USUARIO'
      Origin = 'REG_REVISOES.REVI_REVISAO_USUARIO'
      Required = True
      Size = 50
    end
    object cdsRevisoesREVI_REVISAO_DT: TDateField
      DisplayLabel = 'Revis'#227'o - Data'
      FieldName = 'REVI_REVISAO_DT'
      Origin = 'REG_REVISOES.REVI_REVISAO_DT'
      Required = True
    end
    object cdsRevisoesMaxNum: TAggregateField
      FieldName = 'MaxNum'
      Visible = True
      Active = True
      Expression = 'MAX(REVI_NUMREV)'
    end
  end
  object dsCad_x_Rev: TDataSource
    DataSet = quCad
    Left = 32
    Top = 312
  end
end
