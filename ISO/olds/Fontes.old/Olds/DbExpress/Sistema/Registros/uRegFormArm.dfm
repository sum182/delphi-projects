inherited frmRegFormArm: TfrmRegFormArm
  Caption = 'Registros da Qualidade - Formas de Armazenamento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TPageControl
    ActivePage = TaShCadastro
    inherited TaShCadastro: TTabSheet
      object Label3: TLabel
        Left = 16
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 35
        Width = 390
        Height = 21
        DataField = 'REFO_DESCR'
        DataSource = dsCad
        TabOrder = 0
      end
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    BuscaVisible = False
    Tabela = 'REG_FORMA_ARM'
    FieldsBusca = <
      item
        FieldName = 'REFO_ID'
        DisplayName = 'Refo_id'
        ShowCombo = True
        ShowGrid = False
        ShowSelect = True
        FieldType = ftInteger
      end
      item
        FieldName = 'REFO_DESCR'
        DisplayName = 'Descri'#231#227'o'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end>
    KeyField = 'REFO_ID'
  end
  inherited cdsCad: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'REFO_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspFormArm'
    RemoteServer = DmReg.LocalCnn
    BeforePost = cdsCadBeforePost
    OnNewRecord = cdsCadNewRecord
    object cdsCadREFO_DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'REFO_DESCR'
      Size = 50
    end
    object cdsCadREFO_ID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'REFO_ID'
      Required = True
    end
  end
end
