inherited frmRegRetencao: TfrmRegRetencao
  Caption = 'Registros da Qualidade - Reten'#231#227'o'
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
        Top = 30
        DataBinding.DataField = 'RERE_DESCR'
        DataBinding.DataSource = dsCad
        TabOrder = 0
        Width = 392
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
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'RERE_ID'
        ParamType = ptInput
      end>
    DeleteSQL.Strings = (
      'DELETE FROM REG_RETENCAO'
      'WHERE'
      '   RERE_ID = :OLD_RERE_ID')
    EditSQL.Strings = (
      'UPDATE REG_RETENCAO SET'
      '   RERE_ID = :RERE_ID, /*PK*/'
      '   RERE_DESCR = :RERE_DESCR'
      'WHERE'
      '   RERE_ID = :OLD_RERE_ID')
    InsertSQL.Strings = (
      'INSERT INTO REG_RETENCAO('
      '   RERE_ID, /*PK*/'
      '   RERE_DESCR)'
      'VALUES ('
      '   :RERE_ID,'
      '   :RERE_DESCR)')
    BeforePost = quCadBeforePost
    OnNewRecord = quCadNewRecord
    SQL.Strings = (
      'SELECT * FROM REG_RETENCAO'
      'WHERE RERE_ID = :RERE_ID')
    object quCadRERE_ID: TIntegerField
      FieldName = 'RERE_ID'
      Required = True
    end
    object quCadRERE_DESCR: TStringField
      FieldName = 'RERE_DESCR'
      Size = 50
    end
  end
end
