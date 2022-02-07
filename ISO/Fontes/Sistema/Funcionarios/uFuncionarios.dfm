inherited frmFuncionarios: TfrmFuncionarios
  Caption = 'Funcionarios'
  ExplicitWidth = 643
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    inherited ToolButton1: TToolButton
      ExplicitWidth = 14
    end
    inherited btnLocalizarTodosRegistros: TToolButton
      ExplicitWidth = 70
    end
  end
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
          inherited ToolButton3: TToolButton
            ExplicitWidth = 24
          end
          inherited ToolButton4: TToolButton
            ExplicitWidth = 24
          end
          inherited ToolButton5: TToolButton
            ExplicitWidth = 24
          end
          inherited ToolButton6: TToolButton
            ExplicitWidth = 24
          end
        end
      end
    end
    inherited TaShCadastro: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 629
      ExplicitHeight = 333
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        TabOrder = 0
        Height = 105
        Width = 629
        object Label2: TLabel
          Left = 6
          Top = 13
          Width = 27
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object Label3: TLabel
          Left = 6
          Top = 54
          Width = 69
          Height = 13
          Caption = 'Departamento'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 6
          Top = 28
          DataBinding.DataField = 'FUNC_NOME'
          DataBinding.DataSource = dsCad
          TabOrder = 0
          Width = 603
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 6
          Top = 69
          DataBinding.DataField = 'DEPA_ID'
          DataBinding.DataSource = dsCad
          Properties.KeyFieldNames = 'DEPA_ID'
          Properties.ListColumns = <
            item
              FieldName = 'DEPA_DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsDepa
          TabOrder = 1
          Width = 603
        end
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
    Tabela = 'FUNCIONARIOS'
    FieldsBusca = <
      item
        FieldName = 'FUNC_ID'
        DisplayName = 'C'#243'digo'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'FUNC_NOME'
        DisplayName = 'Nome'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'DEPA_ID'
        DisplayName = 'Depa_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end>
    KeyField = 'FUNC_ID'
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'FUNC_ID'
        ParamType = ptInput
      end>
    DeleteSQL.Strings = (
      'DELETE FROM FUNCIONARIOS'
      'WHERE'
      '   FUNC_ID = :OLD_FUNC_ID')
    EditSQL.Strings = (
      'UPDATE FUNCIONARIOS SET'
      '   FUNC_ID = :FUNC_ID, /*PK*/'
      '   FUNC_NOME = :FUNC_NOME,'
      '   DEPA_ID = :DEPA_ID'
      'WHERE'
      '   FUNC_ID = :OLD_FUNC_ID')
    InsertSQL.Strings = (
      'INSERT INTO FUNCIONARIOS('
      '   FUNC_ID, /*PK*/'
      '   FUNC_NOME,'
      '   DEPA_ID)'
      'VALUES ('
      '   :FUNC_ID,'
      '   :FUNC_NOME,'
      '   :DEPA_ID)')
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIOS'
      ''
      'WHERE FUNC_ID =:FUNC_ID')
    object quCadFUNC_ID: TIntegerField
      FieldName = 'FUNC_ID'
      Origin = 'FUNCIONARIOS.FUNC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object quCadFUNC_NOME: TStringField
      FieldName = 'FUNC_NOME'
      Origin = 'FUNCIONARIOS.FUNC_NOME'
      Size = 200
    end
    object quCadDEPA_ID: TIntegerField
      FieldName = 'DEPA_ID'
      Origin = 'FUNCIONARIOS.DEPA_ID'
    end
  end
  object quDepa: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Alvaro\Alvaro - Files\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM DEPARTAMENTOS'
      ''
      'ORDER BY DEPA_DESCR')
    FieldOptions = []
    Left = 96
    Top = 272
  end
  object dsDepa: TDataSource
    DataSet = quDepa
    Left = 96
    Top = 328
  end
end
