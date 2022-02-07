object DMLeituraGuias: TDMLeituraGuias
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 193
  Width = 307
  object fdqGuias: TFDQuery
    IndexFieldNames = 'NUMERO_CARTEIRA'
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT'
      '  GUIA.*,'
      '  CABEC.sequencial_transacao,'
      '  TP.descricao as  "Tipo_Servico"'
      'FROM GUIAS_DETALHE GUIA'
      
        'INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_GUIAS_CABECALHO = ' +
        'GUIA.ID_GUIAS_CABECALHO)'
      
        'INNER JOIN guias_grupo_lote GRUPO ON (GRUPO.id_guias_grupo_lote ' +
        '= CABEC.id_guias_grupo_lote)'
      
        'INNER JOIN TIPO_SERVICO TP ON (TP.id_tipo_servico = GRUPO.id_tip' +
        'o_servico)'
      'WHERE GUIA.DATA =  :DATA'
      'AND GUIA.NUMERO_CARTEIRA = :NUMERO_CARTEIRA'
      'AND COALESCE(GUIA.LIDA,'#39'FALSE'#39') = '#39'FALSE'#39
      'AND COALESCE(CABEC.FINALIZADO,'#39'FALSE'#39') = '#39'FALSE'#39
      'AND COALESCE(CABEC.CANCELADO,'#39'FALSE'#39') = '#39'FALSE'#39)
    Left = 40
    Top = 32
    ParamData = <
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUMERO_CARTEIRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 38658800
      end>
    object fdqGuiasID_GUIAS_DETALHE: TIntegerField
      FieldName = 'ID_GUIAS_DETALHE'
      Origin = 'ID_GUIAS_DETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqGuiasID_GUIAS_CABECALHO: TIntegerField
      FieldName = 'ID_GUIAS_CABECALHO'
      Origin = 'ID_GUIAS_CABECALHO'
      Required = True
    end
    object fdqGuiasREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Origin = 'REGISTRO_ANS'
      Size = 50
    end
    object fdqGuiasDATA_EMISSAO_GUIA: TDateField
      FieldName = 'DATA_EMISSAO_GUIA'
      Origin = 'DATA_EMISSAO_GUIA'
    end
    object fdqGuiasNUMERO_GUIA_PRESTADOR: TIntegerField
      FieldName = 'NUMERO_GUIA_PRESTADOR'
      Origin = 'NUMERO_GUIA_PRESTADOR'
    end
    object fdqGuiasDADOS_AUTORIZACAO: TStringField
      FieldName = 'DADOS_AUTORIZACAO'
      Origin = 'DADOS_AUTORIZACAO'
      Size = 50
    end
    object fdqGuiasNUMERO_CARTEIRA: TIntegerField
      FieldName = 'NUMERO_CARTEIRA'
      Origin = 'NUMERO_CARTEIRA'
    end
    object fdqGuiasNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      Origin = 'NOME_BENEFICIARIO'
      Size = 200
    end
    object fdqGuiasNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Origin = 'NOME_PLANO'
      Size = 50
    end
    object fdqGuiasNOME_CONTRATADO1: TStringField
      FieldName = 'NOME_CONTRATADO1'
      Origin = 'NOME_CONTRATADO1'
      Size = 200
    end
    object fdqGuiasNOME_PROFISSIONAL: TStringField
      FieldName = 'NOME_PROFISSIONAL'
      Origin = 'NOME_PROFISSIONAL'
      Size = 200
    end
    object fdqGuiasSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Origin = 'SIGLA_CONSELHO'
      Size = 30
    end
    object fdqGuiasNUMERO_CONSELHO: TStringField
      FieldName = 'NUMERO_CONSELHO'
      Origin = 'NUMERO_CONSELHO'
      Size = 30
    end
    object fdqGuiasUF_CONSELHO: TStringField
      FieldName = 'UF_CONSELHO'
      Origin = 'UF_CONSELHO'
      Size = 5
    end
    object fdqGuiasNOME_CONTRATADO2: TStringField
      FieldName = 'NOME_CONTRATADO2'
      Origin = 'NOME_CONTRATADO2'
      Size = 200
    end
    object fdqGuiasCARATER_ATENDIMENTO: TStringField
      FieldName = 'CARATER_ATENDIMENTO'
      Origin = 'CARATER_ATENDIMENTO'
    end
    object fdqGuiasTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Origin = 'TIPO_SAIDA'
      Size = 10
    end
    object fdqGuiasTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      Origin = 'TIPO_ATENDIMENTO'
      Size = 10
    end
    object fdqGuiasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object fdqGuiasTIPO_TABELA: TStringField
      FieldName = 'TIPO_TABELA'
      Origin = 'TIPO_TABELA'
      Size = 10
    end
    object fdqGuiasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
    object fdqGuiasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdqGuiasQUANTIDADE_REALIZADA: TIntegerField
      FieldName = 'QUANTIDADE_REALIZADA'
      Origin = 'QUANTIDADE_REALIZADA'
    end
    object fdqGuiasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object fdqGuiasVALORTOTAL_1: TFloatField
      FieldName = 'VALORTOTAL_1'
      Origin = 'VALORTOTAL_1'
    end
    object fdqGuiasVALORTOTAL_2: TFloatField
      FieldName = 'VALORTOTAL_2'
      Origin = 'VALORTOTAL_2'
    end
    object fdqGuiasLIDA: TStringField
      FieldName = 'LIDA'
      Origin = 'LIDA'
      Size = 5
    end
    object fdqGuiasRETIRADA: TStringField
      FieldName = 'RETIRADA'
      Origin = 'RETIRADA'
      Size = 5
    end
    object fdqGuiasCADASTRADA_MANUALMENTE: TStringField
      FieldName = 'CADASTRADA_MANUALMENTE'
      Origin = 'CADASTRADA_MANUALMENTE'
      Size = 5
    end
    object fdqGuiasDATA_LEITURA: TDateField
      FieldName = 'DATA_LEITURA'
      Origin = 'DATA_LEITURA'
    end
    object fdqGuiasHORA_LEITURA: TTimeField
      FieldName = 'HORA_LEITURA'
      Origin = 'HORA_LEITURA'
    end
    object fdqGuiasID_USUARIO_LEITURA: TIntegerField
      FieldName = 'ID_USUARIO_LEITURA'
      Origin = 'ID_USUARIO_LEITURA'
    end
    object fdqGuiasID_LEITURA_STATUS: TIntegerField
      FieldName = 'ID_LEITURA_STATUS'
      Origin = 'ID_LEITURA_STATUS'
    end
    object fdqGuiasSEQUENCIAL_TRANSACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEQUENCIAL_TRANSACAO'
      Origin = 'SEQUENCIAL_TRANSACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqGuiasTipo_Servico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo_Servico'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqGuiasGUIA_EM_BRANCO: TStringField
      FieldName = 'GUIA_EM_BRANCO'
      Origin = 'GUIA_EM_BRANCO'
      Size = 5
    end
    object fdqGuiasGUIA_COM_DESCONTO: TStringField
      FieldName = 'GUIA_COM_DESCONTO'
      Origin = 'GUIA_COM_DESCONTO'
      Size = 5
    end
  end
  object dsGuias: TDataSource
    AutoEdit = False
    DataSet = fdqGuias
    Left = 40
    Top = 88
  end
  object fdqGuiasLidas: TFDQuery
    OnCalcFields = fdqGuiasLidasCalcFields
    AggregatesActive = True
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT'
      '  GUIA.*,'
      '  CABEC.SEQUENCIAL_TRANSACAO,'
      '  TP.DESCRICAO AS  "TIPO_SERVICO",'
      '  STATUS.DESCRICAO AS STATUS'
      'FROM GUIAS_DETALHE GUIA'
      
        'INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_GUIAS_CABECALHO = ' +
        'GUIA.ID_GUIAS_CABECALHO)'
      
        'INNER JOIN GUIAS_GRUPO_LOTE GRUPO ON (GRUPO.ID_GUIAS_GRUPO_LOTE ' +
        '= CABEC.ID_GUIAS_GRUPO_LOTE)'
      
        'INNER JOIN TIPO_SERVICO TP ON (TP.ID_TIPO_SERVICO = GRUPO.ID_TIP' +
        'O_SERVICO)'
      
        'LEFT OUTER JOIN LEITURA_STATUS STATUS ON (STATUS.ID_LEITURA_STAT' +
        'US = GUIA.ID_LEITURA_STATUS)'
      'WHERE GUIA.DATA =  :DATA'
      'AND COALESCE(GUIA.LIDA,'#39'FALSE'#39') = '#39'TRUE'#39
      'AND COALESCE(CABEC.FINALIZADO,'#39'FALSE'#39') = '#39'FALSE'#39
      'AND COALESCE(CABEC.CANCELADO,'#39'FALSE'#39') = '#39'FALSE'#39
      'ORDER BY guia.data_leitura desc,GUIA.HORA_LEITURA DESC')
    Left = 112
    Top = 32
    ParamData = <
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object fdqGuiasLidasID_GUIAS_DETALHE: TIntegerField
      FieldName = 'ID_GUIAS_DETALHE'
      Origin = 'ID_GUIAS_DETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqGuiasLidasID_GUIAS_CABECALHO: TIntegerField
      FieldName = 'ID_GUIAS_CABECALHO'
      Origin = 'ID_GUIAS_CABECALHO'
      Required = True
    end
    object fdqGuiasLidasREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Origin = 'REGISTRO_ANS'
      Size = 50
    end
    object fdqGuiasLidasDATA_EMISSAO_GUIA: TDateField
      FieldName = 'DATA_EMISSAO_GUIA'
      Origin = 'DATA_EMISSAO_GUIA'
    end
    object fdqGuiasLidasDADOS_AUTORIZACAO: TStringField
      FieldName = 'DADOS_AUTORIZACAO'
      Origin = 'DADOS_AUTORIZACAO'
      Size = 50
    end
    object fdqGuiasLidasNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      Origin = 'NOME_BENEFICIARIO'
      Size = 200
    end
    object fdqGuiasLidasNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Origin = 'NOME_PLANO'
      Size = 50
    end
    object fdqGuiasLidasNOME_CONTRATADO1: TStringField
      FieldName = 'NOME_CONTRATADO1'
      Origin = 'NOME_CONTRATADO1'
      Size = 200
    end
    object fdqGuiasLidasNOME_PROFISSIONAL: TStringField
      FieldName = 'NOME_PROFISSIONAL'
      Origin = 'NOME_PROFISSIONAL'
      Size = 200
    end
    object fdqGuiasLidasSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Origin = 'SIGLA_CONSELHO'
      Size = 30
    end
    object fdqGuiasLidasNUMERO_CONSELHO: TStringField
      FieldName = 'NUMERO_CONSELHO'
      Origin = 'NUMERO_CONSELHO'
      Size = 30
    end
    object fdqGuiasLidasUF_CONSELHO: TStringField
      FieldName = 'UF_CONSELHO'
      Origin = 'UF_CONSELHO'
      Size = 5
    end
    object fdqGuiasLidasNOME_CONTRATADO2: TStringField
      FieldName = 'NOME_CONTRATADO2'
      Origin = 'NOME_CONTRATADO2'
      Size = 200
    end
    object fdqGuiasLidasCARATER_ATENDIMENTO: TStringField
      FieldName = 'CARATER_ATENDIMENTO'
      Origin = 'CARATER_ATENDIMENTO'
    end
    object fdqGuiasLidasTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Origin = 'TIPO_SAIDA'
      Size = 10
    end
    object fdqGuiasLidasTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      Origin = 'TIPO_ATENDIMENTO'
      Size = 10
    end
    object fdqGuiasLidasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object fdqGuiasLidasTIPO_TABELA: TStringField
      FieldName = 'TIPO_TABELA'
      Origin = 'TIPO_TABELA'
      Size = 10
    end
    object fdqGuiasLidasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
    object fdqGuiasLidasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdqGuiasLidasQUANTIDADE_REALIZADA: TIntegerField
      FieldName = 'QUANTIDADE_REALIZADA'
      Origin = 'QUANTIDADE_REALIZADA'
    end
    object fdqGuiasLidasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object fdqGuiasLidasVALORTOTAL_1: TFloatField
      FieldName = 'VALORTOTAL_1'
      Origin = 'VALORTOTAL_1'
    end
    object fdqGuiasLidasVALORTOTAL_2: TFloatField
      FieldName = 'VALORTOTAL_2'
      Origin = 'VALORTOTAL_2'
    end
    object fdqGuiasLidasLIDA: TStringField
      FieldName = 'LIDA'
      Origin = 'LIDA'
      Size = 5
    end
    object fdqGuiasLidasRETIRADA: TStringField
      FieldName = 'RETIRADA'
      Origin = 'RETIRADA'
      Size = 5
    end
    object fdqGuiasLidasDATA_LEITURA: TDateField
      FieldName = 'DATA_LEITURA'
      Origin = 'DATA_LEITURA'
    end
    object fdqGuiasLidasHORA_LEITURA: TTimeField
      FieldName = 'HORA_LEITURA'
      Origin = 'HORA_LEITURA'
    end
    object fdqGuiasLidasID_USUARIO_LEITURA: TIntegerField
      FieldName = 'ID_USUARIO_LEITURA'
      Origin = 'ID_USUARIO_LEITURA'
    end
    object fdqGuiasLidasID_LEITURA_STATUS: TIntegerField
      FieldName = 'ID_LEITURA_STATUS'
      Origin = 'ID_LEITURA_STATUS'
    end
    object fdqGuiasLidasSEQUENCIAL_TRANSACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEQUENCIAL_TRANSACAO'
      Origin = 'SEQUENCIAL_TRANSACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqGuiasLidasTIPO_SERVICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_SERVICO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqGuiasLidasSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdqGuiasLidasIntCalcStatus1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus1'
    end
    object fdqGuiasLidasIntCalcStatus2: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus2'
    end
    object fdqGuiasLidasIntCalcStatus3: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus3'
    end
    object fdqGuiasLidasIntCalcStatus4: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus4'
    end
    object fdqGuiasLidasIntCalcStatus5: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus5'
    end
    object fdqGuiasLidasIntCalcStatus6: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IntCalcStatus6'
    end
    object fdqGuiasLidasNUMERO_CARTEIRA: TIntegerField
      FieldName = 'NUMERO_CARTEIRA'
      Origin = 'NUMERO_CARTEIRA'
    end
    object fdqGuiasLidasCADASTRADA_MANUALMENTE: TStringField
      FieldName = 'CADASTRADA_MANUALMENTE'
      Origin = 'CADASTRADA_MANUALMENTE'
      Size = 5
    end
    object fdqGuiasLidasNUMERO_GUIA_PRESTADOR: TIntegerField
      FieldName = 'NUMERO_GUIA_PRESTADOR'
      Origin = 'NUMERO_GUIA_PRESTADOR'
    end
    object fdqGuiasLidasGUIA_EM_BRANCO: TStringField
      FieldName = 'GUIA_EM_BRANCO'
      Origin = 'GUIA_EM_BRANCO'
      Size = 5
    end
    object fdqGuiasLidasAgregStatus1: TAggregateField
      FieldName = 'AgregStatus1'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus1)'
    end
    object fdqGuiasLidasAgregStatus2: TAggregateField
      FieldName = 'AgregStatus2'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus2)'
    end
    object fdqGuiasLidasAgregStatus3: TAggregateField
      FieldName = 'AgregStatus3'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus3)'
    end
    object fdqGuiasLidasAgregStatus4: TAggregateField
      FieldName = 'AgregStatus4'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus4)'
    end
    object fdqGuiasLidasAgregStatus5: TAggregateField
      FieldName = 'AgregStatus5'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus5)'
    end
    object fdqGuiasLidasAgregStatus6: TAggregateField
      FieldName = 'AgregStatus6'
      Active = True
      DisplayName = ''
      Expression = 'count(IntCalcStatus6)'
    end
  end
  object dsGuiasLidas: TDataSource
    AutoEdit = False
    DataSet = fdqGuiasLidas
    Left = 112
    Top = 88
  end
  object fdqStatus: TFDQuery
    IndexFieldNames = 'ID_LEITURA_STATUS'
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from leitura_status status'
      'order by status.id_leitura_status')
    Left = 184
    Top = 32
  end
  object dsStatus: TDataSource
    DataSet = fdqStatus
    Left = 184
    Top = 88
  end
end
