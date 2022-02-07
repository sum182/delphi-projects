object DMImportarXML: TDMImportarXML
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 446
  Width = 649
  object cdsXMLGuias: TClientDataSet
    Aggregates = <>
    Params = <>
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
    TransformRead.TransformationFile = 
      'C:\Projetos\MHZ\Leitura de Guias\Fontes\Win32\Debug\XML\xtr\ToDp' +
      'Guias.xtr'
    XMLDataFile = 
      'C:\Projetos\MHZ\Leitura de Guias\Fontes\Win32\Debug\XML\Importad' +
      'os\lote_22676.xml'
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
    TransformRead.TransformationFile = 
      'C:\Projetos\MHZ\Leitura de Guias\Fontes\Win32\Debug\XML\xtr\ToDp' +
      'Cabecalho.xtr'
    Left = 79
    Top = 16
  end
  object cdsXMLCabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
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
    Connection = DM.FDConnection
    UpdateTransaction = FDTransaction
    SQL.Strings = (
      'select * from GUIAS_CABECALHO cabec'
      'where cabec.id_guias_cabecalho = :id_importacao_guias_cabecalho')
    Left = 368
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
    object fdqCabecalhoID_GUIAS_GRUPO_LOTE: TIntegerField
      FieldName = 'ID_GUIAS_GRUPO_LOTE'
      Origin = 'ID_GUIAS_GRUPO_LOTE'
      Required = True
    end
  end
  object fdqDetalhe: TFDQuery
    Connection = DM.FDConnection
    UpdateTransaction = FDTransaction
    SQL.Strings = (
      'select * from GUIAS_DETALHE det'
      'where det.ID_GUIAS_CABECALHO = :ID_GUIAS_CABECALHO')
    Left = 368
    Top = 72
    ParamData = <
      item
        Name = 'ID_GUIAS_CABECALHO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdqVerifInserido: TFDQuery
    Connection = DM.FDConnection
    UpdateTransaction = FDTransaction
    SQL.Strings = (
      'select * from guias_cabecalho cab'
      'where cab.sequencial_transacao = :sequencial_transacao')
    Left = 472
    Top = 16
    ParamData = <
      item
        Name = 'SEQUENCIAL_TRANSACAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdqGrupoLote: TFDQuery
    Connection = DM.FDConnection
    UpdateTransaction = FDTransaction
    SQL.Strings = (
      'select * from GUIAS_GRUPO_LOTE grupo'
      'where grupo.id_guias_grupo_lote = :id_guias_grupo_lote')
    Left = 368
    Top = 136
    ParamData = <
      item
        Name = 'ID_GUIAS_GRUPO_LOTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqGrupoLoteID_GUIAS_GRUPO_LOTE: TIntegerField
      FieldName = 'ID_GUIAS_GRUPO_LOTE'
      Origin = 'ID_GUIAS_GRUPO_LOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqGrupoLoteID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object fdqGrupoLoteDT_IMPORTACAO: TDateField
      FieldName = 'DT_IMPORTACAO'
      Origin = 'DT_IMPORTACAO'
    end
    object fdqGrupoLoteHR_IMPORTACAO: TTimeField
      FieldName = 'HR_IMPORTACAO'
      Origin = 'HR_IMPORTACAO'
    end
    object fdqGrupoLoteID_TIPO_SERVICO: TIntegerField
      FieldName = 'ID_TIPO_SERVICO'
      Origin = 'ID_TIPO_SERVICO'
      Required = True
    end
  end
  object FDTransaction: TFDTransaction
    Options.AutoStop = False
    Connection = DM.FDConnection
    Left = 368
    Top = 200
  end
  object fdqTipoServico: TFDQuery
    Connection = DM.FDConnection
    UpdateTransaction = FDTransaction
    SQL.Strings = (
      'select * from tipo_servico tipo')
    Left = 568
    Top = 16
    object fdqTipoServicoID_TIPO_SERVICO: TIntegerField
      FieldName = 'ID_TIPO_SERVICO'
      Origin = 'ID_TIPO_SERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqTipoServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object dsTipoServico: TDataSource
    DataSet = fdqTipoServico
    Left = 568
    Top = 72
  end
  object fdqLtRzGrupoLote: TFDQuery
    Connection = DM.FDConnection
    UpdateTransaction = FDTransaction
    SQL.Strings = (
      ''
      ''
      'SELECT'
      '  GRUPO.*,'
      '  USU.LOGIN AS USUARIO,'
      '  TIPOSER.DESCRICAO AS TIPO_SERVICO'
      'FROM GUIAS_GRUPO_LOTE GRUPO'
      'INNER JOIN USUARIO USU ON (USU.ID_USUARIO = GRUPO.ID_USUARIO)'
      
        'INNER JOIN TIPO_SERVICO TIPOSER ON (TIPOSER.ID_TIPO_SERVICO = GR' +
        'UPO.ID_TIPO_SERVICO)'
      'WHERE GRUPO.DT_IMPORTACAO = :DT_IMPORTACAO'
      'AND GRUPO.ID_TIPO_SERVICO = :ID_TIPO_SERVICO'
      'AND EXISTS ( SELECT 1 FROM GUIAS_CABECALHO CABEC'
      
        '             WHERE CABEC.ID_GUIAS_GRUPO_LOTE = GRUPO.ID_GUIAS_GR' +
        'UPO_LOTE'
      '             AND COALESCE(CABEC.CANCELADO,'#39'FALSE'#39') = '#39'FALSE'#39
      '             AND COALESCE(CABEC.FINALIZADO,'#39'FALSE'#39') = '#39'FALSE'#39
      ''
      '            )'
      'ORDER BY GRUPO.ID_GUIAS_GRUPO_LOTE DESC')
    Left = 80
    Top = 288
    ParamData = <
      item
        Name = 'DT_IMPORTACAO'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_TIPO_SERVICO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object fdqLtRzCabecalho: TFDQuery
    MasterSource = dsLtRzGrupoLote
    MasterFields = 'ID_GUIAS_GRUPO_LOTE'
    DetailFields = 'ID_GUIAS_GRUPO_LOTE'
    Connection = DM.FDConnection
    UpdateTransaction = FDTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      ''
      'SELECT * FROM GUIAS_CABECALHO CABEC'
      'WHERE CABEC.ID_GUIAS_GRUPO_LOTE = :ID_GUIAS_GRUPO_LOTE'
      'AND COALESCE(CABEC.CANCELADO,'#39'FALSE'#39') = '#39'FALSE'#39
      'AND COALESCE(CABEC.FINALIZADO,'#39'FALSE'#39') = '#39'FALSE'#39)
    Left = 176
    Top = 288
    ParamData = <
      item
        Name = 'ID_GUIAS_GRUPO_LOTE'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 42
      end>
  end
  object fdqLtRzDetalhe: TFDQuery
    MasterSource = dsLtRzCabecalho
    MasterFields = 'ID_GUIAS_CABECALHO'
    DetailFields = 'ID_GUIAS_CABECALHO'
    Connection = DM.FDConnection
    UpdateTransaction = FDTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from guias_detalhe det'
      'where det.id_guias_cabecalho =:id_guias_cabecalho')
    Left = 271
    Top = 288
    ParamData = <
      item
        Name = 'ID_GUIAS_CABECALHO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 74
      end>
  end
  object dsLtRzGrupoLote: TDataSource
    AutoEdit = False
    DataSet = fdqLtRzGrupoLote
    Left = 80
    Top = 336
  end
  object dsLtRzCabecalho: TDataSource
    AutoEdit = False
    DataSet = fdqLtRzCabecalho
    Left = 176
    Top = 336
  end
  object dsLtRzDetalhe: TDataSource
    AutoEdit = False
    DataSet = fdqLtRzDetalhe
    Left = 272
    Top = 336
  end
  object fdqUpdateLeiturasRealizadas: TFDQuery
    Connection = DM.FDConnection
    Transaction = FDTransaction
    UpdateTransaction = FDTransaction
    SQL.Strings = (
      ''
      ''
      ' UPDATE GUIAS_DETALHE DET'
      'SET DET.LIDA = '#39'TRUE'#39','
      '    DET.DATA_LEITURA = CURRENT_DATE,'
      '    DET.HORA_LEITURA = CURRENT_TIMESTAMP,'
      '    DET.ID_USUARIO_LEITURA = :ID_USUARIO_LEITURA,'
      '    DET.ID_LEITURA_STATUS = 1'
      ''
      'WHERE 1=1'
      'AND EXISTS  ('
      '                 SELECT 1'
      '                 FROM GUIAS_DETALHE DET_IMP'
      
        '                 INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_G' +
        'UIAS_CABECALHO = DET_IMP.ID_GUIAS_CABECALHO)'
      
        '                 INNER JOIN GUIAS_GRUPO_LOTE GRP ON (GRP.ID_GUIA' +
        'S_GRUPO_LOTE = CABEC.ID_GUIAS_GRUPO_LOTE)'
      '                 WHERE 1=1'
      
        '                 AND GRP.ID_GUIAS_GRUPO_LOTE = :ID_GUIAS_GRUPO_L' +
        'OTE_ORIGEM'
      
        '                 AND DET_IMP.NUMERO_GUIA_PRESTADOR = DET.NUMERO_' +
        'GUIA_PRESTADOR'
      
        '                 AND DET_IMP.NUMERO_CARTEIRA = DET.NUMERO_CARTEI' +
        'RA'
      '                 AND DET_IMP.DATA = DET.DATA'
      
        '                 AND DET_IMP.ID_GUIAS_CABECALHO <> DET.ID_GUIAS_' +
        'CABECALHO'
      '                 AND DET_IMP.LIDA = '#39'TRUE'#39
      '                 AND COALESCE(CABEC.CANCELADO,'#39'FALSE'#39') = '#39'FALSE'#39
      ''
      ''
      '             )'
      ''
      ''
      'AND DET.ID_GUIAS_CABECALHO = :ID_GUIAS_CABECALHO')
    Left = 408
    Top = 288
    ParamData = <
      item
        Name = 'ID_USUARIO_LEITURA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_GUIAS_GRUPO_LOTE_ORIGEM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_GUIAS_CABECALHO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object fdqDeleteGrupoNaoUtilizado: TFDQuery
    Connection = DM.FDConnection
    Transaction = FDTransaction
    UpdateTransaction = FDTransaction
    SQL.Strings = (
      'delete from GUIAS_GRUPO_LOTE grupo'
      
        'where grupo.id_guias_grupo_lote not in (select cabec.id_guias_gr' +
        'upo_lote'
      
        '                                        from guias_cabecalho cab' +
        'ec'
      
        '                                         where cabec.id_guias_gr' +
        'upo_lote = grupo.id_guias_grupo_lote)'
      'and grupo.id_guias_grupo_lote = :id_guias_grupo_lote')
    Left = 408
    Top = 336
    ParamData = <
      item
        Name = 'ID_GUIAS_GRUPO_LOTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdqUpdateGuiaDesc: TFDQuery
    Connection = DM.FDConnection
    Transaction = FDTransaction
    UpdateTransaction = FDTransaction
    SQL.Strings = (
      'UPDATE GUIAS_DETALHE DET'
      'SET DET.GUIA_COM_DESCONTO = '#39'TRUE'#39
      ''
      'WHERE 1=1'
      'AND EXISTS  ('
      '                 SELECT 1'
      '                 FROM GUIAS_DETALHE DET_IMP'
      
        '                 INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_G' +
        'UIAS_CABECALHO = DET_IMP.ID_GUIAS_CABECALHO)'
      
        '                 INNER JOIN GUIAS_GRUPO_LOTE GRP ON (GRP.ID_GUIA' +
        'S_GRUPO_LOTE = CABEC.ID_GUIAS_GRUPO_LOTE)'
      '                 WHERE 1=1'
      
        '                 AND GRP.ID_GUIAS_GRUPO_LOTE = :ID_GUIAS_GRUPO_L' +
        'OTE_ORIGEM'
      
        '                 AND DET_IMP.NUMERO_GUIA_PRESTADOR = DET.NUMERO_' +
        'GUIA_PRESTADOR'
      
        '                 AND DET_IMP.NUMERO_CARTEIRA = DET.NUMERO_CARTEI' +
        'RA'
      '                 AND DET_IMP.DATA = DET.DATA'
      
        '                 AND DET_IMP.ID_GUIAS_CABECALHO <> DET.ID_GUIAS_' +
        'CABECALHO'
      '                  AND DET_IMP.GUIA_COM_DESCONTO = '#39'TRUE'#39
      '                 AND COALESCE(CABEC.CANCELADO,'#39'FALSE'#39') = '#39'FALSE'#39
      ''
      ''
      '             )'
      ''
      ''
      'AND DET.ID_GUIAS_CABECALHO = :ID_GUIAS_CABECALHO')
    Left = 544
    Top = 288
    ParamData = <
      item
        Name = 'ID_GUIAS_GRUPO_LOTE_ORIGEM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_GUIAS_CABECALHO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
