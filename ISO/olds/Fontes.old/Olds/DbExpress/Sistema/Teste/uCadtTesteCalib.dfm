inherited frmCadTesteCalib: TfrmCadTesteCalib
  Caption = 'Teste de Calibra'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TPageControl
    ActivePage = TaShCadastro
    inherited TaShCadastro: TTabSheet
      object Label2: TLabel
        Left = 16
        Top = 24
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 64
        Width = 33
        Height = 13
        Caption = 'DESCR'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 40
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = dsCad
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 80
        Width = 134
        Height = 21
        DataField = 'DESCR'
        DataSource = dsCad
        TabOrder = 1
      end
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'TESTE_CALIB'
    FieldsBusca = <
      item
        FieldName = 'ID'
        DisplayName = 'Id'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftInteger
      end
      item
        FieldName = 'DESCR'
        DisplayName = 'Descr'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end>
  end
  inherited cdsCad: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspTesteCalib'
    RemoteServer = DmTeste.LocalCnn
  end
end
