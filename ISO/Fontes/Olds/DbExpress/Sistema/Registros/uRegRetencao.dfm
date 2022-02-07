inherited frmRegRetencao: TfrmRegRetencao
  Caption = 'Registros da Qualidade - Reten'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TPageControl
    ActivePage = TaShCadastro
    inherited TaShCadastro: TTabSheet
      object Label3: TLabel
        Left = 16
        Top = 11
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 30
        Width = 390
        Height = 21
        DataField = 'RERE_DESCR'
        DataSource = dsCad
        TabOrder = 0
      end
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    BuscaVisible = False
    Tabela = 'REG_RETENCAO'
    FieldsBusca = <
      item
        FieldName = 'RERE_DESCR'
        DisplayName = 'Descri'#231#227'o'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'RERE_ID'
        DisplayName = 'Rere_id'
        ShowCombo = True
        ShowGrid = False
        ShowSelect = True
        FieldType = ftInteger
      end>
    KeyField = 'RERE_ID'
  end
  inherited cdsCad: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'RERE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRetensao'
    RemoteServer = DmReg.LocalCnn
    BeforePost = cdsCadBeforePost
    OnNewRecord = cdsCadNewRecord
    object cdsCadRERE_ID: TIntegerField
      FieldName = 'RERE_ID'
      Required = True
    end
    object cdsCadRERE_DESCR: TStringField
      FieldName = 'RERE_DESCR'
      Size = 50
    end
  end
end
