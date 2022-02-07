inherited frmInstituicoes: TfrmInstituicoes
  Caption = 'Institui'#231#245'es'
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
    ClientRectBottom = 355
    ClientRectLeft = 2
    ClientRectRight = 631
    ClientRectTop = 22
    inherited TaShConsulta: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 629
      ExplicitHeight = 333
      inherited grbxPesquisa: TcxGroupBox
        ExplicitTop = 0
        inherited ToolBar1: TToolBar
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
        Height = 62
        Width = 629
        object Label2: TLabel
          Left = 6
          Top = 11
          Width = 95
          Height = 13
          Caption = 'Nome da Institui'#231#227'o'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 6
          Top = 27
          DataBinding.DataField = 'INTT_DESCR'
          DataBinding.DataSource = dsCad
          Properties.CharCase = ecUpperCase
          TabOrder = 0
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
    Tabela = 'INSTITUICOES'
    FieldsBusca = <
      item
        FieldName = 'INTT_ID'
        DisplayName = 'Intt_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'INTT_DESCR'
        DisplayName = 'Descri'#231#227'o da Institui'#231#227'o'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end>
    KeyField = 'INTT_ID'
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'INTT_ID'
        ParamType = ptInput
      end>
    DeleteSQL.Strings = (
      'DELETE FROM INSTITUICOES'
      'WHERE'
      '   INTT_ID = :OLD_INTT_ID')
    EditSQL.Strings = (
      'UPDATE INSTITUICOES SET'
      '   INTT_ID = :INTT_ID, /*PK*/'
      '   INTT_DESCR = :INTT_DESCR'
      'WHERE'
      '   INTT_ID = :OLD_INTT_ID')
    InsertSQL.Strings = (
      'INSERT INTO INSTITUICOES('
      '   INTT_ID, /*PK*/'
      '   INTT_DESCR)'
      'VALUES ('
      '   :INTT_ID,'
      '   :INTT_DESCR)')
    SQL.Strings = (
      'SELECT * FROM INSTITUICOES'
      ''
      'WHERE INTT_ID =:INTT_ID')
    object quCadINTT_ID: TIntegerField
      FieldName = 'INTT_ID'
    end
    object quCadINTT_DESCR: TStringField
      FieldName = 'INTT_DESCR'
      Size = 50
    end
  end
end
