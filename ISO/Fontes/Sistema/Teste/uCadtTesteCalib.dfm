inherited frmCadTesteCalib: TfrmCadTesteCalib
  Caption = 'Teste de Calibra'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TcxPageControl
    ActivePage = TaShCadastro
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 635
    ExplicitHeight = 601
    ClientRectBottom = 601
    ClientRectRight = 635
    ClientRectTop = 24
    inherited TaShConsulta: TcxTabSheet
      ExplicitWidth = 635
      ExplicitHeight = 577
      inherited grGrid: TcxGrid
        ExplicitTop = 97
      end
    end
    inherited TaShCadastro: TcxTabSheet
      ExplicitTop = 24
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
      object DBEdit1: TcxDBTextEdit
        Left = 16
        Top = 40
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = dsCad
        TabOrder = 0
        Width = 134
      end
      object DBEdit2: TcxDBTextEdit
        Left = 16
        Top = 80
        DataBinding.DataField = 'DESCR'
        DataBinding.DataSource = dsCad
        TabOrder = 1
        Width = 233
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
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    DeleteSQL.Strings = (
      'DELETE FROM TESTE_CALIB'
      'WHERE'
      'RDB$DB_KEY = :DB_KEY')
    EditSQL.Strings = (
      'UPDATE TESTE_CALIB SET'
      '   ID = :ID,'
      '   DESCR = :DESCR'
      'WHERE'
      'RDB$DB_KEY = :DB_KEY')
    InsertSQL.Strings = (
      'INSERT INTO TESTE_CALIB('
      '   ID,'
      '   DESCR)'
      'VALUES ('
      '   :ID,'
      '   :DESCR)')
    SQL.Strings = (
      'SELECT * FROM TESTE_CALIB'
      'WHERE ID = :ID')
  end
end
