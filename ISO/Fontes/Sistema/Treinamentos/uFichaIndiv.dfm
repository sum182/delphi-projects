inherited frmFichaIndividual: TfrmFichaIndividual
  Caption = 'Ficha Individual'
  ClientHeight = 495
  ClientWidth = 718
  ExplicitWidth = 726
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 718
    ExplicitWidth = 718
    inherited ToolButton1: TToolButton
      ExplicitWidth = 14
    end
    inherited btnLocalizarTodosRegistros: TToolButton
      ExplicitWidth = 70
    end
  end
  inherited PaCoPadrao: TcxPageControl
    Width = 718
    Height = 455
    ActivePage = TaShCadastro
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 718
    ExplicitHeight = 455
    ClientRectBottom = 451
    ClientRectLeft = 2
    ClientRectRight = 714
    ClientRectTop = 22
    inherited TaShConsulta: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 712
      ExplicitHeight = 429
      inherited grGrid: TcxGrid
        Width = 712
        Height = 314
        ExplicitWidth = 712
        ExplicitHeight = 314
      end
      inherited stbrConsulta: TStatusBar
        Top = 411
        Width = 712
        ExplicitLeft = 0
        ExplicitTop = 411
        ExplicitWidth = 712
      end
      inherited grbxPesquisa: TcxGroupBox
        ExplicitTop = 0
        ExplicitWidth = 712
        Width = 712
        inherited ToolBar1: TToolBar
          Width = 702
          ExplicitLeft = 5
          ExplicitTop = 19
          ExplicitWidth = 702
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
      ExplicitWidth = 712
      ExplicitHeight = 429
      object TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Height = 429
        Width = 712
        object Label2: TLabel
          Left = 8
          Top = 16
          Width = 65
          Height = 13
          Caption = 'Funcionario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 408
          Top = 16
          Width = 33
          Height = 13
          Caption = 'Cargo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 8
          Top = 59
          Width = 83
          Height = 13
          Caption = 'Departamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 408
          Top = 59
          Width = 53
          Height = 13
          Caption = 'Educa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 8
          Top = 32
          DataBinding.DataField = 'FUNC_ID'
          DataBinding.DataSource = dsCad
          Properties.KeyFieldNames = 'FUNC_ID'
          Properties.ListColumns = <
            item
              FieldName = 'FUNC_NOME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsFunc
          TabOrder = 0
          Width = 369
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 408
          Top = 32
          Properties.ListColumns = <>
          TabOrder = 1
          Width = 289
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 8
          Top = 74
          DataBinding.DataField = 'DEPA_ID'
          DataBinding.DataSource = dsCad
          Properties.KeyFieldNames = 'DEPA_ID'
          Properties.ListColumns = <
            item
              FieldName = 'DEPA_DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsDepa
          TabOrder = 2
          Width = 369
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 408
          Top = 74
          Properties.ListColumns = <>
          TabOrder = 3
          Width = 289
        end
        object cxGroupBox1: TcxGroupBox
          Left = 2
          Top = 128
          Align = alBottom
          Caption = 'Hist'#243'rico de Procedimentos'
          TabOrder = 4
          Height = 299
          Width = 708
          object cxGrid1: TcxGrid
            Left = 2
            Top = 16
            Width = 704
            Height = 281
            Align = alClient
            TabOrder = 0
            object cxGrid1DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsCad
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
      end
    end
    inherited TaShRelatorio: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 712
      ExplicitHeight = 429
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'TREINAMENTOS'
    KeyField = 'TREI_ID'
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'trei_id'
        ParamType = ptUnknown
      end>
    DeleteSQL.Strings = (
      'DELETE FROM TREINAMENTOS'
      'WHERE'
      '   TREI_ID = :OLD_TREI_ID')
    EditSQL.Strings = (
      'UPDATE TREINAMENTOS SET'
      '   TREI_ID = :TREI_ID, /*PK*/'
      '   TREI_NOME = :TREI_NOME,'
      '   TREI_DESCR = :TREI_DESCR,'
      '   TREI_DATA = :TREI_DATA,'
      '   TREI_CARGHOR_TEOR = :TREI_CARGHOR_TEOR,'
      '   TREI_CARGHOR_PRAT = :TREI_CARGHOR_PRAT,'
      '   INST_ID = :INST_ID,'
      '   TRTI_ID = :TRTI_ID,'
      '   INTT_ID = :INTT_ID,'
      '   TREI_EFICAZ = :TREI_EFICAZ,'
      '   TREI_EFICAZ_DT = :TREI_EFICAZ_DT,'
      '   FUNC_ID = :FUNC_ID,'
      '   DEPA_ID = :DEPA_ID'
      'WHERE'
      '   TREI_ID = :OLD_TREI_ID')
    InsertSQL.Strings = (
      'INSERT INTO TREINAMENTOS('
      '   TREI_ID, /*PK*/'
      '   TREI_NOME,'
      '   TREI_DESCR,'
      '   TREI_DATA,'
      '   TREI_CARGHOR_TEOR,'
      '   TREI_CARGHOR_PRAT,'
      '   INST_ID,'
      '   TRTI_ID,'
      '   INTT_ID,'
      '   TREI_EFICAZ,'
      '   TREI_EFICAZ_DT,'
      '   FUNC_ID,'
      '   DEPA_ID)'
      'VALUES ('
      '   :TREI_ID,'
      '   :TREI_NOME,'
      '   :TREI_DESCR,'
      '   :TREI_DATA,'
      '   :TREI_CARGHOR_TEOR,'
      '   :TREI_CARGHOR_PRAT,'
      '   :INST_ID,'
      '   :TRTI_ID,'
      '   :INTT_ID,'
      '   :TREI_EFICAZ,'
      '   :TREI_EFICAZ_DT,'
      '   :FUNC_ID,'
      '   :DEPA_ID)')
    SQL.Strings = (
      'select * from treinamentos'
      'where trei_id =:trei_id')
  end
  object quFunc: TIBOQuery
    Params = <>
    DatabaseName = 'E:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from funcionarios')
    FieldOptions = []
    Left = 328
    Top = 192
  end
  object quDepa: TIBOQuery
    Params = <>
    DatabaseName = 'E:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    DeleteSQL.Strings = (
      'DELETE FROM DEPARTAMENTOS'
      'WHERE'
      'RDB$DB_KEY = :DB_KEY')
    EditSQL.Strings = (
      'UPDATE DEPARTAMENTOS SET'
      '   DEPA_ID = :DEPA_ID,'
      '   DEPA_DESCR = :DEPA_DESCR'
      'WHERE'
      'RDB$DB_KEY = :DB_KEY')
    IB_Connection = DMConnection.IBOCnn
    InsertSQL.Strings = (
      'INSERT INTO DEPARTAMENTOS('
      '   DEPA_ID,'
      '   DEPA_DESCR)'
      'VALUES ('
      '   :DEPA_ID,'
      '   :DEPA_DESCR)')
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from departamentos')
    FieldOptions = []
    Left = 400
    Top = 192
  end
  object dsFunc: TDataSource
    DataSet = quFunc
    Left = 328
    Top = 224
  end
  object dsDepa: TDataSource
    DataSet = quDepa
    Left = 400
    Top = 224
  end
end
