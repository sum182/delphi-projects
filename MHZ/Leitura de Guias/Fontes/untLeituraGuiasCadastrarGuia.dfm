object frmLeituraGuiasCadastrarGuia: TfrmLeituraGuiasCadastrarGuia
  Left = 0
  Top = 0
  Caption = 'Cadastrar Guia'
  ClientHeight = 270
  ClientWidth = 1043
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    TabOrder = 0
    Height = 81
    Width = 1043
    object cxLabel1: TcxLabel
      Left = 16
      Top = 32
      Caption = 'Cadastro de Guia n'#227'o localizada no Lote'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 204
    Align = alBottom
    TabOrder = 1
    Height = 66
    Width = 1043
    object btnOK: TcxButton
      Left = 850
      Top = 23
      Width = 80
      Height = 27
      Caption = 'OK'
      Default = True
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = DM.ImageList1
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancelar: TcxButton
      Left = 945
      Top = 23
      Width = 80
      Height = 27
      Cancel = True
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = DM.ImageList1
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object gbxDadosGuia: TcxGroupBox
    Left = 0
    Top = 81
    Align = alClient
    Caption = 'Dados da Guia'
    TabOrder = 2
    Height = 123
    Width = 1043
    object Label1: TLabel
      Left = 440
      Top = 15
      Width = 53
      Height = 13
      Caption = 'Carteirinha'
    end
    object Label2: TLabel
      Left = 24
      Top = 15
      Width = 100
      Height = 13
      Caption = 'Nome do Benefici'#225'rio'
      FocusControl = edtNome
    end
    object Label4: TLabel
      Left = 592
      Top = 15
      Width = 21
      Height = 13
      Caption = 'Guia'
    end
    object Label5: TLabel
      Left = 744
      Top = 64
      Width = 26
      Height = 13
      Caption = 'Plano'
      FocusControl = cxDBTextEdit2
    end
    object Label6: TLabel
      Left = 24
      Top = 64
      Width = 65
      Height = 13
      Caption = 'Procedimento'
      FocusControl = cxDBTextEdit3
    end
    object Label7: TLabel
      Left = 904
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = cxDBCalcEdit1
    end
    object Label9: TLabel
      Left = 744
      Top = 15
      Width = 21
      Height = 13
      Caption = 'Lote'
    end
    object Label20: TLabel
      Left = 592
      Top = 64
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = edtData
    end
    object edtNome: TcxDBTextEdit
      Left = 24
      Top = 32
      DataBinding.DataField = 'NOME_BENEFICIARIO'
      DataBinding.DataSource = dsCad
      TabOrder = 0
      Width = 393
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 744
      Top = 80
      DataBinding.DataField = 'NOME_PLANO'
      DataBinding.DataSource = dsCad
      TabOrder = 7
      Width = 281
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 24
      Top = 80
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = dsCad
      TabOrder = 5
      Width = 551
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 904
      Top = 32
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = dsCad
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 440
      Top = 32
      DataBinding.DataField = 'NUMERO_CARTEIRA'
      DataBinding.DataSource = dsCad
      Enabled = False
      TabOrder = 1
      Width = 135
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 592
      Top = 32
      DataBinding.DataField = 'NUMERO_GUIA_PRESTADOR'
      DataBinding.DataSource = dsCad
      TabOrder = 2
      Width = 135
    end
    object edtData: TcxDBDateEdit
      Left = 592
      Top = 80
      DataBinding.DataField = 'DATA'
      DataBinding.DataSource = dsCad
      TabOrder = 6
      Width = 135
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 744
      Top = 32
      DataBinding.DataField = 'ID_GUIAS_CABECALHO'
      DataBinding.DataSource = dsCad
      Properties.KeyFieldNames = 'ID_GUIAS_CABECALHO'
      Properties.ListColumns = <
        item
          FieldName = 'SEQUENCIAL_TRANSACAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsLotes
      TabOrder = 3
      Width = 145
    end
  end
  object dsCad: TDataSource
    DataSet = fdqCad
    Left = 592
    Top = 83
  end
  object fdqCad: TFDQuery
    OnNewRecord = fdqCadNewRecord
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT'
      '  GUIA.*,'
      '  CABEC.SEQUENCIAL_TRANSACAO,'
      '  TP.DESCRICAO AS  "TIPO_SERVICO",'
      '  STATUS.DESCRICAO AS STATUS,'
      '  USUARIO.LOGIN,'
      '  GRUPO.DT_IMPORTACAO,'
      '  GRUPO.HR_IMPORTACAO'
      'FROM GUIAS_DETALHE GUIA'
      
        'INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_GUIAS_CABECALHO = ' +
        'GUIA.ID_GUIAS_CABECALHO)'
      
        'INNER JOIN GUIAS_GRUPO_LOTE GRUPO ON (GRUPO.ID_GUIAS_GRUPO_LOTE ' +
        '= CABEC.ID_GUIAS_GRUPO_LOTE)'
      
        'INNER JOIN TIPO_SERVICO TP ON (TP.ID_TIPO_SERVICO = GRUPO.ID_TIP' +
        'O_SERVICO)'
      
        'LEFT OUTER JOIN LEITURA_STATUS STATUS ON (STATUS.ID_LEITURA_STAT' +
        'US = GUIA.ID_LEITURA_STATUS)'
      
        'LEFT OUTER JOIN USUARIO ON (USUARIO.ID_USUARIO = GRUPO.ID_USUARI' +
        'O)'
      'WHERE GUIA.ID_GUIAS_DETALHE =:ID_GUIAS_DETALHE')
    Left = 592
    Top = 35
    ParamData = <
      item
        Name = 'ID_GUIAS_DETALHE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqCadID_GUIAS_DETALHE: TIntegerField
      FieldName = 'ID_GUIAS_DETALHE'
      Origin = 'ID_GUIAS_DETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqCadID_GUIAS_CABECALHO: TIntegerField
      FieldName = 'ID_GUIAS_CABECALHO'
      Origin = 'ID_GUIAS_CABECALHO'
      Required = True
    end
    object fdqCadREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Origin = 'REGISTRO_ANS'
      Size = 50
    end
    object fdqCadDATA_EMISSAO_GUIA: TDateField
      FieldName = 'DATA_EMISSAO_GUIA'
      Origin = 'DATA_EMISSAO_GUIA'
    end
    object fdqCadNUMERO_GUIA_PRESTADOR: TIntegerField
      FieldName = 'NUMERO_GUIA_PRESTADOR'
      Origin = 'NUMERO_GUIA_PRESTADOR'
    end
    object fdqCadDADOS_AUTORIZACAO: TStringField
      FieldName = 'DADOS_AUTORIZACAO'
      Origin = 'DADOS_AUTORIZACAO'
      Size = 50
    end
    object fdqCadNUMERO_CARTEIRA: TIntegerField
      DisplayWidth = 12
      FieldName = 'NUMERO_CARTEIRA'
      Origin = 'NUMERO_CARTEIRA'
    end
    object fdqCadNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      Origin = 'NOME_BENEFICIARIO'
      Size = 200
    end
    object fdqCadNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Origin = 'NOME_PLANO'
      Size = 50
    end
    object fdqCadNOME_CONTRATADO1: TStringField
      FieldName = 'NOME_CONTRATADO1'
      Origin = 'NOME_CONTRATADO1'
      Size = 200
    end
    object fdqCadNOME_PROFISSIONAL: TStringField
      FieldName = 'NOME_PROFISSIONAL'
      Origin = 'NOME_PROFISSIONAL'
      Size = 200
    end
    object fdqCadSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Origin = 'SIGLA_CONSELHO'
      Size = 30
    end
    object fdqCadNUMERO_CONSELHO: TStringField
      FieldName = 'NUMERO_CONSELHO'
      Origin = 'NUMERO_CONSELHO'
      Size = 30
    end
    object fdqCadUF_CONSELHO: TStringField
      FieldName = 'UF_CONSELHO'
      Origin = 'UF_CONSELHO'
      Size = 5
    end
    object fdqCadNOME_CONTRATADO2: TStringField
      FieldName = 'NOME_CONTRATADO2'
      Origin = 'NOME_CONTRATADO2'
      Size = 200
    end
    object fdqCadCARATER_ATENDIMENTO: TStringField
      FieldName = 'CARATER_ATENDIMENTO'
      Origin = 'CARATER_ATENDIMENTO'
    end
    object fdqCadTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Origin = 'TIPO_SAIDA'
      Size = 10
    end
    object fdqCadTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      Origin = 'TIPO_ATENDIMENTO'
      Size = 10
    end
    object fdqCadCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object fdqCadTIPO_TABELA: TStringField
      FieldName = 'TIPO_TABELA'
      Origin = 'TIPO_TABELA'
      Size = 10
    end
    object fdqCadDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
    object fdqCadDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdqCadQUANTIDADE_REALIZADA: TIntegerField
      FieldName = 'QUANTIDADE_REALIZADA'
      Origin = 'QUANTIDADE_REALIZADA'
    end
    object fdqCadVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object fdqCadVALORTOTAL_1: TFloatField
      FieldName = 'VALORTOTAL_1'
      Origin = 'VALORTOTAL_1'
    end
    object fdqCadVALORTOTAL_2: TFloatField
      FieldName = 'VALORTOTAL_2'
      Origin = 'VALORTOTAL_2'
    end
    object fdqCadLIDA: TStringField
      FieldName = 'LIDA'
      Origin = 'LIDA'
      Size = 5
    end
    object fdqCadRETIRADA: TStringField
      FieldName = 'RETIRADA'
      Origin = 'RETIRADA'
      Size = 5
    end
    object fdqCadCADASTRADA_MANUALMENTE: TStringField
      FieldName = 'CADASTRADA_MANUALMENTE'
      Origin = 'CADASTRADA_MANUALMENTE'
      Size = 5
    end
    object fdqCadDATA_LEITURA: TDateField
      FieldName = 'DATA_LEITURA'
      Origin = 'DATA_LEITURA'
    end
    object fdqCadHORA_LEITURA: TTimeField
      FieldName = 'HORA_LEITURA'
      Origin = 'HORA_LEITURA'
    end
    object fdqCadID_USUARIO_LEITURA: TIntegerField
      FieldName = 'ID_USUARIO_LEITURA'
      Origin = 'ID_USUARIO_LEITURA'
    end
    object fdqCadID_LEITURA_STATUS: TIntegerField
      FieldName = 'ID_LEITURA_STATUS'
      Origin = 'ID_LEITURA_STATUS'
    end
    object fdqCadSEQUENCIAL_TRANSACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEQUENCIAL_TRANSACAO'
      Origin = 'SEQUENCIAL_TRANSACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqCadTIPO_SERVICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_SERVICO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqCadSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqCadLOGIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqCadDT_IMPORTACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_IMPORTACAO'
      Origin = 'DT_IMPORTACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqCadHR_IMPORTACAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HR_IMPORTACAO'
      Origin = 'HR_IMPORTACAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object fdqLotes: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT CABEC.SEQUENCIAL_TRANSACAO,CABEC.ID_GUIAS_CABECALHO'
      'FROM GUIAS_CABECALHO CABEC'
      'ORDER BY CABEC.SEQUENCIAL_TRANSACAO')
    Left = 672
    Top = 35
  end
  object dsLotes: TDataSource
    DataSet = fdqLotes
    Left = 672
    Top = 83
  end
end
