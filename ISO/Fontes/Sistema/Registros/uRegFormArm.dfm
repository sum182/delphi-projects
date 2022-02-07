inherited frmRegFormArm: TfrmRegFormArm
  Caption = 'Registros da Qualidade - Formas de Armazenamento'
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
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit2: TcxDBTextEdit
        Left = 16
        Top = 35
        DataBinding.DataField = 'REFO_DESCR'
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
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'REFO_ID'
        ParamType = ptInput
      end>
    DeleteSQL.Strings = (
      'DELETE FROM REG_FORMA_ARM'
      'WHERE'
      '   REFO_ID = :OLD_REFO_ID')
    EditSQL.Strings = (
      'UPDATE REG_FORMA_ARM SET'
      '   REFO_ID = :REFO_ID, /*PK*/'
      '   REFO_DESCR = :REFO_DESCR'
      'WHERE'
      '   REFO_ID = :OLD_REFO_ID')
    InsertSQL.Strings = (
      'INSERT INTO REG_FORMA_ARM('
      '   REFO_ID, /*PK*/'
      '   REFO_DESCR)'
      'VALUES ('
      '   :REFO_ID,'
      '   :REFO_DESCR)')
    BeforePost = quCadBeforePost
    OnNewRecord = quCadNewRecord
    SQL.Strings = (
      'SELECT * FROM REG_FORMA_ARM'
      'WHERE REFO_ID = :REFO_ID')
    object quCadREFO_ID: TIntegerField
      FieldName = 'REFO_ID'
      Required = True
    end
    object quCadREFO_DESCR: TStringField
      FieldName = 'REFO_DESCR'
      Size = 50
    end
  end
end
