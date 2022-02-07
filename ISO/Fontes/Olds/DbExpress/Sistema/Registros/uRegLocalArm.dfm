inherited frmRegLocalArm: TfrmRegLocalArm
  Caption = 'Registros da Qualidade - Locais de Armazenamento'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    inherited ToolButton1: TToolButton
      ExplicitWidth = 66
    end
    inherited btnLocalizarTodosRegistros: TToolButton
      ExplicitWidth = 66
    end
  end
  inherited PaCoPadrao: TPageControl
    ActivePage = TaShCadastro
    inherited TaShConsulta: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited grbxPesquisa: TGroupBox
        inherited ToolBar1: TToolBar
          inherited ToolButton3: TToolButton
            ExplicitWidth = 43
          end
          inherited ToolButton4: TToolButton
            ExplicitWidth = 43
          end
          inherited ToolButton5: TToolButton
            ExplicitWidth = 43
          end
          inherited ToolButton6: TToolButton
            ExplicitWidth = 43
          end
        end
      end
      inherited grPesquisa: TsmDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'RELO_ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RELO_DESCR'
            Width = 409
            Visible = True
          end>
      end
    end
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
        DataField = 'RELO_DESCR'
        DataSource = dsCad
        TabOrder = 0
      end
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    BuscaVisible = False
    Tabela = 'REG_LOCAL_ARM'
    FieldsBusca = <
      item
        FieldName = 'RELO_ID'
        DisplayName = 'ID'
        ShowCombo = True
        ShowGrid = False
        ShowSelect = True
        FieldType = ftInteger
      end
      item
        FieldName = 'RELO_DESCR'
        DisplayName = 'Descri'#231#227'o'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end>
    KeyField = 'RELO_ID'
  end
  inherited AcLi: TActionList
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
  inherited cdsCad: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'RELO_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspLocal'
    RemoteServer = DmReg.LocalCnn
    BeforePost = cdsCadBeforePost
    OnNewRecord = cdsCadNewRecord
    object cdsCadRELO_ID: TIntegerField
      FieldName = 'RELO_ID'
      Required = True
    end
    object cdsCadRELO_DESCR: TStringField
      FieldName = 'RELO_DESCR'
      Size = 50
    end
  end
end
