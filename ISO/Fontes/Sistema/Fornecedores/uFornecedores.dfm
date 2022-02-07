inherited frmFornecedores: TfrmFornecedores
  Caption = 'Fornecedores'
  ClientHeight = 541
  ClientWidth = 787
  ExplicitWidth = 795
  ExplicitHeight = 575
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 787
    ExplicitWidth = 787
    inherited ToolButton1: TToolButton
      ExplicitWidth = 14
    end
    inherited btnLocalizarTodosRegistros: TToolButton
      ExplicitWidth = 70
    end
  end
  inherited PaCoPadrao: TcxPageControl
    Width = 787
    Height = 501
    ActivePage = TaShCadastro
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 787
    ExplicitHeight = 501
    ClientRectBottom = 497
    ClientRectLeft = 2
    ClientRectRight = 783
    ClientRectTop = 22
    inherited TaShConsulta: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 781
      ExplicitHeight = 475
      inherited grGrid: TcxGrid
        Width = 781
        Height = 360
        ExplicitWidth = 781
        ExplicitHeight = 360
      end
      inherited stbrConsulta: TStatusBar
        Top = 457
        Width = 781
        ExplicitLeft = 0
        ExplicitTop = 457
        ExplicitWidth = 781
      end
      inherited grbxPesquisa: TcxGroupBox
        ExplicitTop = 0
        ExplicitWidth = 781
        Width = 781
        inherited ToolBar1: TToolBar
          Width = 771
          ExplicitLeft = 5
          ExplicitTop = 19
          ExplicitWidth = 771
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
      ExplicitWidth = 781
      ExplicitHeight = 475
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Height = 475
        Width = 781
        object Label2: TLabel
          Left = 4
          Top = 9
          Width = 32
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 4
          Top = 48
          Width = 71
          Height = 13
          Caption = 'Nome Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 5
          Top = 90
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          Transparent = True
        end
        object Label5: TLabel
          Left = 685
          Top = 93
          Width = 37
          Height = 13
          Caption = 'Numero'
          Transparent = True
        end
        object Label6: TLabel
          Left = 5
          Top = 130
          Width = 65
          Height = 13
          Caption = 'Complemento'
          Transparent = True
        end
        object Label7: TLabel
          Left = 4
          Top = 171
          Width = 28
          Height = 13
          Caption = 'Bairro'
          Transparent = True
        end
        object Label8: TLabel
          Left = 438
          Top = 171
          Width = 33
          Height = 13
          Caption = 'Cidade'
          Transparent = True
        end
        object Label9: TLabel
          Left = 5
          Top = 211
          Width = 19
          Height = 13
          Caption = 'CEP'
          Transparent = True
        end
        object Label10: TLabel
          Left = 716
          Top = 171
          Width = 13
          Height = 13
          Caption = 'UF'
          Transparent = True
        end
        object Label11: TLabel
          Left = 113
          Top = 211
          Width = 21
          Height = 13
          Caption = 'CGC'
          Transparent = True
        end
        object Label12: TLabel
          Left = 7
          Top = 249
          Width = 28
          Height = 13
          Caption = 'E-mail'
          Transparent = True
        end
        object Label13: TLabel
          Left = 7
          Top = 287
          Width = 18
          Height = 13
          Caption = 'Site'
          Transparent = True
        end
        object Label14: TLabel
          Left = 7
          Top = 326
          Width = 85
          Height = 13
          Caption = 'Data de Cadastro'
          Transparent = True
        end
        object Label15: TLabel
          Left = 7
          Top = 366
          Width = 63
          Height = 13
          Caption = 'Observa'#231#245'es'
          Transparent = True
        end
        object edtNome: TcxDBTextEdit
          Left = 4
          Top = 25
          DataBinding.DataField = 'FORNE_NOME'
          DataBinding.DataSource = dsCad
          TabOrder = 0
          Width = 739
        end
        object edtFantasia: TcxDBTextEdit
          Left = 4
          Top = 65
          DataBinding.DataField = 'FORNE_NOME_FANTASIA'
          DataBinding.DataSource = dsCad
          TabOrder = 1
          Width = 739
        end
        object edtEndereco: TcxDBTextEdit
          Left = 4
          Top = 107
          DataBinding.DataField = 'FORNE_ENDERECO'
          DataBinding.DataSource = dsCad
          TabOrder = 2
          Width = 675
        end
        object edtNumero: TcxDBTextEdit
          Left = 685
          Top = 109
          DataBinding.DataField = 'FORNE_ENDERECO_NUMERO'
          DataBinding.DataSource = dsCad
          TabOrder = 3
          Width = 58
        end
        object edtComplemento: TcxDBTextEdit
          Left = 4
          Top = 147
          DataBinding.DataField = 'FORNE_COMPLEMENTO'
          DataBinding.DataSource = dsCad
          TabOrder = 4
          Width = 739
        end
        object edtBairro: TcxDBTextEdit
          Left = 4
          Top = 187
          DataBinding.DataField = 'FORNE_BAIRRO'
          DataBinding.DataSource = dsCad
          TabOrder = 5
          Width = 428
        end
        object edtCep: TcxDBTextEdit
          Left = 5
          Top = 227
          DataBinding.DataField = 'FORNE_CEP'
          DataBinding.DataSource = dsCad
          TabOrder = 8
          Width = 100
        end
        object edtCidade: TcxDBTextEdit
          Left = 438
          Top = 187
          DataBinding.DataField = 'FORNE_CIDADE'
          DataBinding.DataSource = dsCad
          TabOrder = 6
          Width = 272
        end
        object edtUf: TcxDBTextEdit
          Left = 716
          Top = 187
          DataBinding.DataField = 'FORNE_UF'
          DataBinding.DataSource = dsCad
          TabOrder = 7
          Width = 27
        end
        object edtCGC: TcxDBTextEdit
          Left = 111
          Top = 227
          DataBinding.DataField = 'FORNE_CGC'
          DataBinding.DataSource = dsCad
          TabOrder = 9
          Width = 165
        end
        object edtEmail: TcxDBTextEdit
          Left = 7
          Top = 265
          DataBinding.DataField = 'FORNE_EMAIL'
          DataBinding.DataSource = dsCad
          TabOrder = 10
          Width = 736
        end
        object edtSite: TcxDBTextEdit
          Left = 7
          Top = 303
          DataBinding.DataField = 'FORNE_SITE'
          DataBinding.DataSource = dsCad
          TabOrder = 11
          Width = 736
        end
        object dtDataCadastro: TcxDBDateEdit
          Left = 7
          Top = 342
          DataBinding.DataField = 'FORNE_DT_CADASTRO'
          DataBinding.DataSource = dsCad
          TabOrder = 12
          Width = 160
        end
        object cxDBMemo1: TcxDBMemo
          Left = 7
          Top = 382
          DataBinding.DataField = 'FORNE_OBS'
          DataBinding.DataSource = dsCad
          TabOrder = 13
          Height = 89
          Width = 736
        end
      end
    end
    inherited TaShRelatorio: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 781
      ExplicitHeight = 475
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'FORNECEDORES'
    FieldsBusca = <
      item
        FieldName = 'FORNE_ID'
        DisplayName = 'Forne_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'FORNE_NOME'
        DisplayName = 'Nome'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_NOME_FANTASIA'
        DisplayName = 'Fantasia'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_ENDERECO'
        DisplayName = 'Forne_endereco'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_ENDERECO_NUMERO'
        DisplayName = 'Forne_endereco_numero'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_COMPLEMENTO'
        DisplayName = 'Forne_complemento'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_BAIRRO'
        DisplayName = 'Forne_bairro'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_CIDADE'
        DisplayName = 'Forne_cidade'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_CEP'
        DisplayName = 'Forne_cep'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_UF'
        DisplayName = 'Forne_uf'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_CGC'
        DisplayName = 'Forne_cgc'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_OBS'
        DisplayName = 'Forne_obs'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftMemo
      end
      item
        FieldName = 'FORNE_EMAIL'
        DisplayName = 'E-mail'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_SITE'
        DisplayName = 'Site'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'FORNE_DT_CADASTRO'
        DisplayName = 'Data'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftDate
      end>
    KeyField = 'FORN_ID'
    Left = 472
    Top = 408
  end
  inherited AcLi: TActionList
    Left = 472
    Top = 464
  end
  inherited dsCad: TDataSource
    Left = 536
    Top = 464
  end
  inherited imgDisabled: TImageList
    Left = 402
    Top = 464
  end
  inherited imgEnabled: TImageList
    Left = 402
    Top = 408
  end
  inherited dsConsulta: TDataSource
    Left = 592
    Top = 464
  end
  inherited quConsulta: TIBOQuery
    Left = 592
    Top = 408
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'FONE_ID'
        ParamType = ptUnknown
      end>
    DeleteSQL.Strings = (
      'DELETE FROM FORNECEDORES'
      'WHERE'
      '   FORNE_ID = :OLD_FORNE_ID')
    EditSQL.Strings = (
      'UPDATE FORNECEDORES SET'
      '   FORNE_ID = :FORNE_ID, /*PK*/'
      '   FORNE_NOME = :FORNE_NOME,'
      '   FORNE_NOME_FANTASIA = :FORNE_NOME_FANTASIA,'
      '   FORNE_ENDERECO = :FORNE_ENDERECO,'
      '   FORNE_ENDERECO_NUMERO = :FORNE_ENDERECO_NUMERO,'
      '   FORNE_COMPLEMENTO = :FORNE_COMPLEMENTO,'
      '   FORNE_BAIRRO = :FORNE_BAIRRO,'
      '   FORNE_CIDADE = :FORNE_CIDADE,'
      '   FORNE_CEP = :FORNE_CEP,'
      '   FORNE_UF = :FORNE_UF,'
      '   FORNE_CGC = :FORNE_CGC,'
      '   FORNE_OBS = :FORNE_OBS,'
      '   FORNE_EMAIL = :FORNE_EMAIL,'
      '   FORNE_SITE = :FORNE_SITE,'
      '   FORNE_DT_CADASTRO = :FORNE_DT_CADASTRO'
      'WHERE'
      '   FORNE_ID = :OLD_FORNE_ID')
    InsertSQL.Strings = (
      'INSERT INTO FORNECEDORES('
      '   FORNE_ID, /*PK*/'
      '   FORNE_NOME,'
      '   FORNE_NOME_FANTASIA,'
      '   FORNE_ENDERECO,'
      '   FORNE_ENDERECO_NUMERO,'
      '   FORNE_COMPLEMENTO,'
      '   FORNE_BAIRRO,'
      '   FORNE_CIDADE,'
      '   FORNE_CEP,'
      '   FORNE_UF,'
      '   FORNE_CGC,'
      '   FORNE_OBS,'
      '   FORNE_EMAIL,'
      '   FORNE_SITE,'
      '   FORNE_DT_CADASTRO)'
      'VALUES ('
      '   :FORNE_ID,'
      '   :FORNE_NOME,'
      '   :FORNE_NOME_FANTASIA,'
      '   :FORNE_ENDERECO,'
      '   :FORNE_ENDERECO_NUMERO,'
      '   :FORNE_COMPLEMENTO,'
      '   :FORNE_BAIRRO,'
      '   :FORNE_CIDADE,'
      '   :FORNE_CEP,'
      '   :FORNE_UF,'
      '   :FORNE_CGC,'
      '   :FORNE_OBS,'
      '   :FORNE_EMAIL,'
      '   :FORNE_SITE,'
      '   :FORNE_DT_CADASTRO)')
    KeyLinks.Strings = (
      'FORNECEDORES.FORNE_ID')
    SQL.Strings = (
      'SELECT * FROM FORNECEDORES'
      ''
      'WHERE FORNE_ID =:FONE_ID')
    Left = 536
    Top = 408
    object quCadFORNE_ID: TIntegerField
      FieldName = 'FORNE_ID'
      Origin = 'FORNECEDORES.FORNE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object quCadFORNE_NOME: TStringField
      FieldName = 'FORNE_NOME'
      Origin = 'FORNECEDORES.FORNE_NOME'
      Size = 50
    end
    object quCadFORNE_NOME_FANTASIA: TStringField
      FieldName = 'FORNE_NOME_FANTASIA'
      Origin = 'FORNECEDORES.FORNE_NOME_FANTASIA'
      Size = 100
    end
    object quCadFORNE_ENDERECO: TStringField
      FieldName = 'FORNE_ENDERECO'
      Origin = 'FORNECEDORES.FORNE_ENDERECO'
      Size = 100
    end
    object quCadFORNE_ENDERECO_NUMERO: TStringField
      FieldName = 'FORNE_ENDERECO_NUMERO'
      Origin = 'FORNECEDORES.FORNE_ENDERECO_NUMERO'
      Size = 10
    end
    object quCadFORNE_COMPLEMENTO: TStringField
      FieldName = 'FORNE_COMPLEMENTO'
      Origin = 'FORNECEDORES.FORNE_COMPLEMENTO'
      Size = 50
    end
    object quCadFORNE_BAIRRO: TStringField
      FieldName = 'FORNE_BAIRRO'
      Origin = 'FORNECEDORES.FORNE_BAIRRO'
      Size = 50
    end
    object quCadFORNE_CIDADE: TStringField
      FieldName = 'FORNE_CIDADE'
      Origin = 'FORNECEDORES.FORNE_CIDADE'
      Size = 30
    end
    object quCadFORNE_CEP: TStringField
      FieldName = 'FORNE_CEP'
      Origin = 'FORNECEDORES.FORNE_CEP'
      Size = 15
    end
    object quCadFORNE_UF: TStringField
      FieldName = 'FORNE_UF'
      Origin = 'FORNECEDORES.FORNE_UF'
      Size = 3
    end
    object quCadFORNE_CGC: TStringField
      FieldName = 'FORNE_CGC'
      Origin = 'FORNECEDORES.FORNE_CGC'
      Size = 30
    end
    object quCadFORNE_OBS: TMemoField
      FieldName = 'FORNE_OBS'
      Origin = 'FORNECEDORES.FORNE_OBS'
      BlobType = ftMemo
      Size = 8
    end
    object quCadFORNE_EMAIL: TStringField
      FieldName = 'FORNE_EMAIL'
      Origin = 'FORNECEDORES.FORNE_EMAIL'
      Size = 60
    end
    object quCadFORNE_SITE: TStringField
      FieldName = 'FORNE_SITE'
      Origin = 'FORNECEDORES.FORNE_SITE'
      Size = 60
    end
    object quCadFORNE_DT_CADASTRO: TDateField
      FieldName = 'FORNE_DT_CADASTRO'
      Origin = 'FORNECEDORES.FORNE_DT_CADASTRO'
    end
  end
end
