inherited frmCadTesteReg: TfrmCadTesteReg
  Caption = 'Teste de Registros'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TcxPageControl
    ActivePage = TaShCadastro
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 635
    ExplicitHeight = 601
    ClientRectBottom = 597
    ClientRectLeft = 2
    ClientRectRight = 631
    ClientRectTop = 22
    inherited TaShConsulta: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 629
      ExplicitHeight = 575
      inherited grGrid: TcxGrid
        ExplicitTop = 97
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
      ExplicitHeight = 575
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
      object DBEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = dsCad
        TabOrder = 0
        Width = 134
      end
      object DBEdit2: TcxDBTextEdit
        Left = 16
        Top = 75
        DataBinding.DataField = 'DESCR'
        DataBinding.DataSource = dsCad
        TabOrder = 1
        Width = 260
      end
    end
    inherited TaShRelatorio: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 629
      ExplicitHeight = 575
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'TESTE_REG'
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
    Top = 160
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    DeleteSQL.Strings = (
      'DELETE FROM TESTE_REG'
      'WHERE'
      'RDB$DB_KEY = :DB_KEY')
    EditSQL.Strings = (
      'UPDATE TESTE_REG SET'
      '   ID = :ID,'
      '   DESCR = :DESCR'
      'WHERE'
      'RDB$DB_KEY = :DB_KEY')
    InsertSQL.Strings = (
      'INSERT INTO TESTE_REG('
      '   ID,'
      '   DESCR)'
      'VALUES ('
      '   :ID,'
      '   :DESCR)')
    SQL.Strings = (
      'SELECT * FROM TESTE_REG'
      'WHERE ID = :ID')
  end
end
