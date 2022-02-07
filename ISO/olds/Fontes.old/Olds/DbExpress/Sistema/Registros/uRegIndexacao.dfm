inherited frmRegIndexacao: TfrmRegIndexacao
  Caption = 'Registros da Qualidade - Indexa'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TPageControl
    ActivePage = TaShCadastro
    inherited TaShCadastro: TTabSheet
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit1
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 29
        Width = 390
        Height = 21
        DataField = 'REIN_DESCR'
        DataSource = dsCad
        TabOrder = 0
      end
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    BuscaVisible = False
    Tabela = 'REG_INDEXACAO'
    FieldsBusca = <
      item
        FieldName = 'REIN_DESCR'
        DisplayName = 'Descri'#231#227'o'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'REIN_ID'
        DisplayName = 'Rein_id'
        ShowCombo = True
        ShowGrid = False
        ShowSelect = True
        FieldType = ftInteger
      end>
    KeyField = 'REIN_ID'
  end
  inherited cdsCad: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'REIN_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspIndex'
    RemoteServer = DmReg.LocalCnn
    BeforePost = cdsCadBeforePost
    OnNewRecord = cdsCadNewRecord
    object cdsCadREIN_DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'REIN_DESCR'
      Size = 50
    end
    object cdsCadREIN_ID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'REIN_ID'
      Required = True
    end
  end
end
