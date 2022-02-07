inherited frmQuestoes: TfrmQuestoes
  Caption = 'Cadastro de Quest'#245'es'
  ClientHeight = 485
  ClientWidth = 963
  Position = poDefaultPosOnly
  WindowState = wsMaximized
  ExplicitWidth = 971
  ExplicitHeight = 512
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 963
    ExplicitWidth = 965
    inherited ToolButton1: TToolButton
      ExplicitWidth = 14
    end
    inherited btnLocalizarTodosRegistros: TToolButton
      ExplicitWidth = 70
    end
  end
  inherited PaCoPadrao: TPageControl
    Width = 963
    Height = 444
    ActivePage = TaShCadastro
    ExplicitWidth = 965
    ExplicitHeight = 446
    inherited TaShConsulta: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 957
      ExplicitHeight = 418
      inherited grbxPesquisa: TGroupBox
        Width = 955
        ExplicitWidth = 957
        inherited ToolBar1: TToolBar
          Width = 945
          ExplicitWidth = 947
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
      inherited grPesquisa: TsmDBGrid
        Width = 955
        Height = 301
        Columns = <
          item
            Expanded = False
            FieldName = 'test_descr'
            Title.Caption = 'Teste'
            Width = 425
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ques_ordem'
            Title.Caption = 'Quest'#227'o'
            Width = 75
            Visible = True
          end>
      end
      inherited stbrConsulta: TStatusBar
        Top = 398
        Width = 955
        ExplicitTop = 400
        ExplicitWidth = 957
      end
    end
    inherited TaShCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 957
      ExplicitHeight = 418
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 955
        Height = 166
        Align = alTop
        ExplicitWidth = 957
      end
      object Label3: TLabel
        Left = 16
        Top = 3
        Width = 41
        Height = 13
        Caption = 'Quest'#227'o'
      end
      object Label4: TLabel
        Left = 383
        Top = 113
        Width = 45
        Height = 13
        Caption = 'Resposta'
      end
      object Label6: TLabel
        Left = 16
        Top = 113
        Width = 27
        Height = 13
        Caption = 'Teste'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 776
        Top = 3
        Width = 32
        Height = 13
        Caption = 'Ordem'
        FocusControl = DBEdit1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 130
        Width = 353
        Height = 21
        DataField = 'Teste'
        DataSource = dsQuestoes
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 166
        Width = 955
        Height = 250
        Align = alClient
        Caption = 'Alternativas'
        TabOrder = 1
        ExplicitTop = 113
        ExplicitWidth = 957
        ExplicitHeight = 305
        object ToolBar2: TToolBar
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 947
          Height = 26
          AutoSize = True
          ButtonWidth = 69
          Caption = #218'ltimo'
          Customizable = True
          DisabledImages = imgDisabled
          DrawingStyle = dsGradient
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          Images = imgEnabled
          List = True
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 0
          Transparent = False
          object btnAltNew: TToolButton
            Left = 0
            Top = 0
            Hint = 'Novo  | Novo Registro'
            Caption = 'Novo'
            ImageIndex = 0
            OnClick = btnAltNewClick
          end
          object btnAltPost: TToolButton
            Left = 69
            Top = 0
            Hint = 'Salvar | Salvar Informa'#231#245'es'
            Caption = 'Salvar'
            ImageIndex = 4
            OnClick = btnAltPostClick
          end
          object btnAltCancel: TToolButton
            Left = 138
            Top = 0
            Hint = 'Cancelar | Cancelar Altera'#231#245'es'
            Caption = 'Cancelar'
            ImageIndex = 3
            OnClick = btnAltCancelClick
          end
          object btnAltEdit: TToolButton
            Left = 207
            Top = 0
            Hint = 'Alterar| Alterar Registro'
            Caption = 'Alterar'
            ImageIndex = 2
            OnClick = btnAltEditClick
          end
          object btnAltDelete: TToolButton
            Left = 276
            Top = 0
            Hint = 'Deletar | Deletar Registro'
            Caption = 'Deletar'
            ImageIndex = 1
            OnClick = btnAltDeleteClick
          end
        end
        object smDBGrid1: TsmDBGrid
          Left = 2
          Top = 47
          Width = 953
          Height = 203
          Align = alClient
          DataSource = dsAlteranativas
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          AlternateColor = 15658734
          Columns = <
            item
              Expanded = False
              FieldName = 'ALTE_DESCR'
              Width = 566
              Visible = True
            end>
        end
      end
      object DBEdit1: TDBEdit
        Left = 776
        Top = 18
        Width = 57
        Height = 21
        DataField = 'QUES_ORDEM'
        DataSource = dsQuestoes
        TabOrder = 2
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 383
        Top = 130
        Width = 554
        Height = 21
        DataField = 'LoResposta'
        DataSource = dsQuestoes
        TabOrder = 3
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 18
        Width = 737
        Height = 89
        DataField = 'QUES_DESCR'
        DataSource = dsQuestoes
        ScrollBars = ssVertical
        TabOrder = 4
      end
    end
    inherited TaShRelatorio: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 957
      ExplicitHeight = 418
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    BuscaVisible = False
    BuscaSql.Strings = (
      'SELECT'
      '  QUESTOES.QUES_ID,'
      '  questoes.ques_ordem,'
      '  testes.test_descr'
      'FROM QUESTOES'
      'join testes on (questoes.test_id = testes.test_id)'
      'order by testes.test_descr, questoes.ques_ordem')
    DataSourceCadastro = dsQuestoes
    DataSourceBusca = DM.dsGeral
    Tabela = 'QUESTOES'
    KeyField = 'QUES_ID'
  end
  object dspQuestoes: TDataSetProvider
    DataSet = quQuestoes
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 280
  end
  object cdsQuestoes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'QUES_ID'
        ParamType = ptInput
        Size = 1
        Value = '0'
      end>
    ProviderName = 'dspQuestoes'
    AfterOpen = cdsQuestoesAfterOpen
    BeforeDelete = cdsQuestoesBeforeDelete
    OnNewRecord = cdsQuestoesNewRecord
    Left = 208
    Top = 280
    object cdsQuestoesQUES_ID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'QUES_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsQuestoesQUES_ORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'QUES_ORDEM'
    end
    object cdsQuestoesQUES_RESPOSTA: TIntegerField
      FieldName = 'QUES_RESPOSTA'
    end
    object cdsQuestoesTEST_ID: TIntegerField
      FieldName = 'TEST_ID'
    end
    object cdsQuestoesTeste: TStringField
      FieldKind = fkLookup
      FieldName = 'Teste'
      LookupDataSet = DM.cdsTestes
      LookupKeyFields = 'TEST_ID'
      LookupResultField = 'TEST_DESCR'
      KeyFields = 'TEST_ID'
      Size = 50
      Lookup = True
    end
    object cdsQuestoesquAlternativas: TDataSetField
      FieldName = 'quAlternativas'
    end
    object cdsQuestoesLoResposta: TStringField
      FieldKind = fkLookup
      FieldName = 'LoResposta'
      LookupDataSet = cdsAlternativas
      LookupKeyFields = 'ALTE_ID'
      LookupResultField = 'ALTE_DESCR'
      KeyFields = 'QUES_RESPOSTA'
      Size = 300
      Lookup = True
    end
    object cdsQuestoesQUES_DESCR: TMemoField
      FieldName = 'QUES_DESCR'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsQuestoes: TDataSource
    DataSet = cdsQuestoes
    Left = 272
    Top = 280
  end
  object quQuestoes: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM QUESTOES'#13#10'WHERE QUES_ID  = :QUES_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'QUES_ID'
        ParamType = ptInput
        Size = 1
        Value = '0'
      end>
    SQLConnection = DM.cnnConnection
    Left = 64
    Top = 280
    object quQuestoesQUES_ID: TIntegerField
      FieldName = 'QUES_ID'
      Required = True
    end
    object quQuestoesQUES_ORDEM: TIntegerField
      FieldName = 'QUES_ORDEM'
    end
    object quQuestoesQUES_RESPOSTA: TIntegerField
      FieldName = 'QUES_RESPOSTA'
    end
    object quQuestoesTEST_ID: TIntegerField
      FieldName = 'TEST_ID'
    end
    object quQuestoesQUES_DESCR: TMemoField
      FieldName = 'QUES_DESCR'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsRelacionamento: TDataSource
    DataSet = quQuestoes
    Left = 64
    Top = 328
  end
  object quAlternativas: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT  * FROM ALTERNATIVAS'#13#10'WHERE QUES_ID = :QUES_ID'
    DataSource = dsRelacionamento
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QUES_ID'
        ParamType = ptInput
      end>
    SQLConnection = DM.cnnConnection
    Left = 64
    Top = 376
    object quAlternativasALTE_ID: TIntegerField
      FieldName = 'ALTE_ID'
      Required = True
    end
    object quAlternativasALTE_DESCR: TStringField
      FieldName = 'ALTE_DESCR'
      Size = 300
    end
    object quAlternativasQUES_ID: TIntegerField
      FieldName = 'QUES_ID'
    end
  end
  object cdsAlternativas: TClientDataSet
    Aggregates = <>
    DataSetField = cdsQuestoesquAlternativas
    Params = <>
    OnNewRecord = cdsAlternativasNewRecord
    Left = 208
    Top = 376
    object cdsAlternativasALTE_ID: TIntegerField
      FieldName = 'ALTE_ID'
      Required = True
    end
    object cdsAlternativasALTE_DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ALTE_DESCR'
      Size = 300
    end
    object cdsAlternativasQUES_ID: TIntegerField
      FieldName = 'QUES_ID'
    end
  end
  object dsAlteranativas: TDataSource
    DataSet = cdsAlternativas
    OnDataChange = dsAlteranativasDataChange
    Left = 280
    Top = 376
  end
end
