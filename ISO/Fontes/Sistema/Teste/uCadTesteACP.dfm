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
  inherited PaCoPadrao: TcxPageControl
    Width = 629
    Height = 472
    ActivePage = TaShCadastro
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 629
    ExplicitHeight = 472
    ClientRectBottom = 472
    ClientRectRight = 629
    ClientRectTop = 24
    inherited TaShConsulta: TcxTabSheet
      ExplicitWidth = 629
      ExplicitHeight = 448
      inherited grGrid: TcxGrid
        Width = 629
        Height = 333
        ExplicitTop = 97
        ExplicitWidth = 629
        ExplicitHeight = 333
      end
      inherited stbrConsulta: TStatusBar
        Top = 430
        Width = 629
        ExplicitTop = 430
        ExplicitWidth = 629
      end
      inherited grbxPesquisa: TcxGroupBox
        ExplicitWidth = 629
        Width = 629
        inherited ToolBar1: TToolBar
          Width = 619
          ExplicitWidth = 619
        end
      end
    end
    inherited TaShCadastro: TcxTabSheet
      ExplicitTop = 24
      ExplicitWidth = 629
      ExplicitHeight = 448
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
        Top = 72
        DataBinding.DataField = 'DESCR'
        DataBinding.DataSource = dsCad
        TabOrder = 1
        Width = 225
      end
    end
    inherited TaShRelatorio: TcxTabSheet
      ExplicitWidth = 629
      ExplicitHeight = 448
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
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    DeleteSQL.Strings = (
      'DELETE FROM TESTE_ACP'
      'WHERE'
      'RDB$DB_KEY = :DB_KEY')
    EditSQL.Strings = (
      'UPDATE TESTE_ACP SET'
      '   ID = :ID,'
      '   DESCR = :DESCR'
      'WHERE'
      'RDB$DB_KEY = :DB_KEY')
    InsertSQL.Strings = (
      'INSERT INTO TESTE_ACP('
      '   ID,'
      '   DESCR)'
      'VALUES ('
      '   :ID,'
      '   :DESCR)')
    SQL.Strings = (
      'SELECT * FROM TESTE_ACP'
      'WHERE ID = :ID')
  end
end
