inherited frmDepartamentos: TfrmDepartamentos
  Caption = 'Departamento'
  ClientHeight = 179
  ClientWidth = 714
  ExplicitWidth = 722
  ExplicitHeight = 213
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 714
    inherited ToolButton1: TToolButton
      ExplicitWidth = 14
    end
    inherited btnLocalizarTodosRegistros: TToolButton
      ExplicitWidth = 70
    end
  end
  inherited PaCoPadrao: TcxPageControl
    Width = 714
    Height = 139
    ActivePage = TaShCadastro
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 635
    ExplicitHeight = 359
    ClientRectBottom = 135
    ClientRectLeft = 2
    ClientRectRight = 710
    ClientRectTop = 22
    inherited TaShConsulta: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 629
      ExplicitHeight = 333
      inherited grGrid: TcxGrid
        Width = 708
        Height = 0
      end
      inherited stbrConsulta: TStatusBar
        Top = 95
        Width = 708
        ExplicitLeft = 0
        ExplicitTop = 315
      end
      inherited grbxPesquisa: TcxGroupBox
        ExplicitTop = 0
        Width = 708
        inherited ToolBar1: TToolBar
          Width = 698
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
        Caption = 'Descri'#231#227'o'
        TabOrder = 0
        ExplicitLeft = 7
        ExplicitTop = 3
        ExplicitWidth = 619
        Height = 51
        Width = 708
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 13
          Top = 20
          DataBinding.DataField = 'DEPA_DESCR'
          DataBinding.DataSource = dsCad
          TabOrder = 0
          Width = 684
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
    Tabela = 'DEPARTAMENTOS'
    FieldsBusca = <
      item
        FieldName = 'DEPA_ID'
        DisplayName = 'Depa_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'DEPA_DESCR'
        DisplayName = 'Departamento'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end>
    KeyField = 'DEPA_ID'
  end
  inherited quCad: TIBOQuery
    DeleteSQL.Strings = (
      'DELETE FROM DEPARTAMENTOS'
      'WHERE'
      '   DEPA_ID = :OLD_DEPA_ID')
    EditSQL.Strings = (
      'UPDATE DEPARTAMENTOS SET'
      '   DEPA_ID = :DEPA_ID, /*PK*/'
      '   DEPA_DESCR = :DEPA_DESCR'
      'WHERE'
      '   DEPA_ID = :OLD_DEPA_ID')
    InsertSQL.Strings = (
      'INSERT INTO DEPARTAMENTOS('
      '   DEPA_ID, /*PK*/'
      '   DEPA_DESCR)'
      'VALUES ('
      '   :DEPA_ID,'
      '   :DEPA_DESCR)')
    SQL.Strings = (
      'SELECT * FROM DEPARTAMENTOS')
  end
end
