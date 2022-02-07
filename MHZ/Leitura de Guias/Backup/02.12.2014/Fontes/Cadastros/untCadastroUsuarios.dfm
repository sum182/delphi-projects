inherited frmCadastroUsuario: TfrmCadastroUsuario
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 623
  ClientWidth = 948
  OnClose = FormClose
  ExplicitWidth = 964
  ExplicitHeight = 661
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 948
    ExplicitWidth = 116
    inherited ToolButton1: TToolButton
      ExplicitWidth = 14
    end
    inherited btnLocalizarTodosRegistros: TToolButton
      ExplicitWidth = 70
    end
  end
  inherited PaCoPadrao: TPageControl
    Width = 948
    Height = 582
    ExplicitWidth = 116
    inherited TaShConsulta: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 108
      ExplicitHeight = 427
      inherited grbxPesquisa: TGroupBox
        Width = 940
        ExplicitWidth = 108
        inherited ToolBar1: TToolBar
          Width = 930
          ExplicitWidth = 930
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
      inherited grPesquisa: TsmDBGrid
        Width = 940
        Height = 439
      end
      inherited stbrConsulta: TStatusBar
        Top = 536
        Width = 940
        ExplicitTop = 536
        ExplicitWidth = 940
      end
    end
    inherited TaShCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 108
      ExplicitHeight = 427
      object Label2: TLabel
        Left = 48
        Top = 16
        Width = 63
        Height = 13
        Caption = 'ID_USUARIO'
        FocusControl = cxDBSpinEdit1
      end
      object Label3: TLabel
        Left = 48
        Top = 56
        Width = 31
        Height = 13
        Caption = 'LOGIN'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 48
        Top = 96
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 48
        Top = 136
        Width = 33
        Height = 13
        Caption = 'SENHA'
        FocusControl = cxDBTextEdit3
      end
      object Label6: TLabel
        Left = 48
        Top = 176
        Width = 85
        Height = 13
        Caption = 'ADMINISTRADOR'
        FocusControl = cxDBTextEdit4
      end
      object Label7: TLabel
        Left = 48
        Top = 216
        Width = 31
        Height = 13
        Caption = 'ATIVO'
        FocusControl = cxDBTextEdit5
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 48
        Top = 32
        DataBinding.DataField = 'ID_USUARIO'
        DataBinding.DataSource = dsCad
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 48
        Top = 72
        DataBinding.DataField = 'LOGIN'
        DataBinding.DataSource = dsCad
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 48
        Top = 112
        DataBinding.DataField = 'NOME'
        DataBinding.DataSource = dsCad
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 48
        Top = 152
        DataBinding.DataField = 'SENHA'
        DataBinding.DataSource = dsCad
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 48
        Top = 192
        DataBinding.DataField = 'ADMINISTRADOR'
        DataBinding.DataSource = dsCad
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 48
        Top = 232
        DataBinding.DataField = 'ATIVO'
        DataBinding.DataSource = dsCad
        TabOrder = 5
        Width = 121
      end
    end
    inherited TaShRelatorio: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 940
      ExplicitHeight = 554
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'USUARIO'
    FieldsBusca = <
      item
        FieldName = 'ID_USUARIO'
        DisplayName = 'Id_usuario'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftInteger
      end
      item
        FieldName = 'LOGIN'
        DisplayName = 'Login'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'NOME'
        DisplayName = 'Nome'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'SENHA'
        DisplayName = 'Senha'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'ADMINISTRADOR'
        DisplayName = 'Administrador'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'ATIVO'
        DisplayName = 'Ativo'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end>
    KeyField = 'id_usuario'
  end
  inherited fdqCad: TFDQuery
    OnNewRecord = fdqCadNewRecord
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from usuario'
      'where id_usuario = :id_usuario')
    Left = 56
    Top = 352
    ParamData = <
      item
        Name = 'ID_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 1
        Value = 1
      end>
    object fdqCadID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqCadLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Required = True
    end
    object fdqCadNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object fdqCadSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
    end
    object fdqCadADMINISTRADOR: TStringField
      FieldName = 'ADMINISTRADOR'
      Origin = 'ADMINISTRADOR'
      Size = 5
    end
    object fdqCadATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 5
    end
  end
  inherited dsCad: TDataSource
    Left = 56
    Top = 408
  end
  inherited dsBusca: TDataSource
    Left = 120
    Top = 408
  end
  inherited fdqBusca: TFDQuery
    Active = True
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from usuario'
      'where id_usuario = :id_usuario')
    Left = 120
    Top = 352
    ParamData = <
      item
        Name = 'ID_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
