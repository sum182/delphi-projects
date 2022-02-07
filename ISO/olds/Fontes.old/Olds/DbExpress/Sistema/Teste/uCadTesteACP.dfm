inherited frmCadTesteACP: TfrmCadTesteACP
  Caption = 'Teste de ACP'
  ClientHeight = 512
  ClientWidth = 629
  ExplicitWidth = 637
  ExplicitHeight = 546
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 629
    ExplicitWidth = 629
  end
  inherited PaCoPadrao: TPageControl
    Width = 629
    Height = 471
    ActivePage = TaShCadastro
    ExplicitWidth = 629
    ExplicitHeight = 471
    inherited TaShConsulta: TTabSheet
      ExplicitWidth = 621
      ExplicitHeight = 443
      inherited grbxPesquisa: TGroupBox
        Width = 621
        ExplicitWidth = 621
        inherited ToolBar1: TToolBar
          Width = 611
          ExplicitWidth = 611
        end
      end
      inherited grPesquisa: TsmDBGrid
        Width = 621
        Height = 328
      end
      inherited stbrConsulta: TStatusBar
        Top = 425
        Width = 621
        ExplicitTop = 425
        ExplicitWidth = 621
      end
    end
    inherited TaShCadastro: TTabSheet
      ExplicitWidth = 621
      ExplicitHeight = 443
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 56
        Width = 33
        Height = 13
        Caption = 'DESCR'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = dsCad
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 72
        Width = 134
        Height = 21
        DataField = 'DESCR'
        DataSource = dsCad
        TabOrder = 1
      end
    end
    inherited TaShRelatorio: TTabSheet
      ExplicitWidth = 621
      ExplicitHeight = 443
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'TESTE_ACP'
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
    KeyField = 'ID'
  end
  inherited cdsCad: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspTesteACP'
    RemoteServer = DmTeste.LocalCnn
  end
end
