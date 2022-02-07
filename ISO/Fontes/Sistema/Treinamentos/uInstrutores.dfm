inherited frmInstrutores: TfrmInstrutores
  Caption = 'Instrutores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TcxPageControl
    ClientRectBottom = 355
    ClientRectLeft = 2
    ClientRectRight = 631
    ClientRectTop = 22
    inherited TaShCadastro: TcxTabSheet
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        TabOrder = 0
        ExplicitTop = 3
        Height = 62
        Width = 629
        object Label2: TLabel
          Left = 5
          Top = 10
          Width = 88
          Height = 13
          Caption = 'Nome do Instrutor'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 6
          Top = 26
          DataBinding.DataField = 'INST_NOME'
          DataBinding.DataSource = dsCad
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 597
        end
      end
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'INSTRUTORES'
    FieldsBusca = <
      item
        FieldName = 'INST_ID'
        DisplayName = 'Inst_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'INST_NOME'
        DisplayName = 'Nome do Instrutor'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end>
    KeyField = 'INST_ID'
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'INST_ID'
        ParamType = ptUnknown
      end>
    DeleteSQL.Strings = (
      'DELETE FROM INSTRUTORES'
      'WHERE'
      '   INST_ID = :OLD_INST_ID')
    EditSQL.Strings = (
      'UPDATE INSTRUTORES SET'
      '   INST_ID = :INST_ID, /*PK*/'
      '   INST_NOME = :INST_NOME'
      'WHERE'
      '   INST_ID = :OLD_INST_ID')
    InsertSQL.Strings = (
      'INSERT INTO INSTRUTORES('
      '   INST_ID, /*PK*/'
      '   INST_NOME)'
      'VALUES ('
      '   :INST_ID,'
      '   :INST_NOME)')
    KeyLinks.Strings = (
      'INSTRUTORES.INST_ID')
    SQL.Strings = (
      'SELECT * FROM INSTRUTORES'
      'WHERE INST_ID =:INST_ID')
    object quCadINST_ID: TIntegerField
      FieldName = 'INST_ID'
      Origin = 'INSTRUTORES.INST_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object quCadINST_NOME: TStringField
      FieldName = 'INST_NOME'
      Origin = 'INSTRUTORES.INST_NOME'
      Size = 100
    end
  end
end
