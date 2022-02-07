object DMImportarXML: TDMImportarXML
  OldCreateOrder = False
  Height = 328
  Width = 777
  object cdsXMLGuias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProviderGuias'
    Left = 247
    Top = 72
    object cdsXMLGuiasans_registroANS: TStringField
      DisplayWidth = 16
      FieldName = 'ans_registroANS'
      Size = 6
    end
    object cdsXMLGuiasans_dataEmissaoGuia: TStringField
      DisplayWidth = 21
      FieldName = 'ans_dataEmissaoGuia'
      Size = 10
    end
    object cdsXMLGuiasans_numeroGuiaPrestador: TStringField
      DisplayWidth = 26
      FieldName = 'ans_numeroGuiaPrestador'
      Size = 8
    end
    object cdsXMLGuiasans_dadosAutorizacao: TStringField
      DisplayWidth = 39
      FieldName = 'ans_dadosAutorizacao'
      Size = 32
    end
    object cdsXMLGuiasans_numeroCarteira: TStringField
      DisplayWidth = 20
      FieldName = 'ans_numeroCarteira'
      Size = 9
    end
    object cdsXMLGuiasans_nomeBeneficiario: TStringField
      DisplayWidth = 46
      FieldName = 'ans_nomeBeneficiario'
      Size = 38
    end
    object cdsXMLGuiasans_nomePlano: TStringField
      DisplayWidth = 33
      FieldName = 'ans_nomePlano'
      Size = 19
    end
    object cdsXMLGuiasans_nomeContratado1: TStringField
      DisplayWidth = 22
      FieldName = 'ans_nomeContratado1'
      Size = 13
    end
    object cdsXMLGuiasans_nomeProfissional: TStringField
      DisplayWidth = 21
      FieldName = 'ans_nomeProfissional'
      Size = 13
    end
    object cdsXMLGuiasans_siglaConselho: TStringField
      DisplayWidth = 18
      FieldName = 'ans_siglaConselho'
      Size = 3
    end
    object cdsXMLGuiasans_numeroConselho: TStringField
      DisplayWidth = 21
      FieldName = 'ans_numeroConselho'
      Size = 6
    end
    object cdsXMLGuiasans_ufConselho: TStringField
      DisplayWidth = 16
      FieldName = 'ans_ufConselho'
      Size = 2
    end
    object cdsXMLGuiasans_nomeContratado2: TStringField
      DisplayWidth = 31
      FieldName = 'ans_nomeContratado2'
      Size = 13
    end
    object cdsXMLGuiasans_caraterAtendimento: TStringField
      DisplayWidth = 24
      FieldName = 'ans_caraterAtendimento'
      Size = 1
    end
    object cdsXMLGuiasans_tipoSaida: TStringField
      DisplayWidth = 14
      FieldName = 'ans_tipoSaida'
      Size = 1
    end
    object cdsXMLGuiasans_tipoAtendimento: TStringField
      DisplayWidth = 21
      FieldName = 'ans_tipoAtendimento'
      Size = 2
    end
    object cdsXMLGuiasans_codigo: TStringField
      DisplayWidth = 11
      FieldName = 'ans_codigo'
      Size = 8
    end
    object cdsXMLGuiasans_tipoTabela: TStringField
      DisplayWidth = 15
      FieldName = 'ans_tipoTabela'
      Size = 2
    end
    object cdsXMLGuiasans_descricao: TStringField
      DisplayWidth = 69
      FieldName = 'ans_descricao'
      Size = 57
    end
    object cdsXMLGuiasans_data: TStringField
      DisplayWidth = 12
      FieldName = 'ans_data'
      Size = 10
    end
    object cdsXMLGuiasans_quantidadeRealizada: TStringField
      DisplayWidth = 25
      FieldName = 'ans_quantidadeRealizada'
      Size = 1
    end
    object cdsXMLGuiasans_valor: TStringField
      DisplayWidth = 10
      FieldName = 'ans_valor'
      Size = 6
    end
    object cdsXMLGuiasans_valorTotal1: TStringField
      DisplayWidth = 16
      FieldName = 'ans_valorTotal1'
      Size = 6
    end
    object cdsXMLGuiasans_valorTotal2: TStringField
      DisplayWidth = 16
      FieldName = 'ans_valorTotal2'
      Size = 6
    end
  end
  object XMLTransformProviderGuias: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\Projetos\MHZ\Leitura de Guias\Fontes\XML\ToDpGuias.xtr'
    XMLDataFile = 
      'C:\Projetos\MHZ\Leitura de Guias\Fontes\Win32\Debug\XML\Importad' +
      'os\lote_20859.xml'
    Left = 247
    Top = 16
  end
  object dsXMLGuias: TDataSource
    DataSet = cdsXMLGuias
    Left = 247
    Top = 128
  end
  object dsXMLCabecalho: TDataSource
    DataSet = cdsXMLCabecalho
    Left = 79
    Top = 128
  end
  object XMLTransformProviderCabecalho: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\Projetos\MHZ\Leitura de Guias\Fontes\XML\ToDpCabecalho.xtr'
    XMLDataFile = 
      'C:\Projetos\MHZ\Leitura de Guias\Fontes\Win32\Debug\XML\Importad' +
      'os\lote_20858.xml'
    Left = 79
    Top = 16
  end
  object cdsXMLCabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProviderCabecalho'
    Left = 79
    Top = 72
    object cdsXMLCabecalhoans_tipoTransacao: TStringField
      FieldName = 'ans_tipoTransacao'
      Size = 16
    end
    object cdsXMLCabecalhoans_sequencialTransacao: TStringField
      FieldName = 'ans_sequencialTransacao'
      Size = 5
    end
    object cdsXMLCabecalhoans_dataRegistroTransacao: TStringField
      FieldName = 'ans_dataRegistroTransacao'
      Size = 10
    end
    object cdsXMLCabecalhoans_horaRegistroTransacao: TStringField
      FieldName = 'ans_horaRegistroTransacao'
      Size = 8
    end
    object cdsXMLCabecalhoans_registroANS: TStringField
      FieldName = 'ans_registroANS'
      Size = 6
    end
    object cdsXMLCabecalhoans_versaoPadrao: TStringField
      FieldName = 'ans_versaoPadrao'
      Size = 7
    end
  end
  object fdqCabecalho: TFDQuery
    Active = True
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from GUIAS_CABECALHO cabec'
      'where cabec.id_guias_cabecalho = :id_importacao_guias_cabecalho')
    Left = 392
    Top = 16
    ParamData = <
      item
        Name = 'ID_IMPORTACAO_GUIAS_CABECALHO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqCabecalhoID_GUIAS_CABECALHO: TIntegerField
      FieldName = 'ID_GUIAS_CABECALHO'
      Origin = 'ID_GUIAS_CABECALHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqCabecalhoTIPO_TRANSACAO: TStringField
      FieldName = 'TIPO_TRANSACAO'
      Origin = 'TIPO_TRANSACAO'
      Size = 50
    end
    object fdqCabecalhoSEQUENCIAL_TRANSACAO: TIntegerField
      FieldName = 'SEQUENCIAL_TRANSACAO'
      Origin = 'SEQUENCIAL_TRANSACAO'
    end
    object fdqCabecalhoDATA_REGISTRO_TRANSACAO: TDateField
      FieldName = 'DATA_REGISTRO_TRANSACAO'
      Origin = 'DATA_REGISTRO_TRANSACAO'
    end
    object fdqCabecalhoHORA_REGISTRO_TRANSACAO: TTimeField
      FieldName = 'HORA_REGISTRO_TRANSACAO'
      Origin = 'HORA_REGISTRO_TRANSACAO'
    end
    object fdqCabecalhoREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Origin = 'REGISTRO_ANS'
    end
    object fdqCabecalhoVERSAO_PADRAO: TStringField
      FieldName = 'VERSAO_PADRAO'
      Origin = 'VERSAO_PADRAO'
    end
    object fdqCabecalhoDT_HR_IMPORTACAO: TSQLTimeStampField
      FieldName = 'DT_HR_IMPORTACAO'
      Origin = 'DT_HR_IMPORTACAO'
    end
  end
  object fdqDetalhe: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from GUIAS_DETALHE det'
      'where det.ID_GUIAS_CABECALHO = :ID_GUIAS_CABECALHO')
    Left = 392
    Top = 72
    ParamData = <
      item
        Name = 'ID_GUIAS_CABECALHO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqDetalheID_GUIAS_DETALHE: TIntegerField
      FieldName = 'ID_GUIAS_DETALHE'
      Origin = 'ID_GUIAS_DETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqDetalheID_GUIAS_CABECALHO: TIntegerField
      FieldName = 'ID_GUIAS_CABECALHO'
      Origin = 'ID_GUIAS_CABECALHO'
      Required = True
    end
    object fdqDetalheREGISTRO_ANS: TStringField
      FieldName = 'REGISTRO_ANS'
      Origin = 'REGISTRO_ANS'
      Size = 50
    end
    object fdqDetalheDATA_EMISSAO_GUIA: TDateField
      FieldName = 'DATA_EMISSAO_GUIA'
      Origin = 'DATA_EMISSAO_GUIA'
    end
    object fdqDetalheNUMERO_GUIA_PRESTADOR: TIntegerField
      FieldName = 'NUMERO_GUIA_PRESTADOR'
      Origin = 'NUMERO_GUIA_PRESTADOR'
    end
    object fdqDetalheDADOS_AUTORIZACAO: TStringField
      FieldName = 'DADOS_AUTORIZACAO'
      Origin = 'DADOS_AUTORIZACAO'
      Size = 50
    end
    object fdqDetalheNUMERO_CARTEIRA: TIntegerField
      FieldName = 'NUMERO_CARTEIRA'
      Origin = 'NUMERO_CARTEIRA'
    end
    object fdqDetalheNOME_BENEFICIARIO: TStringField
      FieldName = 'NOME_BENEFICIARIO'
      Origin = 'NOME_BENEFICIARIO'
      Size = 200
    end
    object fdqDetalheNOME_PLANO: TStringField
      FieldName = 'NOME_PLANO'
      Origin = 'NOME_PLANO'
      Size = 50
    end
    object fdqDetalheNOME_CONTRATADO1: TStringField
      FieldName = 'NOME_CONTRATADO1'
      Origin = 'NOME_CONTRATADO1'
      Size = 200
    end
    object fdqDetalheNOME_PROFISSIONAL: TStringField
      FieldName = 'NOME_PROFISSIONAL'
      Origin = 'NOME_PROFISSIONAL'
      Size = 200
    end
    object fdqDetalheSIGLA_CONSELHO: TStringField
      FieldName = 'SIGLA_CONSELHO'
      Origin = 'SIGLA_CONSELHO'
      Size = 30
    end
    object fdqDetalheNUMERO_CONSELHO: TStringField
      FieldName = 'NUMERO_CONSELHO'
      Origin = 'NUMERO_CONSELHO'
      Size = 30
    end
    object fdqDetalheUF_CONSELHO: TStringField
      FieldName = 'UF_CONSELHO'
      Origin = 'UF_CONSELHO'
      Size = 5
    end
    object fdqDetalheNOME_CONTRATADO2: TStringField
      FieldName = 'NOME_CONTRATADO2'
      Origin = 'NOME_CONTRATADO2'
      Size = 200
    end
    object fdqDetalheCARATER_ATENDIMENTO: TStringField
      FieldName = 'CARATER_ATENDIMENTO'
      Origin = 'CARATER_ATENDIMENTO'
    end
    object fdqDetalheTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Origin = 'TIPO_SAIDA'
      Size = 10
    end
    object fdqDetalheTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      Origin = 'TIPO_ATENDIMENTO'
      Size = 10
    end
    object fdqDetalheCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object fdqDetalheTIPO_TABELA: TStringField
      FieldName = 'TIPO_TABELA'
      Origin = 'TIPO_TABELA'
      Size = 10
    end
    object fdqDetalheDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
    object fdqDetalheDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdqDetalheQUANTIDADE_REALIZADA: TIntegerField
      FieldName = 'QUANTIDADE_REALIZADA'
      Origin = 'QUANTIDADE_REALIZADA'
    end
    object fdqDetalheVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object fdqDetalheVALORTOTAL_1: TFloatField
      FieldName = 'VALORTOTAL_1'
      Origin = 'VALORTOTAL_1'
    end
    object fdqDetalheVALORTOTAL_2: TFloatField
      FieldName = 'VALORTOTAL_2'
      Origin = 'VALORTOTAL_2'
    end
  end
end
