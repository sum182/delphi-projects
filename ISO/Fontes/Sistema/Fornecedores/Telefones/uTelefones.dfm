inherited frmTelefones: TfrmTelefones
  Caption = 'Telefones'
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
        Height = 65
        Width = 629
        object Label2: TLabel
          Left = 9
          Top = 12
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 9
          Top = 28
          DataBinding.DataField = 'TETI_DESCR'
          DataBinding.DataSource = dsCad
          TabOrder = 0
          Width = 303
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
    Tabela = 'TELEFONES_TIPO'
    FieldsBusca = <
      item
        FieldName = 'TETI_ID'
        DisplayName = 'Teti_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'TETI_DESCR'
        DisplayName = 'Descri'#231#227'o'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end>
    KeyField = 'TETI_ID'
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'TETI_ID'
        ParamType = ptInput
      end>
    DeleteSQL.Strings = (
      'DELETE FROM TELEFONES_TIPO'
      'WHERE'
      '   TETI_ID = :OLD_TETI_ID')
    EditSQL.Strings = (
      'UPDATE TELEFONES_TIPO SET'
      '   TETI_ID = :TETI_ID, /*PK*/'
      '   TETI_DESCR = :TETI_DESCR'
      'WHERE'
      '   TETI_ID = :OLD_TETI_ID')
    InsertSQL.Strings = (
      'INSERT INTO TELEFONES_TIPO('
      '   TETI_ID, /*PK*/'
      '   TETI_DESCR)'
      'VALUES ('
      '   :TETI_ID,'
      '   :TETI_DESCR)')
    SQL.Strings = (
      'SELECT * FROM TELEFONES_TIPO'
      'WHERE TETI_ID =:TETI_ID')
    object quCadTETI_ID: TIntegerField
      FieldName = 'TETI_ID'
      Origin = 'TELEFONES_TIPO.TETI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object quCadTETI_DESCR: TStringField
      FieldName = 'TETI_DESCR'
      Origin = 'TELEFONES_TIPO.TETI_DESCR'
    end
  end
end
