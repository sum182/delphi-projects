inherited frmCandidatos: TfrmCandidatos
  Caption = 'Cadastro de Candidatos'
  ClientHeight = 407
  ClientWidth = 614
  WindowState = wsMaximized
  ExplicitWidth = 622
  ExplicitHeight = 434
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 614
  end
  inherited PaCoPadrao: TPageControl
    Width = 614
    Height = 366
    ActivePage = TaShCadastro
    inherited TaShConsulta: TTabSheet
      inherited grbxPesquisa: TGroupBox
        Width = 606
        inherited ToolBar1: TToolBar
          Width = 596
        end
      end
      inherited grPesquisa: TsmDBGrid
        Width = 606
        Height = 223
        Columns = <
          item
            Expanded = False
            FieldName = 'CAND_NOME'
            Title.Caption = 'Candidato'
            Width = 523
            Visible = True
          end>
      end
      inherited stbrConsulta: TStatusBar
        Top = 320
        Width = 606
      end
    end
    inherited TaShCadastro: TTabSheet
      ExplicitTop = 24
      ExplicitWidth = 606
      ExplicitHeight = 338
      object Label3: TLabel
        Left = 16
        Top = 10
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 61
        Width = 19
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 16
        Top = 104
        Width = 24
        Height = 13
        Caption = 'Email'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 16
        Top = 197
        Width = 23
        Height = 13
        Caption = 'Nota'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 16
        Top = 147
        Width = 27
        Height = 13
        Caption = 'Teste'
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 26
        Width = 526
        Height = 21
        DataField = 'CAND_NOME'
        DataSource = dsCand
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 77
        Width = 300
        Height = 21
        DataField = 'CAND_CPF'
        DataSource = dsCand
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 120
        Width = 526
        Height = 21
        DataField = 'CAND_EMAIL'
        DataSource = dsCand
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 213
        Width = 89
        Height = 21
        DataField = 'CAND_NOTA'
        DataSource = dsCand
        Enabled = False
        TabOrder = 4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 166
        Width = 300
        Height = 21
        DataField = 'Teste'
        DataSource = dsCand
        Enabled = False
        TabOrder = 3
      end
    end
    inherited TaShRelatorio: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 606
      ExplicitHeight = 338
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    BuscaVisible = False
    BuscaSql.Strings = (
      'SELECT * FROM CANDIDATOS'
      'ORDER BY CAND_NOME')
    DataSourceCadastro = dsCand
    DataSourceBusca = DM.dsGeral
    Tabela = 'CANDIDATOS'
    FieldsBusca = <
      item
        FieldName = 'CAND_ID'
        DisplayName = 'Cand_id'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftInteger
      end
      item
        FieldName = 'CAND_NOME'
        DisplayName = 'Cand_nome'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'CAND_CPF'
        DisplayName = 'Cand_cpf'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'CAND_EMAIL'
        DisplayName = 'Cand_email'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'CAND_NOTA'
        DisplayName = 'Cand_nota'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftFloat
      end
      item
        FieldName = 'TEST_ID'
        DisplayName = 'Test_id'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftInteger
      end
      item
        FieldName = 'Teste'
        DisplayName = 'Teste'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end>
    KeyField = 'CAND_ID'
  end
  object quCand: TSQLDataSet
    CommandText = 'SELECT * FROM CANDIDATOS'#13#10'WHERE CAND_ID = :CAND_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CAND_ID'
        ParamType = ptInput
        Size = 1
        Value = '0'
      end>
    SQLConnection = DM.cnnConnection
    Left = 40
    Top = 344
    object quCandCAND_ID: TIntegerField
      FieldName = 'CAND_ID'
      Required = True
    end
    object quCandCAND_NOME: TStringField
      FieldName = 'CAND_NOME'
      Size = 150
    end
    object quCandCAND_CPF: TStringField
      FieldName = 'CAND_CPF'
      Size = 30
    end
    object quCandCAND_EMAIL: TStringField
      FieldName = 'CAND_EMAIL'
      Size = 100
    end
    object quCandCAND_NOTA: TFloatField
      FieldName = 'CAND_NOTA'
    end
    object quCandTEST_ID: TIntegerField
      FieldName = 'TEST_ID'
    end
  end
  object dspCand: TDataSetProvider
    DataSet = quCand
    Left = 104
    Top = 344
  end
  object cdsCand: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CAND_ID'
        ParamType = ptInput
        Size = 1
        Value = '0'
      end>
    ProviderName = 'dspCand'
    OnNewRecord = cdsCandNewRecord
    Left = 168
    Top = 344
    object cdsCandCAND_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CAND_NOME'
      Size = 150
    end
    object cdsCandCAND_CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CAND_CPF'
      EditMask = '000.000.000.00'
      Size = 30
    end
    object cdsCandCAND_EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'CAND_EMAIL'
      Size = 100
    end
    object cdsCandCAND_NOTA: TFloatField
      DisplayLabel = 'Nota'
      FieldName = 'CAND_NOTA'
      DisplayFormat = '#0.00%'
    end
    object cdsCandTEST_ID: TIntegerField
      DisplayLabel = 'Teste'
      FieldName = 'TEST_ID'
    end
    object cdsCandTeste: TStringField
      FieldKind = fkLookup
      FieldName = 'Teste'
      LookupDataSet = DM.cdsTestes
      LookupKeyFields = 'TEST_ID'
      LookupResultField = 'TEST_DESCR'
      KeyFields = 'TEST_ID'
      Size = 50
      Lookup = True
    end
    object cdsCandCAND_ID: TIntegerField
      FieldName = 'CAND_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsCand: TDataSource
    DataSet = cdsCand
    Left = 232
    Top = 344
  end
end
