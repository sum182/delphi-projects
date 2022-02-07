inherited frmRegistros: TfrmRegistros
  Caption = 'Registros - Cadastro'
  ClientHeight = 685
  ClientWidth = 720
  ExplicitLeft = -110
  ExplicitWidth = 728
  ExplicitHeight = 719
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 720
    ExplicitWidth = 720
  end
  inherited PaCoPadrao: TPageControl
    Width = 720
    Height = 644
    ActivePage = TaShCadastro
    ExplicitWidth = 720
    ExplicitHeight = 644
    inherited TaShConsulta: TTabSheet
      ExplicitWidth = 712
      ExplicitHeight = 616
      inherited grbxPesquisa: TGroupBox
        Width = 712
        ExplicitWidth = 712
        inherited ToolBar1: TToolBar
          Width = 702
          ExplicitWidth = 702
        end
      end
      inherited grPesquisa: TsmDBGrid
        Width = 712
        Height = 501
      end
      inherited stbrConsulta: TStatusBar
        Top = 598
        Width = 712
        ExplicitTop = 598
        ExplicitWidth = 712
      end
    end
    inherited TaShCadastro: TTabSheet
      ExplicitWidth = 712
      ExplicitHeight = 616
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 712
        Height = 376
        Align = alClient
        TabOrder = 0
        object Label7: TLabel
          Left = 406
          Top = 229
          Width = 51
          Height = 13
          Caption = 'Indexa'#231#227'o'
        end
        object Label6: TLabel
          Left = 214
          Top = 229
          Width = 126
          Height = 13
          Caption = 'Forma de Armazenamento'
        end
        object Label5: TLabel
          Left = 16
          Top = 229
          Width = 120
          Height = 13
          Caption = 'Local de Armazenamento'
        end
        object Label4: TLabel
          Left = 16
          Top = 104
          Width = 173
          Height = 13
          Caption = '**** Descri'#231#227'o - Erro ao salvar field'
          FocusControl = DBMemo1
        end
        object Label2: TLabel
          Left = 16
          Top = 16
          Width = 62
          Height = 13
          Caption = 'Identifica'#231#227'o'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 260
          Top = 16
          Width = 79
          Height = 13
          Caption = 'Data de Revis'#227'o'
          FocusControl = DBEdit2
        end
        object Label9: TLabel
          Left = 16
          Top = 59
          Width = 27
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEdit3
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 406
          Top = 247
          Width = 170
          Height = 21
          DataField = 'Indexacao'
          DataSource = dsCad
          TabOrder = 6
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 214
          Top = 247
          Width = 170
          Height = 21
          DataField = 'Forma'
          DataSource = dsCad
          TabOrder = 5
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 16
          Top = 247
          Width = 170
          Height = 21
          DataField = 'Local'
          DataSource = dsCad
          TabOrder = 4
        end
        object DBMemo1: TDBMemo
          Left = 16
          Top = 121
          Width = 560
          Height = 94
          DataField = 'REGI_DESCR'
          DataSource = dsCad
          TabOrder = 3
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 32
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'REGI_IDENT'
          DataSource = dsCad
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 260
          Top = 32
          Width = 124
          Height = 21
          DataField = 'REGI_DTREV'
          DataSource = dsCad
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 75
          Width = 368
          Height = 21
          DataField = 'REGI_NOME'
          DataSource = dsCad
          TabOrder = 2
        end
        object GroupBox3: TGroupBox
          Left = 16
          Top = 282
          Width = 287
          Height = 72
          Caption = 'Reten'#231#227'o'
          TabOrder = 7
          object Label8: TLabel
            Left = 104
            Top = 20
            Width = 46
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object Label10: TLabel
            Left = 7
            Top = 20
            Width = 56
            Height = 13
            Caption = 'Quantidade'
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 104
            Top = 39
            Width = 170
            Height = 21
            DataField = 'Retencao'
            DataSource = dsCad
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 7
            Top = 39
            Width = 74
            Height = 21
            CharCase = ecUpperCase
            DataField = 'REGI_RETENCAO_QTDE'
            DataSource = dsCad
            TabOrder = 0
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 376
        Width = 712
        Height = 240
        Align = alBottom
        Caption = '**** Desenvovler Procedimentos Associados'
        TabOrder = 1
      end
    end
    inherited TaShRelatorio: TTabSheet
      ExplicitWidth = 712
      ExplicitHeight = 616
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
    Left = 656
    Top = 88
  end
  inherited AcLi: TActionList
    Left = 656
    Top = 139
  end
  inherited imgEnabled: TImageList
    Left = 656
    Top = 192
  end
  inherited imgDisabled: TImageList
    Left = 656
    Top = 240
  end
  inherited cdsCad: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'REGI_IDENT'
        ParamType = ptInput
      end>
    ProviderName = 'dspReg'
    RemoteServer = DmReg.LocalCnn
    Left = 656
    Top = 296
    object cdsCadREGI_IDENT: TStringField
      FieldName = 'REGI_IDENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadLocal: TStringField
      FieldKind = fkLookup
      FieldName = 'Local'
      LookupDataSet = DmReg.cdsLocalArm
      LookupKeyFields = 'RELO_ID'
      LookupResultField = 'RELO_DESCR'
      KeyFields = 'RELO_ID'
      Size = 50
      Lookup = True
    end
    object cdsCadForma: TStringField
      FieldKind = fkLookup
      FieldName = 'Forma'
      LookupDataSet = DmReg.cdsFormArm
      LookupKeyFields = 'REFO_ID'
      LookupResultField = 'REFO_DESCR'
      KeyFields = 'REFO_ID'
      Size = 50
      Lookup = True
    end
    object cdsCadIndexacao: TStringField
      FieldKind = fkLookup
      FieldName = 'Indexacao'
      LookupDataSet = DmReg.cdsIndexacao
      LookupKeyFields = 'REIN_ID'
      LookupResultField = 'REIN_DESCR'
      KeyFields = 'REIN_ID'
      Size = 50
      Lookup = True
    end
    object cdsCadRetencao: TStringField
      FieldKind = fkLookup
      FieldName = 'Retencao'
      LookupDataSet = DmReg.cdsRetencao
      LookupKeyFields = 'RERE_ID'
      LookupResultField = 'RERE_DESCR'
      KeyFields = 'RERE_ID'
      Size = 50
      Lookup = True
    end
    object cdsCadREGI_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'REGI_NOME'
      Size = 50
    end
    object cdsCadREGI_DTREV: TDateField
      FieldName = 'REGI_DTREV'
    end
    object cdsCadRELO_ID: TIntegerField
      FieldName = 'RELO_ID'
    end
    object cdsCadREFO_ID: TIntegerField
      FieldName = 'REFO_ID'
    end
    object cdsCadREIN_ID: TIntegerField
      FieldName = 'REIN_ID'
    end
    object cdsCadRERE_ID: TIntegerField
      FieldName = 'RERE_ID'
    end
    object cdsCadREGI_DESCR: TMemoField
      FieldName = 'REGI_DESCR'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCadREGI_RETENCAO_QTDE: TIntegerField
      FieldName = 'REGI_RETENCAO_QTDE'
    end
  end
  inherited dsCad: TDataSource
    Left = 656
    Top = 347
  end
end
