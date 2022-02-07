inherited frmTestes: TfrmTestes
  Caption = 'Cadastro de Testes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TPageControl
    ActivePage = TaShCadastro
    inherited TaShCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 610
      ExplicitHeight = 335
      object Label3: TLabel
        Left = 8
        Top = 9
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 8
        Top = 64
        Width = 67
        Height = 13
        Caption = 'Apresenta'#231#227'o'
        FocusControl = DBMemo1
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 28
        Width = 561
        Height = 21
        DataField = 'TEST_DESCR'
        DataSource = dsTestes
        TabOrder = 0
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 83
        Width = 561
        Height = 238
        DataField = 'TEST_APRESENTACAO'
        DataSource = dsTestes
        TabOrder = 1
      end
    end
    inherited TaShRelatorio: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 610
      ExplicitHeight = 335
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    BuscaVisible = False
    DataSourceCadastro = dsTestes
    DataSourceBusca = DM.dsGeral
    GridCreateColumns = True
    Tabela = 'TESTES'
    FieldsBusca = <
      item
        FieldName = 'TEST_ID'
        DisplayName = 'Test_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = True
        FieldType = ftInteger
      end
      item
        FieldName = 'TEST_DESCR'
        DisplayName = 'Descri'#231#227'o'
        ShowCombo = False
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'TEST_APRESENTACAO'
        DisplayName = 'Test_apresentacao'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = True
        FieldType = ftMemo
      end>
    KeyField = 'TEST_ID'
  end
  object quTestes: TSQLDataSet
    CommandText = 'SELECT * FROM TESTES'#13#10'WHERE TEST_ID = :TEST_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TEST_ID'
        ParamType = ptInput
        Size = 1
        Value = '0'
      end>
    SQLConnection = DM.cnnConnection
    Left = 56
    Top = 320
  end
  object dspTestes: TDataSetProvider
    DataSet = quTestes
    Left = 120
    Top = 320
  end
  object cdsTestes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TEST_ID'
        ParamType = ptInput
        Size = 1
        Value = '0'
      end>
    ProviderName = 'dspTestes'
    OnNewRecord = cdsTestesNewRecord
    Left = 184
    Top = 320
    object cdsTestesTEST_ID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'TEST_ID'
      Required = True
    end
    object cdsTestesTEST_DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TEST_DESCR'
      Required = True
      Size = 50
    end
    object cdsTestesTEST_APRESENTACAO: TMemoField
      DisplayLabel = 'Apresenta'#231#227'o'
      FieldName = 'TEST_APRESENTACAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsTestes: TDataSource
    DataSet = cdsTestes
    Left = 256
    Top = 320
  end
end
