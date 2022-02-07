inherited frmTreinamentosTipos: TfrmTreinamentosTipos
  Caption = 'Tipos de Treinamentos'
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
        Left = 3
        Top = 3
        TabOrder = 0
        Height = 62
        Width = 623
        object Label2: TLabel
          Left = 8
          Top = 13
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 29
          DataBinding.DataField = 'TRTI_DESCR'
          DataBinding.DataSource = dsCad
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 586
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
    Tabela = 'TREINAMENTOS_TIPOS'
    FieldsBusca = <
      item
        FieldName = 'TRTI_ID'
        DisplayName = 'Trti_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'TRTI_DESCR'
        DisplayName = 'Descri'#231#227'o'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end>
    KeyField = 'TRTI_ID'
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'TRTI_ID'
        ParamType = ptInput
      end>
    DeleteSQL.Strings = (
      'DELETE FROM TREINAMENTOS_TIPOS'
      'WHERE'
      '   TRTI_ID = :OLD_TRTI_ID')
    EditSQL.Strings = (
      'UPDATE TREINAMENTOS_TIPOS SET'
      '   TRTI_ID = :TRTI_ID, /*PK*/'
      '   TRTI_DESCR = :TRTI_DESCR'
      'WHERE'
      '   TRTI_ID = :OLD_TRTI_ID')
    InsertSQL.Strings = (
      'INSERT INTO TREINAMENTOS_TIPOS('
      '   TRTI_ID, /*PK*/'
      '   TRTI_DESCR)'
      'VALUES ('
      '   :TRTI_ID,'
      '   :TRTI_DESCR)')
    SQL.Strings = (
      'SELECT * FROM TREINAMENTOS_TIPOS'
      ''
      'WHERE TRTI_ID =:TRTI_ID')
    object quCadTRTI_ID: TIntegerField
      FieldName = 'TRTI_ID'
    end
    object quCadTRTI_DESCR: TStringField
      FieldName = 'TRTI_DESCR'
      Size = 50
    end
  end
end
