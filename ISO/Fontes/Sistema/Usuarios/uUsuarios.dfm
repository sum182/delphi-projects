inherited frmUsuarios: TfrmUsuarios
  Caption = 'Usu'#225'rios'
  ClientHeight = 411
  ClientWidth = 647
  ExplicitWidth = 655
  ExplicitHeight = 445
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 647
    inherited ToolButton1: TToolButton
      ExplicitWidth = 14
    end
    inherited btnLocalizarTodosRegistros: TToolButton
      ExplicitWidth = 70
    end
  end
  inherited PaCoPadrao: TcxPageControl
    Width = 647
    Height = 371
    ActivePage = TaShCadastro
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 635
    ExplicitHeight = 449
    ClientRectBottom = 367
    ClientRectLeft = 2
    ClientRectRight = 643
    ClientRectTop = 22
    inherited TaShConsulta: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 629
      ExplicitHeight = 423
      inherited grGrid: TcxGrid
        Width = 641
        Height = 230
        ExplicitHeight = 308
        inherited grPesquisa: TcxGridDBTableView
          OptionsView.Header = False
        end
      end
      inherited stbrConsulta: TStatusBar
        Top = 327
        Width = 641
        ExplicitLeft = 0
        ExplicitTop = 405
      end
      inherited grbxPesquisa: TcxGroupBox
        ExplicitTop = 0
        ExplicitWidth = 641
        Width = 641
        inherited ToolBar1: TToolBar
          Width = 631
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
      ExplicitHeight = 423
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 629
        ExplicitHeight = 423
        Height = 345
        Width = 641
        object Label2: TLabel
          Left = 8
          Top = 14
          Width = 25
          Height = 13
          Caption = 'Login'
          Transparent = True
        end
        object Label3: TLabel
          Left = 8
          Top = 53
          Width = 30
          Height = 13
          Caption = 'Senha'
          Transparent = True
        end
        object Label4: TLabel
          Left = 8
          Top = 94
          Width = 27
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object Label5: TLabel
          Left = 8
          Top = 135
          Width = 28
          Height = 13
          Caption = 'E-mail'
          Transparent = True
        end
        object Label7: TLabel
          Left = 6
          Top = 178
          Width = 69
          Height = 13
          Caption = 'Departamento'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 6
          Top = 29
          DataBinding.DataField = 'USUA_LOGIN'
          DataBinding.DataSource = dsCad
          TabOrder = 0
          Width = 302
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 8
          Top = 69
          DataBinding.DataField = 'USUA_SENHA'
          DataBinding.DataSource = dsCad
          TabOrder = 1
          Width = 302
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 8
          Top = 109
          DataBinding.DataField = 'USUA_NOME'
          DataBinding.DataSource = dsCad
          TabOrder = 2
          Width = 560
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 6
          Top = 152
          DataBinding.DataField = 'USUA_EMAIL'
          DataBinding.DataSource = dsCad
          TabOrder = 3
          Width = 560
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 6
          Top = 195
          DataBinding.DataField = 'DEPA_ID'
          DataBinding.DataSource = dsCad
          Properties.KeyFieldNames = 'DEPA_ID'
          Properties.ListColumns = <
            item
              FieldName = 'DEPA_DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsDepa
          TabOrder = 4
          Width = 560
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 321
          Top = 25
          Caption = 'Administrador'
          TabOrder = 5
          Width = 90
        end
      end
    end
    inherited TaShRelatorio: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 629
      ExplicitHeight = 423
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'USUARIOS'
    FieldsBusca = <
      item
        FieldName = 'USUA_ID'
        DisplayName = 'C'#243'digo'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftInteger
      end
      item
        FieldName = 'USUA_NOME'
        DisplayName = 'Nome'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'USUA_SENHA'
        DisplayName = 'Senha'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'USUA_LOGIN'
        DisplayName = 'Login'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'USUA_EMAIL'
        DisplayName = 'E-mail'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'USUA_ADMIN'
        DisplayName = 'Nivel de Conta'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'DEPA_ID'
        DisplayName = 'Departamento'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftInteger
      end>
    KeyField = 'USUA_ID'
    Left = 472
    Top = 296
  end
  inherited AcLi: TActionList
    Left = 472
    Top = 352
  end
  inherited dsCad: TDataSource
    Left = 536
    Top = 352
  end
  inherited imgDisabled: TImageList
    Left = 402
    Top = 352
  end
  inherited imgEnabled: TImageList
    Left = 402
    Top = 296
  end
  inherited dsConsulta: TDataSource
    Left = 592
    Top = 352
  end
  inherited quConsulta: TIBOQuery
    Left = 592
    Top = 296
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'USUA_ID'
        ParamType = ptInput
      end>
    DeleteSQL.Strings = (
      'DELETE FROM USUARIOS'
      'WHERE'
      '   USUA_ID = :OLD_USUA_ID')
    EditSQL.Strings = (
      'UPDATE USUARIOS SET'
      '   USUA_ID = :USUA_ID, /*PK*/'
      '   USUA_NOME = :USUA_NOME,'
      '   USUA_SENHA = :USUA_SENHA,'
      '   USUA_LOGIN = :USUA_LOGIN,'
      '   USUA_EMAIL = :USUA_EMAIL,'
      '   USUA_ADMIN = :USUA_ADMIN,'
      '   DEPA_ID = :DEPA_ID'
      'WHERE'
      '   USUA_ID = :OLD_USUA_ID')
    InsertSQL.Strings = (
      'INSERT INTO USUARIOS('
      '   USUA_ID, /*PK*/'
      '   USUA_NOME,'
      '   USUA_SENHA,'
      '   USUA_LOGIN,'
      '   USUA_EMAIL,'
      '   USUA_ADMIN,'
      '   DEPA_ID)'
      'VALUES ('
      '   :USUA_ID,'
      '   :USUA_NOME,'
      '   :USUA_SENHA,'
      '   :USUA_LOGIN,'
      '   :USUA_EMAIL,'
      '   :USUA_ADMIN,'
      '   :DEPA_ID)')
    SQL.Strings = (
      'SELECT * FROM USUARIOS'
      'WHERE USUA_ID =:USUA_ID')
    Left = 536
    Top = 296
    object quCadUSUA_ID: TIntegerField
      FieldName = 'USUA_ID'
    end
    object quCadUSUA_NOME: TStringField
      FieldName = 'USUA_NOME'
      Size = 50
    end
    object quCadUSUA_SENHA: TStringField
      FieldName = 'USUA_SENHA'
      Size = 50
    end
    object quCadUSUA_LOGIN: TStringField
      FieldName = 'USUA_LOGIN'
      Size = 50
    end
    object quCadUSUA_EMAIL: TStringField
      FieldName = 'USUA_EMAIL'
      Size = 250
    end
    object quCadUSUA_ADMIN: TStringField
      FieldName = 'USUA_ADMIN'
      Size = 5
    end
    object quCadDEPA_ID: TIntegerField
      FieldName = 'DEPA_ID'
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
      'WHERE 1=1'
      ''
      'ORDER BY DEPA_ID')
    FieldOptions = []
    Left = 344
    Top = 296
  end
  object dsDepa: TDataSource
    DataSet = quDepa
    Left = 344
    Top = 352
  end
end
