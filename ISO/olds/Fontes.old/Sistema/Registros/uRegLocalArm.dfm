inherited frmRegLocalArm: TfrmRegLocalArm
  Caption = 'Registros da Qualidade - Locais de Armazenamento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TcxPageControl
    ActivePage = TaShCadastro
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 635
    ExplicitHeight = 359
    ClientRectBottom = 355
    ClientRectLeft = 2
    ClientRectRight = 631
    ClientRectTop = 22
    inherited TaShConsulta: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 629
      ExplicitHeight = 333
      inherited grGrid: TcxGrid
        ExplicitTop = 97
        ExplicitHeight = 218
      end
      inherited stbrConsulta: TStatusBar
        ExplicitLeft = 0
        ExplicitTop = 315
      end
      inherited grbxPesquisa: TcxGroupBox
        ExplicitTop = 0
        inherited ToolBar1: TToolBar
          ExplicitLeft = 5
          ExplicitTop = 19
          ExplicitWidth = 619
        end
      end
    end
    inherited TaShCadastro: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 629
      ExplicitHeight = 333
      object Label3: TLabel
        Left = 16
        Top = 11
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit2: TcxDBTextEdit
        Left = 16
        Top = 29
        DataBinding.DataField = 'RELO_DESCR'
        DataBinding.DataSource = dsCad
        TabOrder = 0
        Width = 390
      end
    end
    inherited TaShRelatorio: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 629
      ExplicitHeight = 333
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
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'RELO_ID'
        ParamType = ptUnknown
      end>
    ColumnAttributes.Strings = (
      'RELO_ID=REQUIRED')
    DeleteSQL.Strings = (
      'DELETE FROM REG_LOCAL_ARM'
      'WHERE'
      '   RELO_ID = :OLD_RELO_ID')
    EditSQL.Strings = (
      'UPDATE REG_LOCAL_ARM SET'
      '   RELO_ID = :RELO_ID, /*PK*/'
      '   RELO_DESCR = :RELO_DESCR'
      'WHERE'
      '   RELO_ID = :OLD_RELO_ID')
    InsertSQL.Strings = (
      'INSERT INTO REG_LOCAL_ARM('
      '   RELO_ID, /*PK*/'
      '   RELO_DESCR)'
      'VALUES ('
      '   :RELO_ID,'
      '   :RELO_DESCR)')
    KeyLinks.Strings = (
      'REG_LOCAL_ARM.RELO_ID')
    BeforePost = quCadBeforePost
    OnNewRecord = quCadNewRecord
    SQL.Strings = (
      'SELECT * FROM REG_LOCAL_ARM'
      'WHERE RELO_ID = :RELO_ID')
    object quCadRELO_ID: TIntegerField
      FieldName = 'RELO_ID'
      Origin = 'REG_LOCAL_ARM.RELO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object quCadRELO_DESCR: TStringField
      FieldName = 'RELO_DESCR'
      Origin = 'REG_LOCAL_ARM.RELO_DESCR'
      Size = 50
    end
  end
end
