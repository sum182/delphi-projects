inherited frmProcedimento: TfrmProcedimento
  Caption = 'Cadastro de Procedimentos'
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
        Caption = 'Descri'#231#227'o do Procedimento'
        TabOrder = 0
        Height = 65
        Width = 629
        object edtProcedimento: TcxDBTextEdit
          Left = 10
          Top = 25
          DataBinding.DataField = 'PROC_DESCR'
          DataBinding.DataSource = dsCad
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 607
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
    Tabela = 'PROCEDIMENTOS'
    FieldsBusca = <
      item
        FieldName = 'PROC_ID'
        DisplayName = 'C'#243'digo'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftInteger
      end
      item
        FieldName = 'PROC_DESCR'
        DisplayName = 'Descri'#231#227'o'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end>
    KeyField = 'PROC_ID'
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'PROC_ID'
        ParamType = ptUnknown
      end>
    DeleteSQL.Strings = (
      'DELETE FROM PROCEDIMENTOS'
      'WHERE'
      '   PROC_ID = :OLD_PROC_ID')
    EditSQL.Strings = (
      'UPDATE PROCEDIMENTOS SET'
      '   PROC_ID = :PROC_ID, /*PK*/'
      '   PROC_DESCR = :PROC_DESCR'
      'WHERE'
      '   PROC_ID = :OLD_PROC_ID')
    InsertSQL.Strings = (
      'INSERT INTO PROCEDIMENTOS('
      '   PROC_ID, /*PK*/'
      '   PROC_DESCR)'
      'VALUES ('
      '   :PROC_ID,'
      '   :PROC_DESCR)')
    SQL.Strings = (
      'SELECT * FROM PROCEDIMENTOS'
      'WHERE  PROC_ID =:PROC_ID')
    object quCadPROC_ID: TIntegerField
      FieldName = 'PROC_ID'
    end
    object quCadPROC_DESCR: TStringField
      FieldName = 'PROC_DESCR'
      Size = 50
    end
  end
end
