
{*******************************************************************************************}
{                                                                                           }
{                                     XML Data Binding                                      }
{                                                                                           }
{         Generated on: 08/12/2014 16:36:54                                                 }
{       Generated from: C:\Componentes\Tiss\ComponentesTissV2_02_03\Demo\tissV2_02_01.xsd   }
{                                                                                           }
{*******************************************************************************************}

unit tissV2_02_01;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLMensagemTISS = interface;
  IXMLCabecalhoTransacao = interface;
  IXMLCabecalhoTransacao_identificacaoTransacao = interface;
  IXMLCt_motivoGlosa = interface;
  IXMLCt_motivoGlosaList = interface;
  IXMLCabecalhoTransacao_falhaNegocio = interface;
  IXMLCabecalhoTransacao_origem = interface;
  IXMLCt_identificacaoPrestadorExecutante = interface;
  IXMLCabecalhoTransacao_destino = interface;
  IXMLMensagemTISS_operadoraParaPrestador = interface;
  IXMLCt_protocoloRecebimento = interface;
  IXMLCt_protocoloRecebimento_protocoloRecebimento = interface;
  IXMLCt_identificacaoFontePagadora = interface;
  IXMLCt_identificacaoFontePagadora_operadoraRegulada = interface;
  IXMLCt_identificacaoFontePagadora_entidadeNaoRegulada = interface;
  IXMLCt_contratado = interface;
  IXMLCt_endereco = interface;
  IXMLCt_detalheProtocolo = interface;
  IXMLCt_detalheProtocolo_codigoGlosaProtocolo = interface;
  IXMLCt_detalheProtocolo_guias = interface;
  IXMLCt_dadosGuia = interface;
  IXMLCt_beneficiario = interface;
  IXMLCt_dadosGuia_procedimentos = interface;
  IXMLCt_dadosProcedimento = interface;
  IXMLCt_dadosProcedimentoList = interface;
  IXMLCt_tabela = interface;
  IXMLCt_dadosProcedimento_relacaoGlosa = interface;
  IXMLCt_procedimentoOdontoRealizado = interface;
  IXMLCt_procedimentoOdontoRealizadoList = interface;
  IXMLCt_denteRegiao = interface;
  IXMLCt_procedimentoOdontoRealizado_glosas = interface;
  IXMLCt_protocoloRecebimentoAnexo = interface;
  IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento = interface;
  IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo = interface;
  IXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno = interface;
  IXMLCt_demonstrativoAnaliseConta = interface;
  IXMLCt_demonstrativoAnaliseContaList = interface;
  IXMLCt_cabecalhoDemonstrativo = interface;
  IXMLCt_demonstrativoAnaliseConta_fatura = interface;
  IXMLCt_dadosConta = interface;
  IXMLCt_dadosConta_lote = interface;
  IXMLCt_dadosLote = interface;
  IXMLCt_dadosLote_guia = interface;
  IXMLCt_demonstrativoOdontologia = interface;
  IXMLCt_demonstrativoOdontologiaList = interface;
  IXMLCt_demonstrativoOdontologia_dadosPrestador = interface;
  IXMLCt_identificadorPrestOdontoDemo = interface;
  IXMLCt_dadosPagamento = interface;
  IXMLCt_loteOdonto = interface;
  IXMLCt_detalheGuiaOdonto = interface;
  IXMLCt_detalheGuiaOdontoList = interface;
  IXMLCt_detalheGuiaOdonto_procedimentoRealizado = interface;
  IXMLCt_dadosPagamento_loteOdonto = interface;
  IXMLCt_dadosPagamento_loteOdontoList = interface;
  IXMLCt_totalDemoOdonto = interface;
  IXMLCt_demonstrativoOdontologia_dadosPagamento = interface;
  IXMLCt_demonstrativoOdontologia_dadosPagamentoList = interface;
  IXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis = interface;
  IXMLCt_descontoOdonto = interface;
  IXMLCt_descontoOdontoList = interface;
  IXMLCt_creditoOdonto = interface;
  IXMLCt_creditoOdontoList = interface;
  IXMLCt_demonstrativoOdontologia_demaisImpostos = interface;
  IXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis = interface;
  IXMLCt_demonstrativoPagamento = interface;
  IXMLCt_demonstrativoPagamentoList = interface;
  IXMLCt_dadoBancario = interface;
  IXMLCt_demonstrativoPagamento_dadosResumo = interface;
  IXMLCt_dadosResumo = interface;
  IXMLCt_dadosResumoList = interface;
  IXMLCt_descontos = interface;
  IXMLCt_descontos_itemDesconto = interface;
  IXMLCt_StatusProtocolo = interface;
  IXMLCt_StatusProtocolo_lote = interface;
  IXMLCt_statusLote = interface;
  IXMLCt_statusLote_guias = interface;
  IXMLCt_statusLote_guias_detalheguiaMedica = interface;
  IXMLCt_statusLote_guias_detalheguiaMedicaList = interface;
  IXMLCt_cabecalhoGuia = interface;
  IXMLCt_cabecalhoGuia_identificacaoFontePagadora = interface;
  IXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados = interface;
  IXMLCt_itemSolicitacao = interface;
  IXMLCt_itemSolicitacao_glosas = interface;
  IXMLCt_statusLote_guias_detalheguiaOdonto = interface;
  IXMLCt_statusLote_guias_detalheguiaOdontoList = interface;
  IXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados = interface;
  IXMLCt_itemSolicitacaoOdonto = interface;
  IXMLCt_itemSolicitacaoOdonto_glosas = interface;
  IXMLCt_autorizacaoProcedimento = interface;
  IXMLCt_autorizacaoProcedimento_motivoNegativa = interface;
  IXMLCt_autorizacaoGuia = interface;
  IXMLCt_autorizacaoGuiaInternacao = interface;
  IXMLCt_autorizacaoProcedimento_procedimentos = interface;
  IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico = interface;
  IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList = interface;
  IXMLCt_diariaProrrogacao = interface;
  IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada = interface;
  IXMLCt_autorizacaoProcedimentoOdonto = interface;
  IXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa = interface;
  IXMLCt_autorizacaoProcedimentoOdonto_procedimentos = interface;
  IXMLCt_autorizacaoProcedimentoOdonto_totalOdonto = interface;
  IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto = interface;
  IXMLCt_situacaoAutorizacao = interface;
  IXMLCt_situacaoAutorizacao_dadosAutorizacao = interface;
  IXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto = interface;
  IXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada = interface;
  IXMLCt_retornoElegibilidade = interface;
  IXMLCt_reciboCancelaGuia = interface;
  IXMLCt_reciboCancelaGuia_guiasCanceladas = interface;
  IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia = interface;
  IXMLMensagemTISS_prestadorParaOperadora = interface;
  IXMLCt_loteGuias = interface;
  IXMLCt_guias = interface;
  IXMLCt_guias_guiaFaturamento = interface;
  IXMLCt_guiaConsulta = interface;
  IXMLCt_guiaConsultaList = interface;
  IXMLCt_identificacaoProfissional = interface;
  IXMLCt_conselhoProfissional = interface;
  IXMLCt_diagnosticoAtendimento = interface;
  IXMLCt_diagnostico = interface;
  IXMLCt_tempoEvolucaoDoenca = interface;
  IXMLCt_guiaConsulta_hipoteseDiagnostica = interface;
  IXMLCt_diagnosticosSecundarios = interface;
  IXMLCt_atendimentoConsulta = interface;
  IXMLCt_atendimentoConsulta_procedimento = interface;
  IXMLCt_guiaConsulta_dadosAtendimento = interface;
  IXMLCt_guiaSP_SADT = interface;
  IXMLCt_guiaSP_SADTList = interface;
  IXMLCt_solicitante = interface;
  IXMLCt_contratadoSolicitante = interface;
  IXMLCt_identificacaoPrestador = interface;
  IXMLCt_guiaSP_SADT_prestadorExecutante = interface;
  IXMLCt_profissionalExecutante = interface;
  IXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl = interface;
  IXMLCt_identificacaoProfissionalCompl = interface;
  IXMLCt_procedimentoRealizadoEquipe = interface;
  IXMLCt_procedimentoRealizadoEquipe_procedimentos = interface;
  IXMLCt_identificacaoEquipe = interface;
  IXMLCt_identificacaoEquipe_membroEquipe = interface;
  IXMLCt_identificacaoPrestadorEquipe = interface;
  IXMLCt_outrasDespesas = interface;
  IXMLCt_outrasDespesas_despesa = interface;
  IXMLCt_outrasDespesas_despesaList = interface;
  IXMLCt_OPMUtilizada = interface;
  IXMLCt_OPMUtilizada_OPM = interface;
  IXMLCt_OPMUtilizada_OPM_identificacaoOPM = interface;
  IXMLCt_valorTotalServicos = interface;
  IXMLCt_guiaResumoInternacao = interface;
  IXMLCt_guiaResumoInternacaoList = interface;
  IXMLCt_internacaoObstetrica = interface;
  IXMLCt_numeroDN = interface;
  IXMLCt_obitoNeonatal = interface;
  IXMLCt_diagnosticoSaidaInternacao = interface;
  IXMLCt_obitoInternacao = interface;
  IXMLCt_obitoInternacaoList = interface;
  IXMLCt_guiaHonorarioIndividual = interface;
  IXMLCt_guiaHonorarioIndividualList = interface;
  IXMLCt_guiaHonorarioIndividual_contratadoExecutante = interface;
  IXMLCt_procedimentosRealizados = interface;
  IXMLCt_procedimentosRealizados_procedimentoRealizado = interface;
  IXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados = interface;
  IXMLCt_guiaOdontologia = interface;
  IXMLCt_guiaOdontologiaList = interface;
  IXMLCt_cabecalhoGuiaOdonto = interface;
  IXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora = interface;
  IXMLCt_guiaOdontologia_dadosBeneficiario = interface;
  IXMLCt_guiaOdontologia_dadosContratadoExecutante = interface;
  IXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado = interface;
  IXMLCt_guiaOdontologia_procedimentosExecutados = interface;
  IXMLCt_procedimentoOdontologia = interface;
  IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado = interface;
  IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList = interface;
  IXMLCt_atendimentoOdontologia = interface;
  IXMLCt_guias_guiaRevisaoGlosa = interface;
  IXMLCt_guiaConsultaReapresentacao = interface;
  IXMLCt_guiaConsultaReapresentacaoList = interface;
  IXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica = interface;
  IXMLCt_atendimentoConsultaReapr = interface;
  IXMLCt_atendimentoConsultaReapr_procedimento = interface;
  IXMLCt_guiaSP_SADTReapresentacao = interface;
  IXMLCt_guiaSP_SADTReapresentacaoList = interface;
  IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante = interface;
  IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl = interface;
  IXMLCt_procedimentoRevisao = interface;
  IXMLCt_procedimentoRevisao_procedimentosRevisao = interface;
  IXMLCt_outrasDespesasRevisao = interface;
  IXMLCt_outrasDespesasRevisao_itensDespesas = interface;
  IXMLCt_outrasDespesasRevisao_itensDespesasList = interface;
  IXMLCt_OPMUtilizadasRevisao = interface;
  IXMLCt_OPMUtilizadasRevisao_OPMUtilizada = interface;
  IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM = interface;
  IXMLCt_guiaResumoInternacaoReapresentacao = interface;
  IXMLCt_guiaResumoInternacaoReapresentacaoList = interface;
  IXMLCt_guiaHonorarioIndividualReapresentacao = interface;
  IXMLCt_guiaHonorarioIndividualReapresentacaoList = interface;
  IXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante = interface;
  IXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados = interface;
  IXMLCt_guiaTratamentoOdontologicoReapresentacao = interface;
  IXMLCt_guiaTratamentoOdontologicoReapresentacaoList = interface;
  IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario = interface;
  IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante = interface;
  IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado = interface;
  IXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados = interface;
  IXMLCt_procedimentoOdontoRevisao = interface;
  IXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia = interface;
  IXMLCt_loteGuias_guias = interface;
  IXMLCt_loteAnexo = interface;
  IXMLCt_loteAnexo_anexoGuia = interface;
  IXMLCt_anexoSituacaoInicial = interface;
  IXMLCt_cabecalhoAnexoOdonto = interface;
  IXMLCt_anexoSituacaoInicial_dadosBeneficiario = interface;
  IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante = interface;
  IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado = interface;
  IXMLCt_situacaoInicial = interface;
  IXMLCt_situacaoClinica = interface;
  IXMLCt_situacaoClinica_dentes = interface;
  IXMLCt_solicitacaoDemonstrativoPagamento = interface;
  IXMLCt_solicitacaoStatusProtocolo = interface;
  IXMLCt_solicitacaoStatusProtocolo_detalheProtocolo = interface;
  IXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento = interface;
  IXMLCt_guiaSolicInternacao = interface;
  IXMLCt_cabecalhoSolicitacao = interface;
  IXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora = interface;
  IXMLCt_guiaSolicInternacao_prestadorSolicitado = interface;
  IXMLCt_hipoteseDiagnostica = interface;
  IXMLCt_diagnosticoGuia = interface;
  IXMLCt_procedimentosSolicitados = interface;
  IXMLCt_procedimentosSolicitados_procedimentoSolicitado = interface;
  IXMLCt_OPMSolicitadas = interface;
  IXMLCt_OPMSolicitadas_OPMSolicitada = interface;
  IXMLCt_guiaSolicitacaoSP_SADT = interface;
  IXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante = interface;
  IXMLCt_guiaSolicitacaoOdonto = interface;
  IXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario = interface;
  IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante = interface;
  IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado = interface;
  IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional = interface;
  IXMLCt_guiaSolicitacaoOdonto_planoTratamento = interface;
  IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado = interface;
  IXMLCt_guiaSolicitacaoProrrogacao = interface;
  IXMLCt_solicitaStatusAutorizacao = interface;
  IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao = interface;
  IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao = interface;
  IXMLCt_solicitaElegibilidade = interface;
  IXMLCt_cancelaGuia = interface;
  IXMLCt_cancelaGuia_guia = interface;
  IXMLMensagemTISS_epilogo = interface;
  IXMLCt_diariaProrrogacaoAutorizada = interface;
  IXMLCt_executanteComplementar = interface;
  IXMLCt_OPMAutorizada = interface;
  IXMLCt_OPMAutorizada_OPMAutorizada = interface;
  IXMLCt_periodoProcessamento = interface;
  IXMLCt_situacaoDentes = interface;
  IXMLCt_totaisOdonto = interface;
  IXMLCt_tratamenteOdontoRealizado = interface;
  IXMLCt_tratamentoOdontoSolicitado = interface;
  IXMLSt_tipoGlosaList = interface;

{ IXMLMensagemTISS }

  IXMLMensagemTISS = interface(IXMLNode)
    ['{ECB7BB46-CB1C-429E-A3AC-251ADC9EB7E8}']
    { Property Accessors }
    function Get_Cabecalho: IXMLCabecalhoTransacao;
    function Get_OperadoraParaPrestador: IXMLMensagemTISS_operadoraParaPrestador;
    function Get_PrestadorParaOperadora: IXMLMensagemTISS_prestadorParaOperadora;
    function Get_Epilogo: IXMLMensagemTISS_epilogo;
    { Methods & Properties }
    property Cabecalho: IXMLCabecalhoTransacao read Get_Cabecalho;
    property OperadoraParaPrestador: IXMLMensagemTISS_operadoraParaPrestador read Get_OperadoraParaPrestador;
    property PrestadorParaOperadora: IXMLMensagemTISS_prestadorParaOperadora read Get_PrestadorParaOperadora;
    property Epilogo: IXMLMensagemTISS_epilogo read Get_Epilogo;
  end;

{ IXMLCabecalhoTransacao }

  IXMLCabecalhoTransacao = interface(IXMLNode)
    ['{BF08CA95-B2CD-4746-84F3-F7439D829990}']
    { Property Accessors }
    function Get_IdentificacaoTransacao: IXMLCabecalhoTransacao_identificacaoTransacao;
    function Get_FalhaNegocio: IXMLCabecalhoTransacao_falhaNegocio;
    function Get_Origem: IXMLCabecalhoTransacao_origem;
    function Get_Destino: IXMLCabecalhoTransacao_destino;
    function Get_VersaoPadrao: UnicodeString;
    procedure Set_VersaoPadrao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoTransacao: IXMLCabecalhoTransacao_identificacaoTransacao read Get_IdentificacaoTransacao;
    property FalhaNegocio: IXMLCabecalhoTransacao_falhaNegocio read Get_FalhaNegocio;
    property Origem: IXMLCabecalhoTransacao_origem read Get_Origem;
    property Destino: IXMLCabecalhoTransacao_destino read Get_Destino;
    property VersaoPadrao: UnicodeString read Get_VersaoPadrao write Set_VersaoPadrao;
  end;

{ IXMLCabecalhoTransacao_identificacaoTransacao }

  IXMLCabecalhoTransacao_identificacaoTransacao = interface(IXMLNode)
    ['{4BA8EE04-9DBA-43C8-B39B-EEAF5A02F540}']
    { Property Accessors }
    function Get_TipoTransacao: UnicodeString;
    function Get_SequencialTransacao: Integer;
    function Get_DataRegistroTransacao: UnicodeString;
    function Get_HoraRegistroTransacao: UnicodeString;
    procedure Set_TipoTransacao(Value: UnicodeString);
    procedure Set_SequencialTransacao(Value: Integer);
    procedure Set_DataRegistroTransacao(Value: UnicodeString);
    procedure Set_HoraRegistroTransacao(Value: UnicodeString);
    { Methods & Properties }
    property TipoTransacao: UnicodeString read Get_TipoTransacao write Set_TipoTransacao;
    property SequencialTransacao: Integer read Get_SequencialTransacao write Set_SequencialTransacao;
    property DataRegistroTransacao: UnicodeString read Get_DataRegistroTransacao write Set_DataRegistroTransacao;
    property HoraRegistroTransacao: UnicodeString read Get_HoraRegistroTransacao write Set_HoraRegistroTransacao;
  end;

{ IXMLCt_motivoGlosa }

  IXMLCt_motivoGlosa = interface(IXMLNode)
    ['{8B30BEBF-288A-4FFD-918D-33D037D0681A}']
    { Property Accessors }
    function Get_CodigoGlosa: UnicodeString;
    function Get_DescricaoGlosa: UnicodeString;
    procedure Set_CodigoGlosa(Value: UnicodeString);
    procedure Set_DescricaoGlosa(Value: UnicodeString);
    { Methods & Properties }
    property CodigoGlosa: UnicodeString read Get_CodigoGlosa write Set_CodigoGlosa;
    property DescricaoGlosa: UnicodeString read Get_DescricaoGlosa write Set_DescricaoGlosa;
  end;

{ IXMLCt_motivoGlosaList }

  IXMLCt_motivoGlosaList = interface(IXMLNodeCollection)
    ['{D2D3F187-B8D7-4E80-8A97-D5643D50687C}']
    { Methods & Properties }
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;

    function Get_Item(Index: Integer): IXMLCt_motivoGlosa;
    property Items[Index: Integer]: IXMLCt_motivoGlosa read Get_Item; default;
  end;

{ IXMLCabecalhoTransacao_falhaNegocio }

  IXMLCabecalhoTransacao_falhaNegocio = interface(IXMLCt_motivoGlosa)
    ['{22AA9DC8-22CA-456F-B1ED-5023FFA29B5C}']
    { Property Accessors }
    function Get_Observacao: UnicodeString;
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCabecalhoTransacao_origem }

  IXMLCabecalhoTransacao_origem = interface(IXMLNode)
    ['{2CFA1FFE-9F8A-4EB4-9010-39CD0181162E}']
    { Property Accessors }
    function Get_CodigoPrestadorNaOperadora: IXMLCt_identificacaoPrestadorExecutante;
    function Get_RegistroANS: UnicodeString;
    function Get_CnpjPagador: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CnpjPagador(Value: UnicodeString);
    { Methods & Properties }
    property CodigoPrestadorNaOperadora: IXMLCt_identificacaoPrestadorExecutante read Get_CodigoPrestadorNaOperadora;
    property RegistroANS: UnicodeString read Get_RegistroANS write Set_RegistroANS;
    property CnpjPagador: UnicodeString read Get_CnpjPagador write Set_CnpjPagador;
  end;

{ IXMLCt_identificacaoPrestadorExecutante }

  IXMLCt_identificacaoPrestadorExecutante = interface(IXMLNode)
    ['{CAA02DB0-0D6B-4491-83A8-5F2C52B74EA5}']
    { Property Accessors }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_CodigoPrestadorNaOperadora: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
    { Methods & Properties }
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property CPF: UnicodeString read Get_CPF write Set_CPF;
    property CodigoPrestadorNaOperadora: UnicodeString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
  end;

{ IXMLCabecalhoTransacao_destino }

  IXMLCabecalhoTransacao_destino = interface(IXMLNode)
    ['{1B62DBA4-5948-41C7-9921-5C58F25C7553}']
    { Property Accessors }
    function Get_CodigoPrestadorNaOperadora: IXMLCt_identificacaoPrestadorExecutante;
    function Get_RegistroANS: UnicodeString;
    function Get_CnpjPagador: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CnpjPagador(Value: UnicodeString);
    { Methods & Properties }
    property CodigoPrestadorNaOperadora: IXMLCt_identificacaoPrestadorExecutante read Get_CodigoPrestadorNaOperadora;
    property RegistroANS: UnicodeString read Get_RegistroANS write Set_RegistroANS;
    property CnpjPagador: UnicodeString read Get_CnpjPagador write Set_CnpjPagador;
  end;

{ IXMLMensagemTISS_operadoraParaPrestador }

  IXMLMensagemTISS_operadoraParaPrestador = interface(IXMLNode)
    ['{C6372EF6-C7F4-4F4E-996E-42D970D51DE1}']
    { Property Accessors }
    function Get_ProtocoloRecebimento: IXMLCt_protocoloRecebimento;
    function Get_ProtocoloRecebimentoAnexo: IXMLCt_protocoloRecebimentoAnexo;
    function Get_DemonstrativosRetorno: IXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno;
    function Get_SituacaoProtocolo: IXMLCt_StatusProtocolo;
    function Get_AutorizacaoServico: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList;
    function Get_AutorizacaoServicoOdonto: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto;
    function Get_SituacaoAutorizacao: IXMLCt_situacaoAutorizacao;
    function Get_RespostaElegibilidade: IXMLCt_retornoElegibilidade;
    function Get_ReciboCancelaGuia: IXMLCt_reciboCancelaGuia;
    { Methods & Properties }
    property ProtocoloRecebimento: IXMLCt_protocoloRecebimento read Get_ProtocoloRecebimento;
    property ProtocoloRecebimentoAnexo: IXMLCt_protocoloRecebimentoAnexo read Get_ProtocoloRecebimentoAnexo;
    property DemonstrativosRetorno: IXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno read Get_DemonstrativosRetorno;
    property SituacaoProtocolo: IXMLCt_StatusProtocolo read Get_SituacaoProtocolo;
    property AutorizacaoServico: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList read Get_AutorizacaoServico;
    property AutorizacaoServicoOdonto: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto read Get_AutorizacaoServicoOdonto;
    property SituacaoAutorizacao: IXMLCt_situacaoAutorizacao read Get_SituacaoAutorizacao;
    property RespostaElegibilidade: IXMLCt_retornoElegibilidade read Get_RespostaElegibilidade;
    property ReciboCancelaGuia: IXMLCt_reciboCancelaGuia read Get_ReciboCancelaGuia;
  end;

{ IXMLCt_protocoloRecebimento }

  IXMLCt_protocoloRecebimento = interface(IXMLNode)
    ['{64AB9CDC-21C4-4E16-B785-27C21886E3B1}']
    { Property Accessors }
    function Get_ProtocoloRecebimento: IXMLCt_protocoloRecebimento_protocoloRecebimento;
    function Get_MensagemErro: UnicodeString;
    procedure Set_MensagemErro(Value: UnicodeString);
    { Methods & Properties }
    property ProtocoloRecebimento: IXMLCt_protocoloRecebimento_protocoloRecebimento read Get_ProtocoloRecebimento;
    property MensagemErro: UnicodeString read Get_MensagemErro write Set_MensagemErro;
  end;

{ IXMLCt_protocoloRecebimento_protocoloRecebimento }

  IXMLCt_protocoloRecebimento_protocoloRecebimento = interface(IXMLNode)
    ['{784A4397-A95F-48D2-8543-207A8DFFA41C}']
    { Property Accessors }
    function Get_NumeroProtocoloRecebimento: UnicodeString;
    function Get_DadosOperadora: IXMLCt_identificacaoFontePagadora;
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_NumeroLote: UnicodeString;
    function Get_DataEnvioLote: UnicodeString;
    function Get_MensagemDetalheProtocolo: IXMLCt_detalheProtocolo;
    procedure Set_NumeroProtocoloRecebimento(Value: UnicodeString);
    procedure Set_NumeroLote(Value: UnicodeString);
    procedure Set_DataEnvioLote(Value: UnicodeString);
    { Methods & Properties }
    property NumeroProtocoloRecebimento: UnicodeString read Get_NumeroProtocoloRecebimento write Set_NumeroProtocoloRecebimento;
    property DadosOperadora: IXMLCt_identificacaoFontePagadora read Get_DadosOperadora;
    property DadosPrestador: IXMLCt_contratado read Get_DadosPrestador;
    property NumeroLote: UnicodeString read Get_NumeroLote write Set_NumeroLote;
    property DataEnvioLote: UnicodeString read Get_DataEnvioLote write Set_DataEnvioLote;
    property MensagemDetalheProtocolo: IXMLCt_detalheProtocolo read Get_MensagemDetalheProtocolo;
  end;

{ IXMLCt_identificacaoFontePagadora }

  IXMLCt_identificacaoFontePagadora = interface(IXMLNode)
    ['{9B7BE418-57F1-4A2E-95FE-57EE41A8896D}']
    { Property Accessors }
    function Get_OperadoraRegulada: IXMLCt_identificacaoFontePagadora_operadoraRegulada;
    function Get_EntidadeNaoRegulada: IXMLCt_identificacaoFontePagadora_entidadeNaoRegulada;
    { Methods & Properties }
    property OperadoraRegulada: IXMLCt_identificacaoFontePagadora_operadoraRegulada read Get_OperadoraRegulada;
    property EntidadeNaoRegulada: IXMLCt_identificacaoFontePagadora_entidadeNaoRegulada read Get_EntidadeNaoRegulada;
  end;

{ IXMLCt_identificacaoFontePagadora_operadoraRegulada }

  IXMLCt_identificacaoFontePagadora_operadoraRegulada = interface(IXMLNode)
    ['{171C6097-ADF4-40BA-BE06-A0B999D59A6F}']
    { Property Accessors }
    function Get_RegistroANS: UnicodeString;
    function Get_CNPJ: UnicodeString;
    function Get_NomeOperadora: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_NomeOperadora(Value: UnicodeString);
    { Methods & Properties }
    property RegistroANS: UnicodeString read Get_RegistroANS write Set_RegistroANS;
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property NomeOperadora: UnicodeString read Get_NomeOperadora write Set_NomeOperadora;
  end;

{ IXMLCt_identificacaoFontePagadora_entidadeNaoRegulada }

  IXMLCt_identificacaoFontePagadora_entidadeNaoRegulada = interface(IXMLNode)
    ['{28979CB9-D992-427C-A761-9911EACC1633}']
    { Property Accessors }
    function Get_CNPJ: UnicodeString;
    function Get_NomeOperadoraEntidade: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_NomeOperadoraEntidade(Value: UnicodeString);
    { Methods & Properties }
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property NomeOperadoraEntidade: UnicodeString read Get_NomeOperadoraEntidade write Set_NomeOperadoraEntidade;
  end;

{ IXMLCt_contratado }

  IXMLCt_contratado = interface(IXMLNode)
    ['{36957EB6-744E-4B24-8BFA-48C113BB6909}']
    { Property Accessors }
    function Get_Identificacao: IXMLCt_identificacaoPrestadorExecutante;
    function Get_NomeContratado: UnicodeString;
    function Get_EnderecoContratado: IXMLCt_endereco;
    function Get_NumeroCNES: UnicodeString;
    procedure Set_NomeContratado(Value: UnicodeString);
    procedure Set_NumeroCNES(Value: UnicodeString);
    { Methods & Properties }
    property Identificacao: IXMLCt_identificacaoPrestadorExecutante read Get_Identificacao;
    property NomeContratado: UnicodeString read Get_NomeContratado write Set_NomeContratado;
    property EnderecoContratado: IXMLCt_endereco read Get_EnderecoContratado;
    property NumeroCNES: UnicodeString read Get_NumeroCNES write Set_NumeroCNES;
  end;

{ IXMLCt_endereco }

  IXMLCt_endereco = interface(IXMLNode)
    ['{09581856-6655-4C55-A9AA-10CF234E7521}']
    { Property Accessors }
    function Get_TipoLogradouro: UnicodeString;
    function Get_Logradouro: UnicodeString;
    function Get_Numero: UnicodeString;
    function Get_Complemento: UnicodeString;
    function Get_CodigoIBGEMunicipio: UnicodeString;
    function Get_Municipio: UnicodeString;
    function Get_CodigoUF: UnicodeString;
    function Get_Cep: UnicodeString;
    procedure Set_TipoLogradouro(Value: UnicodeString);
    procedure Set_Logradouro(Value: UnicodeString);
    procedure Set_Numero(Value: UnicodeString);
    procedure Set_Complemento(Value: UnicodeString);
    procedure Set_CodigoIBGEMunicipio(Value: UnicodeString);
    procedure Set_Municipio(Value: UnicodeString);
    procedure Set_CodigoUF(Value: UnicodeString);
    procedure Set_Cep(Value: UnicodeString);
    { Methods & Properties }
    property TipoLogradouro: UnicodeString read Get_TipoLogradouro write Set_TipoLogradouro;
    property Logradouro: UnicodeString read Get_Logradouro write Set_Logradouro;
    property Numero: UnicodeString read Get_Numero write Set_Numero;
    property Complemento: UnicodeString read Get_Complemento write Set_Complemento;
    property CodigoIBGEMunicipio: UnicodeString read Get_CodigoIBGEMunicipio write Set_CodigoIBGEMunicipio;
    property Municipio: UnicodeString read Get_Municipio write Set_Municipio;
    property CodigoUF: UnicodeString read Get_CodigoUF write Set_CodigoUF;
    property Cep: UnicodeString read Get_Cep write Set_Cep;
  end;

{ IXMLCt_detalheProtocolo }

  IXMLCt_detalheProtocolo = interface(IXMLNode)
    ['{7AC7FE84-755E-4854-8B9B-D5AD1A1BB4CA}']
    { Property Accessors }
    function Get_NumeroProtocolo: UnicodeString;
    function Get_ValorProtocolo: UnicodeString;
    function Get_CodigoGlosaProtocolo: IXMLCt_detalheProtocolo_codigoGlosaProtocolo;
    function Get_Guias: IXMLCt_detalheProtocolo_guias;
    procedure Set_NumeroProtocolo(Value: UnicodeString);
    procedure Set_ValorProtocolo(Value: UnicodeString);
    { Methods & Properties }
    property NumeroProtocolo: UnicodeString read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property ValorProtocolo: UnicodeString read Get_ValorProtocolo write Set_ValorProtocolo;
    property CodigoGlosaProtocolo: IXMLCt_detalheProtocolo_codigoGlosaProtocolo read Get_CodigoGlosaProtocolo;
    property Guias: IXMLCt_detalheProtocolo_guias read Get_Guias;
  end;

{ IXMLCt_detalheProtocolo_codigoGlosaProtocolo }

  IXMLCt_detalheProtocolo_codigoGlosaProtocolo = interface(IXMLNode)
    ['{1D6652CE-CA8E-4F05-8D0F-A4692B28F630}']
    { Property Accessors }
    function Get_MotivoGlosa: IXMLCt_motivoGlosaList;
    function Get_ValorGlosaProtocolo: UnicodeString;
    procedure Set_ValorGlosaProtocolo(Value: UnicodeString);
    { Methods & Properties }
    property MotivoGlosa: IXMLCt_motivoGlosaList read Get_MotivoGlosa;
    property ValorGlosaProtocolo: UnicodeString read Get_ValorGlosaProtocolo write Set_ValorGlosaProtocolo;
  end;

{ IXMLCt_detalheProtocolo_guias }

  IXMLCt_detalheProtocolo_guias = interface(IXMLNodeCollection)
    ['{43BAA8DF-7150-4C15-BF25-0B146B7844BB}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): IXMLCt_dadosGuia;
    { Methods & Properties }
    function Add: IXMLCt_dadosGuia;
    function Insert(const Index: Integer): IXMLCt_dadosGuia;
    property DadosGuia[Index: Integer]: IXMLCt_dadosGuia read Get_DadosGuia; default;
  end;

{ IXMLCt_dadosGuia }

  IXMLCt_dadosGuia = interface(IXMLNode)
    ['{F62E7B34-65A1-4EB3-BBCE-9CC425239463}']
    { Property Accessors }
    function Get_NumeroGuiaPrestador: UnicodeString;
    function Get_NumeroGuiaOperadora: UnicodeString;
    function Get_Beneficiario: IXMLCt_beneficiario;
    function Get_DataRealizacao: UnicodeString;
    function Get_ValorProcessadoGuia: UnicodeString;
    function Get_ValorLiberadoGuia: UnicodeString;
    function Get_ValorGlosaGuia: UnicodeString;
    function Get_Procedimentos: IXMLCt_dadosGuia_procedimentos;
    function Get_CodigoGlosaGuia: IXMLCt_motivoGlosaList;
    procedure Set_NumeroGuiaPrestador(Value: UnicodeString);
    procedure Set_NumeroGuiaOperadora(Value: UnicodeString);
    procedure Set_DataRealizacao(Value: UnicodeString);
    procedure Set_ValorProcessadoGuia(Value: UnicodeString);
    procedure Set_ValorLiberadoGuia(Value: UnicodeString);
    procedure Set_ValorGlosaGuia(Value: UnicodeString);
    { Methods & Properties }
    property NumeroGuiaPrestador: UnicodeString read Get_NumeroGuiaPrestador write Set_NumeroGuiaPrestador;
    property NumeroGuiaOperadora: UnicodeString read Get_NumeroGuiaOperadora write Set_NumeroGuiaOperadora;
    property Beneficiario: IXMLCt_beneficiario read Get_Beneficiario;
    property DataRealizacao: UnicodeString read Get_DataRealizacao write Set_DataRealizacao;
    property ValorProcessadoGuia: UnicodeString read Get_ValorProcessadoGuia write Set_ValorProcessadoGuia;
    property ValorLiberadoGuia: UnicodeString read Get_ValorLiberadoGuia write Set_ValorLiberadoGuia;
    property ValorGlosaGuia: UnicodeString read Get_ValorGlosaGuia write Set_ValorGlosaGuia;
    property Procedimentos: IXMLCt_dadosGuia_procedimentos read Get_Procedimentos;
    property CodigoGlosaGuia: IXMLCt_motivoGlosaList read Get_CodigoGlosaGuia;
  end;

{ IXMLCt_beneficiario }

  IXMLCt_beneficiario = interface(IXMLNode)
    ['{008760F5-6614-4C75-BECE-DA81B3131D63}']
    { Property Accessors }
    function Get_NumeroCarteira: UnicodeString;
    function Get_NomeBeneficiario: UnicodeString;
    function Get_NomePlano: UnicodeString;
    function Get_ValidadeCarteira: UnicodeString;
    function Get_NumeroCNS: UnicodeString;
    function Get_IdentificadorBeneficiario: UnicodeString;
    procedure Set_NumeroCarteira(Value: UnicodeString);
    procedure Set_NomeBeneficiario(Value: UnicodeString);
    procedure Set_NomePlano(Value: UnicodeString);
    procedure Set_ValidadeCarteira(Value: UnicodeString);
    procedure Set_NumeroCNS(Value: UnicodeString);
    procedure Set_IdentificadorBeneficiario(Value: UnicodeString);
    { Methods & Properties }
    property NumeroCarteira: UnicodeString read Get_NumeroCarteira write Set_NumeroCarteira;
    property NomeBeneficiario: UnicodeString read Get_NomeBeneficiario write Set_NomeBeneficiario;
    property NomePlano: UnicodeString read Get_NomePlano write Set_NomePlano;
    property ValidadeCarteira: UnicodeString read Get_ValidadeCarteira write Set_ValidadeCarteira;
    property NumeroCNS: UnicodeString read Get_NumeroCNS write Set_NumeroCNS;
    property IdentificadorBeneficiario: UnicodeString read Get_IdentificadorBeneficiario write Set_IdentificadorBeneficiario;
  end;

{ IXMLCt_dadosGuia_procedimentos }

  IXMLCt_dadosGuia_procedimentos = interface(IXMLNode)
    ['{23B450E0-427D-4EC8-BCED-23B257A8637F}']
    { Property Accessors }
    function Get_DadosProcedimento: IXMLCt_dadosProcedimentoList;
    function Get_DadosProcedimentoOdonto: IXMLCt_procedimentoOdontoRealizadoList;
    { Methods & Properties }
    property DadosProcedimento: IXMLCt_dadosProcedimentoList read Get_DadosProcedimento;
    property DadosProcedimentoOdonto: IXMLCt_procedimentoOdontoRealizadoList read Get_DadosProcedimentoOdonto;
  end;

{ IXMLCt_dadosProcedimento }

  IXMLCt_dadosProcedimento = interface(IXMLNode)
    ['{71985A92-4AF9-43A1-B14F-51CF855DD304}']
    { Property Accessors }
    function Get_Procedimento: IXMLCt_tabela;
    function Get_QuantidadeExecutada: Integer;
    function Get_ValorProcessado: UnicodeString;
    function Get_ValorLiberado: UnicodeString;
    function Get_GrauParticipacao: UnicodeString;
    function Get_RelacaoGlosa: IXMLCt_dadosProcedimento_relacaoGlosa;
    procedure Set_QuantidadeExecutada(Value: Integer);
    procedure Set_ValorProcessado(Value: UnicodeString);
    procedure Set_ValorLiberado(Value: UnicodeString);
    procedure Set_GrauParticipacao(Value: UnicodeString);
    { Methods & Properties }
    property Procedimento: IXMLCt_tabela read Get_Procedimento;
    property QuantidadeExecutada: Integer read Get_QuantidadeExecutada write Set_QuantidadeExecutada;
    property ValorProcessado: UnicodeString read Get_ValorProcessado write Set_ValorProcessado;
    property ValorLiberado: UnicodeString read Get_ValorLiberado write Set_ValorLiberado;
    property GrauParticipacao: UnicodeString read Get_GrauParticipacao write Set_GrauParticipacao;
    property RelacaoGlosa: IXMLCt_dadosProcedimento_relacaoGlosa read Get_RelacaoGlosa;
  end;

{ IXMLCt_dadosProcedimentoList }

  IXMLCt_dadosProcedimentoList = interface(IXMLNodeCollection)
    ['{1A9E26B4-2081-4C83-A619-0411EA5038F6}']
    { Methods & Properties }
    function Add: IXMLCt_dadosProcedimento;
    function Insert(const Index: Integer): IXMLCt_dadosProcedimento;

    function Get_Item(Index: Integer): IXMLCt_dadosProcedimento;
    property Items[Index: Integer]: IXMLCt_dadosProcedimento read Get_Item; default;
  end;

{ IXMLCt_tabela }

  IXMLCt_tabela = interface(IXMLNode)
    ['{C7EBDDD0-287F-4ED9-AA75-E32C05FE3C64}']
    { Property Accessors }
    function Get_Codigo: UnicodeString;
    function Get_TipoTabela: UnicodeString;
    function Get_Descricao: UnicodeString;
    procedure Set_Codigo(Value: UnicodeString);
    procedure Set_TipoTabela(Value: UnicodeString);
    procedure Set_Descricao(Value: UnicodeString);
    { Methods & Properties }
    property Codigo: UnicodeString read Get_Codigo write Set_Codigo;
    property TipoTabela: UnicodeString read Get_TipoTabela write Set_TipoTabela;
    property Descricao: UnicodeString read Get_Descricao write Set_Descricao;
  end;

{ IXMLCt_dadosProcedimento_relacaoGlosa }

  IXMLCt_dadosProcedimento_relacaoGlosa = interface(IXMLNode)
    ['{A25FC271-19FA-439F-9F1A-A9443005E783}']
    { Property Accessors }
    function Get_TipoGlosa: IXMLCt_motivoGlosaList;
    function Get_ValorGlosa: UnicodeString;
    procedure Set_ValorGlosa(Value: UnicodeString);
    { Methods & Properties }
    property TipoGlosa: IXMLCt_motivoGlosaList read Get_TipoGlosa;
    property ValorGlosa: UnicodeString read Get_ValorGlosa write Set_ValorGlosa;
  end;

{ IXMLCt_procedimentoOdontoRealizado }

  IXMLCt_procedimentoOdontoRealizado = interface(IXMLNode)
    ['{8F118F73-EF99-4491-A813-C2B135744F8A}']
    { Property Accessors }
    function Get_ProcedimentoOdonto: IXMLCt_tabela;
    function Get_DenteRegiao: IXMLCt_denteRegiao;
    function Get_Face: UnicodeString;
    function Get_DataRealizacao: UnicodeString;
    function Get_Quantidade: Integer;
    function Get_ValorProcessado: UnicodeString;
    function Get_ValorGlosaEstorno: UnicodeString;
    function Get_Glosas: IXMLCt_procedimentoOdontoRealizado_glosas;
    function Get_ValorLiberado: UnicodeString;
    procedure Set_Face(Value: UnicodeString);
    procedure Set_DataRealizacao(Value: UnicodeString);
    procedure Set_Quantidade(Value: Integer);
    procedure Set_ValorProcessado(Value: UnicodeString);
    procedure Set_ValorGlosaEstorno(Value: UnicodeString);
    procedure Set_ValorLiberado(Value: UnicodeString);
    { Methods & Properties }
    property ProcedimentoOdonto: IXMLCt_tabela read Get_ProcedimentoOdonto;
    property DenteRegiao: IXMLCt_denteRegiao read Get_DenteRegiao;
    property Face: UnicodeString read Get_Face write Set_Face;
    property DataRealizacao: UnicodeString read Get_DataRealizacao write Set_DataRealizacao;
    property Quantidade: Integer read Get_Quantidade write Set_Quantidade;
    property ValorProcessado: UnicodeString read Get_ValorProcessado write Set_ValorProcessado;
    property ValorGlosaEstorno: UnicodeString read Get_ValorGlosaEstorno write Set_ValorGlosaEstorno;
    property Glosas: IXMLCt_procedimentoOdontoRealizado_glosas read Get_Glosas;
    property ValorLiberado: UnicodeString read Get_ValorLiberado write Set_ValorLiberado;
  end;

{ IXMLCt_procedimentoOdontoRealizadoList }

  IXMLCt_procedimentoOdontoRealizadoList = interface(IXMLNodeCollection)
    ['{617E61DD-9C79-4F7D-915D-CA225B7381D0}']
    { Methods & Properties }
    function Add: IXMLCt_procedimentoOdontoRealizado;
    function Insert(const Index: Integer): IXMLCt_procedimentoOdontoRealizado;

    function Get_Item(Index: Integer): IXMLCt_procedimentoOdontoRealizado;
    property Items[Index: Integer]: IXMLCt_procedimentoOdontoRealizado read Get_Item; default;
  end;

{ IXMLCt_denteRegiao }

  IXMLCt_denteRegiao = interface(IXMLNode)
    ['{139EF206-D430-4979-8673-5429D5E4907B}']
    { Property Accessors }
    function Get_Dente: UnicodeString;
    function Get_Regiao: UnicodeString;
    procedure Set_Dente(Value: UnicodeString);
    procedure Set_Regiao(Value: UnicodeString);
    { Methods & Properties }
    property Dente: UnicodeString read Get_Dente write Set_Dente;
    property Regiao: UnicodeString read Get_Regiao write Set_Regiao;
  end;

{ IXMLCt_procedimentoOdontoRealizado_glosas }

  IXMLCt_procedimentoOdontoRealizado_glosas = interface(IXMLNodeCollection)
    ['{437323CC-B8B5-4673-888E-32CD3AFD4EC7}']
    { Property Accessors }
    function Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
    { Methods & Properties }
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;
    property MotivoGlosa[Index: Integer]: IXMLCt_motivoGlosa read Get_MotivoGlosa; default;
  end;

{ IXMLCt_protocoloRecebimentoAnexo }

  IXMLCt_protocoloRecebimentoAnexo = interface(IXMLNode)
    ['{17CA3F3F-DAA2-4FF3-A311-6F9E49E2A148}']
    { Property Accessors }
    function Get_ProtocoloRecebimento: IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento;
    function Get_MensagemErro: UnicodeString;
    procedure Set_MensagemErro(Value: UnicodeString);
    { Methods & Properties }
    property ProtocoloRecebimento: IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento read Get_ProtocoloRecebimento;
    property MensagemErro: UnicodeString read Get_MensagemErro write Set_MensagemErro;
  end;

{ IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento }

  IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento = interface(IXMLNode)
    ['{914291EE-D1FC-45BE-AB49-A4074E63DDC6}']
    { Property Accessors }
    function Get_NumeroProtocoloRecebimento: UnicodeString;
    function Get_DadosOperadora: IXMLCt_identificacaoFontePagadora;
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_DataEnvioAnexo: UnicodeString;
    function Get_NumeroLote: UnicodeString;
    function Get_QuantidadeAnexo: Integer;
    function Get_RelacaoAnexo: IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroProtocoloRecebimento(Value: UnicodeString);
    procedure Set_DataEnvioAnexo(Value: UnicodeString);
    procedure Set_NumeroLote(Value: UnicodeString);
    procedure Set_QuantidadeAnexo(Value: Integer);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property NumeroProtocoloRecebimento: UnicodeString read Get_NumeroProtocoloRecebimento write Set_NumeroProtocoloRecebimento;
    property DadosOperadora: IXMLCt_identificacaoFontePagadora read Get_DadosOperadora;
    property DadosPrestador: IXMLCt_contratado read Get_DadosPrestador;
    property DataEnvioAnexo: UnicodeString read Get_DataEnvioAnexo write Set_DataEnvioAnexo;
    property NumeroLote: UnicodeString read Get_NumeroLote write Set_NumeroLote;
    property QuantidadeAnexo: Integer read Get_QuantidadeAnexo write Set_QuantidadeAnexo;
    property RelacaoAnexo: IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo read Get_RelacaoAnexo;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo }

  IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo = interface(IXMLNodeCollection)
    ['{07225D21-FCA2-476B-B35C-D4BE1D37E5F9}']
    { Property Accessors }
    function Get_NumeroGuiaPrincipal(Index: Integer): UnicodeString;
    { Methods & Properties }
    function Add(const NumeroGuiaPrincipal: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const NumeroGuiaPrincipal: UnicodeString): IXMLNode;
    property NumeroGuiaPrincipal[Index: Integer]: UnicodeString read Get_NumeroGuiaPrincipal; default;
  end;

{ IXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno }

  IXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno = interface(IXMLNode)
    ['{897F0F31-9EDD-410C-A5E9-8A952E216694}']
    { Property Accessors }
    function Get_DemonstrativoAnaliseConta: IXMLCt_demonstrativoAnaliseContaList;
    function Get_DemonstrativoOdontologia: IXMLCt_demonstrativoOdontologiaList;
    function Get_DemonstrativoPagamento: IXMLCt_demonstrativoPagamentoList;
    { Methods & Properties }
    property DemonstrativoAnaliseConta: IXMLCt_demonstrativoAnaliseContaList read Get_DemonstrativoAnaliseConta;
    property DemonstrativoOdontologia: IXMLCt_demonstrativoOdontologiaList read Get_DemonstrativoOdontologia;
    property DemonstrativoPagamento: IXMLCt_demonstrativoPagamentoList read Get_DemonstrativoPagamento;
  end;

{ IXMLCt_demonstrativoAnaliseConta }

  IXMLCt_demonstrativoAnaliseConta = interface(IXMLNode)
    ['{C851DF1B-B99A-4A82-994D-88A534EA3A27}']
    { Property Accessors }
    function Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
    function Get_CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo;
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_Fatura: IXMLCt_demonstrativoAnaliseConta_fatura;
    function Get_ValorProcessadoGeral: UnicodeString;
    function Get_ValorLiberadoGeral: UnicodeString;
    function Get_ValorGlosaGeral: UnicodeString;
    procedure Set_ValorProcessadoGeral(Value: UnicodeString);
    procedure Set_ValorLiberadoGeral(Value: UnicodeString);
    procedure Set_ValorGlosaGeral(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora read Get_IdentificacaoFontePagadora;
    property CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo read Get_CabecalhoDemonstrativo;
    property DadosPrestador: IXMLCt_contratado read Get_DadosPrestador;
    property Fatura: IXMLCt_demonstrativoAnaliseConta_fatura read Get_Fatura;
    property ValorProcessadoGeral: UnicodeString read Get_ValorProcessadoGeral write Set_ValorProcessadoGeral;
    property ValorLiberadoGeral: UnicodeString read Get_ValorLiberadoGeral write Set_ValorLiberadoGeral;
    property ValorGlosaGeral: UnicodeString read Get_ValorGlosaGeral write Set_ValorGlosaGeral;
  end;

{ IXMLCt_demonstrativoAnaliseContaList }

  IXMLCt_demonstrativoAnaliseContaList = interface(IXMLNodeCollection)
    ['{3E889C2A-F25D-409F-B871-BBC97BFEB41B}']
    { Methods & Properties }
    function Add: IXMLCt_demonstrativoAnaliseConta;
    function Insert(const Index: Integer): IXMLCt_demonstrativoAnaliseConta;

    function Get_Item(Index: Integer): IXMLCt_demonstrativoAnaliseConta;
    property Items[Index: Integer]: IXMLCt_demonstrativoAnaliseConta read Get_Item; default;
  end;

{ IXMLCt_cabecalhoDemonstrativo }

  IXMLCt_cabecalhoDemonstrativo = interface(IXMLNode)
    ['{4C674F41-56EF-4876-B8F3-33B3757B20A5}']
    { Property Accessors }
    function Get_NumeroDemonstrativo: UnicodeString;
    function Get_DataEmissao: UnicodeString;
    procedure Set_NumeroDemonstrativo(Value: UnicodeString);
    procedure Set_DataEmissao(Value: UnicodeString);
    { Methods & Properties }
    property NumeroDemonstrativo: UnicodeString read Get_NumeroDemonstrativo write Set_NumeroDemonstrativo;
    property DataEmissao: UnicodeString read Get_DataEmissao write Set_DataEmissao;
  end;

{ IXMLCt_demonstrativoAnaliseConta_fatura }

  IXMLCt_demonstrativoAnaliseConta_fatura = interface(IXMLNode)
    ['{CBA1CDA4-3DA3-47B9-A964-0B03ED27BA9E}']
    { Property Accessors }
    function Get_DadosFatura: IXMLCt_dadosConta;
    { Methods & Properties }
    property DadosFatura: IXMLCt_dadosConta read Get_DadosFatura;
  end;

{ IXMLCt_dadosConta }

  IXMLCt_dadosConta = interface(IXMLNode)
    ['{B388894A-F2A4-4858-86CD-47F484897DEE}']
    { Property Accessors }
    function Get_NumeroFatura: UnicodeString;
    function Get_Lote: IXMLCt_dadosConta_lote;
    function Get_ValorProcessadoFatura: UnicodeString;
    function Get_ValorLiberadoFatura: UnicodeString;
    function Get_ValorGlosaFatura: UnicodeString;
    procedure Set_NumeroFatura(Value: UnicodeString);
    procedure Set_ValorProcessadoFatura(Value: UnicodeString);
    procedure Set_ValorLiberadoFatura(Value: UnicodeString);
    procedure Set_ValorGlosaFatura(Value: UnicodeString);
    { Methods & Properties }
    property NumeroFatura: UnicodeString read Get_NumeroFatura write Set_NumeroFatura;
    property Lote: IXMLCt_dadosConta_lote read Get_Lote;
    property ValorProcessadoFatura: UnicodeString read Get_ValorProcessadoFatura write Set_ValorProcessadoFatura;
    property ValorLiberadoFatura: UnicodeString read Get_ValorLiberadoFatura write Set_ValorLiberadoFatura;
    property ValorGlosaFatura: UnicodeString read Get_ValorGlosaFatura write Set_ValorGlosaFatura;
  end;

{ IXMLCt_dadosConta_lote }

  IXMLCt_dadosConta_lote = interface(IXMLNodeCollection)
    ['{CA1ABF10-F502-4F8D-B3DA-CB10CDFF6B0A}']
    { Property Accessors }
    function Get_DadosLote(Index: Integer): IXMLCt_dadosLote;
    { Methods & Properties }
    function Add: IXMLCt_dadosLote;
    function Insert(const Index: Integer): IXMLCt_dadosLote;
    property DadosLote[Index: Integer]: IXMLCt_dadosLote read Get_DadosLote; default;
  end;

{ IXMLCt_dadosLote }

  IXMLCt_dadosLote = interface(IXMLNode)
    ['{2240D125-3A35-40E9-9294-F9F34E9F603A}']
    { Property Accessors }
    function Get_NumeroLote: UnicodeString;
    function Get_DataEnvioLote: UnicodeString;
    function Get_NumeroProtocolo: UnicodeString;
    function Get_ValorProtocolo: UnicodeString;
    function Get_ValorGlosaProtocolo: UnicodeString;
    function Get_CodigoGlosaProtocolo: IXMLSt_tipoGlosaList;
    function Get_Guia: IXMLCt_dadosLote_guia;
    procedure Set_NumeroLote(Value: UnicodeString);
    procedure Set_DataEnvioLote(Value: UnicodeString);
    procedure Set_NumeroProtocolo(Value: UnicodeString);
    procedure Set_ValorProtocolo(Value: UnicodeString);
    procedure Set_ValorGlosaProtocolo(Value: UnicodeString);
    { Methods & Properties }
    property NumeroLote: UnicodeString read Get_NumeroLote write Set_NumeroLote;
    property DataEnvioLote: UnicodeString read Get_DataEnvioLote write Set_DataEnvioLote;
    property NumeroProtocolo: UnicodeString read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property ValorProtocolo: UnicodeString read Get_ValorProtocolo write Set_ValorProtocolo;
    property ValorGlosaProtocolo: UnicodeString read Get_ValorGlosaProtocolo write Set_ValorGlosaProtocolo;
    property CodigoGlosaProtocolo: IXMLSt_tipoGlosaList read Get_CodigoGlosaProtocolo;
    property Guia: IXMLCt_dadosLote_guia read Get_Guia;
  end;

{ IXMLCt_dadosLote_guia }

  IXMLCt_dadosLote_guia = interface(IXMLNodeCollection)
    ['{8D340F99-3B25-41F6-B269-ECEF9031BFFC}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): IXMLCt_dadosGuia;
    { Methods & Properties }
    function Add: IXMLCt_dadosGuia;
    function Insert(const Index: Integer): IXMLCt_dadosGuia;
    property DadosGuia[Index: Integer]: IXMLCt_dadosGuia read Get_DadosGuia; default;
  end;

{ IXMLCt_demonstrativoOdontologia }

  IXMLCt_demonstrativoOdontologia = interface(IXMLNode)
    ['{FAD8526C-4CF4-44FB-A826-980041EFA1E9}']
    { Property Accessors }
    function Get_CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo;
    function Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
    function Get_DadosPrestador: IXMLCt_demonstrativoOdontologia_dadosPrestador;
    function Get_DadosPagamento: IXMLCt_demonstrativoOdontologia_dadosPagamentoList;
    function Get_DebitosCreditosTributaveis: IXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis;
    function Get_DemaisImpostos: IXMLCt_demonstrativoOdontologia_demaisImpostos;
    function Get_DebitosCreditosNaoTributaveis: IXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis;
    function Get_ValorFinalReceber: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_ValorFinalReceber(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo read Get_CabecalhoDemonstrativo;
    property IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora read Get_IdentificacaoFontePagadora;
    property DadosPrestador: IXMLCt_demonstrativoOdontologia_dadosPrestador read Get_DadosPrestador;
    property DadosPagamento: IXMLCt_demonstrativoOdontologia_dadosPagamentoList read Get_DadosPagamento;
    property DebitosCreditosTributaveis: IXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis read Get_DebitosCreditosTributaveis;
    property DemaisImpostos: IXMLCt_demonstrativoOdontologia_demaisImpostos read Get_DemaisImpostos;
    property DebitosCreditosNaoTributaveis: IXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis read Get_DebitosCreditosNaoTributaveis;
    property ValorFinalReceber: UnicodeString read Get_ValorFinalReceber write Set_ValorFinalReceber;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_demonstrativoOdontologiaList }

  IXMLCt_demonstrativoOdontologiaList = interface(IXMLNodeCollection)
    ['{663B3CA8-2324-4250-AC17-DC6D4AED465A}']
    { Methods & Properties }
    function Add: IXMLCt_demonstrativoOdontologia;
    function Insert(const Index: Integer): IXMLCt_demonstrativoOdontologia;

    function Get_Item(Index: Integer): IXMLCt_demonstrativoOdontologia;
    property Items[Index: Integer]: IXMLCt_demonstrativoOdontologia read Get_Item; default;
  end;

{ IXMLCt_demonstrativoOdontologia_dadosPrestador }

  IXMLCt_demonstrativoOdontologia_dadosPrestador = interface(IXMLNode)
    ['{99057AEF-85D1-4119-B10C-F9AC4694617D}']
    { Property Accessors }
    function Get_CodigoPrestadorNaOperadora: UnicodeString;
    function Get_IdentificadorPrestador: IXMLCt_identificadorPrestOdontoDemo;
    function Get_NomeContratado: UnicodeString;
    function Get_NumeroCNES: UnicodeString;
    procedure Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
    procedure Set_NomeContratado(Value: UnicodeString);
    procedure Set_NumeroCNES(Value: UnicodeString);
    { Methods & Properties }
    property CodigoPrestadorNaOperadora: UnicodeString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
    property IdentificadorPrestador: IXMLCt_identificadorPrestOdontoDemo read Get_IdentificadorPrestador;
    property NomeContratado: UnicodeString read Get_NomeContratado write Set_NomeContratado;
    property NumeroCNES: UnicodeString read Get_NumeroCNES write Set_NumeroCNES;
  end;

{ IXMLCt_identificadorPrestOdontoDemo }

  IXMLCt_identificadorPrestOdontoDemo = interface(IXMLNode)
    ['{8B04D18C-C7C0-4B71-9478-887AB38C2C89}']
    { Property Accessors }
    function Get_CNPJ: UnicodeString;
    function Get_Cpf: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_Cpf(Value: UnicodeString);
    { Methods & Properties }
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property Cpf: UnicodeString read Get_Cpf write Set_Cpf;
  end;

{ IXMLCt_dadosPagamento }

  IXMLCt_dadosPagamento = interface(IXMLNode)
    ['{BF03E322-8E03-4374-B83C-746D48386804}']
    { Property Accessors }
    function Get_DataPagamento: UnicodeString;
    function Get_LoteOdonto: IXMLCt_dadosPagamento_loteOdontoList;
    procedure Set_DataPagamento(Value: UnicodeString);
    { Methods & Properties }
    property DataPagamento: UnicodeString read Get_DataPagamento write Set_DataPagamento;
    property LoteOdonto: IXMLCt_dadosPagamento_loteOdontoList read Get_LoteOdonto;
  end;

{ IXMLCt_loteOdonto }

  IXMLCt_loteOdonto = interface(IXMLNode)
    ['{0859BC3A-C77E-40F8-B3F7-FDD9641CD2D2}']
    { Property Accessors }
    function Get_NumeroLote: UnicodeString;
    function Get_DetalheGuia: IXMLCt_detalheGuiaOdontoList;
    function Get_ValorTotalLiberadoLote: UnicodeString;
    function Get_ValorTotalProcessadoLote: UnicodeString;
    function Get_ValorTotalGlosaLote: UnicodeString;
    procedure Set_NumeroLote(Value: UnicodeString);
    procedure Set_ValorTotalLiberadoLote(Value: UnicodeString);
    procedure Set_ValorTotalProcessadoLote(Value: UnicodeString);
    procedure Set_ValorTotalGlosaLote(Value: UnicodeString);
    { Methods & Properties }
    property NumeroLote: UnicodeString read Get_NumeroLote write Set_NumeroLote;
    property DetalheGuia: IXMLCt_detalheGuiaOdontoList read Get_DetalheGuia;
    property ValorTotalLiberadoLote: UnicodeString read Get_ValorTotalLiberadoLote write Set_ValorTotalLiberadoLote;
    property ValorTotalProcessadoLote: UnicodeString read Get_ValorTotalProcessadoLote write Set_ValorTotalProcessadoLote;
    property ValorTotalGlosaLote: UnicodeString read Get_ValorTotalGlosaLote write Set_ValorTotalGlosaLote;
  end;

{ IXMLCt_detalheGuiaOdonto }

  IXMLCt_detalheGuiaOdonto = interface(IXMLNode)
    ['{9CFEA96A-0C5B-4CE4-8755-CC4A31B31EFF}']
    { Property Accessors }
    function Get_NumeroGuiaPrestador: UnicodeString;
    function Get_NumeroGuiaOperadora: UnicodeString;
    function Get_CodigoBeneficiario: UnicodeString;
    function Get_NomeBeneficiario: UnicodeString;
    function Get_ProcedimentoRealizado: IXMLCt_detalheGuiaOdonto_procedimentoRealizado;
    function Get_ValorTotalGlosaGuia: UnicodeString;
    function Get_ValorTotalLiberadoGuia: UnicodeString;
    function Get_ValorTotalProcessadoGuia: UnicodeString;
    procedure Set_NumeroGuiaPrestador(Value: UnicodeString);
    procedure Set_NumeroGuiaOperadora(Value: UnicodeString);
    procedure Set_CodigoBeneficiario(Value: UnicodeString);
    procedure Set_NomeBeneficiario(Value: UnicodeString);
    procedure Set_ValorTotalGlosaGuia(Value: UnicodeString);
    procedure Set_ValorTotalLiberadoGuia(Value: UnicodeString);
    procedure Set_ValorTotalProcessadoGuia(Value: UnicodeString);
    { Methods & Properties }
    property NumeroGuiaPrestador: UnicodeString read Get_NumeroGuiaPrestador write Set_NumeroGuiaPrestador;
    property NumeroGuiaOperadora: UnicodeString read Get_NumeroGuiaOperadora write Set_NumeroGuiaOperadora;
    property CodigoBeneficiario: UnicodeString read Get_CodigoBeneficiario write Set_CodigoBeneficiario;
    property NomeBeneficiario: UnicodeString read Get_NomeBeneficiario write Set_NomeBeneficiario;
    property ProcedimentoRealizado: IXMLCt_detalheGuiaOdonto_procedimentoRealizado read Get_ProcedimentoRealizado;
    property ValorTotalGlosaGuia: UnicodeString read Get_ValorTotalGlosaGuia write Set_ValorTotalGlosaGuia;
    property ValorTotalLiberadoGuia: UnicodeString read Get_ValorTotalLiberadoGuia write Set_ValorTotalLiberadoGuia;
    property ValorTotalProcessadoGuia: UnicodeString read Get_ValorTotalProcessadoGuia write Set_ValorTotalProcessadoGuia;
  end;

{ IXMLCt_detalheGuiaOdontoList }

  IXMLCt_detalheGuiaOdontoList = interface(IXMLNodeCollection)
    ['{C7F95EA6-619C-47B7-9F97-02F950329CB4}']
    { Methods & Properties }
    function Add: IXMLCt_detalheGuiaOdonto;
    function Insert(const Index: Integer): IXMLCt_detalheGuiaOdonto;

    function Get_Item(Index: Integer): IXMLCt_detalheGuiaOdonto;
    property Items[Index: Integer]: IXMLCt_detalheGuiaOdonto read Get_Item; default;
  end;

{ IXMLCt_detalheGuiaOdonto_procedimentoRealizado }

  IXMLCt_detalheGuiaOdonto_procedimentoRealizado = interface(IXMLNodeCollection)
    ['{CAB13FA5-531C-42A5-A474-36009E094B09}']
    { Property Accessors }
    function Get_ProcedimentosOdonto(Index: Integer): IXMLCt_procedimentoOdontoRealizado;
    { Methods & Properties }
    function Add: IXMLCt_procedimentoOdontoRealizado;
    function Insert(const Index: Integer): IXMLCt_procedimentoOdontoRealizado;
    property ProcedimentosOdonto[Index: Integer]: IXMLCt_procedimentoOdontoRealizado read Get_ProcedimentosOdonto; default;
  end;

{ IXMLCt_dadosPagamento_loteOdonto }

  IXMLCt_dadosPagamento_loteOdonto = interface(IXMLCt_loteOdonto)
    ['{FA4F4B8A-DE84-4B3B-914D-113B25893E6E}']
    { Property Accessors }
    function Get_TotalGeralLote: IXMLCt_totalDemoOdonto;
    { Methods & Properties }
    property TotalGeralLote: IXMLCt_totalDemoOdonto read Get_TotalGeralLote;
  end;

{ IXMLCt_dadosPagamento_loteOdontoList }

  IXMLCt_dadosPagamento_loteOdontoList = interface(IXMLNodeCollection)
    ['{9B04725F-E44B-4ED8-B30B-78CA2B34A033}']
    { Methods & Properties }
    function Add: IXMLCt_dadosPagamento_loteOdonto;
    function Insert(const Index: Integer): IXMLCt_dadosPagamento_loteOdonto;

    function Get_Item(Index: Integer): IXMLCt_dadosPagamento_loteOdonto;
    property Items[Index: Integer]: IXMLCt_dadosPagamento_loteOdonto read Get_Item; default;
  end;

{ IXMLCt_totalDemoOdonto }

  IXMLCt_totalDemoOdonto = interface(IXMLNode)
    ['{7E167268-B4B3-49E3-9AC8-CED1E86C5B4B}']
    { Property Accessors }
    function Get_ValorTotalGeralGlosa: UnicodeString;
    function Get_ValorTotalGeralLiberado: UnicodeString;
    function Get_ValorTotalProcessadoGuia: UnicodeString;
    procedure Set_ValorTotalGeralGlosa(Value: UnicodeString);
    procedure Set_ValorTotalGeralLiberado(Value: UnicodeString);
    procedure Set_ValorTotalProcessadoGuia(Value: UnicodeString);
    { Methods & Properties }
    property ValorTotalGeralGlosa: UnicodeString read Get_ValorTotalGeralGlosa write Set_ValorTotalGeralGlosa;
    property ValorTotalGeralLiberado: UnicodeString read Get_ValorTotalGeralLiberado write Set_ValorTotalGeralLiberado;
    property ValorTotalProcessadoGuia: UnicodeString read Get_ValorTotalProcessadoGuia write Set_ValorTotalProcessadoGuia;
  end;

{ IXMLCt_demonstrativoOdontologia_dadosPagamento }

  IXMLCt_demonstrativoOdontologia_dadosPagamento = interface(IXMLCt_dadosPagamento)
    ['{5046A45D-3851-4842-B5C3-7867D6779685}']
    { Property Accessors }
    function Get_TotalGeral: IXMLCt_totalDemoOdonto;
    { Methods & Properties }
    property TotalGeral: IXMLCt_totalDemoOdonto read Get_TotalGeral;
  end;

{ IXMLCt_demonstrativoOdontologia_dadosPagamentoList }

  IXMLCt_demonstrativoOdontologia_dadosPagamentoList = interface(IXMLNodeCollection)
    ['{DED0E19A-DC51-4C07-B04D-F0DF2F8DD0E0}']
    { Methods & Properties }
    function Add: IXMLCt_demonstrativoOdontologia_dadosPagamento;
    function Insert(const Index: Integer): IXMLCt_demonstrativoOdontologia_dadosPagamento;

    function Get_Item(Index: Integer): IXMLCt_demonstrativoOdontologia_dadosPagamento;
    property Items[Index: Integer]: IXMLCt_demonstrativoOdontologia_dadosPagamento read Get_Item; default;
  end;

{ IXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis }

  IXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis = interface(IXMLNode)
    ['{54982693-3E54-482C-9C31-A6EA67189672}']
    { Property Accessors }
    function Get_Descontos: IXMLCt_descontoOdontoList;
    function Get_Creditos: IXMLCt_creditoOdontoList;
    function Get_ValorTotalTributavel: UnicodeString;
    procedure Set_ValorTotalTributavel(Value: UnicodeString);
    { Methods & Properties }
    property Descontos: IXMLCt_descontoOdontoList read Get_Descontos;
    property Creditos: IXMLCt_creditoOdontoList read Get_Creditos;
    property ValorTotalTributavel: UnicodeString read Get_ValorTotalTributavel write Set_ValorTotalTributavel;
  end;

{ IXMLCt_descontoOdonto }

  IXMLCt_descontoOdonto = interface(IXMLNode)
    ['{464B9B28-37C6-461D-909C-6037C76F5A71}']
    { Property Accessors }
    function Get_Descricao: UnicodeString;
    function Get_ValorDesconto: UnicodeString;
    procedure Set_Descricao(Value: UnicodeString);
    procedure Set_ValorDesconto(Value: UnicodeString);
    { Methods & Properties }
    property Descricao: UnicodeString read Get_Descricao write Set_Descricao;
    property ValorDesconto: UnicodeString read Get_ValorDesconto write Set_ValorDesconto;
  end;

{ IXMLCt_descontoOdontoList }

  IXMLCt_descontoOdontoList = interface(IXMLNodeCollection)
    ['{0BAA7D36-9B84-4CE7-BF5E-538B808DD17E}']
    { Methods & Properties }
    function Add: IXMLCt_descontoOdonto;
    function Insert(const Index: Integer): IXMLCt_descontoOdonto;

    function Get_Item(Index: Integer): IXMLCt_descontoOdonto;
    property Items[Index: Integer]: IXMLCt_descontoOdonto read Get_Item; default;
  end;

{ IXMLCt_creditoOdonto }

  IXMLCt_creditoOdonto = interface(IXMLNode)
    ['{4B5A5D08-CEFD-4652-B791-742E3D5F0367}']
    { Property Accessors }
    function Get_ValorDesconto: UnicodeString;
    function Get_Descricao: UnicodeString;
    procedure Set_ValorDesconto(Value: UnicodeString);
    procedure Set_Descricao(Value: UnicodeString);
    { Methods & Properties }
    property ValorDesconto: UnicodeString read Get_ValorDesconto write Set_ValorDesconto;
    property Descricao: UnicodeString read Get_Descricao write Set_Descricao;
  end;

{ IXMLCt_creditoOdontoList }

  IXMLCt_creditoOdontoList = interface(IXMLNodeCollection)
    ['{B7AAB63B-4404-43A6-970A-306D811185DB}']
    { Methods & Properties }
    function Add: IXMLCt_creditoOdonto;
    function Insert(const Index: Integer): IXMLCt_creditoOdonto;

    function Get_Item(Index: Integer): IXMLCt_creditoOdonto;
    property Items[Index: Integer]: IXMLCt_creditoOdonto read Get_Item; default;
  end;

{ IXMLCt_demonstrativoOdontologia_demaisImpostos }

  IXMLCt_demonstrativoOdontologia_demaisImpostos = interface(IXMLNode)
    ['{06FBFAD8-7AC4-4190-9BED-0EEDEBD1DC58}']
    { Property Accessors }
    function Get_Descontos: IXMLCt_descontoOdontoList;
    function Get_ValorTotalImpostos: UnicodeString;
    procedure Set_ValorTotalImpostos(Value: UnicodeString);
    { Methods & Properties }
    property Descontos: IXMLCt_descontoOdontoList read Get_Descontos;
    property ValorTotalImpostos: UnicodeString read Get_ValorTotalImpostos write Set_ValorTotalImpostos;
  end;

{ IXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis }

  IXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis = interface(IXMLNode)
    ['{2A548100-8479-4458-A641-4BDB9A424833}']
    { Property Accessors }
    function Get_Descontos: IXMLCt_descontoOdontoList;
    function Get_Creditos: IXMLCt_creditoOdontoList;
    function Get_ValorTotalNaoTributavel: UnicodeString;
    procedure Set_ValorTotalNaoTributavel(Value: UnicodeString);
    { Methods & Properties }
    property Descontos: IXMLCt_descontoOdontoList read Get_Descontos;
    property Creditos: IXMLCt_creditoOdontoList read Get_Creditos;
    property ValorTotalNaoTributavel: UnicodeString read Get_ValorTotalNaoTributavel write Set_ValorTotalNaoTributavel;
  end;

{ IXMLCt_demonstrativoPagamento }

  IXMLCt_demonstrativoPagamento = interface(IXMLNode)
    ['{CC2D8486-D20C-42A1-8EC0-FF554EE96969}']
    { Property Accessors }
    function Get_CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo;
    function Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_DadosPagamento: IXMLCt_dadoBancario;
    function Get_DadosResumo: IXMLCt_demonstrativoPagamento_dadosResumo;
    function Get_ValorTotal: UnicodeString;
    function Get_DemaisDescontos: IXMLCt_descontos;
    function Get_ValorFinalLiberado: UnicodeString;
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_ValorFinalLiberado(Value: UnicodeString);
    { Methods & Properties }
    property CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo read Get_CabecalhoDemonstrativo;
    property IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora read Get_IdentificacaoFontePagadora;
    property DadosPrestador: IXMLCt_contratado read Get_DadosPrestador;
    property DadosPagamento: IXMLCt_dadoBancario read Get_DadosPagamento;
    property DadosResumo: IXMLCt_demonstrativoPagamento_dadosResumo read Get_DadosResumo;
    property ValorTotal: UnicodeString read Get_ValorTotal write Set_ValorTotal;
    property DemaisDescontos: IXMLCt_descontos read Get_DemaisDescontos;
    property ValorFinalLiberado: UnicodeString read Get_ValorFinalLiberado write Set_ValorFinalLiberado;
  end;

{ IXMLCt_demonstrativoPagamentoList }

  IXMLCt_demonstrativoPagamentoList = interface(IXMLNodeCollection)
    ['{86755700-7FFE-47D0-9E14-FA74FE86B625}']
    { Methods & Properties }
    function Add: IXMLCt_demonstrativoPagamento;
    function Insert(const Index: Integer): IXMLCt_demonstrativoPagamento;

    function Get_Item(Index: Integer): IXMLCt_demonstrativoPagamento;
    property Items[Index: Integer]: IXMLCt_demonstrativoPagamento read Get_Item; default;
  end;

{ IXMLCt_dadoBancario }

  IXMLCt_dadoBancario = interface(IXMLNode)
    ['{C38D9CAD-5C3E-4142-8F32-C5D456FF29BD}']
    { Property Accessors }
    function Get_DataPagamento: UnicodeString;
    function Get_FormaPagamento: UnicodeString;
    function Get_Banco: Integer;
    function Get_Agencia: UnicodeString;
    function Get_ContaCorrente: UnicodeString;
    procedure Set_DataPagamento(Value: UnicodeString);
    procedure Set_FormaPagamento(Value: UnicodeString);
    procedure Set_Banco(Value: Integer);
    procedure Set_Agencia(Value: UnicodeString);
    procedure Set_ContaCorrente(Value: UnicodeString);
    { Methods & Properties }
    property DataPagamento: UnicodeString read Get_DataPagamento write Set_DataPagamento;
    property FormaPagamento: UnicodeString read Get_FormaPagamento write Set_FormaPagamento;
    property Banco: Integer read Get_Banco write Set_Banco;
    property Agencia: UnicodeString read Get_Agencia write Set_Agencia;
    property ContaCorrente: UnicodeString read Get_ContaCorrente write Set_ContaCorrente;
  end;

{ IXMLCt_demonstrativoPagamento_dadosResumo }

  IXMLCt_demonstrativoPagamento_dadosResumo = interface(IXMLNode)
    ['{ECC7A01A-29DA-4876-BEE2-B507D176EE3D}']
    { Property Accessors }
    function Get_DetalheResumo: IXMLCt_dadosResumoList;
    function Get_TotalGeralInformado: UnicodeString;
    function Get_TotalGeralProcessado: UnicodeString;
    function Get_TotalGeralGlosa: UnicodeString;
    function Get_TotalGeralLiberado: UnicodeString;
    procedure Set_TotalGeralInformado(Value: UnicodeString);
    procedure Set_TotalGeralProcessado(Value: UnicodeString);
    procedure Set_TotalGeralGlosa(Value: UnicodeString);
    procedure Set_TotalGeralLiberado(Value: UnicodeString);
    { Methods & Properties }
    property DetalheResumo: IXMLCt_dadosResumoList read Get_DetalheResumo;
    property TotalGeralInformado: UnicodeString read Get_TotalGeralInformado write Set_TotalGeralInformado;
    property TotalGeralProcessado: UnicodeString read Get_TotalGeralProcessado write Set_TotalGeralProcessado;
    property TotalGeralGlosa: UnicodeString read Get_TotalGeralGlosa write Set_TotalGeralGlosa;
    property TotalGeralLiberado: UnicodeString read Get_TotalGeralLiberado write Set_TotalGeralLiberado;
  end;

{ IXMLCt_dadosResumo }

  IXMLCt_dadosResumo = interface(IXMLNode)
    ['{1C451FFF-B953-436F-8AD2-7C8AE4DFE821}']
    { Property Accessors }
    function Get_NumeroFatura: UnicodeString;
    function Get_NumeroLote: UnicodeString;
    function Get_DataEnvioLote: UnicodeString;
    function Get_NumeroProtocolo: UnicodeString;
    function Get_ValorInformado: UnicodeString;
    function Get_ValorProcessado: UnicodeString;
    function Get_ValorLiberado: UnicodeString;
    function Get_ValorGlosa: UnicodeString;
    procedure Set_NumeroFatura(Value: UnicodeString);
    procedure Set_NumeroLote(Value: UnicodeString);
    procedure Set_DataEnvioLote(Value: UnicodeString);
    procedure Set_NumeroProtocolo(Value: UnicodeString);
    procedure Set_ValorInformado(Value: UnicodeString);
    procedure Set_ValorProcessado(Value: UnicodeString);
    procedure Set_ValorLiberado(Value: UnicodeString);
    procedure Set_ValorGlosa(Value: UnicodeString);
    { Methods & Properties }
    property NumeroFatura: UnicodeString read Get_NumeroFatura write Set_NumeroFatura;
    property NumeroLote: UnicodeString read Get_NumeroLote write Set_NumeroLote;
    property DataEnvioLote: UnicodeString read Get_DataEnvioLote write Set_DataEnvioLote;
    property NumeroProtocolo: UnicodeString read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property ValorInformado: UnicodeString read Get_ValorInformado write Set_ValorInformado;
    property ValorProcessado: UnicodeString read Get_ValorProcessado write Set_ValorProcessado;
    property ValorLiberado: UnicodeString read Get_ValorLiberado write Set_ValorLiberado;
    property ValorGlosa: UnicodeString read Get_ValorGlosa write Set_ValorGlosa;
  end;

{ IXMLCt_dadosResumoList }

  IXMLCt_dadosResumoList = interface(IXMLNodeCollection)
    ['{0B014565-25E2-4998-B631-F6CAB9CE35E3}']
    { Methods & Properties }
    function Add: IXMLCt_dadosResumo;
    function Insert(const Index: Integer): IXMLCt_dadosResumo;

    function Get_Item(Index: Integer): IXMLCt_dadosResumo;
    property Items[Index: Integer]: IXMLCt_dadosResumo read Get_Item; default;
  end;

{ IXMLCt_descontos }

  IXMLCt_descontos = interface(IXMLNodeCollection)
    ['{AC879E8A-D8B7-4690-89C0-5544E103F0BF}']
    { Property Accessors }
    function Get_ItemDesconto(Index: Integer): IXMLCt_descontos_itemDesconto;
    { Methods & Properties }
    function Add: IXMLCt_descontos_itemDesconto;
    function Insert(const Index: Integer): IXMLCt_descontos_itemDesconto;
    property ItemDesconto[Index: Integer]: IXMLCt_descontos_itemDesconto read Get_ItemDesconto; default;
  end;

{ IXMLCt_descontos_itemDesconto }

  IXMLCt_descontos_itemDesconto = interface(IXMLNode)
    ['{8F215160-4FCC-4340-95F7-3F5B73E69DA0}']
    { Property Accessors }
    function Get_ValorDesconto: UnicodeString;
    function Get_Descricao: UnicodeString;
    procedure Set_ValorDesconto(Value: UnicodeString);
    procedure Set_Descricao(Value: UnicodeString);
    { Methods & Properties }
    property ValorDesconto: UnicodeString read Get_ValorDesconto write Set_ValorDesconto;
    property Descricao: UnicodeString read Get_Descricao write Set_Descricao;
  end;

{ IXMLCt_StatusProtocolo }

  IXMLCt_StatusProtocolo = interface(IXMLNode)
    ['{7C15758E-8238-4DBE-8B56-D3C38983BFAE}']
    { Property Accessors }
    function Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
    function Get_StatusProtocolo: UnicodeString;
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_CNESPrestador: UnicodeString;
    function Get_Lote: IXMLCt_StatusProtocolo_lote;
    procedure Set_StatusProtocolo(Value: UnicodeString);
    procedure Set_CNESPrestador(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora read Get_IdentificacaoFontePagadora;
    property StatusProtocolo: UnicodeString read Get_StatusProtocolo write Set_StatusProtocolo;
    property DadosPrestador: IXMLCt_contratado read Get_DadosPrestador;
    property CNESPrestador: UnicodeString read Get_CNESPrestador write Set_CNESPrestador;
    property Lote: IXMLCt_StatusProtocolo_lote read Get_Lote;
  end;

{ IXMLCt_StatusProtocolo_lote }

  IXMLCt_StatusProtocolo_lote = interface(IXMLNodeCollection)
    ['{3C92B154-F319-4069-82AC-FECD6FB48BBA}']
    { Property Accessors }
    function Get_DetalheLote(Index: Integer): IXMLCt_statusLote;
    { Methods & Properties }
    function Add: IXMLCt_statusLote;
    function Insert(const Index: Integer): IXMLCt_statusLote;
    property DetalheLote[Index: Integer]: IXMLCt_statusLote read Get_DetalheLote; default;
  end;

{ IXMLCt_statusLote }

  IXMLCt_statusLote = interface(IXMLNode)
    ['{5BBEEF66-09A2-4027-A596-16D39E6277AA}']
    { Property Accessors }
    function Get_NumeroProtocolo: UnicodeString;
    function Get_NumeroLote: Integer;
    function Get_DataEnvioLote: UnicodeString;
    function Get_NumeroFatura: Integer;
    function Get_ValorProcessado: UnicodeString;
    function Get_ValorLiberado: UnicodeString;
    function Get_ValorGlosa: UnicodeString;
    function Get_Status: UnicodeString;
    function Get_Guias: IXMLCt_statusLote_guias;
    procedure Set_NumeroProtocolo(Value: UnicodeString);
    procedure Set_NumeroLote(Value: Integer);
    procedure Set_DataEnvioLote(Value: UnicodeString);
    procedure Set_NumeroFatura(Value: Integer);
    procedure Set_ValorProcessado(Value: UnicodeString);
    procedure Set_ValorLiberado(Value: UnicodeString);
    procedure Set_ValorGlosa(Value: UnicodeString);
    procedure Set_Status(Value: UnicodeString);
    { Methods & Properties }
    property NumeroProtocolo: UnicodeString read Get_NumeroProtocolo write Set_NumeroProtocolo;
    property NumeroLote: Integer read Get_NumeroLote write Set_NumeroLote;
    property DataEnvioLote: UnicodeString read Get_DataEnvioLote write Set_DataEnvioLote;
    property NumeroFatura: Integer read Get_NumeroFatura write Set_NumeroFatura;
    property ValorProcessado: UnicodeString read Get_ValorProcessado write Set_ValorProcessado;
    property ValorLiberado: UnicodeString read Get_ValorLiberado write Set_ValorLiberado;
    property ValorGlosa: UnicodeString read Get_ValorGlosa write Set_ValorGlosa;
    property Status: UnicodeString read Get_Status write Set_Status;
    property Guias: IXMLCt_statusLote_guias read Get_Guias;
  end;

{ IXMLCt_statusLote_guias }

  IXMLCt_statusLote_guias = interface(IXMLNode)
    ['{595BF8E3-5B26-41BA-A00D-42281611D8B3}']
    { Property Accessors }
    function Get_DetalheguiaMedica: IXMLCt_statusLote_guias_detalheguiaMedicaList;
    function Get_DetalheguiaOdonto: IXMLCt_statusLote_guias_detalheguiaOdontoList;
    { Methods & Properties }
    property DetalheguiaMedica: IXMLCt_statusLote_guias_detalheguiaMedicaList read Get_DetalheguiaMedica;
    property DetalheguiaOdonto: IXMLCt_statusLote_guias_detalheguiaOdontoList read Get_DetalheguiaOdonto;
  end;

{ IXMLCt_statusLote_guias_detalheguiaMedica }

  IXMLCt_statusLote_guias_detalheguiaMedica = interface(IXMLNode)
    ['{D611920F-CA5A-481B-8064-AE7362B32701}']
    { Property Accessors }
    function Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
    function Get_ProcedimentosAnalisados: IXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados;
    { Methods & Properties }
    property IdentificacaoGuia: IXMLCt_cabecalhoGuia read Get_IdentificacaoGuia;
    property ProcedimentosAnalisados: IXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados read Get_ProcedimentosAnalisados;
  end;

{ IXMLCt_statusLote_guias_detalheguiaMedicaList }

  IXMLCt_statusLote_guias_detalheguiaMedicaList = interface(IXMLNodeCollection)
    ['{3F11D641-34A5-4723-BBE1-2B358E90C329}']
    { Methods & Properties }
    function Add: IXMLCt_statusLote_guias_detalheguiaMedica;
    function Insert(const Index: Integer): IXMLCt_statusLote_guias_detalheguiaMedica;

    function Get_Item(Index: Integer): IXMLCt_statusLote_guias_detalheguiaMedica;
    property Items[Index: Integer]: IXMLCt_statusLote_guias_detalheguiaMedica read Get_Item; default;
  end;

{ IXMLCt_cabecalhoGuia }

  IXMLCt_cabecalhoGuia = interface(IXMLNode)
    ['{5287F73F-1D4C-43B5-B599-DE40D9CE466C}']
    { Property Accessors }
    function Get_IdentificacaoFontePagadora: IXMLCt_cabecalhoGuia_identificacaoFontePagadora;
    function Get_DataEmissaoGuia: UnicodeString;
    function Get_NumeroGuiaPrestador: UnicodeString;
    function Get_NumeroGuiaOperadora: UnicodeString;
    procedure Set_DataEmissaoGuia(Value: UnicodeString);
    procedure Set_NumeroGuiaPrestador(Value: UnicodeString);
    procedure Set_NumeroGuiaOperadora(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoFontePagadora: IXMLCt_cabecalhoGuia_identificacaoFontePagadora read Get_IdentificacaoFontePagadora;
    property DataEmissaoGuia: UnicodeString read Get_DataEmissaoGuia write Set_DataEmissaoGuia;
    property NumeroGuiaPrestador: UnicodeString read Get_NumeroGuiaPrestador write Set_NumeroGuiaPrestador;
    property NumeroGuiaOperadora: UnicodeString read Get_NumeroGuiaOperadora write Set_NumeroGuiaOperadora;
  end;

{ IXMLCt_cabecalhoGuia_identificacaoFontePagadora }

  IXMLCt_cabecalhoGuia_identificacaoFontePagadora = interface(IXMLNode)
    ['{30261501-6E74-4295-A799-B2C128E23B43}']
    { Property Accessors }
    function Get_RegistroANS: UnicodeString;
    function Get_CnpjFontePagadora: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CnpjFontePagadora(Value: UnicodeString);
    { Methods & Properties }
    property RegistroANS: UnicodeString read Get_RegistroANS write Set_RegistroANS;
    property CnpjFontePagadora: UnicodeString read Get_CnpjFontePagadora write Set_CnpjFontePagadora;
  end;

{ IXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados }

  IXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados = interface(IXMLNodeCollection)
    ['{6062C0CD-CC4A-4ADD-BDDF-35BD3B4DDA33}']
    { Property Accessors }
    function Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacao;
    { Methods & Properties }
    function Add: IXMLCt_itemSolicitacao;
    function Insert(const Index: Integer): IXMLCt_itemSolicitacao;
    property Procedimento[Index: Integer]: IXMLCt_itemSolicitacao read Get_Procedimento; default;
  end;

{ IXMLCt_itemSolicitacao }

  IXMLCt_itemSolicitacao = interface(IXMLNode)
    ['{5E34340D-63CB-4982-BF18-F001DB85E6CB}']
    { Property Accessors }
    function Get_IdentificacaoProcedimentos: IXMLCt_tabela;
    function Get_QuantidadeSolicitada: UnicodeString;
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_StatusSolicitacaoProcedimento: UnicodeString;
    function Get_Glosas: IXMLCt_itemSolicitacao_glosas;
    function Get_Observacao: UnicodeString;
    procedure Set_QuantidadeSolicitada(Value: UnicodeString);
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
    procedure Set_StatusSolicitacaoProcedimento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoProcedimentos: IXMLCt_tabela read Get_IdentificacaoProcedimentos;
    property QuantidadeSolicitada: UnicodeString read Get_QuantidadeSolicitada write Set_QuantidadeSolicitada;
    property QuantidadeAutorizada: UnicodeString read Get_QuantidadeAutorizada write Set_QuantidadeAutorizada;
    property StatusSolicitacaoProcedimento: UnicodeString read Get_StatusSolicitacaoProcedimento write Set_StatusSolicitacaoProcedimento;
    property Glosas: IXMLCt_itemSolicitacao_glosas read Get_Glosas;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_itemSolicitacao_glosas }

  IXMLCt_itemSolicitacao_glosas = interface(IXMLNodeCollection)
    ['{AEC6BAE0-14C9-4DBB-B1A1-56578D4D4A25}']
    { Property Accessors }
    function Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
    { Methods & Properties }
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;
    property MotivoGlosa[Index: Integer]: IXMLCt_motivoGlosa read Get_MotivoGlosa; default;
  end;

{ IXMLCt_statusLote_guias_detalheguiaOdonto }

  IXMLCt_statusLote_guias_detalheguiaOdonto = interface(IXMLNode)
    ['{BA1C38D7-845D-4412-B2A8-DB36D45087E5}']
    { Property Accessors }
    function Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
    function Get_ProcedimentosAnalisados: IXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados;
    { Methods & Properties }
    property IdentificacaoGuia: IXMLCt_cabecalhoGuia read Get_IdentificacaoGuia;
    property ProcedimentosAnalisados: IXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados read Get_ProcedimentosAnalisados;
  end;

{ IXMLCt_statusLote_guias_detalheguiaOdontoList }

  IXMLCt_statusLote_guias_detalheguiaOdontoList = interface(IXMLNodeCollection)
    ['{B19C0A9A-3C4D-4B17-B4A2-12B06E5B7D56}']
    { Methods & Properties }
    function Add: IXMLCt_statusLote_guias_detalheguiaOdonto;
    function Insert(const Index: Integer): IXMLCt_statusLote_guias_detalheguiaOdonto;

    function Get_Item(Index: Integer): IXMLCt_statusLote_guias_detalheguiaOdonto;
    property Items[Index: Integer]: IXMLCt_statusLote_guias_detalheguiaOdonto read Get_Item; default;
  end;

{ IXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados }

  IXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados = interface(IXMLNodeCollection)
    ['{580EA41A-B735-4EA8-89A6-1F5B856CE6AC}']
    { Property Accessors }
    function Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacaoOdonto;
    { Methods & Properties }
    function Add: IXMLCt_itemSolicitacaoOdonto;
    function Insert(const Index: Integer): IXMLCt_itemSolicitacaoOdonto;
    property Procedimento[Index: Integer]: IXMLCt_itemSolicitacaoOdonto read Get_Procedimento; default;
  end;

{ IXMLCt_itemSolicitacaoOdonto }

  IXMLCt_itemSolicitacaoOdonto = interface(IXMLNode)
    ['{70B66A84-1633-4684-B574-318D2894652D}']
    { Property Accessors }
    function Get_IdentificacaoProcedimentos: IXMLCt_tabela;
    function Get_DenteRegiao: IXMLCt_denteRegiao;
    function Get_Face: UnicodeString;
    function Get_QuantidadeSolicitada: UnicodeString;
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_Glosas: IXMLCt_itemSolicitacaoOdonto_glosas;
    function Get_StatusSolicitacaoProcedimento: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_Face(Value: UnicodeString);
    procedure Set_QuantidadeSolicitada(Value: UnicodeString);
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
    procedure Set_StatusSolicitacaoProcedimento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoProcedimentos: IXMLCt_tabela read Get_IdentificacaoProcedimentos;
    property DenteRegiao: IXMLCt_denteRegiao read Get_DenteRegiao;
    property Face: UnicodeString read Get_Face write Set_Face;
    property QuantidadeSolicitada: UnicodeString read Get_QuantidadeSolicitada write Set_QuantidadeSolicitada;
    property QuantidadeAutorizada: UnicodeString read Get_QuantidadeAutorizada write Set_QuantidadeAutorizada;
    property Glosas: IXMLCt_itemSolicitacaoOdonto_glosas read Get_Glosas;
    property StatusSolicitacaoProcedimento: UnicodeString read Get_StatusSolicitacaoProcedimento write Set_StatusSolicitacaoProcedimento;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_itemSolicitacaoOdonto_glosas }

  IXMLCt_itemSolicitacaoOdonto_glosas = interface(IXMLNodeCollection)
    ['{83A2A5CC-A04C-47DA-AB3D-17CC9F812A1F}']
    { Property Accessors }
    function Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
    { Methods & Properties }
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;
    property MotivoGlosa[Index: Integer]: IXMLCt_motivoGlosa read Get_MotivoGlosa; default;
  end;

{ IXMLCt_autorizacaoProcedimento }

  IXMLCt_autorizacaoProcedimento = interface(IXMLNode)
    ['{8B950003-E378-4CC6-8CE0-899B2D1843B2}']
    { Property Accessors }
    function Get_IdentificacaoAutorizacao: IXMLCt_cabecalhoGuia;
    function Get_StatusSolicitacao: UnicodeString;
    function Get_MotivoNegativa: IXMLCt_autorizacaoProcedimento_motivoNegativa;
    function Get_Beneficiario: IXMLCt_beneficiario;
    function Get_PrestadorAutorizado: IXMLCt_contratado;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuiaInternacao;
    function Get_Procedimentos: IXMLCt_autorizacaoProcedimento_procedimentos;
    procedure Set_StatusSolicitacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoAutorizacao: IXMLCt_cabecalhoGuia read Get_IdentificacaoAutorizacao;
    property StatusSolicitacao: UnicodeString read Get_StatusSolicitacao write Set_StatusSolicitacao;
    property MotivoNegativa: IXMLCt_autorizacaoProcedimento_motivoNegativa read Get_MotivoNegativa;
    property Beneficiario: IXMLCt_beneficiario read Get_Beneficiario;
    property PrestadorAutorizado: IXMLCt_contratado read Get_PrestadorAutorizado;
    property DadosAutorizacao: IXMLCt_autorizacaoGuiaInternacao read Get_DadosAutorizacao;
    property Procedimentos: IXMLCt_autorizacaoProcedimento_procedimentos read Get_Procedimentos;
  end;

{ IXMLCt_autorizacaoProcedimento_motivoNegativa }

  IXMLCt_autorizacaoProcedimento_motivoNegativa = interface(IXMLNodeCollection)
    ['{28A34AE7-3C14-4694-9647-466C7C6AD17B}']
    { Property Accessors }
    function Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
    { Methods & Properties }
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;
    property MotivoGlosa[Index: Integer]: IXMLCt_motivoGlosa read Get_MotivoGlosa; default;
  end;

{ IXMLCt_autorizacaoGuia }

  IXMLCt_autorizacaoGuia = interface(IXMLNode)
    ['{6B8A8ECE-8E84-44AB-8CED-987C4E90E17C}']
    { Property Accessors }
    function Get_DataAutorizacao: UnicodeString;
    function Get_SenhaAutorizacao: UnicodeString;
    function Get_ValidadeSenha: UnicodeString;
    procedure Set_DataAutorizacao(Value: UnicodeString);
    procedure Set_SenhaAutorizacao(Value: UnicodeString);
    procedure Set_ValidadeSenha(Value: UnicodeString);
    { Methods & Properties }
    property DataAutorizacao: UnicodeString read Get_DataAutorizacao write Set_DataAutorizacao;
    property SenhaAutorizacao: UnicodeString read Get_SenhaAutorizacao write Set_SenhaAutorizacao;
    property ValidadeSenha: UnicodeString read Get_ValidadeSenha write Set_ValidadeSenha;
  end;

{ IXMLCt_autorizacaoGuiaInternacao }

  IXMLCt_autorizacaoGuiaInternacao = interface(IXMLCt_autorizacaoGuia)
    ['{0548E936-25DD-4DD5-AE98-93888C41223B}']
    { Property Accessors }
    function Get_DiasAutorizado: Integer;
    function Get_DataProvavelAdmisHosp: UnicodeString;
    function Get_TipoAcomodacao: UnicodeString;
    procedure Set_DiasAutorizado(Value: Integer);
    procedure Set_DataProvavelAdmisHosp(Value: UnicodeString);
    procedure Set_TipoAcomodacao(Value: UnicodeString);
    { Methods & Properties }
    property DiasAutorizado: Integer read Get_DiasAutorizado write Set_DiasAutorizado;
    property DataProvavelAdmisHosp: UnicodeString read Get_DataProvavelAdmisHosp write Set_DataProvavelAdmisHosp;
    property TipoAcomodacao: UnicodeString read Get_TipoAcomodacao write Set_TipoAcomodacao;
  end;

{ IXMLCt_autorizacaoProcedimento_procedimentos }

  IXMLCt_autorizacaoProcedimento_procedimentos = interface(IXMLNodeCollection)
    ['{94F54A01-18E4-47CD-BEA5-581AF39EAA60}']
    { Property Accessors }
    function Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacao;
    { Methods & Properties }
    function Add: IXMLCt_itemSolicitacao;
    function Insert(const Index: Integer): IXMLCt_itemSolicitacao;
    property Procedimento[Index: Integer]: IXMLCt_itemSolicitacao read Get_Procedimento; default;
  end;

{ IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico }

  IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico = interface(IXMLCt_autorizacaoProcedimento)
    ['{773B2212-0210-46E4-ADCE-1822473A9337}']
    { Property Accessors }
    function Get_DiariaProrrogacaoAutorizada: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada;
    { Methods & Properties }
    property DiariaProrrogacaoAutorizada: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada read Get_DiariaProrrogacaoAutorizada;
  end;

{ IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList }

  IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList = interface(IXMLNodeCollection)
    ['{0F26EA29-D9C4-4EBC-A982-4619CED0B8A2}']
    { Methods & Properties }
    function Add: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;
    function Insert(const Index: Integer): IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;

    function Get_Item(Index: Integer): IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;
    property Items[Index: Integer]: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico read Get_Item; default;
  end;

{ IXMLCt_diariaProrrogacao }

  IXMLCt_diariaProrrogacao = interface(IXMLNode)
    ['{984CC2E4-81C2-46F9-A373-03DAEC622EE8}']
    { Property Accessors }
    function Get_TipoAcomodacao: UnicodeString;
    function Get_QuantidadeDiaria: UnicodeString;
    procedure Set_TipoAcomodacao(Value: UnicodeString);
    procedure Set_QuantidadeDiaria(Value: UnicodeString);
    { Methods & Properties }
    property TipoAcomodacao: UnicodeString read Get_TipoAcomodacao write Set_TipoAcomodacao;
    property QuantidadeDiaria: UnicodeString read Get_QuantidadeDiaria write Set_QuantidadeDiaria;
  end;

{ IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada }

  IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada = interface(IXMLCt_diariaProrrogacao)
    ['{D2242ECE-6D8C-4002-9CEB-53495A969F2B}']
    { Property Accessors }
    function Get_TipoAcomodacaoAutorizada: UnicodeString;
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_MotivoGlosa: IXMLCt_motivoGlosa;
    procedure Set_TipoAcomodacaoAutorizada(Value: UnicodeString);
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
    { Methods & Properties }
    property TipoAcomodacaoAutorizada: UnicodeString read Get_TipoAcomodacaoAutorizada write Set_TipoAcomodacaoAutorizada;
    property QuantidadeAutorizada: UnicodeString read Get_QuantidadeAutorizada write Set_QuantidadeAutorizada;
    property MotivoGlosa: IXMLCt_motivoGlosa read Get_MotivoGlosa;
  end;

{ IXMLCt_autorizacaoProcedimentoOdonto }

  IXMLCt_autorizacaoProcedimentoOdonto = interface(IXMLNode)
    ['{1D8F2EDF-5815-4F7B-ACBC-40536F323BD4}']
    { Property Accessors }
    function Get_IdentificacaoAutorizacao: IXMLCt_cabecalhoGuia;
    function Get_StatusSolicitacao: UnicodeString;
    function Get_MotivoNegativa: IXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa;
    function Get_Beneficiario: IXMLCt_beneficiario;
    function Get_PrestadorAutorizado: IXMLCt_contratado;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuiaInternacao;
    function Get_Procedimentos: IXMLCt_autorizacaoProcedimentoOdonto_procedimentos;
    function Get_TotalOdonto: IXMLCt_autorizacaoProcedimentoOdonto_totalOdonto;
    procedure Set_StatusSolicitacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoAutorizacao: IXMLCt_cabecalhoGuia read Get_IdentificacaoAutorizacao;
    property StatusSolicitacao: UnicodeString read Get_StatusSolicitacao write Set_StatusSolicitacao;
    property MotivoNegativa: IXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa read Get_MotivoNegativa;
    property Beneficiario: IXMLCt_beneficiario read Get_Beneficiario;
    property PrestadorAutorizado: IXMLCt_contratado read Get_PrestadorAutorizado;
    property DadosAutorizacao: IXMLCt_autorizacaoGuiaInternacao read Get_DadosAutorizacao;
    property Procedimentos: IXMLCt_autorizacaoProcedimentoOdonto_procedimentos read Get_Procedimentos;
    property TotalOdonto: IXMLCt_autorizacaoProcedimentoOdonto_totalOdonto read Get_TotalOdonto;
  end;

{ IXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa }

  IXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa = interface(IXMLNodeCollection)
    ['{E18769BA-2841-4573-A52C-F381ABD70272}']
    { Property Accessors }
    function Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
    { Methods & Properties }
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;
    property MotivoGlosa[Index: Integer]: IXMLCt_motivoGlosa read Get_MotivoGlosa; default;
  end;

{ IXMLCt_autorizacaoProcedimentoOdonto_procedimentos }

  IXMLCt_autorizacaoProcedimentoOdonto_procedimentos = interface(IXMLNodeCollection)
    ['{BDAF2302-505E-44CD-B10A-DEAF9EAF3D6B}']
    { Property Accessors }
    function Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacaoOdonto;
    { Methods & Properties }
    function Add: IXMLCt_itemSolicitacaoOdonto;
    function Insert(const Index: Integer): IXMLCt_itemSolicitacaoOdonto;
    property Procedimento[Index: Integer]: IXMLCt_itemSolicitacaoOdonto read Get_Procedimento; default;
  end;

{ IXMLCt_autorizacaoProcedimentoOdonto_totalOdonto }

  IXMLCt_autorizacaoProcedimentoOdonto_totalOdonto = interface(IXMLNode)
    ['{1CAD37F4-1827-4956-9AE2-045E14F02AB4}']
    { Property Accessors }
    function Get_Totalvalor: UnicodeString;
    function Get_TotalFranquiaCoparticipacao: UnicodeString;
    function Get_TotalquantidadeUS: UnicodeString;
    procedure Set_Totalvalor(Value: UnicodeString);
    procedure Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
    procedure Set_TotalquantidadeUS(Value: UnicodeString);
    { Methods & Properties }
    property Totalvalor: UnicodeString read Get_Totalvalor write Set_Totalvalor;
    property TotalFranquiaCoparticipacao: UnicodeString read Get_TotalFranquiaCoparticipacao write Set_TotalFranquiaCoparticipacao;
    property TotalquantidadeUS: UnicodeString read Get_TotalquantidadeUS write Set_TotalquantidadeUS;
  end;

{ IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto }

  IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto = interface(IXMLCt_autorizacaoProcedimentoOdonto)
    ['{EF8B28D4-4547-49D2-84DE-43015AEBD9D1}']
  end;

{ IXMLCt_situacaoAutorizacao }

  IXMLCt_situacaoAutorizacao = interface(IXMLNodeCollection)
    ['{E20F4CB9-E3BB-4E05-BDD0-51E1BCD8CDFB}']
    { Property Accessors }
    function Get_DadosAutorizacao(Index: Integer): IXMLCt_situacaoAutorizacao_dadosAutorizacao;
    { Methods & Properties }
    function Add: IXMLCt_situacaoAutorizacao_dadosAutorizacao;
    function Insert(const Index: Integer): IXMLCt_situacaoAutorizacao_dadosAutorizacao;
    property DadosAutorizacao[Index: Integer]: IXMLCt_situacaoAutorizacao_dadosAutorizacao read Get_DadosAutorizacao; default;
  end;

{ IXMLCt_situacaoAutorizacao_dadosAutorizacao }

  IXMLCt_situacaoAutorizacao_dadosAutorizacao = interface(IXMLCt_autorizacaoProcedimento)
    ['{D089F820-CBEB-42A8-88FE-09348F910973}']
    { Property Accessors }
    function Get_TotalOdonto: IXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto;
    function Get_Ct_diariaProrrogacaoAutorizada: IXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada;
    { Methods & Properties }
    property TotalOdonto: IXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto read Get_TotalOdonto;
    property Ct_diariaProrrogacaoAutorizada: IXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada read Get_Ct_diariaProrrogacaoAutorizada;
  end;

{ IXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto }

  IXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto = interface(IXMLNode)
    ['{C16E3D69-E739-4810-A4B1-466B015ACFD1}']
    { Property Accessors }
    function Get_Totalvalor: UnicodeString;
    function Get_TotalFranquiaCoparticipacao: UnicodeString;
    function Get_TotalquantidadeUS: UnicodeString;
    procedure Set_Totalvalor(Value: UnicodeString);
    procedure Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
    procedure Set_TotalquantidadeUS(Value: UnicodeString);
    { Methods & Properties }
    property Totalvalor: UnicodeString read Get_Totalvalor write Set_Totalvalor;
    property TotalFranquiaCoparticipacao: UnicodeString read Get_TotalFranquiaCoparticipacao write Set_TotalFranquiaCoparticipacao;
    property TotalquantidadeUS: UnicodeString read Get_TotalquantidadeUS write Set_TotalquantidadeUS;
  end;

{ IXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada }

  IXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada = interface(IXMLCt_diariaProrrogacao)
    ['{E16E394D-BC2A-4266-A896-E807BD673FD4}']
    { Property Accessors }
    function Get_TipoAcomodacaoAutorizada: UnicodeString;
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_MotivoGlosa: IXMLCt_motivoGlosa;
    procedure Set_TipoAcomodacaoAutorizada(Value: UnicodeString);
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
    { Methods & Properties }
    property TipoAcomodacaoAutorizada: UnicodeString read Get_TipoAcomodacaoAutorizada write Set_TipoAcomodacaoAutorizada;
    property QuantidadeAutorizada: UnicodeString read Get_QuantidadeAutorizada write Set_QuantidadeAutorizada;
    property MotivoGlosa: IXMLCt_motivoGlosa read Get_MotivoGlosa;
  end;

{ IXMLCt_retornoElegibilidade }

  IXMLCt_retornoElegibilidade = interface(IXMLNode)
    ['{A5CA6230-47A8-4B37-9613-2D3950930D75}']
    { Property Accessors }
    function Get_DadosOperadora: IXMLCt_identificacaoFontePagadora;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_RespostaSolicitacao: Boolean;
    function Get_MotivoNegacao: IXMLCt_motivoGlosa;
    procedure Set_RespostaSolicitacao(Value: Boolean);
    { Methods & Properties }
    property DadosOperadora: IXMLCt_identificacaoFontePagadora read Get_DadosOperadora;
    property DadosBeneficiario: IXMLCt_beneficiario read Get_DadosBeneficiario;
    property RespostaSolicitacao: Boolean read Get_RespostaSolicitacao write Set_RespostaSolicitacao;
    property MotivoNegacao: IXMLCt_motivoGlosa read Get_MotivoNegacao;
  end;

{ IXMLCt_reciboCancelaGuia }

  IXMLCt_reciboCancelaGuia = interface(IXMLNode)
    ['{CDFFEE69-04F4-4013-8A82-63224C77481F}']
    { Property Accessors }
    function Get_Operadora: IXMLCt_identificacaoFontePagadora;
    function Get_GuiasCanceladas: IXMLCt_reciboCancelaGuia_guiasCanceladas;
    { Methods & Properties }
    property Operadora: IXMLCt_identificacaoFontePagadora read Get_Operadora;
    property GuiasCanceladas: IXMLCt_reciboCancelaGuia_guiasCanceladas read Get_GuiasCanceladas;
  end;

{ IXMLCt_reciboCancelaGuia_guiasCanceladas }

  IXMLCt_reciboCancelaGuia_guiasCanceladas = interface(IXMLNodeCollection)
    ['{BF8E4A70-17BA-4D88-9205-F4206B20DEF7}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
    { Methods & Properties }
    function Add: IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
    function Insert(const Index: Integer): IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
    property DadosGuia[Index: Integer]: IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia read Get_DadosGuia; default;
  end;

{ IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia }

  IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia = interface(IXMLCt_cabecalhoGuia)
    ['{12775BB5-18EF-4B0B-ACED-6F3DD1B06EDC}']
    { Property Accessors }
    function Get_StatusCancelamento: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_StatusCancelamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property StatusCancelamento: UnicodeString read Get_StatusCancelamento write Set_StatusCancelamento;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLMensagemTISS_prestadorParaOperadora }

  IXMLMensagemTISS_prestadorParaOperadora = interface(IXMLNode)
    ['{D0A5BD7F-67D4-41B2-8762-591819DA6D73}']
    { Property Accessors }
    function Get_LoteGuias: IXMLCt_loteGuias;
    function Get_LoteAnexo: IXMLCt_loteAnexo;
    function Get_SolicitacaoDemonstrativoRetorno: IXMLCt_solicitacaoDemonstrativoPagamento;
    function Get_SolicitacaoStatusProtocolo: IXMLCt_solicitacaoStatusProtocolo;
    function Get_SolicitacaoProcedimento: IXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento;
    function Get_SolicitaStatusAutorizacao: IXMLCt_solicitaStatusAutorizacao;
    function Get_VerificaElegibilidade: IXMLCt_solicitaElegibilidade;
    function Get_CancelaGuia: IXMLCt_cancelaGuia;
    { Methods & Properties }
    property LoteGuias: IXMLCt_loteGuias read Get_LoteGuias;
    property LoteAnexo: IXMLCt_loteAnexo read Get_LoteAnexo;
    property SolicitacaoDemonstrativoRetorno: IXMLCt_solicitacaoDemonstrativoPagamento read Get_SolicitacaoDemonstrativoRetorno;
    property SolicitacaoStatusProtocolo: IXMLCt_solicitacaoStatusProtocolo read Get_SolicitacaoStatusProtocolo;
    property SolicitacaoProcedimento: IXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento read Get_SolicitacaoProcedimento;
    property SolicitaStatusAutorizacao: IXMLCt_solicitaStatusAutorizacao read Get_SolicitaStatusAutorizacao;
    property VerificaElegibilidade: IXMLCt_solicitaElegibilidade read Get_VerificaElegibilidade;
    property CancelaGuia: IXMLCt_cancelaGuia read Get_CancelaGuia;
  end;

{ IXMLCt_loteGuias }

  IXMLCt_loteGuias = interface(IXMLNode)
    ['{830330BA-7EE5-4E1C-9C2F-2DBFC90788C1}']
    { Property Accessors }
    function Get_NumeroLote: Integer;
    function Get_Guias: IXMLCt_loteGuias_guias;
    procedure Set_NumeroLote(Value: Integer);
    { Methods & Properties }
    property NumeroLote: Integer read Get_NumeroLote write Set_NumeroLote;
    property Guias: IXMLCt_loteGuias_guias read Get_Guias;
  end;

{ IXMLCt_guias }

  IXMLCt_guias = interface(IXMLNode)
    ['{E583BB14-7A5C-4AEA-A6B8-81590F5C31E8}']
    { Property Accessors }
    function Get_GuiaFaturamento: IXMLCt_guias_guiaFaturamento;
    function Get_GuiaRevisaoGlosa: IXMLCt_guias_guiaRevisaoGlosa;
    { Methods & Properties }
    property GuiaFaturamento: IXMLCt_guias_guiaFaturamento read Get_GuiaFaturamento;
    property GuiaRevisaoGlosa: IXMLCt_guias_guiaRevisaoGlosa read Get_GuiaRevisaoGlosa;
  end;

{ IXMLCt_guias_guiaFaturamento }

  IXMLCt_guias_guiaFaturamento = interface(IXMLNode)
    ['{86D525EF-8793-4757-A225-413FB4B5D4C0}']
    { Property Accessors }
    function Get_GuiaConsulta: IXMLCt_guiaConsultaList;
    function Get_GuiaSP_SADT: IXMLCt_guiaSP_SADTList;
    function Get_GuiaResumoInternacao: IXMLCt_guiaResumoInternacaoList;
    function Get_GuiaHonorarioIndividual: IXMLCt_guiaHonorarioIndividualList;
    function Get_GuiaOdontologia: IXMLCt_guiaOdontologiaList;
    { Methods & Properties }
    property GuiaConsulta: IXMLCt_guiaConsultaList read Get_GuiaConsulta;
    property GuiaSP_SADT: IXMLCt_guiaSP_SADTList read Get_GuiaSP_SADT;
    property GuiaResumoInternacao: IXMLCt_guiaResumoInternacaoList read Get_GuiaResumoInternacao;
    property GuiaHonorarioIndividual: IXMLCt_guiaHonorarioIndividualList read Get_GuiaHonorarioIndividual;
    property GuiaOdontologia: IXMLCt_guiaOdontologiaList read Get_GuiaOdontologia;
  end;

{ IXMLCt_guiaConsulta }

  IXMLCt_guiaConsulta = interface(IXMLNode)
    ['{05CAD05F-DA2E-4115-BE06-025C941DE9D0}']
    { Property Accessors }
    function Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
    function Get_Beneficiario: IXMLCt_beneficiario;
    function Get_DadosContratado: IXMLCt_contratado;
    function Get_ProfissionalExecutante: IXMLCt_identificacaoProfissional;
    function Get_HipoteseDiagnostica: IXMLCt_guiaConsulta_hipoteseDiagnostica;
    function Get_DadosAtendimento: IXMLCt_guiaConsulta_dadosAtendimento;
    function Get_Observacao: UnicodeString;
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoGuia: IXMLCt_cabecalhoGuia read Get_IdentificacaoGuia;
    property Beneficiario: IXMLCt_beneficiario read Get_Beneficiario;
    property DadosContratado: IXMLCt_contratado read Get_DadosContratado;
    property ProfissionalExecutante: IXMLCt_identificacaoProfissional read Get_ProfissionalExecutante;
    property HipoteseDiagnostica: IXMLCt_guiaConsulta_hipoteseDiagnostica read Get_HipoteseDiagnostica;
    property DadosAtendimento: IXMLCt_guiaConsulta_dadosAtendimento read Get_DadosAtendimento;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaConsultaList }

  IXMLCt_guiaConsultaList = interface(IXMLNodeCollection)
    ['{8B2762BD-3747-4AAC-B2F2-569CA121F78F}']
    { Methods & Properties }
    function Add: IXMLCt_guiaConsulta;
    function Insert(const Index: Integer): IXMLCt_guiaConsulta;

    function Get_Item(Index: Integer): IXMLCt_guiaConsulta;
    property Items[Index: Integer]: IXMLCt_guiaConsulta read Get_Item; default;
  end;

{ IXMLCt_identificacaoProfissional }

  IXMLCt_identificacaoProfissional = interface(IXMLNode)
    ['{FDEDB91E-E6E6-4939-947D-84EE5B7D7F0E}']
    { Property Accessors }
    function Get_NomeProfissional: UnicodeString;
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    function Get_Cbos: UnicodeString;
    procedure Set_NomeProfissional(Value: UnicodeString);
    procedure Set_Cbos(Value: UnicodeString);
    { Methods & Properties }
    property NomeProfissional: UnicodeString read Get_NomeProfissional write Set_NomeProfissional;
    property ConselhoProfissional: IXMLCt_conselhoProfissional read Get_ConselhoProfissional;
    property Cbos: UnicodeString read Get_Cbos write Set_Cbos;
  end;

{ IXMLCt_conselhoProfissional }

  IXMLCt_conselhoProfissional = interface(IXMLNode)
    ['{626DFF70-36BD-47C5-B3C8-0E88AF49A8C4}']
    { Property Accessors }
    function Get_SiglaConselho: UnicodeString;
    function Get_NumeroConselho: UnicodeString;
    function Get_UfConselho: UnicodeString;
    procedure Set_SiglaConselho(Value: UnicodeString);
    procedure Set_NumeroConselho(Value: UnicodeString);
    procedure Set_UfConselho(Value: UnicodeString);
    { Methods & Properties }
    property SiglaConselho: UnicodeString read Get_SiglaConselho write Set_SiglaConselho;
    property NumeroConselho: UnicodeString read Get_NumeroConselho write Set_NumeroConselho;
    property UfConselho: UnicodeString read Get_UfConselho write Set_UfConselho;
  end;

{ IXMLCt_diagnosticoAtendimento }

  IXMLCt_diagnosticoAtendimento = interface(IXMLNode)
    ['{7FD25126-EB77-4ECC-8DA6-CD75CFFAA5DA}']
    { Property Accessors }
    function Get_CID: IXMLCt_diagnostico;
    function Get_TipoDoenca: UnicodeString;
    function Get_TempoReferidoEvolucaoDoenca: IXMLCt_tempoEvolucaoDoenca;
    function Get_IndicadorAcidente: UnicodeString;
    procedure Set_TipoDoenca(Value: UnicodeString);
    procedure Set_IndicadorAcidente(Value: UnicodeString);
    { Methods & Properties }
    property CID: IXMLCt_diagnostico read Get_CID;
    property TipoDoenca: UnicodeString read Get_TipoDoenca write Set_TipoDoenca;
    property TempoReferidoEvolucaoDoenca: IXMLCt_tempoEvolucaoDoenca read Get_TempoReferidoEvolucaoDoenca;
    property IndicadorAcidente: UnicodeString read Get_IndicadorAcidente write Set_IndicadorAcidente;
  end;

{ IXMLCt_diagnostico }

  IXMLCt_diagnostico = interface(IXMLNode)
    ['{81FF2986-4372-42E2-A75B-5CA71292FCDC}']
    { Property Accessors }
    function Get_NomeTabela: UnicodeString;
    function Get_CodigoDiagnostico: UnicodeString;
    function Get_DescricaoDiagnostico: UnicodeString;
    procedure Set_NomeTabela(Value: UnicodeString);
    procedure Set_CodigoDiagnostico(Value: UnicodeString);
    procedure Set_DescricaoDiagnostico(Value: UnicodeString);
    { Methods & Properties }
    property NomeTabela: UnicodeString read Get_NomeTabela write Set_NomeTabela;
    property CodigoDiagnostico: UnicodeString read Get_CodigoDiagnostico write Set_CodigoDiagnostico;
    property DescricaoDiagnostico: UnicodeString read Get_DescricaoDiagnostico write Set_DescricaoDiagnostico;
  end;

{ IXMLCt_tempoEvolucaoDoenca }

  IXMLCt_tempoEvolucaoDoenca = interface(IXMLNode)
    ['{1CA8CA40-1421-413F-AE1B-1B6798CE2D2A}']
    { Property Accessors }
    function Get_Valor: Integer;
    function Get_UnidadeTempo: UnicodeString;
    procedure Set_Valor(Value: Integer);
    procedure Set_UnidadeTempo(Value: UnicodeString);
    { Methods & Properties }
    property Valor: Integer read Get_Valor write Set_Valor;
    property UnidadeTempo: UnicodeString read Get_UnidadeTempo write Set_UnidadeTempo;
  end;

{ IXMLCt_guiaConsulta_hipoteseDiagnostica }

  IXMLCt_guiaConsulta_hipoteseDiagnostica = interface(IXMLCt_diagnosticoAtendimento)
    ['{E2872C4D-C44F-4BB2-A76F-3FD3A1D5DD70}']
    { Property Accessors }
    function Get_DiagnosticoSecundario: IXMLCt_diagnosticosSecundarios;
    { Methods & Properties }
    property DiagnosticoSecundario: IXMLCt_diagnosticosSecundarios read Get_DiagnosticoSecundario;
  end;

{ IXMLCt_diagnosticosSecundarios }

  IXMLCt_diagnosticosSecundarios = interface(IXMLNodeCollection)
    ['{11B805A0-1EA0-4973-8B89-ACC724D61203}']
    { Property Accessors }
    function Get_CID(Index: Integer): IXMLCt_diagnostico;
    { Methods & Properties }
    function Add: IXMLCt_diagnostico;
    function Insert(const Index: Integer): IXMLCt_diagnostico;
    property CID[Index: Integer]: IXMLCt_diagnostico read Get_CID; default;
  end;

{ IXMLCt_atendimentoConsulta }

  IXMLCt_atendimentoConsulta = interface(IXMLNode)
    ['{68BBDE6B-00BA-47E9-966B-30B751C40793}']
    { Property Accessors }
    function Get_DataAtendimento: UnicodeString;
    function Get_Procedimento: IXMLCt_atendimentoConsulta_procedimento;
    function Get_TipoConsulta: UnicodeString;
    function Get_TipoSaida: UnicodeString;
    procedure Set_DataAtendimento(Value: UnicodeString);
    procedure Set_TipoConsulta(Value: UnicodeString);
    procedure Set_TipoSaida(Value: UnicodeString);
    { Methods & Properties }
    property DataAtendimento: UnicodeString read Get_DataAtendimento write Set_DataAtendimento;
    property Procedimento: IXMLCt_atendimentoConsulta_procedimento read Get_Procedimento;
    property TipoConsulta: UnicodeString read Get_TipoConsulta write Set_TipoConsulta;
    property TipoSaida: UnicodeString read Get_TipoSaida write Set_TipoSaida;
  end;

{ IXMLCt_atendimentoConsulta_procedimento }

  IXMLCt_atendimentoConsulta_procedimento = interface(IXMLNode)
    ['{1296D67F-8CBE-4B31-8A82-95CCF73ADB8A}']
    { Property Accessors }
    function Get_CodigoTabela: UnicodeString;
    function Get_CodigoProcedimento: UnicodeString;
    procedure Set_CodigoTabela(Value: UnicodeString);
    procedure Set_CodigoProcedimento(Value: UnicodeString);
    { Methods & Properties }
    property CodigoTabela: UnicodeString read Get_CodigoTabela write Set_CodigoTabela;
    property CodigoProcedimento: UnicodeString read Get_CodigoProcedimento write Set_CodigoProcedimento;
  end;

{ IXMLCt_guiaConsulta_dadosAtendimento }

  IXMLCt_guiaConsulta_dadosAtendimento = interface(IXMLCt_atendimentoConsulta)
    ['{516B91FA-9DAB-4E3F-9D0D-45CA7824CD77}']
  end;

{ IXMLCt_guiaSP_SADT }

  IXMLCt_guiaSP_SADT = interface(IXMLNode)
    ['{A2B6FAA3-A68B-482C-8E4D-308070A95E70}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSADTSP: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_DadosSolicitante: IXMLCt_solicitante;
    function Get_PrestadorExecutante: IXMLCt_guiaSP_SADT_prestadorExecutante;
    function Get_IndicacaoClinica: UnicodeString;
    function Get_CaraterAtendimento: UnicodeString;
    function Get_DataHoraAtendimento: UnicodeString;
    function Get_DiagnosticoAtendimento: IXMLCt_diagnosticoAtendimento;
    function Get_TipoSaida: UnicodeString;
    function Get_TipoAtendimento: UnicodeString;
    function Get_ProcedimentosRealizados: IXMLCt_procedimentoRealizadoEquipe;
    function Get_OutrasDespesas: IXMLCt_outrasDespesas;
    function Get_OPMUtilizada: IXMLCt_OPMUtilizada;
    function Get_ValorTotal: IXMLCt_valorTotalServicos;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_IndicacaoClinica(Value: UnicodeString);
    procedure Set_CaraterAtendimento(Value: UnicodeString);
    procedure Set_DataHoraAtendimento(Value: UnicodeString);
    procedure Set_TipoSaida(Value: UnicodeString);
    procedure Set_TipoAtendimento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoGuiaSADTSP: IXMLCt_cabecalhoGuia read Get_IdentificacaoGuiaSADTSP;
    property NumeroGuiaPrincipal: UnicodeString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosAutorizacao: IXMLCt_autorizacaoGuia read Get_DadosAutorizacao;
    property DadosBeneficiario: IXMLCt_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: IXMLCt_solicitante read Get_DadosSolicitante;
    property PrestadorExecutante: IXMLCt_guiaSP_SADT_prestadorExecutante read Get_PrestadorExecutante;
    property IndicacaoClinica: UnicodeString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property CaraterAtendimento: UnicodeString read Get_CaraterAtendimento write Set_CaraterAtendimento;
    property DataHoraAtendimento: UnicodeString read Get_DataHoraAtendimento write Set_DataHoraAtendimento;
    property DiagnosticoAtendimento: IXMLCt_diagnosticoAtendimento read Get_DiagnosticoAtendimento;
    property TipoSaida: UnicodeString read Get_TipoSaida write Set_TipoSaida;
    property TipoAtendimento: UnicodeString read Get_TipoAtendimento write Set_TipoAtendimento;
    property ProcedimentosRealizados: IXMLCt_procedimentoRealizadoEquipe read Get_ProcedimentosRealizados;
    property OutrasDespesas: IXMLCt_outrasDespesas read Get_OutrasDespesas;
    property OPMUtilizada: IXMLCt_OPMUtilizada read Get_OPMUtilizada;
    property ValorTotal: IXMLCt_valorTotalServicos read Get_ValorTotal;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaSP_SADTList }

  IXMLCt_guiaSP_SADTList = interface(IXMLNodeCollection)
    ['{BAB39EB8-34C6-4F52-8806-6EEB5D76E66D}']
    { Methods & Properties }
    function Add: IXMLCt_guiaSP_SADT;
    function Insert(const Index: Integer): IXMLCt_guiaSP_SADT;

    function Get_Item(Index: Integer): IXMLCt_guiaSP_SADT;
    property Items[Index: Integer]: IXMLCt_guiaSP_SADT read Get_Item; default;
  end;

{ IXMLCt_solicitante }

  IXMLCt_solicitante = interface(IXMLNode)
    ['{A04AB95F-491D-4EBE-BDE5-8C2C77B5860B}']
    { Property Accessors }
    function Get_Contratado: IXMLCt_contratadoSolicitante;
    function Get_Profissional: IXMLCt_identificacaoProfissional;
    { Methods & Properties }
    property Contratado: IXMLCt_contratadoSolicitante read Get_Contratado;
    property Profissional: IXMLCt_identificacaoProfissional read Get_Profissional;
  end;

{ IXMLCt_contratadoSolicitante }

  IXMLCt_contratadoSolicitante = interface(IXMLNode)
    ['{3DE35544-F5D8-4D16-87CC-6B0F66D2F0F1}']
    { Property Accessors }
    function Get_Identificacao: IXMLCt_identificacaoPrestador;
    function Get_NomeContratado: UnicodeString;
    function Get_EnderecoContratado: IXMLCt_endereco;
    function Get_NumeroCNES: UnicodeString;
    procedure Set_NomeContratado(Value: UnicodeString);
    procedure Set_NumeroCNES(Value: UnicodeString);
    { Methods & Properties }
    property Identificacao: IXMLCt_identificacaoPrestador read Get_Identificacao;
    property NomeContratado: UnicodeString read Get_NomeContratado write Set_NomeContratado;
    property EnderecoContratado: IXMLCt_endereco read Get_EnderecoContratado;
    property NumeroCNES: UnicodeString read Get_NumeroCNES write Set_NumeroCNES;
  end;

{ IXMLCt_identificacaoPrestador }

  IXMLCt_identificacaoPrestador = interface(IXMLNode)
    ['{1852E817-D11B-4006-BAE6-98169730DE95}']
    { Property Accessors }
    function Get_CNPJ: UnicodeString;
    function Get_Cpf: UnicodeString;
    function Get_CodigoPrestadorNaOperadora: UnicodeString;
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_Cpf(Value: UnicodeString);
    procedure Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
    { Methods & Properties }
    property CNPJ: UnicodeString read Get_CNPJ write Set_CNPJ;
    property Cpf: UnicodeString read Get_Cpf write Set_Cpf;
    property CodigoPrestadorNaOperadora: UnicodeString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
    property ConselhoProfissional: IXMLCt_conselhoProfissional read Get_ConselhoProfissional;
  end;

{ IXMLCt_guiaSP_SADT_prestadorExecutante }

  IXMLCt_guiaSP_SADT_prestadorExecutante = interface(IXMLCt_contratado)
    ['{FF4E5E5F-BC90-495B-BE2A-CBE3C455A28B}']
    { Property Accessors }
    function Get_ProfissionalExecutanteCompl: IXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl;
    { Methods & Properties }
    property ProfissionalExecutanteCompl: IXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl read Get_ProfissionalExecutanteCompl;
  end;

{ IXMLCt_profissionalExecutante }

  IXMLCt_profissionalExecutante = interface(IXMLNode)
    ['{6ABE63FC-FC21-4EF1-B81A-8F9316318D3F}']
    { Property Accessors }
    function Get_NomeExecutante: UnicodeString;
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    function Get_CodigoCBOS: UnicodeString;
    procedure Set_NomeExecutante(Value: UnicodeString);
    procedure Set_CodigoCBOS(Value: UnicodeString);
    { Methods & Properties }
    property NomeExecutante: UnicodeString read Get_NomeExecutante write Set_NomeExecutante;
    property ConselhoProfissional: IXMLCt_conselhoProfissional read Get_ConselhoProfissional;
    property CodigoCBOS: UnicodeString read Get_CodigoCBOS write Set_CodigoCBOS;
  end;

{ IXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl }

  IXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl = interface(IXMLCt_profissionalExecutante)
    ['{FFC022EC-0B06-45D1-A314-614F6E95E20A}']
    { Property Accessors }
    function Get_CodigoProfissionalCompl: IXMLCt_identificacaoProfissionalCompl;
    { Methods & Properties }
    property CodigoProfissionalCompl: IXMLCt_identificacaoProfissionalCompl read Get_CodigoProfissionalCompl;
  end;

{ IXMLCt_identificacaoProfissionalCompl }

  IXMLCt_identificacaoProfissionalCompl = interface(IXMLNode)
    ['{F6BA7C89-60DC-4FB3-ACD8-53A8A655DE0C}']
    { Property Accessors }
    function Get_Cpf: UnicodeString;
    function Get_CodigoPrestadorNaOperadora: UnicodeString;
    procedure Set_Cpf(Value: UnicodeString);
    procedure Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
    { Methods & Properties }
    property Cpf: UnicodeString read Get_Cpf write Set_Cpf;
    property CodigoPrestadorNaOperadora: UnicodeString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
  end;

{ IXMLCt_procedimentoRealizadoEquipe }

  IXMLCt_procedimentoRealizadoEquipe = interface(IXMLNodeCollection)
    ['{046D61FF-2381-45F4-A9DA-D9BE7928084C}']
    { Property Accessors }
    function Get_Procedimentos(Index: Integer): IXMLCt_procedimentoRealizadoEquipe_procedimentos;
    { Methods & Properties }
    function Add: IXMLCt_procedimentoRealizadoEquipe_procedimentos;
    function Insert(const Index: Integer): IXMLCt_procedimentoRealizadoEquipe_procedimentos;
    property Procedimentos[Index: Integer]: IXMLCt_procedimentoRealizadoEquipe_procedimentos read Get_Procedimentos; default;
  end;

{ IXMLCt_procedimentoRealizadoEquipe_procedimentos }

  IXMLCt_procedimentoRealizadoEquipe_procedimentos = interface(IXMLNode)
    ['{F0862BED-371C-45ED-847C-8AD3CB5F2411}']
    { Property Accessors }
    function Get_Equipe: IXMLCt_identificacaoEquipe;
    function Get_Procedimento: IXMLCt_tabela;
    function Get_Data: UnicodeString;
    function Get_HoraInicio: UnicodeString;
    function Get_HoraFim: UnicodeString;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: UnicodeString;
    function Get_TecnicaUtilizada: UnicodeString;
    function Get_ReducaoAcrescimo: UnicodeString;
    function Get_Valor: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    procedure Set_Data(Value: UnicodeString);
    procedure Set_HoraInicio(Value: UnicodeString);
    procedure Set_HoraFim(Value: UnicodeString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: UnicodeString);
    procedure Set_TecnicaUtilizada(Value: UnicodeString);
    procedure Set_ReducaoAcrescimo(Value: UnicodeString);
    procedure Set_Valor(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    { Methods & Properties }
    property Equipe: IXMLCt_identificacaoEquipe read Get_Equipe;
    property Procedimento: IXMLCt_tabela read Get_Procedimento;
    property Data: UnicodeString read Get_Data write Set_Data;
    property HoraInicio: UnicodeString read Get_HoraInicio write Set_HoraInicio;
    property HoraFim: UnicodeString read Get_HoraFim write Set_HoraFim;
    property QuantidadeRealizada: Integer read Get_QuantidadeRealizada write Set_QuantidadeRealizada;
    property ViaAcesso: UnicodeString read Get_ViaAcesso write Set_ViaAcesso;
    property TecnicaUtilizada: UnicodeString read Get_TecnicaUtilizada write Set_TecnicaUtilizada;
    property ReducaoAcrescimo: UnicodeString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Valor: UnicodeString read Get_Valor write Set_Valor;
    property ValorTotal: UnicodeString read Get_ValorTotal write Set_ValorTotal;
  end;

{ IXMLCt_identificacaoEquipe }

  IXMLCt_identificacaoEquipe = interface(IXMLNodeCollection)
    ['{B3541C9F-3B19-4A5E-B546-1A0E8ABEE7B0}']
    { Property Accessors }
    function Get_MembroEquipe(Index: Integer): IXMLCt_identificacaoEquipe_membroEquipe;
    { Methods & Properties }
    function Add: IXMLCt_identificacaoEquipe_membroEquipe;
    function Insert(const Index: Integer): IXMLCt_identificacaoEquipe_membroEquipe;
    property MembroEquipe[Index: Integer]: IXMLCt_identificacaoEquipe_membroEquipe read Get_MembroEquipe; default;
  end;

{ IXMLCt_identificacaoEquipe_membroEquipe }

  IXMLCt_identificacaoEquipe_membroEquipe = interface(IXMLNode)
    ['{93C2895B-A4D0-4732-8CF2-6BDBD3342BB3}']
    { Property Accessors }
    function Get_CodigoProfissional: IXMLCt_identificacaoPrestadorEquipe;
    function Get_IdentificacaoProfissional: IXMLCt_profissionalExecutante;
    function Get_Cpf: UnicodeString;
    function Get_PosicaoProfissional: UnicodeString;
    procedure Set_Cpf(Value: UnicodeString);
    procedure Set_PosicaoProfissional(Value: UnicodeString);
    { Methods & Properties }
    property CodigoProfissional: IXMLCt_identificacaoPrestadorEquipe read Get_CodigoProfissional;
    property IdentificacaoProfissional: IXMLCt_profissionalExecutante read Get_IdentificacaoProfissional;
    property Cpf: UnicodeString read Get_Cpf write Set_Cpf;
    property PosicaoProfissional: UnicodeString read Get_PosicaoProfissional write Set_PosicaoProfissional;
  end;

{ IXMLCt_identificacaoPrestadorEquipe }

  IXMLCt_identificacaoPrestadorEquipe = interface(IXMLNode)
    ['{8BB628FE-C4E3-4CCC-BD8B-687FD714AD50}']
    { Property Accessors }
    function Get_Cpf: UnicodeString;
    function Get_CodigoPrestadorNaOperadora: UnicodeString;
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    procedure Set_Cpf(Value: UnicodeString);
    procedure Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
    { Methods & Properties }
    property Cpf: UnicodeString read Get_Cpf write Set_Cpf;
    property CodigoPrestadorNaOperadora: UnicodeString read Get_CodigoPrestadorNaOperadora write Set_CodigoPrestadorNaOperadora;
    property ConselhoProfissional: IXMLCt_conselhoProfissional read Get_ConselhoProfissional;
  end;

{ IXMLCt_outrasDespesas }

  IXMLCt_outrasDespesas = interface(IXMLNode)
    ['{753A86E1-1782-4C6C-8D5C-73FB29DE28D8}']
    { Property Accessors }
    function Get_Despesa: IXMLCt_outrasDespesas_despesaList;
    function Get_TotalGeralOutrasDespesas: UnicodeString;
    procedure Set_TotalGeralOutrasDespesas(Value: UnicodeString);
    { Methods & Properties }
    property Despesa: IXMLCt_outrasDespesas_despesaList read Get_Despesa;
    property TotalGeralOutrasDespesas: UnicodeString read Get_TotalGeralOutrasDespesas write Set_TotalGeralOutrasDespesas;
  end;

{ IXMLCt_outrasDespesas_despesa }

  IXMLCt_outrasDespesas_despesa = interface(IXMLNode)
    ['{8AD99975-379B-4B01-9192-1657C7F8920C}']
    { Property Accessors }
    function Get_IdentificadorDespesa: IXMLCt_tabela;
    function Get_TipoDespesa: UnicodeString;
    function Get_DataRealizacao: UnicodeString;
    function Get_HoraInicial: UnicodeString;
    function Get_HoraFinal: UnicodeString;
    function Get_ReducaoAcrescimo: UnicodeString;
    function Get_Quantidade: UnicodeString;
    function Get_ValorUnitario: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    procedure Set_TipoDespesa(Value: UnicodeString);
    procedure Set_DataRealizacao(Value: UnicodeString);
    procedure Set_HoraInicial(Value: UnicodeString);
    procedure Set_HoraFinal(Value: UnicodeString);
    procedure Set_ReducaoAcrescimo(Value: UnicodeString);
    procedure Set_Quantidade(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    { Methods & Properties }
    property IdentificadorDespesa: IXMLCt_tabela read Get_IdentificadorDespesa;
    property TipoDespesa: UnicodeString read Get_TipoDespesa write Set_TipoDespesa;
    property DataRealizacao: UnicodeString read Get_DataRealizacao write Set_DataRealizacao;
    property HoraInicial: UnicodeString read Get_HoraInicial write Set_HoraInicial;
    property HoraFinal: UnicodeString read Get_HoraFinal write Set_HoraFinal;
    property ReducaoAcrescimo: UnicodeString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Quantidade: UnicodeString read Get_Quantidade write Set_Quantidade;
    property ValorUnitario: UnicodeString read Get_ValorUnitario write Set_ValorUnitario;
    property ValorTotal: UnicodeString read Get_ValorTotal write Set_ValorTotal;
  end;

{ IXMLCt_outrasDespesas_despesaList }

  IXMLCt_outrasDespesas_despesaList = interface(IXMLNodeCollection)
    ['{A19A4491-6919-4749-96A5-F7E516014573}']
    { Methods & Properties }
    function Add: IXMLCt_outrasDespesas_despesa;
    function Insert(const Index: Integer): IXMLCt_outrasDespesas_despesa;

    function Get_Item(Index: Integer): IXMLCt_outrasDespesas_despesa;
    property Items[Index: Integer]: IXMLCt_outrasDespesas_despesa read Get_Item; default;
  end;

{ IXMLCt_OPMUtilizada }

  IXMLCt_OPMUtilizada = interface(IXMLNode)
    ['{4F877A42-449F-4EB1-B279-37FBF1737DE3}']
    { Property Accessors }
    function Get_OPM: IXMLCt_OPMUtilizada_OPM;
    function Get_ValorTotalOPM: UnicodeString;
    procedure Set_ValorTotalOPM(Value: UnicodeString);
    { Methods & Properties }
    property OPM: IXMLCt_OPMUtilizada_OPM read Get_OPM;
    property ValorTotalOPM: UnicodeString read Get_ValorTotalOPM write Set_ValorTotalOPM;
  end;

{ IXMLCt_OPMUtilizada_OPM }

  IXMLCt_OPMUtilizada_OPM = interface(IXMLNodeCollection)
    ['{FDA784EB-D26E-4B84-B002-38F1D27086D3}']
    { Property Accessors }
    function Get_IdentificacaoOPM(Index: Integer): IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
    { Methods & Properties }
    function Add: IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
    function Insert(const Index: Integer): IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
    property IdentificacaoOPM[Index: Integer]: IXMLCt_OPMUtilizada_OPM_identificacaoOPM read Get_IdentificacaoOPM; default;
  end;

{ IXMLCt_OPMUtilizada_OPM_identificacaoOPM }

  IXMLCt_OPMUtilizada_OPM_identificacaoOPM = interface(IXMLNode)
    ['{FC947DE1-91CE-475F-9593-1F9E1BA3DC2C}']
    { Property Accessors }
    function Get_OPM: IXMLCt_tabela;
    function Get_Quantidade: UnicodeString;
    function Get_CodigoBarra: UnicodeString;
    function Get_ValorUnitario: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    procedure Set_Quantidade(Value: UnicodeString);
    procedure Set_CodigoBarra(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    { Methods & Properties }
    property OPM: IXMLCt_tabela read Get_OPM;
    property Quantidade: UnicodeString read Get_Quantidade write Set_Quantidade;
    property CodigoBarra: UnicodeString read Get_CodigoBarra write Set_CodigoBarra;
    property ValorUnitario: UnicodeString read Get_ValorUnitario write Set_ValorUnitario;
    property ValorTotal: UnicodeString read Get_ValorTotal write Set_ValorTotal;
  end;

{ IXMLCt_valorTotalServicos }

  IXMLCt_valorTotalServicos = interface(IXMLNode)
    ['{3BE474B9-5089-4249-A7DE-01DA49FA1133}']
    { Property Accessors }
    function Get_ServicosExecutados: UnicodeString;
    function Get_Diarias: UnicodeString;
    function Get_Taxas: UnicodeString;
    function Get_Materiais: UnicodeString;
    function Get_Medicamentos: UnicodeString;
    function Get_Gases: UnicodeString;
    function Get_TotalGeral: UnicodeString;
    procedure Set_ServicosExecutados(Value: UnicodeString);
    procedure Set_Diarias(Value: UnicodeString);
    procedure Set_Taxas(Value: UnicodeString);
    procedure Set_Materiais(Value: UnicodeString);
    procedure Set_Medicamentos(Value: UnicodeString);
    procedure Set_Gases(Value: UnicodeString);
    procedure Set_TotalGeral(Value: UnicodeString);
    { Methods & Properties }
    property ServicosExecutados: UnicodeString read Get_ServicosExecutados write Set_ServicosExecutados;
    property Diarias: UnicodeString read Get_Diarias write Set_Diarias;
    property Taxas: UnicodeString read Get_Taxas write Set_Taxas;
    property Materiais: UnicodeString read Get_Materiais write Set_Materiais;
    property Medicamentos: UnicodeString read Get_Medicamentos write Set_Medicamentos;
    property Gases: UnicodeString read Get_Gases write Set_Gases;
    property TotalGeral: UnicodeString read Get_TotalGeral write Set_TotalGeral;
  end;

{ IXMLCt_guiaResumoInternacao }

  IXMLCt_guiaResumoInternacao = interface(IXMLNode)
    ['{162D9524-9BD3-40BD-A206-C1CA4D73D08D}']
    { Property Accessors }
    function Get_IdentificacaoGuiaInternacao: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: UnicodeString;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_IdentificacaoExecutante: IXMLCt_contratado;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
    function Get_CaraterInternacao: UnicodeString;
    function Get_Acomodacao: UnicodeString;
    function Get_DataHoraInternacao: UnicodeString;
    function Get_DataHoraSaidaInternacao: UnicodeString;
    function Get_TipoInternacao: UnicodeString;
    function Get_RegimeInternacao: UnicodeString;
    function Get_InternacaoObstetrica: IXMLCt_internacaoObstetrica;
    function Get_ObitoNeonatal: IXMLCt_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: IXMLCt_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: IXMLCt_procedimentoRealizadoEquipe;
    function Get_OPMUtilizadas: IXMLCt_OPMUtilizada;
    function Get_OutrasDespesas: IXMLCt_outrasDespesas;
    function Get_TipoFaturamento: UnicodeString;
    function Get_ValorTotal: IXMLCt_valorTotalServicos;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaSolicitacao(Value: UnicodeString);
    procedure Set_CaraterInternacao(Value: UnicodeString);
    procedure Set_Acomodacao(Value: UnicodeString);
    procedure Set_DataHoraInternacao(Value: UnicodeString);
    procedure Set_DataHoraSaidaInternacao(Value: UnicodeString);
    procedure Set_TipoInternacao(Value: UnicodeString);
    procedure Set_RegimeInternacao(Value: UnicodeString);
    procedure Set_TipoFaturamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoGuiaInternacao: IXMLCt_cabecalhoGuia read Get_IdentificacaoGuiaInternacao;
    property NumeroGuiaSolicitacao: UnicodeString read Get_NumeroGuiaSolicitacao write Set_NumeroGuiaSolicitacao;
    property DadosBeneficiario: IXMLCt_beneficiario read Get_DadosBeneficiario;
    property IdentificacaoExecutante: IXMLCt_contratado read Get_IdentificacaoExecutante;
    property DadosAutorizacao: IXMLCt_autorizacaoGuia read Get_DadosAutorizacao;
    property CaraterInternacao: UnicodeString read Get_CaraterInternacao write Set_CaraterInternacao;
    property Acomodacao: UnicodeString read Get_Acomodacao write Set_Acomodacao;
    property DataHoraInternacao: UnicodeString read Get_DataHoraInternacao write Set_DataHoraInternacao;
    property DataHoraSaidaInternacao: UnicodeString read Get_DataHoraSaidaInternacao write Set_DataHoraSaidaInternacao;
    property TipoInternacao: UnicodeString read Get_TipoInternacao write Set_TipoInternacao;
    property RegimeInternacao: UnicodeString read Get_RegimeInternacao write Set_RegimeInternacao;
    property InternacaoObstetrica: IXMLCt_internacaoObstetrica read Get_InternacaoObstetrica;
    property ObitoNeonatal: IXMLCt_obitoNeonatal read Get_ObitoNeonatal;
    property DiagnosticosSaidaInternacao: IXMLCt_diagnosticoSaidaInternacao read Get_DiagnosticosSaidaInternacao;
    property ProcedimentosRealizados: IXMLCt_procedimentoRealizadoEquipe read Get_ProcedimentosRealizados;
    property OPMUtilizadas: IXMLCt_OPMUtilizada read Get_OPMUtilizadas;
    property OutrasDespesas: IXMLCt_outrasDespesas read Get_OutrasDespesas;
    property TipoFaturamento: UnicodeString read Get_TipoFaturamento write Set_TipoFaturamento;
    property ValorTotal: IXMLCt_valorTotalServicos read Get_ValorTotal;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaResumoInternacaoList }

  IXMLCt_guiaResumoInternacaoList = interface(IXMLNodeCollection)
    ['{6949AE15-AC21-4CA2-A927-409BF37DBA40}']
    { Methods & Properties }
    function Add: IXMLCt_guiaResumoInternacao;
    function Insert(const Index: Integer): IXMLCt_guiaResumoInternacao;

    function Get_Item(Index: Integer): IXMLCt_guiaResumoInternacao;
    property Items[Index: Integer]: IXMLCt_guiaResumoInternacao read Get_Item; default;
  end;

{ IXMLCt_internacaoObstetrica }

  IXMLCt_internacaoObstetrica = interface(IXMLNode)
    ['{AD0ECB60-2198-47F3-92BE-E563CDF75CA9}']
    { Property Accessors }
    function Get_EmGestacao: Boolean;
    function Get_Aborto: Boolean;
    function Get_TranstornoMaternoRelGravidez: Boolean;
    function Get_ComplicacaoPeriodoPuerperio: Boolean;
    function Get_AtendimentoRNSalaParto: Boolean;
    function Get_ComplicacaoNeonatal: Boolean;
    function Get_BaixoPeso: Boolean;
    function Get_PartoCesareo: Boolean;
    function Get_PartoNormal: Boolean;
    function Get_DeclaracoesNascidosVivos: IXMLCt_numeroDN;
    function Get_QtdNascidosVivosTermo: Integer;
    function Get_QtdNascidosMortos: Integer;
    function Get_QtdVivosPrematuros: Integer;
    function Get_ObitoMulher: UnicodeString;
    procedure Set_EmGestacao(Value: Boolean);
    procedure Set_Aborto(Value: Boolean);
    procedure Set_TranstornoMaternoRelGravidez(Value: Boolean);
    procedure Set_ComplicacaoPeriodoPuerperio(Value: Boolean);
    procedure Set_AtendimentoRNSalaParto(Value: Boolean);
    procedure Set_ComplicacaoNeonatal(Value: Boolean);
    procedure Set_BaixoPeso(Value: Boolean);
    procedure Set_PartoCesareo(Value: Boolean);
    procedure Set_PartoNormal(Value: Boolean);
    procedure Set_QtdNascidosVivosTermo(Value: Integer);
    procedure Set_QtdNascidosMortos(Value: Integer);
    procedure Set_QtdVivosPrematuros(Value: Integer);
    procedure Set_ObitoMulher(Value: UnicodeString);
    { Methods & Properties }
    property EmGestacao: Boolean read Get_EmGestacao write Set_EmGestacao;
    property Aborto: Boolean read Get_Aborto write Set_Aborto;
    property TranstornoMaternoRelGravidez: Boolean read Get_TranstornoMaternoRelGravidez write Set_TranstornoMaternoRelGravidez;
    property ComplicacaoPeriodoPuerperio: Boolean read Get_ComplicacaoPeriodoPuerperio write Set_ComplicacaoPeriodoPuerperio;
    property AtendimentoRNSalaParto: Boolean read Get_AtendimentoRNSalaParto write Set_AtendimentoRNSalaParto;
    property ComplicacaoNeonatal: Boolean read Get_ComplicacaoNeonatal write Set_ComplicacaoNeonatal;
    property BaixoPeso: Boolean read Get_BaixoPeso write Set_BaixoPeso;
    property PartoCesareo: Boolean read Get_PartoCesareo write Set_PartoCesareo;
    property PartoNormal: Boolean read Get_PartoNormal write Set_PartoNormal;
    property DeclaracoesNascidosVivos: IXMLCt_numeroDN read Get_DeclaracoesNascidosVivos;
    property QtdNascidosVivosTermo: Integer read Get_QtdNascidosVivosTermo write Set_QtdNascidosVivosTermo;
    property QtdNascidosMortos: Integer read Get_QtdNascidosMortos write Set_QtdNascidosMortos;
    property QtdVivosPrematuros: Integer read Get_QtdVivosPrematuros write Set_QtdVivosPrematuros;
    property ObitoMulher: UnicodeString read Get_ObitoMulher write Set_ObitoMulher;
  end;

{ IXMLCt_numeroDN }

  IXMLCt_numeroDN = interface(IXMLNodeCollection)
    ['{2A615791-9439-4DD8-9923-F252876485A9}']
    { Property Accessors }
    function Get_NumeroDN(Index: Integer): UnicodeString;
    { Methods & Properties }
    function Add(const NumeroDN: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const NumeroDN: UnicodeString): IXMLNode;
    property NumeroDN[Index: Integer]: UnicodeString read Get_NumeroDN; default;
  end;

{ IXMLCt_obitoNeonatal }

  IXMLCt_obitoNeonatal = interface(IXMLNode)
    ['{EF4A672C-C05C-49C6-8B04-5A8227FA1D11}']
    { Property Accessors }
    function Get_QtdeobitoPrecoce: Integer;
    function Get_QtdeobitoTardio: Integer;
    procedure Set_QtdeobitoPrecoce(Value: Integer);
    procedure Set_QtdeobitoTardio(Value: Integer);
    { Methods & Properties }
    property QtdeobitoPrecoce: Integer read Get_QtdeobitoPrecoce write Set_QtdeobitoPrecoce;
    property QtdeobitoTardio: Integer read Get_QtdeobitoTardio write Set_QtdeobitoTardio;
  end;

{ IXMLCt_diagnosticoSaidaInternacao }

  IXMLCt_diagnosticoSaidaInternacao = interface(IXMLNode)
    ['{BC4EA5A2-B3D9-40D1-BC81-4B58ACD2418F}']
    { Property Accessors }
    function Get_DiagnosticoPrincipal: IXMLCt_diagnostico;
    function Get_IndicadorAcidente: UnicodeString;
    function Get_DiagnosticosSecundarios: IXMLCt_diagnosticosSecundarios;
    function Get_MotivoSaidaInternacao: UnicodeString;
    function Get_Obito: IXMLCt_obitoInternacaoList;
    procedure Set_IndicadorAcidente(Value: UnicodeString);
    procedure Set_MotivoSaidaInternacao(Value: UnicodeString);
    { Methods & Properties }
    property DiagnosticoPrincipal: IXMLCt_diagnostico read Get_DiagnosticoPrincipal;
    property IndicadorAcidente: UnicodeString read Get_IndicadorAcidente write Set_IndicadorAcidente;
    property DiagnosticosSecundarios: IXMLCt_diagnosticosSecundarios read Get_DiagnosticosSecundarios;
    property MotivoSaidaInternacao: UnicodeString read Get_MotivoSaidaInternacao write Set_MotivoSaidaInternacao;
    property Obito: IXMLCt_obitoInternacaoList read Get_Obito;
  end;

{ IXMLCt_obitoInternacao }

  IXMLCt_obitoInternacao = interface(IXMLNode)
    ['{6C04CB9A-F321-40CF-ABD2-C9E04ABB884D}']
    { Property Accessors }
    function Get_CID: IXMLCt_diagnostico;
    function Get_NumeroDeclaracao: UnicodeString;
    procedure Set_NumeroDeclaracao(Value: UnicodeString);
    { Methods & Properties }
    property CID: IXMLCt_diagnostico read Get_CID;
    property NumeroDeclaracao: UnicodeString read Get_NumeroDeclaracao write Set_NumeroDeclaracao;
  end;

{ IXMLCt_obitoInternacaoList }

  IXMLCt_obitoInternacaoList = interface(IXMLNodeCollection)
    ['{F8A9DA68-C3E4-4C24-B621-0B2E1DD973B2}']
    { Methods & Properties }
    function Add: IXMLCt_obitoInternacao;
    function Insert(const Index: Integer): IXMLCt_obitoInternacao;

    function Get_Item(Index: Integer): IXMLCt_obitoInternacao;
    property Items[Index: Integer]: IXMLCt_obitoInternacao read Get_Item; default;
  end;

{ IXMLCt_guiaHonorarioIndividual }

  IXMLCt_guiaHonorarioIndividual = interface(IXMLNode)
    ['{24A75EEC-A5ED-45D9-9B15-5A0F161B50BB}']
    { Property Accessors }
    function Get_IdentificacaoGuiaHonorarioIndividual: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_Contratado: IXMLCt_contratado;
    function Get_ContratadoExecutante: IXMLCt_guiaHonorarioIndividual_contratadoExecutante;
    function Get_ProcedimentosExamesRealizados: IXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoGuiaHonorarioIndividual: IXMLCt_cabecalhoGuia read Get_IdentificacaoGuiaHonorarioIndividual;
    property NumeroGuiaPrincipal: UnicodeString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosBeneficiario: IXMLCt_beneficiario read Get_DadosBeneficiario;
    property Contratado: IXMLCt_contratado read Get_Contratado;
    property ContratadoExecutante: IXMLCt_guiaHonorarioIndividual_contratadoExecutante read Get_ContratadoExecutante;
    property ProcedimentosExamesRealizados: IXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados read Get_ProcedimentosExamesRealizados;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaHonorarioIndividualList }

  IXMLCt_guiaHonorarioIndividualList = interface(IXMLNodeCollection)
    ['{9CE609F6-E03C-4126-9AA2-774C163C44FD}']
    { Methods & Properties }
    function Add: IXMLCt_guiaHonorarioIndividual;
    function Insert(const Index: Integer): IXMLCt_guiaHonorarioIndividual;

    function Get_Item(Index: Integer): IXMLCt_guiaHonorarioIndividual;
    property Items[Index: Integer]: IXMLCt_guiaHonorarioIndividual read Get_Item; default;
  end;

{ IXMLCt_guiaHonorarioIndividual_contratadoExecutante }

  IXMLCt_guiaHonorarioIndividual_contratadoExecutante = interface(IXMLCt_contratado)
    ['{F07EE445-5C5F-4A9F-854E-6E1B09F02865}']
    { Property Accessors }
    function Get_IdentificacaoProfissional: IXMLCt_profissionalExecutante;
    function Get_PosicaoProfissional: UnicodeString;
    function Get_TipoAcomodacao: UnicodeString;
    procedure Set_PosicaoProfissional(Value: UnicodeString);
    procedure Set_TipoAcomodacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoProfissional: IXMLCt_profissionalExecutante read Get_IdentificacaoProfissional;
    property PosicaoProfissional: UnicodeString read Get_PosicaoProfissional write Set_PosicaoProfissional;
    property TipoAcomodacao: UnicodeString read Get_TipoAcomodacao write Set_TipoAcomodacao;
  end;

{ IXMLCt_procedimentosRealizados }

  IXMLCt_procedimentosRealizados = interface(IXMLNodeCollection)
    ['{8A1DCF4E-0927-4FC9-AA56-FF30C2E1C276}']
    { Property Accessors }
    function Get_ProcedimentoRealizado(Index: Integer): IXMLCt_procedimentosRealizados_procedimentoRealizado;
    { Methods & Properties }
    function Add: IXMLCt_procedimentosRealizados_procedimentoRealizado;
    function Insert(const Index: Integer): IXMLCt_procedimentosRealizados_procedimentoRealizado;
    property ProcedimentoRealizado[Index: Integer]: IXMLCt_procedimentosRealizados_procedimentoRealizado read Get_ProcedimentoRealizado; default;
  end;

{ IXMLCt_procedimentosRealizados_procedimentoRealizado }

  IXMLCt_procedimentosRealizados_procedimentoRealizado = interface(IXMLNode)
    ['{14C67A0A-FEC9-48AB-BC68-C055E4F1DFD5}']
    { Property Accessors }
    function Get_Data: UnicodeString;
    function Get_HoraInicio: UnicodeString;
    function Get_HoraFim: UnicodeString;
    function Get_Procedimento: IXMLCt_tabela;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: UnicodeString;
    function Get_TecnicaUtilizada: UnicodeString;
    function Get_ReducaoAcrescimo: UnicodeString;
    function Get_Valor: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    procedure Set_Data(Value: UnicodeString);
    procedure Set_HoraInicio(Value: UnicodeString);
    procedure Set_HoraFim(Value: UnicodeString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: UnicodeString);
    procedure Set_TecnicaUtilizada(Value: UnicodeString);
    procedure Set_ReducaoAcrescimo(Value: UnicodeString);
    procedure Set_Valor(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    { Methods & Properties }
    property Data: UnicodeString read Get_Data write Set_Data;
    property HoraInicio: UnicodeString read Get_HoraInicio write Set_HoraInicio;
    property HoraFim: UnicodeString read Get_HoraFim write Set_HoraFim;
    property Procedimento: IXMLCt_tabela read Get_Procedimento;
    property QuantidadeRealizada: Integer read Get_QuantidadeRealizada write Set_QuantidadeRealizada;
    property ViaAcesso: UnicodeString read Get_ViaAcesso write Set_ViaAcesso;
    property TecnicaUtilizada: UnicodeString read Get_TecnicaUtilizada write Set_TecnicaUtilizada;
    property ReducaoAcrescimo: UnicodeString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Valor: UnicodeString read Get_Valor write Set_Valor;
    property ValorTotal: UnicodeString read Get_ValorTotal write Set_ValorTotal;
  end;

{ IXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados }

  IXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados = interface(IXMLCt_procedimentosRealizados)
    ['{BBC01FD0-49EA-4297-A9F8-EEBC05776718}']
    { Property Accessors }
    function Get_TotalGeralHonorario: UnicodeString;
    procedure Set_TotalGeralHonorario(Value: UnicodeString);
    { Methods & Properties }
    property TotalGeralHonorario: UnicodeString read Get_TotalGeralHonorario write Set_TotalGeralHonorario;
  end;

{ IXMLCt_guiaOdontologia }

  IXMLCt_guiaOdontologia = interface(IXMLNode)
    ['{FAF5FCB6-41E4-417F-8B90-AFE35ACEC414}']
    { Property Accessors }
    function Get_CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: IXMLCt_guiaOdontologia_dadosBeneficiario;
    function Get_DadosContratadoExecutante: IXMLCt_guiaOdontologia_dadosContratadoExecutante;
    function Get_ProcedimentosExecutados: IXMLCt_guiaOdontologia_procedimentosExecutados;
    function Get_OutrasDespesas: IXMLCt_outrasDespesas;
    function Get_DadosAtendimento: IXMLCt_atendimentoOdontologia;
    function Get_TipoFaturamento: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_TipoFaturamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto read Get_CabecalhoGuia;
    property DadosBeneficiario: IXMLCt_guiaOdontologia_dadosBeneficiario read Get_DadosBeneficiario;
    property DadosContratadoExecutante: IXMLCt_guiaOdontologia_dadosContratadoExecutante read Get_DadosContratadoExecutante;
    property ProcedimentosExecutados: IXMLCt_guiaOdontologia_procedimentosExecutados read Get_ProcedimentosExecutados;
    property OutrasDespesas: IXMLCt_outrasDespesas read Get_OutrasDespesas;
    property DadosAtendimento: IXMLCt_atendimentoOdontologia read Get_DadosAtendimento;
    property TipoFaturamento: UnicodeString read Get_TipoFaturamento write Set_TipoFaturamento;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaOdontologiaList }

  IXMLCt_guiaOdontologiaList = interface(IXMLNodeCollection)
    ['{2EE616F0-36C1-4E8B-AD45-6AA925DE198B}']
    { Methods & Properties }
    function Add: IXMLCt_guiaOdontologia;
    function Insert(const Index: Integer): IXMLCt_guiaOdontologia;

    function Get_Item(Index: Integer): IXMLCt_guiaOdontologia;
    property Items[Index: Integer]: IXMLCt_guiaOdontologia read Get_Item; default;
  end;

{ IXMLCt_cabecalhoGuiaOdonto }

  IXMLCt_cabecalhoGuiaOdonto = interface(IXMLNode)
    ['{4914D0CB-C09F-43BA-86EF-0ECA73DAAAB6}']
    { Property Accessors }
    function Get_IdentificacaoFontePagadora: IXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora;
    function Get_NumeroGuiaPrestador: UnicodeString;
    function Get_NumeroGuiaOperadora: UnicodeString;
    function Get_DataEmissaoGuia: UnicodeString;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DataAutorizacao: UnicodeString;
    function Get_SenhaAutorizacao: UnicodeString;
    function Get_ValidadeSenha: UnicodeString;
    procedure Set_NumeroGuiaPrestador(Value: UnicodeString);
    procedure Set_NumeroGuiaOperadora(Value: UnicodeString);
    procedure Set_DataEmissaoGuia(Value: UnicodeString);
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_DataAutorizacao(Value: UnicodeString);
    procedure Set_SenhaAutorizacao(Value: UnicodeString);
    procedure Set_ValidadeSenha(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoFontePagadora: IXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora read Get_IdentificacaoFontePagadora;
    property NumeroGuiaPrestador: UnicodeString read Get_NumeroGuiaPrestador write Set_NumeroGuiaPrestador;
    property NumeroGuiaOperadora: UnicodeString read Get_NumeroGuiaOperadora write Set_NumeroGuiaOperadora;
    property DataEmissaoGuia: UnicodeString read Get_DataEmissaoGuia write Set_DataEmissaoGuia;
    property NumeroGuiaPrincipal: UnicodeString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DataAutorizacao: UnicodeString read Get_DataAutorizacao write Set_DataAutorizacao;
    property SenhaAutorizacao: UnicodeString read Get_SenhaAutorizacao write Set_SenhaAutorizacao;
    property ValidadeSenha: UnicodeString read Get_ValidadeSenha write Set_ValidadeSenha;
  end;

{ IXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora }

  IXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora = interface(IXMLNode)
    ['{94F51973-B872-4344-83A9-35040A7B6C89}']
    { Property Accessors }
    function Get_RegistroANS: UnicodeString;
    function Get_CnpjFontePagadora: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CnpjFontePagadora(Value: UnicodeString);
    { Methods & Properties }
    property RegistroANS: UnicodeString read Get_RegistroANS write Set_RegistroANS;
    property CnpjFontePagadora: UnicodeString read Get_CnpjFontePagadora write Set_CnpjFontePagadora;
  end;

{ IXMLCt_guiaOdontologia_dadosBeneficiario }

  IXMLCt_guiaOdontologia_dadosBeneficiario = interface(IXMLCt_beneficiario)
    ['{9B148591-08C8-4669-97CD-46839C687129}']
    { Property Accessors }
    function Get_NomeEmpresa: UnicodeString;
    function Get_NumeroTelefone: UnicodeString;
    function Get_NomeTitular: UnicodeString;
    procedure Set_NomeEmpresa(Value: UnicodeString);
    procedure Set_NumeroTelefone(Value: UnicodeString);
    procedure Set_NomeTitular(Value: UnicodeString);
    { Methods & Properties }
    property NomeEmpresa: UnicodeString read Get_NomeEmpresa write Set_NomeEmpresa;
    property NumeroTelefone: UnicodeString read Get_NumeroTelefone write Set_NumeroTelefone;
    property NomeTitular: UnicodeString read Get_NomeTitular write Set_NomeTitular;
  end;

{ IXMLCt_guiaOdontologia_dadosContratadoExecutante }

  IXMLCt_guiaOdontologia_dadosContratadoExecutante = interface(IXMLNode)
    ['{D8149C89-25D7-4C03-9D15-9426BCF12813}']
    { Property Accessors }
    function Get_DadosContratado: IXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado;
    function Get_DadosExecutante: IXMLCt_profissionalExecutante;
    { Methods & Properties }
    property DadosContratado: IXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado read Get_DadosContratado;
    property DadosExecutante: IXMLCt_profissionalExecutante read Get_DadosExecutante;
  end;

{ IXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado }

  IXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado = interface(IXMLCt_contratado)
    ['{C474E797-A534-4914-9539-24CF050140EA}']
    { Property Accessors }
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    { Methods & Properties }
    property ConselhoProfissional: IXMLCt_conselhoProfissional read Get_ConselhoProfissional;
  end;

{ IXMLCt_guiaOdontologia_procedimentosExecutados }

  IXMLCt_guiaOdontologia_procedimentosExecutados = interface(IXMLNode)
    ['{81352528-5370-4CBF-A3A1-F45D4C2D08B4}']
    { Property Accessors }
    function Get_ProcedimentoExecutado: IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList;
    function Get_QuantidadeTotalUS: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    function Get_TotalFranquiaCoparticipacao: UnicodeString;
    procedure Set_QuantidadeTotalUS(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
    { Methods & Properties }
    property ProcedimentoExecutado: IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList read Get_ProcedimentoExecutado;
    property QuantidadeTotalUS: UnicodeString read Get_QuantidadeTotalUS write Set_QuantidadeTotalUS;
    property ValorTotal: UnicodeString read Get_ValorTotal write Set_ValorTotal;
    property TotalFranquiaCoparticipacao: UnicodeString read Get_TotalFranquiaCoparticipacao write Set_TotalFranquiaCoparticipacao;
  end;

{ IXMLCt_procedimentoOdontologia }

  IXMLCt_procedimentoOdontologia = interface(IXMLNode)
    ['{82D012DA-A63B-45A8-BCD2-0FA7E519F3A8}']
    { Property Accessors }
    function Get_ProcedimentoOdonto: IXMLCt_tabela;
    function Get_DenteRegiao: IXMLCt_denteRegiao;
    function Get_Face: UnicodeString;
    function Get_Quantidade: Integer;
    function Get_QuantidadeUS: UnicodeString;
    function Get_Valor: UnicodeString;
    function Get_FranquiaCoparticipacao: UnicodeString;
    procedure Set_Face(Value: UnicodeString);
    procedure Set_Quantidade(Value: Integer);
    procedure Set_QuantidadeUS(Value: UnicodeString);
    procedure Set_Valor(Value: UnicodeString);
    procedure Set_FranquiaCoparticipacao(Value: UnicodeString);
    { Methods & Properties }
    property ProcedimentoOdonto: IXMLCt_tabela read Get_ProcedimentoOdonto;
    property DenteRegiao: IXMLCt_denteRegiao read Get_DenteRegiao;
    property Face: UnicodeString read Get_Face write Set_Face;
    property Quantidade: Integer read Get_Quantidade write Set_Quantidade;
    property QuantidadeUS: UnicodeString read Get_QuantidadeUS write Set_QuantidadeUS;
    property Valor: UnicodeString read Get_Valor write Set_Valor;
    property FranquiaCoparticipacao: UnicodeString read Get_FranquiaCoparticipacao write Set_FranquiaCoparticipacao;
  end;

{ IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado }

  IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado = interface(IXMLCt_procedimentoOdontologia)
    ['{C4A12527-1579-4C36-9915-0BEEBA842F72}']
    { Property Accessors }
    function Get_DataRealizacao: UnicodeString;
    procedure Set_DataRealizacao(Value: UnicodeString);
    { Methods & Properties }
    property DataRealizacao: UnicodeString read Get_DataRealizacao write Set_DataRealizacao;
  end;

{ IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList }

  IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList = interface(IXMLNodeCollection)
    ['{43FE224C-1081-4003-888E-8E0277364EC3}']
    { Methods & Properties }
    function Add: IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;
    function Insert(const Index: Integer): IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;

    function Get_Item(Index: Integer): IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;
    property Items[Index: Integer]: IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado read Get_Item; default;
  end;

{ IXMLCt_atendimentoOdontologia }

  IXMLCt_atendimentoOdontologia = interface(IXMLNode)
    ['{F9508013-02A3-4F95-98A4-6255B1C837EC}']
    { Property Accessors }
    function Get_DataTerminoTratamento: UnicodeString;
    function Get_TipoAtendimento: UnicodeString;
    procedure Set_DataTerminoTratamento(Value: UnicodeString);
    procedure Set_TipoAtendimento(Value: UnicodeString);
    { Methods & Properties }
    property DataTerminoTratamento: UnicodeString read Get_DataTerminoTratamento write Set_DataTerminoTratamento;
    property TipoAtendimento: UnicodeString read Get_TipoAtendimento write Set_TipoAtendimento;
  end;

{ IXMLCt_guias_guiaRevisaoGlosa }

  IXMLCt_guias_guiaRevisaoGlosa = interface(IXMLNode)
    ['{7145EC3C-0FF3-434D-9442-79318B6EB941}']
    { Property Accessors }
    function Get_GuiaConsultaReapresentacao: IXMLCt_guiaConsultaReapresentacaoList;
    function Get_GuiaSP_SADTReapresentacao: IXMLCt_guiaSP_SADTReapresentacaoList;
    function Get_GuiaResumoInternacaoReapresentacao: IXMLCt_guiaResumoInternacaoReapresentacaoList;
    function Get_GuiaHonorarioIndividualReapresentacao: IXMLCt_guiaHonorarioIndividualReapresentacaoList;
    function Get_GuiaOdontologiaReapresentacao: IXMLCt_guiaTratamentoOdontologicoReapresentacaoList;
    { Methods & Properties }
    property GuiaConsultaReapresentacao: IXMLCt_guiaConsultaReapresentacaoList read Get_GuiaConsultaReapresentacao;
    property GuiaSP_SADTReapresentacao: IXMLCt_guiaSP_SADTReapresentacaoList read Get_GuiaSP_SADTReapresentacao;
    property GuiaResumoInternacaoReapresentacao: IXMLCt_guiaResumoInternacaoReapresentacaoList read Get_GuiaResumoInternacaoReapresentacao;
    property GuiaHonorarioIndividualReapresentacao: IXMLCt_guiaHonorarioIndividualReapresentacaoList read Get_GuiaHonorarioIndividualReapresentacao;
    property GuiaOdontologiaReapresentacao: IXMLCt_guiaTratamentoOdontologicoReapresentacaoList read Get_GuiaOdontologiaReapresentacao;
  end;

{ IXMLCt_guiaConsultaReapresentacao }

  IXMLCt_guiaConsultaReapresentacao = interface(IXMLNode)
    ['{890F8628-E5CC-4414-991E-D00AE7597C97}']
    { Property Accessors }
    function Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
    function Get_Beneficiario: IXMLCt_beneficiario;
    function Get_DadosContratado: IXMLCt_contratado;
    function Get_ProfissionalExecutante: IXMLCt_identificacaoProfissional;
    function Get_HipoteseDiagnostica: IXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica;
    function Get_DadosAtendimento: IXMLCt_atendimentoConsultaReapr;
    function Get_Observacao: UnicodeString;
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoGuia: IXMLCt_cabecalhoGuia read Get_IdentificacaoGuia;
    property Beneficiario: IXMLCt_beneficiario read Get_Beneficiario;
    property DadosContratado: IXMLCt_contratado read Get_DadosContratado;
    property ProfissionalExecutante: IXMLCt_identificacaoProfissional read Get_ProfissionalExecutante;
    property HipoteseDiagnostica: IXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica read Get_HipoteseDiagnostica;
    property DadosAtendimento: IXMLCt_atendimentoConsultaReapr read Get_DadosAtendimento;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaConsultaReapresentacaoList }

  IXMLCt_guiaConsultaReapresentacaoList = interface(IXMLNodeCollection)
    ['{96BA7756-1AC8-4399-BE13-69BD4A3B9685}']
    { Methods & Properties }
    function Add: IXMLCt_guiaConsultaReapresentacao;
    function Insert(const Index: Integer): IXMLCt_guiaConsultaReapresentacao;

    function Get_Item(Index: Integer): IXMLCt_guiaConsultaReapresentacao;
    property Items[Index: Integer]: IXMLCt_guiaConsultaReapresentacao read Get_Item; default;
  end;

{ IXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica }

  IXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica = interface(IXMLCt_diagnosticoAtendimento)
    ['{18CE7345-AB8C-48DE-896D-CA62343905E9}']
    { Property Accessors }
    function Get_DiagnosticoSecundario: IXMLCt_diagnosticosSecundarios;
    { Methods & Properties }
    property DiagnosticoSecundario: IXMLCt_diagnosticosSecundarios read Get_DiagnosticoSecundario;
  end;

{ IXMLCt_atendimentoConsultaReapr }

  IXMLCt_atendimentoConsultaReapr = interface(IXMLNode)
    ['{72890E65-2FFE-4BC5-97D7-01BE14E67BB1}']
    { Property Accessors }
    function Get_Procedimento: IXMLCt_atendimentoConsultaReapr_procedimento;
    function Get_TipoConsulta: UnicodeString;
    function Get_TipoSaida: UnicodeString;
    function Get_DataAtendimento: UnicodeString;
    procedure Set_TipoConsulta(Value: UnicodeString);
    procedure Set_TipoSaida(Value: UnicodeString);
    procedure Set_DataAtendimento(Value: UnicodeString);
    { Methods & Properties }
    property Procedimento: IXMLCt_atendimentoConsultaReapr_procedimento read Get_Procedimento;
    property TipoConsulta: UnicodeString read Get_TipoConsulta write Set_TipoConsulta;
    property TipoSaida: UnicodeString read Get_TipoSaida write Set_TipoSaida;
    property DataAtendimento: UnicodeString read Get_DataAtendimento write Set_DataAtendimento;
  end;

{ IXMLCt_atendimentoConsultaReapr_procedimento }

  IXMLCt_atendimentoConsultaReapr_procedimento = interface(IXMLNode)
    ['{614E3188-C38B-4330-9974-C17CDB6BD4FA}']
    { Property Accessors }
    function Get_CodigoTabela: UnicodeString;
    function Get_CodigoProcedimento: UnicodeString;
    function Get_Justificativa: UnicodeString;
    procedure Set_CodigoTabela(Value: UnicodeString);
    procedure Set_CodigoProcedimento(Value: UnicodeString);
    procedure Set_Justificativa(Value: UnicodeString);
    { Methods & Properties }
    property CodigoTabela: UnicodeString read Get_CodigoTabela write Set_CodigoTabela;
    property CodigoProcedimento: UnicodeString read Get_CodigoProcedimento write Set_CodigoProcedimento;
    property Justificativa: UnicodeString read Get_Justificativa write Set_Justificativa;
  end;

{ IXMLCt_guiaSP_SADTReapresentacao }

  IXMLCt_guiaSP_SADTReapresentacao = interface(IXMLNode)
    ['{C4A1A4FB-8CEB-45B5-9EA4-897A96657F33}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSADTSP: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_DadosSolicitante: IXMLCt_solicitante;
    function Get_PrestadorExecutante: IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante;
    function Get_IndicacaoClinica: UnicodeString;
    function Get_CaraterAtendimento: UnicodeString;
    function Get_DataHoraAtendimento: UnicodeString;
    function Get_DiagnosticoAtendimento: IXMLCt_diagnosticoAtendimento;
    function Get_TipoSaida: UnicodeString;
    function Get_TipoAtendimento: UnicodeString;
    function Get_ProcedimentosRealizados: IXMLCt_procedimentoRevisao;
    function Get_OutrasDespesas: IXMLCt_outrasDespesasRevisao;
    function Get_OPMUtilizada: IXMLCt_OPMUtilizadasRevisao;
    function Get_ValorTotal: IXMLCt_valorTotalServicos;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_IndicacaoClinica(Value: UnicodeString);
    procedure Set_CaraterAtendimento(Value: UnicodeString);
    procedure Set_DataHoraAtendimento(Value: UnicodeString);
    procedure Set_TipoSaida(Value: UnicodeString);
    procedure Set_TipoAtendimento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoGuiaSADTSP: IXMLCt_cabecalhoGuia read Get_IdentificacaoGuiaSADTSP;
    property NumeroGuiaPrincipal: UnicodeString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosAutorizacao: IXMLCt_autorizacaoGuia read Get_DadosAutorizacao;
    property DadosBeneficiario: IXMLCt_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: IXMLCt_solicitante read Get_DadosSolicitante;
    property PrestadorExecutante: IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante read Get_PrestadorExecutante;
    property IndicacaoClinica: UnicodeString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property CaraterAtendimento: UnicodeString read Get_CaraterAtendimento write Set_CaraterAtendimento;
    property DataHoraAtendimento: UnicodeString read Get_DataHoraAtendimento write Set_DataHoraAtendimento;
    property DiagnosticoAtendimento: IXMLCt_diagnosticoAtendimento read Get_DiagnosticoAtendimento;
    property TipoSaida: UnicodeString read Get_TipoSaida write Set_TipoSaida;
    property TipoAtendimento: UnicodeString read Get_TipoAtendimento write Set_TipoAtendimento;
    property ProcedimentosRealizados: IXMLCt_procedimentoRevisao read Get_ProcedimentosRealizados;
    property OutrasDespesas: IXMLCt_outrasDespesasRevisao read Get_OutrasDespesas;
    property OPMUtilizada: IXMLCt_OPMUtilizadasRevisao read Get_OPMUtilizada;
    property ValorTotal: IXMLCt_valorTotalServicos read Get_ValorTotal;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaSP_SADTReapresentacaoList }

  IXMLCt_guiaSP_SADTReapresentacaoList = interface(IXMLNodeCollection)
    ['{CD0E392F-F1C4-42A7-A965-56D8652CAC5D}']
    { Methods & Properties }
    function Add: IXMLCt_guiaSP_SADTReapresentacao;
    function Insert(const Index: Integer): IXMLCt_guiaSP_SADTReapresentacao;

    function Get_Item(Index: Integer): IXMLCt_guiaSP_SADTReapresentacao;
    property Items[Index: Integer]: IXMLCt_guiaSP_SADTReapresentacao read Get_Item; default;
  end;

{ IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante }

  IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante = interface(IXMLCt_contratado)
    ['{2A27F84C-DA1C-419A-B5E6-3C61851A90A5}']
    { Property Accessors }
    function Get_ProfissionalExecutanteCompl: IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl;
    { Methods & Properties }
    property ProfissionalExecutanteCompl: IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl read Get_ProfissionalExecutanteCompl;
  end;

{ IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl }

  IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl = interface(IXMLCt_profissionalExecutante)
    ['{AC0BC05B-D218-4D5A-9B3E-6D8696CF0F91}']
    { Property Accessors }
    function Get_CodigoProfissionalCompl: IXMLCt_identificacaoProfissionalCompl;
    { Methods & Properties }
    property CodigoProfissionalCompl: IXMLCt_identificacaoProfissionalCompl read Get_CodigoProfissionalCompl;
  end;

{ IXMLCt_procedimentoRevisao }

  IXMLCt_procedimentoRevisao = interface(IXMLNodeCollection)
    ['{F38E799A-3448-477B-B957-8A5B19A2D023}']
    { Property Accessors }
    function Get_ProcedimentosRevisao(Index: Integer): IXMLCt_procedimentoRevisao_procedimentosRevisao;
    { Methods & Properties }
    function Add: IXMLCt_procedimentoRevisao_procedimentosRevisao;
    function Insert(const Index: Integer): IXMLCt_procedimentoRevisao_procedimentosRevisao;
    property ProcedimentosRevisao[Index: Integer]: IXMLCt_procedimentoRevisao_procedimentosRevisao read Get_ProcedimentosRevisao; default;
  end;

{ IXMLCt_procedimentoRevisao_procedimentosRevisao }

  IXMLCt_procedimentoRevisao_procedimentosRevisao = interface(IXMLNode)
    ['{039E3C67-1F70-4DC9-B2F7-27CD7963CF53}']
    { Property Accessors }
    function Get_Data: UnicodeString;
    function Get_HoraInicio: UnicodeString;
    function Get_HoraFim: UnicodeString;
    function Get_Procedimento: IXMLCt_tabela;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: UnicodeString;
    function Get_TecnicaUtilizada: UnicodeString;
    function Get_ReducaoAcrescimo: UnicodeString;
    function Get_Valor: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    function Get_JustificativaRevisao: UnicodeString;
    procedure Set_Data(Value: UnicodeString);
    procedure Set_HoraInicio(Value: UnicodeString);
    procedure Set_HoraFim(Value: UnicodeString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: UnicodeString);
    procedure Set_TecnicaUtilizada(Value: UnicodeString);
    procedure Set_ReducaoAcrescimo(Value: UnicodeString);
    procedure Set_Valor(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_JustificativaRevisao(Value: UnicodeString);
    { Methods & Properties }
    property Data: UnicodeString read Get_Data write Set_Data;
    property HoraInicio: UnicodeString read Get_HoraInicio write Set_HoraInicio;
    property HoraFim: UnicodeString read Get_HoraFim write Set_HoraFim;
    property Procedimento: IXMLCt_tabela read Get_Procedimento;
    property QuantidadeRealizada: Integer read Get_QuantidadeRealizada write Set_QuantidadeRealizada;
    property ViaAcesso: UnicodeString read Get_ViaAcesso write Set_ViaAcesso;
    property TecnicaUtilizada: UnicodeString read Get_TecnicaUtilizada write Set_TecnicaUtilizada;
    property ReducaoAcrescimo: UnicodeString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Valor: UnicodeString read Get_Valor write Set_Valor;
    property ValorTotal: UnicodeString read Get_ValorTotal write Set_ValorTotal;
    property JustificativaRevisao: UnicodeString read Get_JustificativaRevisao write Set_JustificativaRevisao;
  end;

{ IXMLCt_outrasDespesasRevisao }

  IXMLCt_outrasDespesasRevisao = interface(IXMLNode)
    ['{352AF1C3-1735-4451-AADF-389EBA574F84}']
    { Property Accessors }
    function Get_ItensDespesas: IXMLCt_outrasDespesasRevisao_itensDespesasList;
    function Get_TotalGeralOutrasDespesas: UnicodeString;
    procedure Set_TotalGeralOutrasDespesas(Value: UnicodeString);
    { Methods & Properties }
    property ItensDespesas: IXMLCt_outrasDespesasRevisao_itensDespesasList read Get_ItensDespesas;
    property TotalGeralOutrasDespesas: UnicodeString read Get_TotalGeralOutrasDespesas write Set_TotalGeralOutrasDespesas;
  end;

{ IXMLCt_outrasDespesasRevisao_itensDespesas }

  IXMLCt_outrasDespesasRevisao_itensDespesas = interface(IXMLNode)
    ['{828DFD58-B200-4A05-A315-697C3B66B594}']
    { Property Accessors }
    function Get_TipoDespesa: UnicodeString;
    function Get_DataRealizacao: UnicodeString;
    function Get_Despesa: IXMLCt_tabela;
    function Get_ReducaoAcrescimo: UnicodeString;
    function Get_Quantidade: UnicodeString;
    function Get_ValorUnitario: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    function Get_Justificativa: UnicodeString;
    procedure Set_TipoDespesa(Value: UnicodeString);
    procedure Set_DataRealizacao(Value: UnicodeString);
    procedure Set_ReducaoAcrescimo(Value: UnicodeString);
    procedure Set_Quantidade(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_Justificativa(Value: UnicodeString);
    { Methods & Properties }
    property TipoDespesa: UnicodeString read Get_TipoDespesa write Set_TipoDespesa;
    property DataRealizacao: UnicodeString read Get_DataRealizacao write Set_DataRealizacao;
    property Despesa: IXMLCt_tabela read Get_Despesa;
    property ReducaoAcrescimo: UnicodeString read Get_ReducaoAcrescimo write Set_ReducaoAcrescimo;
    property Quantidade: UnicodeString read Get_Quantidade write Set_Quantidade;
    property ValorUnitario: UnicodeString read Get_ValorUnitario write Set_ValorUnitario;
    property ValorTotal: UnicodeString read Get_ValorTotal write Set_ValorTotal;
    property Justificativa: UnicodeString read Get_Justificativa write Set_Justificativa;
  end;

{ IXMLCt_outrasDespesasRevisao_itensDespesasList }

  IXMLCt_outrasDespesasRevisao_itensDespesasList = interface(IXMLNodeCollection)
    ['{75B35957-EB08-490F-A7C2-3340FD27ABED}']
    { Methods & Properties }
    function Add: IXMLCt_outrasDespesasRevisao_itensDespesas;
    function Insert(const Index: Integer): IXMLCt_outrasDespesasRevisao_itensDespesas;

    function Get_Item(Index: Integer): IXMLCt_outrasDespesasRevisao_itensDespesas;
    property Items[Index: Integer]: IXMLCt_outrasDespesasRevisao_itensDespesas read Get_Item; default;
  end;

{ IXMLCt_OPMUtilizadasRevisao }

  IXMLCt_OPMUtilizadasRevisao = interface(IXMLNode)
    ['{1011F7E5-40A4-4BF9-A405-36D24D34651C}']
    { Property Accessors }
    function Get_OPMUtilizada: IXMLCt_OPMUtilizadasRevisao_OPMUtilizada;
    function Get_ValorTotalOPM: UnicodeString;
    procedure Set_ValorTotalOPM(Value: UnicodeString);
    { Methods & Properties }
    property OPMUtilizada: IXMLCt_OPMUtilizadasRevisao_OPMUtilizada read Get_OPMUtilizada;
    property ValorTotalOPM: UnicodeString read Get_ValorTotalOPM write Set_ValorTotalOPM;
  end;

{ IXMLCt_OPMUtilizadasRevisao_OPMUtilizada }

  IXMLCt_OPMUtilizadasRevisao_OPMUtilizada = interface(IXMLNodeCollection)
    ['{FD7F9408-F4D1-4FB0-8517-0DA441568DFD}']
    { Property Accessors }
    function Get_OPM(Index: Integer): IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
    { Methods & Properties }
    function Add: IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
    function Insert(const Index: Integer): IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
    property OPM[Index: Integer]: IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM read Get_OPM; default;
  end;

{ IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM }

  IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM = interface(IXMLNode)
    ['{A1E7770F-543D-495F-B0C9-71AABE9A8397}']
    { Property Accessors }
    function Get_OPM: IXMLCt_tabela;
    function Get_ValorUnitario: UnicodeString;
    function Get_Quantidade: UnicodeString;
    function Get_CodigoBarra: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    function Get_Justificativa: UnicodeString;
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_Quantidade(Value: UnicodeString);
    procedure Set_CodigoBarra(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_Justificativa(Value: UnicodeString);
    { Methods & Properties }
    property OPM: IXMLCt_tabela read Get_OPM;
    property ValorUnitario: UnicodeString read Get_ValorUnitario write Set_ValorUnitario;
    property Quantidade: UnicodeString read Get_Quantidade write Set_Quantidade;
    property CodigoBarra: UnicodeString read Get_CodigoBarra write Set_CodigoBarra;
    property ValorTotal: UnicodeString read Get_ValorTotal write Set_ValorTotal;
    property Justificativa: UnicodeString read Get_Justificativa write Set_Justificativa;
  end;

{ IXMLCt_guiaResumoInternacaoReapresentacao }

  IXMLCt_guiaResumoInternacaoReapresentacao = interface(IXMLNode)
    ['{21AAE5EF-ADF6-4F9D-A58B-01B69FD989EA}']
    { Property Accessors }
    function Get_IdentificacaoGuiaInternacao: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: UnicodeString;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_IdentificacaoExecutante: IXMLCt_contratado;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
    function Get_CaraterInternacao: UnicodeString;
    function Get_Acomodacao: UnicodeString;
    function Get_DataHoraInternacao: UnicodeString;
    function Get_DataHoraSaidaInternacao: UnicodeString;
    function Get_TipoInternacao: UnicodeString;
    function Get_RegimeInternacao: UnicodeString;
    function Get_InternacaoObstetrica: IXMLCt_internacaoObstetrica;
    function Get_ObitoNeonatal: IXMLCt_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: IXMLCt_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: IXMLCt_procedimentoRevisao;
    function Get_OPMUtilizadas: IXMLCt_OPMUtilizadasRevisao;
    function Get_OutrasDespesas: IXMLCt_outrasDespesasRevisao;
    function Get_TipoFaturamento: UnicodeString;
    function Get_ValorTotal: IXMLCt_valorTotalServicos;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaSolicitacao(Value: UnicodeString);
    procedure Set_CaraterInternacao(Value: UnicodeString);
    procedure Set_Acomodacao(Value: UnicodeString);
    procedure Set_DataHoraInternacao(Value: UnicodeString);
    procedure Set_DataHoraSaidaInternacao(Value: UnicodeString);
    procedure Set_TipoInternacao(Value: UnicodeString);
    procedure Set_RegimeInternacao(Value: UnicodeString);
    procedure Set_TipoFaturamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoGuiaInternacao: IXMLCt_cabecalhoGuia read Get_IdentificacaoGuiaInternacao;
    property NumeroGuiaSolicitacao: UnicodeString read Get_NumeroGuiaSolicitacao write Set_NumeroGuiaSolicitacao;
    property DadosBeneficiario: IXMLCt_beneficiario read Get_DadosBeneficiario;
    property IdentificacaoExecutante: IXMLCt_contratado read Get_IdentificacaoExecutante;
    property DadosAutorizacao: IXMLCt_autorizacaoGuia read Get_DadosAutorizacao;
    property CaraterInternacao: UnicodeString read Get_CaraterInternacao write Set_CaraterInternacao;
    property Acomodacao: UnicodeString read Get_Acomodacao write Set_Acomodacao;
    property DataHoraInternacao: UnicodeString read Get_DataHoraInternacao write Set_DataHoraInternacao;
    property DataHoraSaidaInternacao: UnicodeString read Get_DataHoraSaidaInternacao write Set_DataHoraSaidaInternacao;
    property TipoInternacao: UnicodeString read Get_TipoInternacao write Set_TipoInternacao;
    property RegimeInternacao: UnicodeString read Get_RegimeInternacao write Set_RegimeInternacao;
    property InternacaoObstetrica: IXMLCt_internacaoObstetrica read Get_InternacaoObstetrica;
    property ObitoNeonatal: IXMLCt_obitoNeonatal read Get_ObitoNeonatal;
    property DiagnosticosSaidaInternacao: IXMLCt_diagnosticoSaidaInternacao read Get_DiagnosticosSaidaInternacao;
    property ProcedimentosRealizados: IXMLCt_procedimentoRevisao read Get_ProcedimentosRealizados;
    property OPMUtilizadas: IXMLCt_OPMUtilizadasRevisao read Get_OPMUtilizadas;
    property OutrasDespesas: IXMLCt_outrasDespesasRevisao read Get_OutrasDespesas;
    property TipoFaturamento: UnicodeString read Get_TipoFaturamento write Set_TipoFaturamento;
    property ValorTotal: IXMLCt_valorTotalServicos read Get_ValorTotal;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaResumoInternacaoReapresentacaoList }

  IXMLCt_guiaResumoInternacaoReapresentacaoList = interface(IXMLNodeCollection)
    ['{5ADE1D32-70DB-43BC-B8AC-15AA88F1A29E}']
    { Methods & Properties }
    function Add: IXMLCt_guiaResumoInternacaoReapresentacao;
    function Insert(const Index: Integer): IXMLCt_guiaResumoInternacaoReapresentacao;

    function Get_Item(Index: Integer): IXMLCt_guiaResumoInternacaoReapresentacao;
    property Items[Index: Integer]: IXMLCt_guiaResumoInternacaoReapresentacao read Get_Item; default;
  end;

{ IXMLCt_guiaHonorarioIndividualReapresentacao }

  IXMLCt_guiaHonorarioIndividualReapresentacao = interface(IXMLNode)
    ['{B47FCF0E-3C7F-4545-B471-01C2BEE3E47C}']
    { Property Accessors }
    function Get_IdentificacaoGuiaHonorarioIndividual: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_Contratado: IXMLCt_contratado;
    function Get_ContratadoExecutante: IXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante;
    function Get_ProcedimentosExamesRealizados: IXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoGuiaHonorarioIndividual: IXMLCt_cabecalhoGuia read Get_IdentificacaoGuiaHonorarioIndividual;
    property NumeroGuiaPrincipal: UnicodeString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosBeneficiario: IXMLCt_beneficiario read Get_DadosBeneficiario;
    property Contratado: IXMLCt_contratado read Get_Contratado;
    property ContratadoExecutante: IXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante read Get_ContratadoExecutante;
    property ProcedimentosExamesRealizados: IXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados read Get_ProcedimentosExamesRealizados;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaHonorarioIndividualReapresentacaoList }

  IXMLCt_guiaHonorarioIndividualReapresentacaoList = interface(IXMLNodeCollection)
    ['{6652D07F-AFE2-4798-A649-0FBD3D5B4045}']
    { Methods & Properties }
    function Add: IXMLCt_guiaHonorarioIndividualReapresentacao;
    function Insert(const Index: Integer): IXMLCt_guiaHonorarioIndividualReapresentacao;

    function Get_Item(Index: Integer): IXMLCt_guiaHonorarioIndividualReapresentacao;
    property Items[Index: Integer]: IXMLCt_guiaHonorarioIndividualReapresentacao read Get_Item; default;
  end;

{ IXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante }

  IXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante = interface(IXMLCt_contratado)
    ['{1B119873-7407-487F-8D61-F19B4997992F}']
    { Property Accessors }
    function Get_IdentificacaoProfissional: IXMLCt_profissionalExecutante;
    function Get_PosicaoProfissional: UnicodeString;
    function Get_TipoAcomodacao: UnicodeString;
    procedure Set_PosicaoProfissional(Value: UnicodeString);
    procedure Set_TipoAcomodacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoProfissional: IXMLCt_profissionalExecutante read Get_IdentificacaoProfissional;
    property PosicaoProfissional: UnicodeString read Get_PosicaoProfissional write Set_PosicaoProfissional;
    property TipoAcomodacao: UnicodeString read Get_TipoAcomodacao write Set_TipoAcomodacao;
  end;

{ IXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados }

  IXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados = interface(IXMLCt_procedimentoRevisao)
    ['{7CD639F1-0E77-46A3-BB79-4E6A1EEC3BAD}']
    { Property Accessors }
    function Get_TotalGeralHonorario: UnicodeString;
    procedure Set_TotalGeralHonorario(Value: UnicodeString);
    { Methods & Properties }
    property TotalGeralHonorario: UnicodeString read Get_TotalGeralHonorario write Set_TotalGeralHonorario;
  end;

{ IXMLCt_guiaTratamentoOdontologicoReapresentacao }

  IXMLCt_guiaTratamentoOdontologicoReapresentacao = interface(IXMLNode)
    ['{FF215C51-AE7C-4FFC-B1F9-72F132CFF936}']
    { Property Accessors }
    function Get_CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario;
    function Get_DadosContratadoExecutante: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante;
    function Get_ProcedimentosExecutados: IXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados;
    function Get_OutrasDespesas: IXMLCt_outrasDespesas;
    function Get_DadosAtendimento: IXMLCt_atendimentoOdontologia;
    function Get_TipoFaturamento: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_TipoFaturamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto read Get_CabecalhoGuia;
    property DadosBeneficiario: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario read Get_DadosBeneficiario;
    property DadosContratadoExecutante: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante read Get_DadosContratadoExecutante;
    property ProcedimentosExecutados: IXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados read Get_ProcedimentosExecutados;
    property OutrasDespesas: IXMLCt_outrasDespesas read Get_OutrasDespesas;
    property DadosAtendimento: IXMLCt_atendimentoOdontologia read Get_DadosAtendimento;
    property TipoFaturamento: UnicodeString read Get_TipoFaturamento write Set_TipoFaturamento;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaTratamentoOdontologicoReapresentacaoList }

  IXMLCt_guiaTratamentoOdontologicoReapresentacaoList = interface(IXMLNodeCollection)
    ['{E3374A66-8E65-4A74-A277-5B0C9DDD5D22}']
    { Methods & Properties }
    function Add: IXMLCt_guiaTratamentoOdontologicoReapresentacao;
    function Insert(const Index: Integer): IXMLCt_guiaTratamentoOdontologicoReapresentacao;

    function Get_Item(Index: Integer): IXMLCt_guiaTratamentoOdontologicoReapresentacao;
    property Items[Index: Integer]: IXMLCt_guiaTratamentoOdontologicoReapresentacao read Get_Item; default;
  end;

{ IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario }

  IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario = interface(IXMLCt_beneficiario)
    ['{C6017652-92C2-4FB8-B4A9-EE96CA90320F}']
    { Property Accessors }
    function Get_NomeEmpresa: UnicodeString;
    function Get_NumeroTelefone: UnicodeString;
    function Get_NomeTitular: UnicodeString;
    procedure Set_NomeEmpresa(Value: UnicodeString);
    procedure Set_NumeroTelefone(Value: UnicodeString);
    procedure Set_NomeTitular(Value: UnicodeString);
    { Methods & Properties }
    property NomeEmpresa: UnicodeString read Get_NomeEmpresa write Set_NomeEmpresa;
    property NumeroTelefone: UnicodeString read Get_NumeroTelefone write Set_NumeroTelefone;
    property NomeTitular: UnicodeString read Get_NomeTitular write Set_NomeTitular;
  end;

{ IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante }

  IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante = interface(IXMLNode)
    ['{2D3D8BD9-7379-41B0-83D4-3D4F1490D8B6}']
    { Property Accessors }
    function Get_DadosContratado: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado;
    function Get_DadosExecutante: IXMLCt_profissionalExecutante;
    { Methods & Properties }
    property DadosContratado: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado read Get_DadosContratado;
    property DadosExecutante: IXMLCt_profissionalExecutante read Get_DadosExecutante;
  end;

{ IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado }

  IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado = interface(IXMLCt_contratado)
    ['{0AFF0EDB-6511-4E9F-86B2-A30DEF672340}']
    { Property Accessors }
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    { Methods & Properties }
    property ConselhoProfissional: IXMLCt_conselhoProfissional read Get_ConselhoProfissional;
  end;

{ IXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados }

  IXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados = interface(IXMLNodeCollection)
    ['{AF0E41CE-075B-4C82-A8B2-470204425FB4}']
    { Property Accessors }
    function Get_ProcedimentoExecutado(Index: Integer): IXMLCt_procedimentoOdontoRevisao;
    { Methods & Properties }
    function Add: IXMLCt_procedimentoOdontoRevisao;
    function Insert(const Index: Integer): IXMLCt_procedimentoOdontoRevisao;
    property ProcedimentoExecutado[Index: Integer]: IXMLCt_procedimentoOdontoRevisao read Get_ProcedimentoExecutado; default;
  end;

{ IXMLCt_procedimentoOdontoRevisao }

  IXMLCt_procedimentoOdontoRevisao = interface(IXMLNode)
    ['{6A567F11-DC59-4300-9588-B4EB9FE2F0B6}']
    { Property Accessors }
    function Get_ProcedimentoOdontologia: IXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia;
    function Get_ValorTotal: UnicodeString;
    function Get_QuantidadeTotalUS: UnicodeString;
    function Get_TotalFranquiaCoparticipacao: UnicodeString;
    function Get_JustificativaRevisao: UnicodeString;
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_QuantidadeTotalUS(Value: UnicodeString);
    procedure Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
    procedure Set_JustificativaRevisao(Value: UnicodeString);
    { Methods & Properties }
    property ProcedimentoOdontologia: IXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia read Get_ProcedimentoOdontologia;
    property ValorTotal: UnicodeString read Get_ValorTotal write Set_ValorTotal;
    property QuantidadeTotalUS: UnicodeString read Get_QuantidadeTotalUS write Set_QuantidadeTotalUS;
    property TotalFranquiaCoparticipacao: UnicodeString read Get_TotalFranquiaCoparticipacao write Set_TotalFranquiaCoparticipacao;
    property JustificativaRevisao: UnicodeString read Get_JustificativaRevisao write Set_JustificativaRevisao;
  end;

{ IXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia }

  IXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia = interface(IXMLCt_procedimentoOdontologia)
    ['{B3E4D8B3-726A-47BA-9A65-BC89C9C2C373}']
    { Property Accessors }
    function Get_DataRealizacao: UnicodeString;
    procedure Set_DataRealizacao(Value: UnicodeString);
    { Methods & Properties }
    property DataRealizacao: UnicodeString read Get_DataRealizacao write Set_DataRealizacao;
  end;

{ IXMLCt_loteGuias_guias }

  IXMLCt_loteGuias_guias = interface(IXMLCt_guias)
    ['{F5A4E36D-AF10-45B6-929D-28F4BC6CD0BA}']
  end;

{ IXMLCt_loteAnexo }

  IXMLCt_loteAnexo = interface(IXMLNode)
    ['{F14EE1F2-5BBA-4DC1-8A64-1BB2E33CD33F}']
    { Property Accessors }
    function Get_NumeroLote: UnicodeString;
    function Get_AnexoGuia: IXMLCt_loteAnexo_anexoGuia;
    procedure Set_NumeroLote(Value: UnicodeString);
    { Methods & Properties }
    property NumeroLote: UnicodeString read Get_NumeroLote write Set_NumeroLote;
    property AnexoGuia: IXMLCt_loteAnexo_anexoGuia read Get_AnexoGuia;
  end;

{ IXMLCt_loteAnexo_anexoGuia }

  IXMLCt_loteAnexo_anexoGuia = interface(IXMLNode)
    ['{9FEF10F4-A769-435B-8393-80A76CA5169B}']
    { Property Accessors }
    function Get_AnexoSituacaoInicial: IXMLCt_anexoSituacaoInicial;
    { Methods & Properties }
    property AnexoSituacaoInicial: IXMLCt_anexoSituacaoInicial read Get_AnexoSituacaoInicial;
  end;

{ IXMLCt_anexoSituacaoInicial }

  IXMLCt_anexoSituacaoInicial = interface(IXMLNode)
    ['{318FE011-C699-40DA-B56A-9CCC146D08AC}']
    { Property Accessors }
    function Get_CabecalhoAnexoGuia: IXMLCt_cabecalhoAnexoOdonto;
    function Get_DadosBeneficiario: IXMLCt_anexoSituacaoInicial_dadosBeneficiario;
    function Get_DadosContratadoExecutante: IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante;
    function Get_SituacaoInicial: IXMLCt_situacaoInicial;
    function Get_Observacao: UnicodeString;
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property CabecalhoAnexoGuia: IXMLCt_cabecalhoAnexoOdonto read Get_CabecalhoAnexoGuia;
    property DadosBeneficiario: IXMLCt_anexoSituacaoInicial_dadosBeneficiario read Get_DadosBeneficiario;
    property DadosContratadoExecutante: IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante read Get_DadosContratadoExecutante;
    property SituacaoInicial: IXMLCt_situacaoInicial read Get_SituacaoInicial;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_cabecalhoAnexoOdonto }

  IXMLCt_cabecalhoAnexoOdonto = interface(IXMLNode)
    ['{3AC0A458-6934-4169-917A-B9639573A6D6}']
    { Property Accessors }
    function Get_NumeroGuiaPrincipal: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    { Methods & Properties }
    property NumeroGuiaPrincipal: UnicodeString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
  end;

{ IXMLCt_anexoSituacaoInicial_dadosBeneficiario }

  IXMLCt_anexoSituacaoInicial_dadosBeneficiario = interface(IXMLCt_beneficiario)
    ['{7DD24FAC-FF43-4376-9C3A-DA533EC70E51}']
    { Property Accessors }
    function Get_NomeEmpresa: UnicodeString;
    function Get_NumeroTelefone: UnicodeString;
    function Get_NomeTitular: UnicodeString;
    procedure Set_NomeEmpresa(Value: UnicodeString);
    procedure Set_NumeroTelefone(Value: UnicodeString);
    procedure Set_NomeTitular(Value: UnicodeString);
    { Methods & Properties }
    property NomeEmpresa: UnicodeString read Get_NomeEmpresa write Set_NomeEmpresa;
    property NumeroTelefone: UnicodeString read Get_NumeroTelefone write Set_NumeroTelefone;
    property NomeTitular: UnicodeString read Get_NomeTitular write Set_NomeTitular;
  end;

{ IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante }

  IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante = interface(IXMLNode)
    ['{E31E435A-6E09-4AF4-9ACF-023C7DDB567F}']
    { Property Accessors }
    function Get_DadosContratado: IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado;
    function Get_DadosExecutante: IXMLCt_profissionalExecutante;
    { Methods & Properties }
    property DadosContratado: IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado read Get_DadosContratado;
    property DadosExecutante: IXMLCt_profissionalExecutante read Get_DadosExecutante;
  end;

{ IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado }

  IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado = interface(IXMLCt_contratado)
    ['{4A61DAD0-E851-4780-9349-8AEBD8FE7D16}']
    { Property Accessors }
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    { Methods & Properties }
    property ConselhoProfissional: IXMLCt_conselhoProfissional read Get_ConselhoProfissional;
  end;

{ IXMLCt_situacaoInicial }

  IXMLCt_situacaoInicial = interface(IXMLNode)
    ['{AC65A28A-44CE-4EE5-B714-31ED5C06787D}']
    { Property Accessors }
    function Get_SituacaoClinica: IXMLCt_situacaoClinica;
    function Get_DoencaPeriodontal: Boolean;
    function Get_AlteracaoTecidoMole: Boolean;
    function Get_Observacao: UnicodeString;
    procedure Set_DoencaPeriodontal(Value: Boolean);
    procedure Set_AlteracaoTecidoMole(Value: Boolean);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property SituacaoClinica: IXMLCt_situacaoClinica read Get_SituacaoClinica;
    property DoencaPeriodontal: Boolean read Get_DoencaPeriodontal write Set_DoencaPeriodontal;
    property AlteracaoTecidoMole: Boolean read Get_AlteracaoTecidoMole write Set_AlteracaoTecidoMole;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_situacaoClinica }

  IXMLCt_situacaoClinica = interface(IXMLNodeCollection)
    ['{04F2EA3E-0A22-4D0C-AB03-E867009AAEB9}']
    { Property Accessors }
    function Get_Dentes(Index: Integer): IXMLCt_situacaoClinica_dentes;
    { Methods & Properties }
    function Add: IXMLCt_situacaoClinica_dentes;
    function Insert(const Index: Integer): IXMLCt_situacaoClinica_dentes;
    property Dentes[Index: Integer]: IXMLCt_situacaoClinica_dentes read Get_Dentes; default;
  end;

{ IXMLCt_situacaoClinica_dentes }

  IXMLCt_situacaoClinica_dentes = interface(IXMLNode)
    ['{F976763D-52B6-4DBD-AC20-BD919D286C66}']
    { Property Accessors }
    function Get_ElementoDentario: UnicodeString;
    function Get_CondicaoClinica: UnicodeString;
    procedure Set_ElementoDentario(Value: UnicodeString);
    procedure Set_CondicaoClinica(Value: UnicodeString);
    { Methods & Properties }
    property ElementoDentario: UnicodeString read Get_ElementoDentario write Set_ElementoDentario;
    property CondicaoClinica: UnicodeString read Get_CondicaoClinica write Set_CondicaoClinica;
  end;

{ IXMLCt_solicitacaoDemonstrativoPagamento }

  IXMLCt_solicitacaoDemonstrativoPagamento = interface(IXMLNode)
    ['{F4704F2F-8D7D-45BD-A0DB-FA18A1EBA9A6}']
    { Property Accessors }
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_DataSolicitacao: UnicodeString;
    function Get_TipoDemonstrativo: UnicodeString;
    function Get_DataInicial: UnicodeString;
    function Get_DataFinal: UnicodeString;
    function Get_NumeroProtocolo: UnicodeString;
    procedure Set_DataSolicitacao(Value: UnicodeString);
    procedure Set_TipoDemonstrativo(Value: UnicodeString);
    procedure Set_DataInicial(Value: UnicodeString);
    procedure Set_DataFinal(Value: UnicodeString);
    procedure Set_NumeroProtocolo(Value: UnicodeString);
    { Methods & Properties }
    property DadosPrestador: IXMLCt_contratado read Get_DadosPrestador;
    property DataSolicitacao: UnicodeString read Get_DataSolicitacao write Set_DataSolicitacao;
    property TipoDemonstrativo: UnicodeString read Get_TipoDemonstrativo write Set_TipoDemonstrativo;
    property DataInicial: UnicodeString read Get_DataInicial write Set_DataInicial;
    property DataFinal: UnicodeString read Get_DataFinal write Set_DataFinal;
    property NumeroProtocolo: UnicodeString read Get_NumeroProtocolo write Set_NumeroProtocolo;
  end;

{ IXMLCt_solicitacaoStatusProtocolo }

  IXMLCt_solicitacaoStatusProtocolo = interface(IXMLNode)
    ['{04A65B08-C3C1-4566-852F-69811D4302C9}']
    { Property Accessors }
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_DataSolicitacao: UnicodeString;
    function Get_DetalheProtocolo: IXMLCt_solicitacaoStatusProtocolo_detalheProtocolo;
    procedure Set_DataSolicitacao(Value: UnicodeString);
    { Methods & Properties }
    property DadosPrestador: IXMLCt_contratado read Get_DadosPrestador;
    property DataSolicitacao: UnicodeString read Get_DataSolicitacao write Set_DataSolicitacao;
    property DetalheProtocolo: IXMLCt_solicitacaoStatusProtocolo_detalheProtocolo read Get_DetalheProtocolo;
  end;

{ IXMLCt_solicitacaoStatusProtocolo_detalheProtocolo }

  IXMLCt_solicitacaoStatusProtocolo_detalheProtocolo = interface(IXMLNodeCollection)
    ['{2263747A-D4CB-4CB4-BFB1-FFEFDA2E3108}']
    { Property Accessors }
    function Get_NumeroProtocolo(Index: Integer): UnicodeString;
    { Methods & Properties }
    function Add(const NumeroProtocolo: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const NumeroProtocolo: UnicodeString): IXMLNode;
    property NumeroProtocolo[Index: Integer]: UnicodeString read Get_NumeroProtocolo; default;
  end;

{ IXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento }

  IXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento = interface(IXMLNode)
    ['{F997DDC3-BA41-4645-BE05-53443FDEFED4}']
    { Property Accessors }
    function Get_GuiaSolicInternacao: IXMLCt_guiaSolicInternacao;
    function Get_GuiaSolicitacaoSADT: IXMLCt_guiaSolicitacaoSP_SADT;
    function Get_GuiaSolicitacaoOdontologia: IXMLCt_guiaSolicitacaoOdonto;
    function Get_GuiaSolicitacaoProrrogacao: IXMLCt_guiaSolicitacaoProrrogacao;
    { Methods & Properties }
    property GuiaSolicInternacao: IXMLCt_guiaSolicInternacao read Get_GuiaSolicInternacao;
    property GuiaSolicitacaoSADT: IXMLCt_guiaSolicitacaoSP_SADT read Get_GuiaSolicitacaoSADT;
    property GuiaSolicitacaoOdontologia: IXMLCt_guiaSolicitacaoOdonto read Get_GuiaSolicitacaoOdontologia;
    property GuiaSolicitacaoProrrogacao: IXMLCt_guiaSolicitacaoProrrogacao read Get_GuiaSolicitacaoProrrogacao;
  end;

{ IXMLCt_guiaSolicInternacao }

  IXMLCt_guiaSolicInternacao = interface(IXMLNode)
    ['{3EAEF9AA-221F-4686-BEE7-E6FA4860E06E}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSolicitacaoInternacao: IXMLCt_cabecalhoSolicitacao;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_DadosSolicitanteAtendimento: IXMLCt_solicitante;
    function Get_DadosSolicitante: IXMLCt_solicitante;
    function Get_PrestadorSolicitado: IXMLCt_guiaSolicInternacao_prestadorSolicitado;
    function Get_CaraterInternacao: UnicodeString;
    function Get_TipoInternacao: UnicodeString;
    function Get_IndicacaoClinica: UnicodeString;
    function Get_RegimeInternacao: UnicodeString;
    function Get_HipotesesDiagnosticas: IXMLCt_hipoteseDiagnostica;
    function Get_ProcedimentosExamesSolicitados: IXMLCt_procedimentosSolicitados;
    function Get_OPMsSolicitadas: IXMLCt_OPMSolicitadas;
    function Get_DiasSolicitados: Integer;
    function Get_DataProvavelAdmisHosp: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_CaraterInternacao(Value: UnicodeString);
    procedure Set_TipoInternacao(Value: UnicodeString);
    procedure Set_IndicacaoClinica(Value: UnicodeString);
    procedure Set_RegimeInternacao(Value: UnicodeString);
    procedure Set_DiasSolicitados(Value: Integer);
    procedure Set_DataProvavelAdmisHosp(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoGuiaSolicitacaoInternacao: IXMLCt_cabecalhoSolicitacao read Get_IdentificacaoGuiaSolicitacaoInternacao;
    property DadosBeneficiario: IXMLCt_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitanteAtendimento: IXMLCt_solicitante read Get_DadosSolicitanteAtendimento;
    property DadosSolicitante: IXMLCt_solicitante read Get_DadosSolicitante;
    property PrestadorSolicitado: IXMLCt_guiaSolicInternacao_prestadorSolicitado read Get_PrestadorSolicitado;
    property CaraterInternacao: UnicodeString read Get_CaraterInternacao write Set_CaraterInternacao;
    property TipoInternacao: UnicodeString read Get_TipoInternacao write Set_TipoInternacao;
    property IndicacaoClinica: UnicodeString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property RegimeInternacao: UnicodeString read Get_RegimeInternacao write Set_RegimeInternacao;
    property HipotesesDiagnosticas: IXMLCt_hipoteseDiagnostica read Get_HipotesesDiagnosticas;
    property ProcedimentosExamesSolicitados: IXMLCt_procedimentosSolicitados read Get_ProcedimentosExamesSolicitados;
    property OPMsSolicitadas: IXMLCt_OPMSolicitadas read Get_OPMsSolicitadas;
    property DiasSolicitados: Integer read Get_DiasSolicitados write Set_DiasSolicitados;
    property DataProvavelAdmisHosp: UnicodeString read Get_DataProvavelAdmisHosp write Set_DataProvavelAdmisHosp;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_cabecalhoSolicitacao }

  IXMLCt_cabecalhoSolicitacao = interface(IXMLNode)
    ['{13BED627-C183-4BA5-B186-DE5D45874BED}']
    { Property Accessors }
    function Get_IdentificacaoFontePagadora: IXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora;
    function Get_DataEmissaoGuia: UnicodeString;
    function Get_NumeroGuiaOperadora: UnicodeString;
    function Get_NumeroGuiaPrestador: UnicodeString;
    procedure Set_DataEmissaoGuia(Value: UnicodeString);
    procedure Set_NumeroGuiaOperadora(Value: UnicodeString);
    procedure Set_NumeroGuiaPrestador(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoFontePagadora: IXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora read Get_IdentificacaoFontePagadora;
    property DataEmissaoGuia: UnicodeString read Get_DataEmissaoGuia write Set_DataEmissaoGuia;
    property NumeroGuiaOperadora: UnicodeString read Get_NumeroGuiaOperadora write Set_NumeroGuiaOperadora;
    property NumeroGuiaPrestador: UnicodeString read Get_NumeroGuiaPrestador write Set_NumeroGuiaPrestador;
  end;

{ IXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora }

  IXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora = interface(IXMLNode)
    ['{C6D68E86-253D-4485-8486-8B593A433F19}']
    { Property Accessors }
    function Get_RegistroANS: UnicodeString;
    function Get_CnpjFontePagadora: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CnpjFontePagadora(Value: UnicodeString);
    { Methods & Properties }
    property RegistroANS: UnicodeString read Get_RegistroANS write Set_RegistroANS;
    property CnpjFontePagadora: UnicodeString read Get_CnpjFontePagadora write Set_CnpjFontePagadora;
  end;

{ IXMLCt_guiaSolicInternacao_prestadorSolicitado }

  IXMLCt_guiaSolicInternacao_prestadorSolicitado = interface(IXMLCt_identificacaoPrestador)
    ['{518A4B6A-E7A7-40D7-9F37-4E9B227F784E}']
    { Property Accessors }
    function Get_NomePrestador: UnicodeString;
    procedure Set_NomePrestador(Value: UnicodeString);
    { Methods & Properties }
    property NomePrestador: UnicodeString read Get_NomePrestador write Set_NomePrestador;
  end;

{ IXMLCt_hipoteseDiagnostica }

  IXMLCt_hipoteseDiagnostica = interface(IXMLNode)
    ['{F4439B2D-EDF1-4AF9-87DC-38FE7BF30629}']
    { Property Accessors }
    function Get_CIDPrincipal: IXMLCt_diagnosticoGuia;
    function Get_DiagnosticosSecundarios: IXMLCt_diagnosticosSecundarios;
    { Methods & Properties }
    property CIDPrincipal: IXMLCt_diagnosticoGuia read Get_CIDPrincipal;
    property DiagnosticosSecundarios: IXMLCt_diagnosticosSecundarios read Get_DiagnosticosSecundarios;
  end;

{ IXMLCt_diagnosticoGuia }

  IXMLCt_diagnosticoGuia = interface(IXMLNode)
    ['{04108E2F-E0B7-4912-A0D2-4BFFA901E652}']
    { Property Accessors }
    function Get_CID: IXMLCt_diagnostico;
    function Get_TipoDoenca: UnicodeString;
    function Get_TempoReferidoEvolucaoDoenca: IXMLCt_tempoEvolucaoDoenca;
    function Get_IndicadorAcidente: UnicodeString;
    procedure Set_TipoDoenca(Value: UnicodeString);
    procedure Set_IndicadorAcidente(Value: UnicodeString);
    { Methods & Properties }
    property CID: IXMLCt_diagnostico read Get_CID;
    property TipoDoenca: UnicodeString read Get_TipoDoenca write Set_TipoDoenca;
    property TempoReferidoEvolucaoDoenca: IXMLCt_tempoEvolucaoDoenca read Get_TempoReferidoEvolucaoDoenca;
    property IndicadorAcidente: UnicodeString read Get_IndicadorAcidente write Set_IndicadorAcidente;
  end;

{ IXMLCt_procedimentosSolicitados }

  IXMLCt_procedimentosSolicitados = interface(IXMLNodeCollection)
    ['{39B67725-E3BE-48BC-811A-284168F0FDFC}']
    { Property Accessors }
    function Get_ProcedimentoSolicitado(Index: Integer): IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
    { Methods & Properties }
    function Add: IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
    function Insert(const Index: Integer): IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
    property ProcedimentoSolicitado[Index: Integer]: IXMLCt_procedimentosSolicitados_procedimentoSolicitado read Get_ProcedimentoSolicitado; default;
  end;

{ IXMLCt_procedimentosSolicitados_procedimentoSolicitado }

  IXMLCt_procedimentosSolicitados_procedimentoSolicitado = interface(IXMLNode)
    ['{FBDA73D0-7BC0-48F7-BACA-ABA1019FD09C}']
    { Property Accessors }
    function Get_QuantidadeSolicitada: Integer;
    function Get_Procedimento: IXMLCt_tabela;
    procedure Set_QuantidadeSolicitada(Value: Integer);
    { Methods & Properties }
    property QuantidadeSolicitada: Integer read Get_QuantidadeSolicitada write Set_QuantidadeSolicitada;
    property Procedimento: IXMLCt_tabela read Get_Procedimento;
  end;

{ IXMLCt_OPMSolicitadas }

  IXMLCt_OPMSolicitadas = interface(IXMLNodeCollection)
    ['{E306FCF1-9D61-45E1-8392-A7ABC44BEB30}']
    { Property Accessors }
    function Get_OPMSolicitada(Index: Integer): IXMLCt_OPMSolicitadas_OPMSolicitada;
    { Methods & Properties }
    function Add: IXMLCt_OPMSolicitadas_OPMSolicitada;
    function Insert(const Index: Integer): IXMLCt_OPMSolicitadas_OPMSolicitada;
    property OPMSolicitada[Index: Integer]: IXMLCt_OPMSolicitadas_OPMSolicitada read Get_OPMSolicitada; default;
  end;

{ IXMLCt_OPMSolicitadas_OPMSolicitada }

  IXMLCt_OPMSolicitadas_OPMSolicitada = interface(IXMLNode)
    ['{B2B42D48-CB20-4A8E-AC26-4622221731D1}']
    { Property Accessors }
    function Get_QuantidadeSolicitada: UnicodeString;
    function Get_Fabricante: UnicodeString;
    function Get_Valor: UnicodeString;
    function Get_OPM: IXMLCt_tabela;
    procedure Set_QuantidadeSolicitada(Value: UnicodeString);
    procedure Set_Fabricante(Value: UnicodeString);
    procedure Set_Valor(Value: UnicodeString);
    { Methods & Properties }
    property QuantidadeSolicitada: UnicodeString read Get_QuantidadeSolicitada write Set_QuantidadeSolicitada;
    property Fabricante: UnicodeString read Get_Fabricante write Set_Fabricante;
    property Valor: UnicodeString read Get_Valor write Set_Valor;
    property OPM: IXMLCt_tabela read Get_OPM;
  end;

{ IXMLCt_guiaSolicitacaoSP_SADT }

  IXMLCt_guiaSolicitacaoSP_SADT = interface(IXMLNode)
    ['{6051C2D0-C3E8-493A-82CC-0F8D0326FB86}']
    { Property Accessors }
    function Get_IdentificacaoGuiaSolicitacaoSADTSP: IXMLCt_cabecalhoSolicitacao;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_DadosSolicitante: IXMLCt_solicitante;
    function Get_PrestadorExecutante: IXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante;
    function Get_CaraterSolicitacao: UnicodeString;
    function Get_DataHoraSolicitacao: UnicodeString;
    function Get_Diagnostico: IXMLCt_diagnostico;
    function Get_IndicacaoClinica: UnicodeString;
    function Get_ProcedimentosSolicitados: IXMLCt_procedimentosSolicitados;
    function Get_OpmSolicitada: IXMLCt_OPMSolicitadas;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_CaraterSolicitacao(Value: UnicodeString);
    procedure Set_DataHoraSolicitacao(Value: UnicodeString);
    procedure Set_IndicacaoClinica(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoGuiaSolicitacaoSADTSP: IXMLCt_cabecalhoSolicitacao read Get_IdentificacaoGuiaSolicitacaoSADTSP;
    property NumeroGuiaPrincipal: UnicodeString read Get_NumeroGuiaPrincipal write Set_NumeroGuiaPrincipal;
    property DadosBeneficiario: IXMLCt_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: IXMLCt_solicitante read Get_DadosSolicitante;
    property PrestadorExecutante: IXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante read Get_PrestadorExecutante;
    property CaraterSolicitacao: UnicodeString read Get_CaraterSolicitacao write Set_CaraterSolicitacao;
    property DataHoraSolicitacao: UnicodeString read Get_DataHoraSolicitacao write Set_DataHoraSolicitacao;
    property Diagnostico: IXMLCt_diagnostico read Get_Diagnostico;
    property IndicacaoClinica: UnicodeString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property ProcedimentosSolicitados: IXMLCt_procedimentosSolicitados read Get_ProcedimentosSolicitados;
    property OpmSolicitada: IXMLCt_OPMSolicitadas read Get_OpmSolicitada;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante }

  IXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante = interface(IXMLCt_contratado)
    ['{D1D5F121-09F3-4895-8AC0-2D3352C0ED30}']
  end;

{ IXMLCt_guiaSolicitacaoOdonto }

  IXMLCt_guiaSolicitacaoOdonto = interface(IXMLNode)
    ['{111775FE-A03A-48A3-97BB-46E29782A9D2}']
    { Property Accessors }
    function Get_CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: IXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario;
    function Get_DadosSolicitante: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante;
    function Get_PlanoTratamento: IXMLCt_guiaSolicitacaoOdonto_planoTratamento;
    function Get_TipoAtendimento: UnicodeString;
    function Get_DataTerminoTratamento: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_TipoAtendimento(Value: UnicodeString);
    procedure Set_DataTerminoTratamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto read Get_CabecalhoGuia;
    property DadosBeneficiario: IXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante read Get_DadosSolicitante;
    property PlanoTratamento: IXMLCt_guiaSolicitacaoOdonto_planoTratamento read Get_PlanoTratamento;
    property TipoAtendimento: UnicodeString read Get_TipoAtendimento write Set_TipoAtendimento;
    property DataTerminoTratamento: UnicodeString read Get_DataTerminoTratamento write Set_DataTerminoTratamento;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario }

  IXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario = interface(IXMLCt_beneficiario)
    ['{ED9B8ECD-2449-448B-A1EF-33767487E819}']
    { Property Accessors }
    function Get_NomeEmpresa: UnicodeString;
    function Get_NumeroTelefone: UnicodeString;
    function Get_NomeTitular: UnicodeString;
    procedure Set_NomeEmpresa(Value: UnicodeString);
    procedure Set_NumeroTelefone(Value: UnicodeString);
    procedure Set_NomeTitular(Value: UnicodeString);
    { Methods & Properties }
    property NomeEmpresa: UnicodeString read Get_NomeEmpresa write Set_NomeEmpresa;
    property NumeroTelefone: UnicodeString read Get_NumeroTelefone write Set_NumeroTelefone;
    property NomeTitular: UnicodeString read Get_NomeTitular write Set_NomeTitular;
  end;

{ IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante }

  IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante = interface(IXMLNode)
    ['{BA3DB74D-A584-46F3-98F9-F2C9B5679892}']
    { Property Accessors }
    function Get_DadosContratado: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado;
    function Get_DadosProfissional: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional;
    { Methods & Properties }
    property DadosContratado: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado read Get_DadosContratado;
    property DadosProfissional: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional read Get_DadosProfissional;
  end;

{ IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado }

  IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado = interface(IXMLCt_contratado)
    ['{16577036-849E-4BE0-A96F-6F847F8DCAFC}']
    { Property Accessors }
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    { Methods & Properties }
    property ConselhoProfissional: IXMLCt_conselhoProfissional read Get_ConselhoProfissional;
  end;

{ IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional }

  IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional = interface(IXMLCt_profissionalExecutante)
    ['{3DC650C9-DF11-4CD6-A1A7-B8CCA484EC46}']
  end;

{ IXMLCt_guiaSolicitacaoOdonto_planoTratamento }

  IXMLCt_guiaSolicitacaoOdonto_planoTratamento = interface(IXMLNodeCollection)
    ['{A1061A67-55E4-4077-9E76-5F2CA592230B}']
    { Property Accessors }
    function Get_ProcedimentoSolicitado(Index: Integer): IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
    { Methods & Properties }
    function Add: IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
    function Insert(const Index: Integer): IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
    property ProcedimentoSolicitado[Index: Integer]: IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado read Get_ProcedimentoSolicitado; default;
  end;

{ IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado }

  IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado = interface(IXMLCt_procedimentoOdontologia)
    ['{08D97501-7641-4B10-B230-8641FB967FCC}']
    { Property Accessors }
    function Get_TotalFranquiaCoparticipacao: UnicodeString;
    procedure Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
    { Methods & Properties }
    property TotalFranquiaCoparticipacao: UnicodeString read Get_TotalFranquiaCoparticipacao write Set_TotalFranquiaCoparticipacao;
  end;

{ IXMLCt_guiaSolicitacaoProrrogacao }

  IXMLCt_guiaSolicitacaoProrrogacao = interface(IXMLNode)
    ['{45C9373A-E41D-49B7-BFD2-E557EAF0C1FB}']
    { Property Accessors }
    function Get_IdentificacaoProrrogacao: IXMLCt_cabecalhoGuia;
    function Get_IdentificacaoGuiaReferencia: IXMLCt_cabecalhoGuia;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_DadosSolicitante: IXMLCt_solicitante;
    function Get_IndicacaoClinica: UnicodeString;
    function Get_ResponsavelAutorizacao: UnicodeString;
    function Get_ProcedimentosExamesSolicitados: IXMLCt_procedimentosSolicitados;
    function Get_Diarias: IXMLCt_diariaProrrogacao;
    function Get_OPMsSolicitadas: IXMLCt_OPMSolicitadas;
    function Get_Observacao: UnicodeString;
    procedure Set_IndicacaoClinica(Value: UnicodeString);
    procedure Set_ResponsavelAutorizacao(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoProrrogacao: IXMLCt_cabecalhoGuia read Get_IdentificacaoProrrogacao;
    property IdentificacaoGuiaReferencia: IXMLCt_cabecalhoGuia read Get_IdentificacaoGuiaReferencia;
    property DadosBeneficiario: IXMLCt_beneficiario read Get_DadosBeneficiario;
    property DadosSolicitante: IXMLCt_solicitante read Get_DadosSolicitante;
    property IndicacaoClinica: UnicodeString read Get_IndicacaoClinica write Set_IndicacaoClinica;
    property ResponsavelAutorizacao: UnicodeString read Get_ResponsavelAutorizacao write Set_ResponsavelAutorizacao;
    property ProcedimentosExamesSolicitados: IXMLCt_procedimentosSolicitados read Get_ProcedimentosExamesSolicitados;
    property Diarias: IXMLCt_diariaProrrogacao read Get_Diarias;
    property OPMsSolicitadas: IXMLCt_OPMSolicitadas read Get_OPMsSolicitadas;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_solicitaStatusAutorizacao }

  IXMLCt_solicitaStatusAutorizacao = interface(IXMLNode)
    ['{D5AD2206-ADF0-4282-8B0D-3AF810BA42A2}']
    { Property Accessors }
    function Get_IdentificacaoAutorizacao: IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao;
    function Get_DataSolicitaStatus: UnicodeString;
    procedure Set_DataSolicitaStatus(Value: UnicodeString);
    { Methods & Properties }
    property IdentificacaoAutorizacao: IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao read Get_IdentificacaoAutorizacao;
    property DataSolicitaStatus: UnicodeString read Get_DataSolicitaStatus write Set_DataSolicitaStatus;
  end;

{ IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao }

  IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao = interface(IXMLNodeCollection)
    ['{D6572717-81B8-4ED3-BE87-3408E2CFE364}']
    { Property Accessors }
    function Get_IdentificacaoSolicitacao(Index: Integer): IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
    { Methods & Properties }
    function Add: IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
    function Insert(const Index: Integer): IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
    property IdentificacaoSolicitacao[Index: Integer]: IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao read Get_IdentificacaoSolicitacao; default;
  end;

{ IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao }

  IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao = interface(IXMLCt_cabecalhoSolicitacao)
    ['{DD5ED454-3760-40A2-A1F0-4C212F76FAFF}']
    { Property Accessors }
    function Get_ProfissionalSolicitante: IXMLCt_contratadoSolicitante;
    function Get_IdentificacaoBeneficiario: IXMLCt_beneficiario;
    { Methods & Properties }
    property ProfissionalSolicitante: IXMLCt_contratadoSolicitante read Get_ProfissionalSolicitante;
    property IdentificacaoBeneficiario: IXMLCt_beneficiario read Get_IdentificacaoBeneficiario;
  end;

{ IXMLCt_solicitaElegibilidade }

  IXMLCt_solicitaElegibilidade = interface(IXMLNode)
    ['{28539E91-4DDF-40FD-95EB-7605968761B9}']
    { Property Accessors }
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    { Methods & Properties }
    property DadosPrestador: IXMLCt_contratado read Get_DadosPrestador;
    property DadosBeneficiario: IXMLCt_beneficiario read Get_DadosBeneficiario;
  end;

{ IXMLCt_cancelaGuia }

  IXMLCt_cancelaGuia = interface(IXMLNode)
    ['{382411F7-3E2D-458F-B3F4-1F8D7F861C0D}']
    { Property Accessors }
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_TipoGuia: UnicodeString;
    function Get_Guia: IXMLCt_cancelaGuia_guia;
    function Get_Observacao: UnicodeString;
    procedure Set_TipoGuia(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
    { Methods & Properties }
    property DadosPrestador: IXMLCt_contratado read Get_DadosPrestador;
    property TipoGuia: UnicodeString read Get_TipoGuia write Set_TipoGuia;
    property Guia: IXMLCt_cancelaGuia_guia read Get_Guia;
    property Observacao: UnicodeString read Get_Observacao write Set_Observacao;
  end;

{ IXMLCt_cancelaGuia_guia }

  IXMLCt_cancelaGuia_guia = interface(IXMLNodeCollection)
    ['{459FC778-E9B5-4163-B32E-9084CFE31F4E}']
    { Property Accessors }
    function Get_DadosGuia(Index: Integer): IXMLCt_cabecalhoGuia;
    { Methods & Properties }
    function Add: IXMLCt_cabecalhoGuia;
    function Insert(const Index: Integer): IXMLCt_cabecalhoGuia;
    property DadosGuia[Index: Integer]: IXMLCt_cabecalhoGuia read Get_DadosGuia; default;
  end;

{ IXMLMensagemTISS_epilogo }

  IXMLMensagemTISS_epilogo = interface(IXMLNode)
    ['{4D6F1E9B-40A9-4F80-95E1-F8C048207733}']
    { Property Accessors }
    function Get_Hash: UnicodeString;
    procedure Set_Hash(Value: UnicodeString);
    { Methods & Properties }
    property Hash: UnicodeString read Get_Hash write Set_Hash;
  end;

{ IXMLCt_diariaProrrogacaoAutorizada }

  IXMLCt_diariaProrrogacaoAutorizada = interface(IXMLCt_diariaProrrogacao)
    ['{4B6DC3A6-1E70-4A0A-9784-05544C8ED76F}']
    { Property Accessors }
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_MotivoGlosa: IXMLCt_motivoGlosa;
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
    { Methods & Properties }
    property QuantidadeAutorizada: UnicodeString read Get_QuantidadeAutorizada write Set_QuantidadeAutorizada;
    property MotivoGlosa: IXMLCt_motivoGlosa read Get_MotivoGlosa;
  end;

{ IXMLCt_executanteComplementar }

  IXMLCt_executanteComplementar = interface(IXMLNode)
    ['{7F682E54-79BE-4718-B313-FD3C36D97255}']
    { Property Accessors }
    function Get_CodigoProfissionalCompl: IXMLCt_identificacaoPrestador;
    function Get_NomeProfissionalCompl: UnicodeString;
    procedure Set_NomeProfissionalCompl(Value: UnicodeString);
    { Methods & Properties }
    property CodigoProfissionalCompl: IXMLCt_identificacaoPrestador read Get_CodigoProfissionalCompl;
    property NomeProfissionalCompl: UnicodeString read Get_NomeProfissionalCompl write Set_NomeProfissionalCompl;
  end;

{ IXMLCt_OPMAutorizada }

  IXMLCt_OPMAutorizada = interface(IXMLNodeCollection)
    ['{C62AFC39-3235-4878-B7CA-55528B1E4BF1}']
    { Property Accessors }
    function Get_OPMAutorizada(Index: Integer): IXMLCt_OPMAutorizada_OPMAutorizada;
    { Methods & Properties }
    function Add: IXMLCt_OPMAutorizada_OPMAutorizada;
    function Insert(const Index: Integer): IXMLCt_OPMAutorizada_OPMAutorizada;
    property OPMAutorizada[Index: Integer]: IXMLCt_OPMAutorizada_OPMAutorizada read Get_OPMAutorizada; default;
  end;

{ IXMLCt_OPMAutorizada_OPMAutorizada }

  IXMLCt_OPMAutorizada_OPMAutorizada = interface(IXMLNode)
    ['{482BE26E-1ABF-4AA2-8313-BDA002112053}']
    { Property Accessors }
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_Fabricante: UnicodeString;
    function Get_OPM: IXMLCt_tabela;
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
    procedure Set_Fabricante(Value: UnicodeString);
    { Methods & Properties }
    property QuantidadeAutorizada: UnicodeString read Get_QuantidadeAutorizada write Set_QuantidadeAutorizada;
    property Fabricante: UnicodeString read Get_Fabricante write Set_Fabricante;
    property OPM: IXMLCt_tabela read Get_OPM;
  end;

{ IXMLCt_periodoProcessamento }

  IXMLCt_periodoProcessamento = interface(IXMLNode)
    ['{DF36677A-29F7-48A7-B245-E63CFBAD200F}']
    { Property Accessors }
    function Get_DataInicial: UnicodeString;
    function Get_DataFinal: UnicodeString;
    procedure Set_DataInicial(Value: UnicodeString);
    procedure Set_DataFinal(Value: UnicodeString);
    { Methods & Properties }
    property DataInicial: UnicodeString read Get_DataInicial write Set_DataInicial;
    property DataFinal: UnicodeString read Get_DataFinal write Set_DataFinal;
  end;

{ IXMLCt_situacaoDentes }

  IXMLCt_situacaoDentes = interface(IXMLNode)
    ['{C7AA81D8-8CD9-4295-8B17-A6ECBA4C694F}']
    { Property Accessors }
    function Get_Dente: UnicodeString;
    function Get_Obturado: Boolean;
    function Get_Careado: Boolean;
    function Get_Perdido: Boolean;
    procedure Set_Dente(Value: UnicodeString);
    procedure Set_Obturado(Value: Boolean);
    procedure Set_Careado(Value: Boolean);
    procedure Set_Perdido(Value: Boolean);
    { Methods & Properties }
    property Dente: UnicodeString read Get_Dente write Set_Dente;
    property Obturado: Boolean read Get_Obturado write Set_Obturado;
    property Careado: Boolean read Get_Careado write Set_Careado;
    property Perdido: Boolean read Get_Perdido write Set_Perdido;
  end;

{ IXMLCt_totaisOdonto }

  IXMLCt_totaisOdonto = interface(IXMLNode)
    ['{7FD36906-AC6E-4B0F-AC6C-E590D8FD7B33}']
    { Property Accessors }
    function Get_ServicoExecutado: UnicodeString;
    function Get_Taxas: UnicodeString;
    function Get_Materiais: UnicodeString;
    function Get_Medicamentos: UnicodeString;
    function Get_TotalGeral: UnicodeString;
    procedure Set_ServicoExecutado(Value: UnicodeString);
    procedure Set_Taxas(Value: UnicodeString);
    procedure Set_Materiais(Value: UnicodeString);
    procedure Set_Medicamentos(Value: UnicodeString);
    procedure Set_TotalGeral(Value: UnicodeString);
    { Methods & Properties }
    property ServicoExecutado: UnicodeString read Get_ServicoExecutado write Set_ServicoExecutado;
    property Taxas: UnicodeString read Get_Taxas write Set_Taxas;
    property Materiais: UnicodeString read Get_Materiais write Set_Materiais;
    property Medicamentos: UnicodeString read Get_Medicamentos write Set_Medicamentos;
    property TotalGeral: UnicodeString read Get_TotalGeral write Set_TotalGeral;
  end;

{ IXMLCt_tratamenteOdontoRealizado }

  IXMLCt_tratamenteOdontoRealizado = interface(IXMLNode)
    ['{5DD97026-77B8-4C71-8133-294A38004B93}']
    { Property Accessors }
    function Get_Data: UnicodeString;
    function Get_Procedimento: IXMLCt_tabela;
    function Get_Dente: UnicodeString;
    function Get_Face: UnicodeString;
    procedure Set_Data(Value: UnicodeString);
    procedure Set_Dente(Value: UnicodeString);
    procedure Set_Face(Value: UnicodeString);
    { Methods & Properties }
    property Data: UnicodeString read Get_Data write Set_Data;
    property Procedimento: IXMLCt_tabela read Get_Procedimento;
    property Dente: UnicodeString read Get_Dente write Set_Dente;
    property Face: UnicodeString read Get_Face write Set_Face;
  end;

{ IXMLCt_tratamentoOdontoSolicitado }

  IXMLCt_tratamentoOdontoSolicitado = interface(IXMLNode)
    ['{2CBE1D1C-BB90-4C60-9C78-4CED938B98C8}']
    { Property Accessors }
    function Get_Procedimento: IXMLCt_tabela;
    function Get_Dente: UnicodeString;
    function Get_Face: UnicodeString;
    procedure Set_Dente(Value: UnicodeString);
    procedure Set_Face(Value: UnicodeString);
    { Methods & Properties }
    property Procedimento: IXMLCt_tabela read Get_Procedimento;
    property Dente: UnicodeString read Get_Dente write Set_Dente;
    property Face: UnicodeString read Get_Face write Set_Face;
  end;

{ IXMLSt_tipoGlosaList }

  IXMLSt_tipoGlosaList = interface(IXMLNodeCollection)
    ['{C690D482-1001-40BD-B813-797160E0093B}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLMensagemTISS = class;
  TXMLCabecalhoTransacao = class;
  TXMLCabecalhoTransacao_identificacaoTransacao = class;
  TXMLCt_motivoGlosa = class;
  TXMLCt_motivoGlosaList = class;
  TXMLCabecalhoTransacao_falhaNegocio = class;
  TXMLCabecalhoTransacao_origem = class;
  TXMLCt_identificacaoPrestadorExecutante = class;
  TXMLCabecalhoTransacao_destino = class;
  TXMLMensagemTISS_operadoraParaPrestador = class;
  TXMLCt_protocoloRecebimento = class;
  TXMLCt_protocoloRecebimento_protocoloRecebimento = class;
  TXMLCt_identificacaoFontePagadora = class;
  TXMLCt_identificacaoFontePagadora_operadoraRegulada = class;
  TXMLCt_identificacaoFontePagadora_entidadeNaoRegulada = class;
  TXMLCt_contratado = class;
  TXMLCt_endereco = class;
  TXMLCt_detalheProtocolo = class;
  TXMLCt_detalheProtocolo_codigoGlosaProtocolo = class;
  TXMLCt_detalheProtocolo_guias = class;
  TXMLCt_dadosGuia = class;
  TXMLCt_beneficiario = class;
  TXMLCt_dadosGuia_procedimentos = class;
  TXMLCt_dadosProcedimento = class;
  TXMLCt_dadosProcedimentoList = class;
  TXMLCt_tabela = class;
  TXMLCt_dadosProcedimento_relacaoGlosa = class;
  TXMLCt_procedimentoOdontoRealizado = class;
  TXMLCt_procedimentoOdontoRealizadoList = class;
  TXMLCt_denteRegiao = class;
  TXMLCt_procedimentoOdontoRealizado_glosas = class;
  TXMLCt_protocoloRecebimentoAnexo = class;
  TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento = class;
  TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo = class;
  TXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno = class;
  TXMLCt_demonstrativoAnaliseConta = class;
  TXMLCt_demonstrativoAnaliseContaList = class;
  TXMLCt_cabecalhoDemonstrativo = class;
  TXMLCt_demonstrativoAnaliseConta_fatura = class;
  TXMLCt_dadosConta = class;
  TXMLCt_dadosConta_lote = class;
  TXMLCt_dadosLote = class;
  TXMLCt_dadosLote_guia = class;
  TXMLCt_demonstrativoOdontologia = class;
  TXMLCt_demonstrativoOdontologiaList = class;
  TXMLCt_demonstrativoOdontologia_dadosPrestador = class;
  TXMLCt_identificadorPrestOdontoDemo = class;
  TXMLCt_dadosPagamento = class;
  TXMLCt_loteOdonto = class;
  TXMLCt_detalheGuiaOdonto = class;
  TXMLCt_detalheGuiaOdontoList = class;
  TXMLCt_detalheGuiaOdonto_procedimentoRealizado = class;
  TXMLCt_dadosPagamento_loteOdonto = class;
  TXMLCt_dadosPagamento_loteOdontoList = class;
  TXMLCt_totalDemoOdonto = class;
  TXMLCt_demonstrativoOdontologia_dadosPagamento = class;
  TXMLCt_demonstrativoOdontologia_dadosPagamentoList = class;
  TXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis = class;
  TXMLCt_descontoOdonto = class;
  TXMLCt_descontoOdontoList = class;
  TXMLCt_creditoOdonto = class;
  TXMLCt_creditoOdontoList = class;
  TXMLCt_demonstrativoOdontologia_demaisImpostos = class;
  TXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis = class;
  TXMLCt_demonstrativoPagamento = class;
  TXMLCt_demonstrativoPagamentoList = class;
  TXMLCt_dadoBancario = class;
  TXMLCt_demonstrativoPagamento_dadosResumo = class;
  TXMLCt_dadosResumo = class;
  TXMLCt_dadosResumoList = class;
  TXMLCt_descontos = class;
  TXMLCt_descontos_itemDesconto = class;
  TXMLCt_StatusProtocolo = class;
  TXMLCt_StatusProtocolo_lote = class;
  TXMLCt_statusLote = class;
  TXMLCt_statusLote_guias = class;
  TXMLCt_statusLote_guias_detalheguiaMedica = class;
  TXMLCt_statusLote_guias_detalheguiaMedicaList = class;
  TXMLCt_cabecalhoGuia = class;
  TXMLCt_cabecalhoGuia_identificacaoFontePagadora = class;
  TXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados = class;
  TXMLCt_itemSolicitacao = class;
  TXMLCt_itemSolicitacao_glosas = class;
  TXMLCt_statusLote_guias_detalheguiaOdonto = class;
  TXMLCt_statusLote_guias_detalheguiaOdontoList = class;
  TXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados = class;
  TXMLCt_itemSolicitacaoOdonto = class;
  TXMLCt_itemSolicitacaoOdonto_glosas = class;
  TXMLCt_autorizacaoProcedimento = class;
  TXMLCt_autorizacaoProcedimento_motivoNegativa = class;
  TXMLCt_autorizacaoGuia = class;
  TXMLCt_autorizacaoGuiaInternacao = class;
  TXMLCt_autorizacaoProcedimento_procedimentos = class;
  TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico = class;
  TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList = class;
  TXMLCt_diariaProrrogacao = class;
  TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada = class;
  TXMLCt_autorizacaoProcedimentoOdonto = class;
  TXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa = class;
  TXMLCt_autorizacaoProcedimentoOdonto_procedimentos = class;
  TXMLCt_autorizacaoProcedimentoOdonto_totalOdonto = class;
  TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto = class;
  TXMLCt_situacaoAutorizacao = class;
  TXMLCt_situacaoAutorizacao_dadosAutorizacao = class;
  TXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto = class;
  TXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada = class;
  TXMLCt_retornoElegibilidade = class;
  TXMLCt_reciboCancelaGuia = class;
  TXMLCt_reciboCancelaGuia_guiasCanceladas = class;
  TXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia = class;
  TXMLMensagemTISS_prestadorParaOperadora = class;
  TXMLCt_loteGuias = class;
  TXMLCt_guias = class;
  TXMLCt_guias_guiaFaturamento = class;
  TXMLCt_guiaConsulta = class;
  TXMLCt_guiaConsultaList = class;
  TXMLCt_identificacaoProfissional = class;
  TXMLCt_conselhoProfissional = class;
  TXMLCt_diagnosticoAtendimento = class;
  TXMLCt_diagnostico = class;
  TXMLCt_tempoEvolucaoDoenca = class;
  TXMLCt_guiaConsulta_hipoteseDiagnostica = class;
  TXMLCt_diagnosticosSecundarios = class;
  TXMLCt_atendimentoConsulta = class;
  TXMLCt_atendimentoConsulta_procedimento = class;
  TXMLCt_guiaConsulta_dadosAtendimento = class;
  TXMLCt_guiaSP_SADT = class;
  TXMLCt_guiaSP_SADTList = class;
  TXMLCt_solicitante = class;
  TXMLCt_contratadoSolicitante = class;
  TXMLCt_identificacaoPrestador = class;
  TXMLCt_guiaSP_SADT_prestadorExecutante = class;
  TXMLCt_profissionalExecutante = class;
  TXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl = class;
  TXMLCt_identificacaoProfissionalCompl = class;
  TXMLCt_procedimentoRealizadoEquipe = class;
  TXMLCt_procedimentoRealizadoEquipe_procedimentos = class;
  TXMLCt_identificacaoEquipe = class;
  TXMLCt_identificacaoEquipe_membroEquipe = class;
  TXMLCt_identificacaoPrestadorEquipe = class;
  TXMLCt_outrasDespesas = class;
  TXMLCt_outrasDespesas_despesa = class;
  TXMLCt_outrasDespesas_despesaList = class;
  TXMLCt_OPMUtilizada = class;
  TXMLCt_OPMUtilizada_OPM = class;
  TXMLCt_OPMUtilizada_OPM_identificacaoOPM = class;
  TXMLCt_valorTotalServicos = class;
  TXMLCt_guiaResumoInternacao = class;
  TXMLCt_guiaResumoInternacaoList = class;
  TXMLCt_internacaoObstetrica = class;
  TXMLCt_numeroDN = class;
  TXMLCt_obitoNeonatal = class;
  TXMLCt_diagnosticoSaidaInternacao = class;
  TXMLCt_obitoInternacao = class;
  TXMLCt_obitoInternacaoList = class;
  TXMLCt_guiaHonorarioIndividual = class;
  TXMLCt_guiaHonorarioIndividualList = class;
  TXMLCt_guiaHonorarioIndividual_contratadoExecutante = class;
  TXMLCt_procedimentosRealizados = class;
  TXMLCt_procedimentosRealizados_procedimentoRealizado = class;
  TXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados = class;
  TXMLCt_guiaOdontologia = class;
  TXMLCt_guiaOdontologiaList = class;
  TXMLCt_cabecalhoGuiaOdonto = class;
  TXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora = class;
  TXMLCt_guiaOdontologia_dadosBeneficiario = class;
  TXMLCt_guiaOdontologia_dadosContratadoExecutante = class;
  TXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado = class;
  TXMLCt_guiaOdontologia_procedimentosExecutados = class;
  TXMLCt_procedimentoOdontologia = class;
  TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado = class;
  TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList = class;
  TXMLCt_atendimentoOdontologia = class;
  TXMLCt_guias_guiaRevisaoGlosa = class;
  TXMLCt_guiaConsultaReapresentacao = class;
  TXMLCt_guiaConsultaReapresentacaoList = class;
  TXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica = class;
  TXMLCt_atendimentoConsultaReapr = class;
  TXMLCt_atendimentoConsultaReapr_procedimento = class;
  TXMLCt_guiaSP_SADTReapresentacao = class;
  TXMLCt_guiaSP_SADTReapresentacaoList = class;
  TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante = class;
  TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl = class;
  TXMLCt_procedimentoRevisao = class;
  TXMLCt_procedimentoRevisao_procedimentosRevisao = class;
  TXMLCt_outrasDespesasRevisao = class;
  TXMLCt_outrasDespesasRevisao_itensDespesas = class;
  TXMLCt_outrasDespesasRevisao_itensDespesasList = class;
  TXMLCt_OPMUtilizadasRevisao = class;
  TXMLCt_OPMUtilizadasRevisao_OPMUtilizada = class;
  TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM = class;
  TXMLCt_guiaResumoInternacaoReapresentacao = class;
  TXMLCt_guiaResumoInternacaoReapresentacaoList = class;
  TXMLCt_guiaHonorarioIndividualReapresentacao = class;
  TXMLCt_guiaHonorarioIndividualReapresentacaoList = class;
  TXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante = class;
  TXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados = class;
  TXMLCt_guiaTratamentoOdontologicoReapresentacao = class;
  TXMLCt_guiaTratamentoOdontologicoReapresentacaoList = class;
  TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario = class;
  TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante = class;
  TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado = class;
  TXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados = class;
  TXMLCt_procedimentoOdontoRevisao = class;
  TXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia = class;
  TXMLCt_loteGuias_guias = class;
  TXMLCt_loteAnexo = class;
  TXMLCt_loteAnexo_anexoGuia = class;
  TXMLCt_anexoSituacaoInicial = class;
  TXMLCt_cabecalhoAnexoOdonto = class;
  TXMLCt_anexoSituacaoInicial_dadosBeneficiario = class;
  TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante = class;
  TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado = class;
  TXMLCt_situacaoInicial = class;
  TXMLCt_situacaoClinica = class;
  TXMLCt_situacaoClinica_dentes = class;
  TXMLCt_solicitacaoDemonstrativoPagamento = class;
  TXMLCt_solicitacaoStatusProtocolo = class;
  TXMLCt_solicitacaoStatusProtocolo_detalheProtocolo = class;
  TXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento = class;
  TXMLCt_guiaSolicInternacao = class;
  TXMLCt_cabecalhoSolicitacao = class;
  TXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora = class;
  TXMLCt_guiaSolicInternacao_prestadorSolicitado = class;
  TXMLCt_hipoteseDiagnostica = class;
  TXMLCt_diagnosticoGuia = class;
  TXMLCt_procedimentosSolicitados = class;
  TXMLCt_procedimentosSolicitados_procedimentoSolicitado = class;
  TXMLCt_OPMSolicitadas = class;
  TXMLCt_OPMSolicitadas_OPMSolicitada = class;
  TXMLCt_guiaSolicitacaoSP_SADT = class;
  TXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante = class;
  TXMLCt_guiaSolicitacaoOdonto = class;
  TXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario = class;
  TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante = class;
  TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado = class;
  TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional = class;
  TXMLCt_guiaSolicitacaoOdonto_planoTratamento = class;
  TXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado = class;
  TXMLCt_guiaSolicitacaoProrrogacao = class;
  TXMLCt_solicitaStatusAutorizacao = class;
  TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao = class;
  TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao = class;
  TXMLCt_solicitaElegibilidade = class;
  TXMLCt_cancelaGuia = class;
  TXMLCt_cancelaGuia_guia = class;
  TXMLMensagemTISS_epilogo = class;
  TXMLCt_diariaProrrogacaoAutorizada = class;
  TXMLCt_executanteComplementar = class;
  TXMLCt_OPMAutorizada = class;
  TXMLCt_OPMAutorizada_OPMAutorizada = class;
  TXMLCt_periodoProcessamento = class;
  TXMLCt_situacaoDentes = class;
  TXMLCt_totaisOdonto = class;
  TXMLCt_tratamenteOdontoRealizado = class;
  TXMLCt_tratamentoOdontoSolicitado = class;
  TXMLSt_tipoGlosaList = class;

{ TXMLMensagemTISS }

  TXMLMensagemTISS = class(TXMLNode, IXMLMensagemTISS)
  protected
    { IXMLMensagemTISS }
    function Get_Cabecalho: IXMLCabecalhoTransacao;
    function Get_OperadoraParaPrestador: IXMLMensagemTISS_operadoraParaPrestador;
    function Get_PrestadorParaOperadora: IXMLMensagemTISS_prestadorParaOperadora;
    function Get_Epilogo: IXMLMensagemTISS_epilogo;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCabecalhoTransacao }

  TXMLCabecalhoTransacao = class(TXMLNode, IXMLCabecalhoTransacao)
  protected
    { IXMLCabecalhoTransacao }
    function Get_IdentificacaoTransacao: IXMLCabecalhoTransacao_identificacaoTransacao;
    function Get_FalhaNegocio: IXMLCabecalhoTransacao_falhaNegocio;
    function Get_Origem: IXMLCabecalhoTransacao_origem;
    function Get_Destino: IXMLCabecalhoTransacao_destino;
    function Get_VersaoPadrao: UnicodeString;
    procedure Set_VersaoPadrao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCabecalhoTransacao_identificacaoTransacao }

  TXMLCabecalhoTransacao_identificacaoTransacao = class(TXMLNode, IXMLCabecalhoTransacao_identificacaoTransacao)
  protected
    { IXMLCabecalhoTransacao_identificacaoTransacao }
    function Get_TipoTransacao: UnicodeString;
    function Get_SequencialTransacao: Integer;
    function Get_DataRegistroTransacao: UnicodeString;
    function Get_HoraRegistroTransacao: UnicodeString;
    procedure Set_TipoTransacao(Value: UnicodeString);
    procedure Set_SequencialTransacao(Value: Integer);
    procedure Set_DataRegistroTransacao(Value: UnicodeString);
    procedure Set_HoraRegistroTransacao(Value: UnicodeString);
  end;

{ TXMLCt_motivoGlosa }

  TXMLCt_motivoGlosa = class(TXMLNode, IXMLCt_motivoGlosa)
  protected
    { IXMLCt_motivoGlosa }
    function Get_CodigoGlosa: UnicodeString;
    function Get_DescricaoGlosa: UnicodeString;
    procedure Set_CodigoGlosa(Value: UnicodeString);
    procedure Set_DescricaoGlosa(Value: UnicodeString);
  end;

{ TXMLCt_motivoGlosaList }

  TXMLCt_motivoGlosaList = class(TXMLNodeCollection, IXMLCt_motivoGlosaList)
  protected
    { IXMLCt_motivoGlosaList }
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;

    function Get_Item(Index: Integer): IXMLCt_motivoGlosa;
  end;

{ TXMLCabecalhoTransacao_falhaNegocio }

  TXMLCabecalhoTransacao_falhaNegocio = class(TXMLCt_motivoGlosa, IXMLCabecalhoTransacao_falhaNegocio)
  protected
    { IXMLCabecalhoTransacao_falhaNegocio }
    function Get_Observacao: UnicodeString;
    procedure Set_Observacao(Value: UnicodeString);
  end;

{ TXMLCabecalhoTransacao_origem }

  TXMLCabecalhoTransacao_origem = class(TXMLNode, IXMLCabecalhoTransacao_origem)
  protected
    { IXMLCabecalhoTransacao_origem }
    function Get_CodigoPrestadorNaOperadora: IXMLCt_identificacaoPrestadorExecutante;
    function Get_RegistroANS: UnicodeString;
    function Get_CnpjPagador: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CnpjPagador(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_identificacaoPrestadorExecutante }

  TXMLCt_identificacaoPrestadorExecutante = class(TXMLNode, IXMLCt_identificacaoPrestadorExecutante)
  protected
    { IXMLCt_identificacaoPrestadorExecutante }
    function Get_CNPJ: UnicodeString;
    function Get_CPF: UnicodeString;
    function Get_CodigoPrestadorNaOperadora: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_CPF(Value: UnicodeString);
    procedure Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
  end;

{ TXMLCabecalhoTransacao_destino }

  TXMLCabecalhoTransacao_destino = class(TXMLNode, IXMLCabecalhoTransacao_destino)
  protected
    { IXMLCabecalhoTransacao_destino }
    function Get_CodigoPrestadorNaOperadora: IXMLCt_identificacaoPrestadorExecutante;
    function Get_RegistroANS: UnicodeString;
    function Get_CnpjPagador: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CnpjPagador(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMensagemTISS_operadoraParaPrestador }

  TXMLMensagemTISS_operadoraParaPrestador = class(TXMLNode, IXMLMensagemTISS_operadoraParaPrestador)
  private
    FAutorizacaoServico: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList;
  protected
    { IXMLMensagemTISS_operadoraParaPrestador }
    function Get_ProtocoloRecebimento: IXMLCt_protocoloRecebimento;
    function Get_ProtocoloRecebimentoAnexo: IXMLCt_protocoloRecebimentoAnexo;
    function Get_DemonstrativosRetorno: IXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno;
    function Get_SituacaoProtocolo: IXMLCt_StatusProtocolo;
    function Get_AutorizacaoServico: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList;
    function Get_AutorizacaoServicoOdonto: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto;
    function Get_SituacaoAutorizacao: IXMLCt_situacaoAutorizacao;
    function Get_RespostaElegibilidade: IXMLCt_retornoElegibilidade;
    function Get_ReciboCancelaGuia: IXMLCt_reciboCancelaGuia;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_protocoloRecebimento }

  TXMLCt_protocoloRecebimento = class(TXMLNode, IXMLCt_protocoloRecebimento)
  protected
    { IXMLCt_protocoloRecebimento }
    function Get_ProtocoloRecebimento: IXMLCt_protocoloRecebimento_protocoloRecebimento;
    function Get_MensagemErro: UnicodeString;
    procedure Set_MensagemErro(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_protocoloRecebimento_protocoloRecebimento }

  TXMLCt_protocoloRecebimento_protocoloRecebimento = class(TXMLNode, IXMLCt_protocoloRecebimento_protocoloRecebimento)
  protected
    { IXMLCt_protocoloRecebimento_protocoloRecebimento }
    function Get_NumeroProtocoloRecebimento: UnicodeString;
    function Get_DadosOperadora: IXMLCt_identificacaoFontePagadora;
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_NumeroLote: UnicodeString;
    function Get_DataEnvioLote: UnicodeString;
    function Get_MensagemDetalheProtocolo: IXMLCt_detalheProtocolo;
    procedure Set_NumeroProtocoloRecebimento(Value: UnicodeString);
    procedure Set_NumeroLote(Value: UnicodeString);
    procedure Set_DataEnvioLote(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_identificacaoFontePagadora }

  TXMLCt_identificacaoFontePagadora = class(TXMLNode, IXMLCt_identificacaoFontePagadora)
  protected
    { IXMLCt_identificacaoFontePagadora }
    function Get_OperadoraRegulada: IXMLCt_identificacaoFontePagadora_operadoraRegulada;
    function Get_EntidadeNaoRegulada: IXMLCt_identificacaoFontePagadora_entidadeNaoRegulada;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_identificacaoFontePagadora_operadoraRegulada }

  TXMLCt_identificacaoFontePagadora_operadoraRegulada = class(TXMLNode, IXMLCt_identificacaoFontePagadora_operadoraRegulada)
  protected
    { IXMLCt_identificacaoFontePagadora_operadoraRegulada }
    function Get_RegistroANS: UnicodeString;
    function Get_CNPJ: UnicodeString;
    function Get_NomeOperadora: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_NomeOperadora(Value: UnicodeString);
  end;

{ TXMLCt_identificacaoFontePagadora_entidadeNaoRegulada }

  TXMLCt_identificacaoFontePagadora_entidadeNaoRegulada = class(TXMLNode, IXMLCt_identificacaoFontePagadora_entidadeNaoRegulada)
  protected
    { IXMLCt_identificacaoFontePagadora_entidadeNaoRegulada }
    function Get_CNPJ: UnicodeString;
    function Get_NomeOperadoraEntidade: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_NomeOperadoraEntidade(Value: UnicodeString);
  end;

{ TXMLCt_contratado }

  TXMLCt_contratado = class(TXMLNode, IXMLCt_contratado)
  protected
    { IXMLCt_contratado }
    function Get_Identificacao: IXMLCt_identificacaoPrestadorExecutante;
    function Get_NomeContratado: UnicodeString;
    function Get_EnderecoContratado: IXMLCt_endereco;
    function Get_NumeroCNES: UnicodeString;
    procedure Set_NomeContratado(Value: UnicodeString);
    procedure Set_NumeroCNES(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_endereco }

  TXMLCt_endereco = class(TXMLNode, IXMLCt_endereco)
  protected
    { IXMLCt_endereco }
    function Get_TipoLogradouro: UnicodeString;
    function Get_Logradouro: UnicodeString;
    function Get_Numero: UnicodeString;
    function Get_Complemento: UnicodeString;
    function Get_CodigoIBGEMunicipio: UnicodeString;
    function Get_Municipio: UnicodeString;
    function Get_CodigoUF: UnicodeString;
    function Get_Cep: UnicodeString;
    procedure Set_TipoLogradouro(Value: UnicodeString);
    procedure Set_Logradouro(Value: UnicodeString);
    procedure Set_Numero(Value: UnicodeString);
    procedure Set_Complemento(Value: UnicodeString);
    procedure Set_CodigoIBGEMunicipio(Value: UnicodeString);
    procedure Set_Municipio(Value: UnicodeString);
    procedure Set_CodigoUF(Value: UnicodeString);
    procedure Set_Cep(Value: UnicodeString);
  end;

{ TXMLCt_detalheProtocolo }

  TXMLCt_detalheProtocolo = class(TXMLNode, IXMLCt_detalheProtocolo)
  protected
    { IXMLCt_detalheProtocolo }
    function Get_NumeroProtocolo: UnicodeString;
    function Get_ValorProtocolo: UnicodeString;
    function Get_CodigoGlosaProtocolo: IXMLCt_detalheProtocolo_codigoGlosaProtocolo;
    function Get_Guias: IXMLCt_detalheProtocolo_guias;
    procedure Set_NumeroProtocolo(Value: UnicodeString);
    procedure Set_ValorProtocolo(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_detalheProtocolo_codigoGlosaProtocolo }

  TXMLCt_detalheProtocolo_codigoGlosaProtocolo = class(TXMLNode, IXMLCt_detalheProtocolo_codigoGlosaProtocolo)
  private
    FMotivoGlosa: IXMLCt_motivoGlosaList;
  protected
    { IXMLCt_detalheProtocolo_codigoGlosaProtocolo }
    function Get_MotivoGlosa: IXMLCt_motivoGlosaList;
    function Get_ValorGlosaProtocolo: UnicodeString;
    procedure Set_ValorGlosaProtocolo(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_detalheProtocolo_guias }

  TXMLCt_detalheProtocolo_guias = class(TXMLNodeCollection, IXMLCt_detalheProtocolo_guias)
  protected
    { IXMLCt_detalheProtocolo_guias }
    function Get_DadosGuia(Index: Integer): IXMLCt_dadosGuia;
    function Add: IXMLCt_dadosGuia;
    function Insert(const Index: Integer): IXMLCt_dadosGuia;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_dadosGuia }

  TXMLCt_dadosGuia = class(TXMLNode, IXMLCt_dadosGuia)
  private
    FCodigoGlosaGuia: IXMLCt_motivoGlosaList;
  protected
    { IXMLCt_dadosGuia }
    function Get_NumeroGuiaPrestador: UnicodeString;
    function Get_NumeroGuiaOperadora: UnicodeString;
    function Get_Beneficiario: IXMLCt_beneficiario;
    function Get_DataRealizacao: UnicodeString;
    function Get_ValorProcessadoGuia: UnicodeString;
    function Get_ValorLiberadoGuia: UnicodeString;
    function Get_ValorGlosaGuia: UnicodeString;
    function Get_Procedimentos: IXMLCt_dadosGuia_procedimentos;
    function Get_CodigoGlosaGuia: IXMLCt_motivoGlosaList;
    procedure Set_NumeroGuiaPrestador(Value: UnicodeString);
    procedure Set_NumeroGuiaOperadora(Value: UnicodeString);
    procedure Set_DataRealizacao(Value: UnicodeString);
    procedure Set_ValorProcessadoGuia(Value: UnicodeString);
    procedure Set_ValorLiberadoGuia(Value: UnicodeString);
    procedure Set_ValorGlosaGuia(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_beneficiario }

  TXMLCt_beneficiario = class(TXMLNode, IXMLCt_beneficiario)
  protected
    { IXMLCt_beneficiario }
    function Get_NumeroCarteira: UnicodeString;
    function Get_NomeBeneficiario: UnicodeString;
    function Get_NomePlano: UnicodeString;
    function Get_ValidadeCarteira: UnicodeString;
    function Get_NumeroCNS: UnicodeString;
    function Get_IdentificadorBeneficiario: UnicodeString;
    procedure Set_NumeroCarteira(Value: UnicodeString);
    procedure Set_NomeBeneficiario(Value: UnicodeString);
    procedure Set_NomePlano(Value: UnicodeString);
    procedure Set_ValidadeCarteira(Value: UnicodeString);
    procedure Set_NumeroCNS(Value: UnicodeString);
    procedure Set_IdentificadorBeneficiario(Value: UnicodeString);
  end;

{ TXMLCt_dadosGuia_procedimentos }

  TXMLCt_dadosGuia_procedimentos = class(TXMLNode, IXMLCt_dadosGuia_procedimentos)
  private
    FDadosProcedimento: IXMLCt_dadosProcedimentoList;
    FDadosProcedimentoOdonto: IXMLCt_procedimentoOdontoRealizadoList;
  protected
    { IXMLCt_dadosGuia_procedimentos }
    function Get_DadosProcedimento: IXMLCt_dadosProcedimentoList;
    function Get_DadosProcedimentoOdonto: IXMLCt_procedimentoOdontoRealizadoList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_dadosProcedimento }

  TXMLCt_dadosProcedimento = class(TXMLNode, IXMLCt_dadosProcedimento)
  protected
    { IXMLCt_dadosProcedimento }
    function Get_Procedimento: IXMLCt_tabela;
    function Get_QuantidadeExecutada: Integer;
    function Get_ValorProcessado: UnicodeString;
    function Get_ValorLiberado: UnicodeString;
    function Get_GrauParticipacao: UnicodeString;
    function Get_RelacaoGlosa: IXMLCt_dadosProcedimento_relacaoGlosa;
    procedure Set_QuantidadeExecutada(Value: Integer);
    procedure Set_ValorProcessado(Value: UnicodeString);
    procedure Set_ValorLiberado(Value: UnicodeString);
    procedure Set_GrauParticipacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_dadosProcedimentoList }

  TXMLCt_dadosProcedimentoList = class(TXMLNodeCollection, IXMLCt_dadosProcedimentoList)
  protected
    { IXMLCt_dadosProcedimentoList }
    function Add: IXMLCt_dadosProcedimento;
    function Insert(const Index: Integer): IXMLCt_dadosProcedimento;

    function Get_Item(Index: Integer): IXMLCt_dadosProcedimento;
  end;

{ TXMLCt_tabela }

  TXMLCt_tabela = class(TXMLNode, IXMLCt_tabela)
  protected
    { IXMLCt_tabela }
    function Get_Codigo: UnicodeString;
    function Get_TipoTabela: UnicodeString;
    function Get_Descricao: UnicodeString;
    procedure Set_Codigo(Value: UnicodeString);
    procedure Set_TipoTabela(Value: UnicodeString);
    procedure Set_Descricao(Value: UnicodeString);
  end;

{ TXMLCt_dadosProcedimento_relacaoGlosa }

  TXMLCt_dadosProcedimento_relacaoGlosa = class(TXMLNode, IXMLCt_dadosProcedimento_relacaoGlosa)
  private
    FTipoGlosa: IXMLCt_motivoGlosaList;
  protected
    { IXMLCt_dadosProcedimento_relacaoGlosa }
    function Get_TipoGlosa: IXMLCt_motivoGlosaList;
    function Get_ValorGlosa: UnicodeString;
    procedure Set_ValorGlosa(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentoOdontoRealizado }

  TXMLCt_procedimentoOdontoRealizado = class(TXMLNode, IXMLCt_procedimentoOdontoRealizado)
  protected
    { IXMLCt_procedimentoOdontoRealizado }
    function Get_ProcedimentoOdonto: IXMLCt_tabela;
    function Get_DenteRegiao: IXMLCt_denteRegiao;
    function Get_Face: UnicodeString;
    function Get_DataRealizacao: UnicodeString;
    function Get_Quantidade: Integer;
    function Get_ValorProcessado: UnicodeString;
    function Get_ValorGlosaEstorno: UnicodeString;
    function Get_Glosas: IXMLCt_procedimentoOdontoRealizado_glosas;
    function Get_ValorLiberado: UnicodeString;
    procedure Set_Face(Value: UnicodeString);
    procedure Set_DataRealizacao(Value: UnicodeString);
    procedure Set_Quantidade(Value: Integer);
    procedure Set_ValorProcessado(Value: UnicodeString);
    procedure Set_ValorGlosaEstorno(Value: UnicodeString);
    procedure Set_ValorLiberado(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentoOdontoRealizadoList }

  TXMLCt_procedimentoOdontoRealizadoList = class(TXMLNodeCollection, IXMLCt_procedimentoOdontoRealizadoList)
  protected
    { IXMLCt_procedimentoOdontoRealizadoList }
    function Add: IXMLCt_procedimentoOdontoRealizado;
    function Insert(const Index: Integer): IXMLCt_procedimentoOdontoRealizado;

    function Get_Item(Index: Integer): IXMLCt_procedimentoOdontoRealizado;
  end;

{ TXMLCt_denteRegiao }

  TXMLCt_denteRegiao = class(TXMLNode, IXMLCt_denteRegiao)
  protected
    { IXMLCt_denteRegiao }
    function Get_Dente: UnicodeString;
    function Get_Regiao: UnicodeString;
    procedure Set_Dente(Value: UnicodeString);
    procedure Set_Regiao(Value: UnicodeString);
  end;

{ TXMLCt_procedimentoOdontoRealizado_glosas }

  TXMLCt_procedimentoOdontoRealizado_glosas = class(TXMLNodeCollection, IXMLCt_procedimentoOdontoRealizado_glosas)
  protected
    { IXMLCt_procedimentoOdontoRealizado_glosas }
    function Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_protocoloRecebimentoAnexo }

  TXMLCt_protocoloRecebimentoAnexo = class(TXMLNode, IXMLCt_protocoloRecebimentoAnexo)
  protected
    { IXMLCt_protocoloRecebimentoAnexo }
    function Get_ProtocoloRecebimento: IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento;
    function Get_MensagemErro: UnicodeString;
    procedure Set_MensagemErro(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento }

  TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento = class(TXMLNode, IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento)
  protected
    { IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento }
    function Get_NumeroProtocoloRecebimento: UnicodeString;
    function Get_DadosOperadora: IXMLCt_identificacaoFontePagadora;
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_DataEnvioAnexo: UnicodeString;
    function Get_NumeroLote: UnicodeString;
    function Get_QuantidadeAnexo: Integer;
    function Get_RelacaoAnexo: IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroProtocoloRecebimento(Value: UnicodeString);
    procedure Set_DataEnvioAnexo(Value: UnicodeString);
    procedure Set_NumeroLote(Value: UnicodeString);
    procedure Set_QuantidadeAnexo(Value: Integer);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo }

  TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo = class(TXMLNodeCollection, IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo)
  protected
    { IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo }
    function Get_NumeroGuiaPrincipal(Index: Integer): UnicodeString;
    function Add(const NumeroGuiaPrincipal: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const NumeroGuiaPrincipal: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno }

  TXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno = class(TXMLNode, IXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno)
  private
    FDemonstrativoAnaliseConta: IXMLCt_demonstrativoAnaliseContaList;
    FDemonstrativoOdontologia: IXMLCt_demonstrativoOdontologiaList;
    FDemonstrativoPagamento: IXMLCt_demonstrativoPagamentoList;
  protected
    { IXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno }
    function Get_DemonstrativoAnaliseConta: IXMLCt_demonstrativoAnaliseContaList;
    function Get_DemonstrativoOdontologia: IXMLCt_demonstrativoOdontologiaList;
    function Get_DemonstrativoPagamento: IXMLCt_demonstrativoPagamentoList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_demonstrativoAnaliseConta }

  TXMLCt_demonstrativoAnaliseConta = class(TXMLNode, IXMLCt_demonstrativoAnaliseConta)
  protected
    { IXMLCt_demonstrativoAnaliseConta }
    function Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
    function Get_CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo;
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_Fatura: IXMLCt_demonstrativoAnaliseConta_fatura;
    function Get_ValorProcessadoGeral: UnicodeString;
    function Get_ValorLiberadoGeral: UnicodeString;
    function Get_ValorGlosaGeral: UnicodeString;
    procedure Set_ValorProcessadoGeral(Value: UnicodeString);
    procedure Set_ValorLiberadoGeral(Value: UnicodeString);
    procedure Set_ValorGlosaGeral(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_demonstrativoAnaliseContaList }

  TXMLCt_demonstrativoAnaliseContaList = class(TXMLNodeCollection, IXMLCt_demonstrativoAnaliseContaList)
  protected
    { IXMLCt_demonstrativoAnaliseContaList }
    function Add: IXMLCt_demonstrativoAnaliseConta;
    function Insert(const Index: Integer): IXMLCt_demonstrativoAnaliseConta;

    function Get_Item(Index: Integer): IXMLCt_demonstrativoAnaliseConta;
  end;

{ TXMLCt_cabecalhoDemonstrativo }

  TXMLCt_cabecalhoDemonstrativo = class(TXMLNode, IXMLCt_cabecalhoDemonstrativo)
  protected
    { IXMLCt_cabecalhoDemonstrativo }
    function Get_NumeroDemonstrativo: UnicodeString;
    function Get_DataEmissao: UnicodeString;
    procedure Set_NumeroDemonstrativo(Value: UnicodeString);
    procedure Set_DataEmissao(Value: UnicodeString);
  end;

{ TXMLCt_demonstrativoAnaliseConta_fatura }

  TXMLCt_demonstrativoAnaliseConta_fatura = class(TXMLNode, IXMLCt_demonstrativoAnaliseConta_fatura)
  protected
    { IXMLCt_demonstrativoAnaliseConta_fatura }
    function Get_DadosFatura: IXMLCt_dadosConta;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_dadosConta }

  TXMLCt_dadosConta = class(TXMLNode, IXMLCt_dadosConta)
  protected
    { IXMLCt_dadosConta }
    function Get_NumeroFatura: UnicodeString;
    function Get_Lote: IXMLCt_dadosConta_lote;
    function Get_ValorProcessadoFatura: UnicodeString;
    function Get_ValorLiberadoFatura: UnicodeString;
    function Get_ValorGlosaFatura: UnicodeString;
    procedure Set_NumeroFatura(Value: UnicodeString);
    procedure Set_ValorProcessadoFatura(Value: UnicodeString);
    procedure Set_ValorLiberadoFatura(Value: UnicodeString);
    procedure Set_ValorGlosaFatura(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_dadosConta_lote }

  TXMLCt_dadosConta_lote = class(TXMLNodeCollection, IXMLCt_dadosConta_lote)
  protected
    { IXMLCt_dadosConta_lote }
    function Get_DadosLote(Index: Integer): IXMLCt_dadosLote;
    function Add: IXMLCt_dadosLote;
    function Insert(const Index: Integer): IXMLCt_dadosLote;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_dadosLote }

  TXMLCt_dadosLote = class(TXMLNode, IXMLCt_dadosLote)
  private
    FCodigoGlosaProtocolo: IXMLSt_tipoGlosaList;
  protected
    { IXMLCt_dadosLote }
    function Get_NumeroLote: UnicodeString;
    function Get_DataEnvioLote: UnicodeString;
    function Get_NumeroProtocolo: UnicodeString;
    function Get_ValorProtocolo: UnicodeString;
    function Get_ValorGlosaProtocolo: UnicodeString;
    function Get_CodigoGlosaProtocolo: IXMLSt_tipoGlosaList;
    function Get_Guia: IXMLCt_dadosLote_guia;
    procedure Set_NumeroLote(Value: UnicodeString);
    procedure Set_DataEnvioLote(Value: UnicodeString);
    procedure Set_NumeroProtocolo(Value: UnicodeString);
    procedure Set_ValorProtocolo(Value: UnicodeString);
    procedure Set_ValorGlosaProtocolo(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_dadosLote_guia }

  TXMLCt_dadosLote_guia = class(TXMLNodeCollection, IXMLCt_dadosLote_guia)
  protected
    { IXMLCt_dadosLote_guia }
    function Get_DadosGuia(Index: Integer): IXMLCt_dadosGuia;
    function Add: IXMLCt_dadosGuia;
    function Insert(const Index: Integer): IXMLCt_dadosGuia;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_demonstrativoOdontologia }

  TXMLCt_demonstrativoOdontologia = class(TXMLNode, IXMLCt_demonstrativoOdontologia)
  private
    FDadosPagamento: IXMLCt_demonstrativoOdontologia_dadosPagamentoList;
  protected
    { IXMLCt_demonstrativoOdontologia }
    function Get_CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo;
    function Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
    function Get_DadosPrestador: IXMLCt_demonstrativoOdontologia_dadosPrestador;
    function Get_DadosPagamento: IXMLCt_demonstrativoOdontologia_dadosPagamentoList;
    function Get_DebitosCreditosTributaveis: IXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis;
    function Get_DemaisImpostos: IXMLCt_demonstrativoOdontologia_demaisImpostos;
    function Get_DebitosCreditosNaoTributaveis: IXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis;
    function Get_ValorFinalReceber: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_ValorFinalReceber(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_demonstrativoOdontologiaList }

  TXMLCt_demonstrativoOdontologiaList = class(TXMLNodeCollection, IXMLCt_demonstrativoOdontologiaList)
  protected
    { IXMLCt_demonstrativoOdontologiaList }
    function Add: IXMLCt_demonstrativoOdontologia;
    function Insert(const Index: Integer): IXMLCt_demonstrativoOdontologia;

    function Get_Item(Index: Integer): IXMLCt_demonstrativoOdontologia;
  end;

{ TXMLCt_demonstrativoOdontologia_dadosPrestador }

  TXMLCt_demonstrativoOdontologia_dadosPrestador = class(TXMLNode, IXMLCt_demonstrativoOdontologia_dadosPrestador)
  protected
    { IXMLCt_demonstrativoOdontologia_dadosPrestador }
    function Get_CodigoPrestadorNaOperadora: UnicodeString;
    function Get_IdentificadorPrestador: IXMLCt_identificadorPrestOdontoDemo;
    function Get_NomeContratado: UnicodeString;
    function Get_NumeroCNES: UnicodeString;
    procedure Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
    procedure Set_NomeContratado(Value: UnicodeString);
    procedure Set_NumeroCNES(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_identificadorPrestOdontoDemo }

  TXMLCt_identificadorPrestOdontoDemo = class(TXMLNode, IXMLCt_identificadorPrestOdontoDemo)
  protected
    { IXMLCt_identificadorPrestOdontoDemo }
    function Get_CNPJ: UnicodeString;
    function Get_Cpf: UnicodeString;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_Cpf(Value: UnicodeString);
  end;

{ TXMLCt_dadosPagamento }

  TXMLCt_dadosPagamento = class(TXMLNode, IXMLCt_dadosPagamento)
  private
    FLoteOdonto: IXMLCt_dadosPagamento_loteOdontoList;
  protected
    { IXMLCt_dadosPagamento }
    function Get_DataPagamento: UnicodeString;
    function Get_LoteOdonto: IXMLCt_dadosPagamento_loteOdontoList;
    procedure Set_DataPagamento(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_loteOdonto }

  TXMLCt_loteOdonto = class(TXMLNode, IXMLCt_loteOdonto)
  private
    FDetalheGuia: IXMLCt_detalheGuiaOdontoList;
  protected
    { IXMLCt_loteOdonto }
    function Get_NumeroLote: UnicodeString;
    function Get_DetalheGuia: IXMLCt_detalheGuiaOdontoList;
    function Get_ValorTotalLiberadoLote: UnicodeString;
    function Get_ValorTotalProcessadoLote: UnicodeString;
    function Get_ValorTotalGlosaLote: UnicodeString;
    procedure Set_NumeroLote(Value: UnicodeString);
    procedure Set_ValorTotalLiberadoLote(Value: UnicodeString);
    procedure Set_ValorTotalProcessadoLote(Value: UnicodeString);
    procedure Set_ValorTotalGlosaLote(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_detalheGuiaOdonto }

  TXMLCt_detalheGuiaOdonto = class(TXMLNode, IXMLCt_detalheGuiaOdonto)
  protected
    { IXMLCt_detalheGuiaOdonto }
    function Get_NumeroGuiaPrestador: UnicodeString;
    function Get_NumeroGuiaOperadora: UnicodeString;
    function Get_CodigoBeneficiario: UnicodeString;
    function Get_NomeBeneficiario: UnicodeString;
    function Get_ProcedimentoRealizado: IXMLCt_detalheGuiaOdonto_procedimentoRealizado;
    function Get_ValorTotalGlosaGuia: UnicodeString;
    function Get_ValorTotalLiberadoGuia: UnicodeString;
    function Get_ValorTotalProcessadoGuia: UnicodeString;
    procedure Set_NumeroGuiaPrestador(Value: UnicodeString);
    procedure Set_NumeroGuiaOperadora(Value: UnicodeString);
    procedure Set_CodigoBeneficiario(Value: UnicodeString);
    procedure Set_NomeBeneficiario(Value: UnicodeString);
    procedure Set_ValorTotalGlosaGuia(Value: UnicodeString);
    procedure Set_ValorTotalLiberadoGuia(Value: UnicodeString);
    procedure Set_ValorTotalProcessadoGuia(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_detalheGuiaOdontoList }

  TXMLCt_detalheGuiaOdontoList = class(TXMLNodeCollection, IXMLCt_detalheGuiaOdontoList)
  protected
    { IXMLCt_detalheGuiaOdontoList }
    function Add: IXMLCt_detalheGuiaOdonto;
    function Insert(const Index: Integer): IXMLCt_detalheGuiaOdonto;

    function Get_Item(Index: Integer): IXMLCt_detalheGuiaOdonto;
  end;

{ TXMLCt_detalheGuiaOdonto_procedimentoRealizado }

  TXMLCt_detalheGuiaOdonto_procedimentoRealizado = class(TXMLNodeCollection, IXMLCt_detalheGuiaOdonto_procedimentoRealizado)
  protected
    { IXMLCt_detalheGuiaOdonto_procedimentoRealizado }
    function Get_ProcedimentosOdonto(Index: Integer): IXMLCt_procedimentoOdontoRealizado;
    function Add: IXMLCt_procedimentoOdontoRealizado;
    function Insert(const Index: Integer): IXMLCt_procedimentoOdontoRealizado;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_dadosPagamento_loteOdonto }

  TXMLCt_dadosPagamento_loteOdonto = class(TXMLCt_loteOdonto, IXMLCt_dadosPagamento_loteOdonto)
  protected
    { IXMLCt_dadosPagamento_loteOdonto }
    function Get_TotalGeralLote: IXMLCt_totalDemoOdonto;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_dadosPagamento_loteOdontoList }

  TXMLCt_dadosPagamento_loteOdontoList = class(TXMLNodeCollection, IXMLCt_dadosPagamento_loteOdontoList)
  protected
    { IXMLCt_dadosPagamento_loteOdontoList }
    function Add: IXMLCt_dadosPagamento_loteOdonto;
    function Insert(const Index: Integer): IXMLCt_dadosPagamento_loteOdonto;

    function Get_Item(Index: Integer): IXMLCt_dadosPagamento_loteOdonto;
  end;

{ TXMLCt_totalDemoOdonto }

  TXMLCt_totalDemoOdonto = class(TXMLNode, IXMLCt_totalDemoOdonto)
  protected
    { IXMLCt_totalDemoOdonto }
    function Get_ValorTotalGeralGlosa: UnicodeString;
    function Get_ValorTotalGeralLiberado: UnicodeString;
    function Get_ValorTotalProcessadoGuia: UnicodeString;
    procedure Set_ValorTotalGeralGlosa(Value: UnicodeString);
    procedure Set_ValorTotalGeralLiberado(Value: UnicodeString);
    procedure Set_ValorTotalProcessadoGuia(Value: UnicodeString);
  end;

{ TXMLCt_demonstrativoOdontologia_dadosPagamento }

  TXMLCt_demonstrativoOdontologia_dadosPagamento = class(TXMLCt_dadosPagamento, IXMLCt_demonstrativoOdontologia_dadosPagamento)
  protected
    { IXMLCt_demonstrativoOdontologia_dadosPagamento }
    function Get_TotalGeral: IXMLCt_totalDemoOdonto;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_demonstrativoOdontologia_dadosPagamentoList }

  TXMLCt_demonstrativoOdontologia_dadosPagamentoList = class(TXMLNodeCollection, IXMLCt_demonstrativoOdontologia_dadosPagamentoList)
  protected
    { IXMLCt_demonstrativoOdontologia_dadosPagamentoList }
    function Add: IXMLCt_demonstrativoOdontologia_dadosPagamento;
    function Insert(const Index: Integer): IXMLCt_demonstrativoOdontologia_dadosPagamento;

    function Get_Item(Index: Integer): IXMLCt_demonstrativoOdontologia_dadosPagamento;
  end;

{ TXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis }

  TXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis = class(TXMLNode, IXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis)
  private
    FDescontos: IXMLCt_descontoOdontoList;
    FCreditos: IXMLCt_creditoOdontoList;
  protected
    { IXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis }
    function Get_Descontos: IXMLCt_descontoOdontoList;
    function Get_Creditos: IXMLCt_creditoOdontoList;
    function Get_ValorTotalTributavel: UnicodeString;
    procedure Set_ValorTotalTributavel(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_descontoOdonto }

  TXMLCt_descontoOdonto = class(TXMLNode, IXMLCt_descontoOdonto)
  protected
    { IXMLCt_descontoOdonto }
    function Get_Descricao: UnicodeString;
    function Get_ValorDesconto: UnicodeString;
    procedure Set_Descricao(Value: UnicodeString);
    procedure Set_ValorDesconto(Value: UnicodeString);
  end;

{ TXMLCt_descontoOdontoList }

  TXMLCt_descontoOdontoList = class(TXMLNodeCollection, IXMLCt_descontoOdontoList)
  protected
    { IXMLCt_descontoOdontoList }
    function Add: IXMLCt_descontoOdonto;
    function Insert(const Index: Integer): IXMLCt_descontoOdonto;

    function Get_Item(Index: Integer): IXMLCt_descontoOdonto;
  end;

{ TXMLCt_creditoOdonto }

  TXMLCt_creditoOdonto = class(TXMLNode, IXMLCt_creditoOdonto)
  protected
    { IXMLCt_creditoOdonto }
    function Get_ValorDesconto: UnicodeString;
    function Get_Descricao: UnicodeString;
    procedure Set_ValorDesconto(Value: UnicodeString);
    procedure Set_Descricao(Value: UnicodeString);
  end;

{ TXMLCt_creditoOdontoList }

  TXMLCt_creditoOdontoList = class(TXMLNodeCollection, IXMLCt_creditoOdontoList)
  protected
    { IXMLCt_creditoOdontoList }
    function Add: IXMLCt_creditoOdonto;
    function Insert(const Index: Integer): IXMLCt_creditoOdonto;

    function Get_Item(Index: Integer): IXMLCt_creditoOdonto;
  end;

{ TXMLCt_demonstrativoOdontologia_demaisImpostos }

  TXMLCt_demonstrativoOdontologia_demaisImpostos = class(TXMLNode, IXMLCt_demonstrativoOdontologia_demaisImpostos)
  private
    FDescontos: IXMLCt_descontoOdontoList;
  protected
    { IXMLCt_demonstrativoOdontologia_demaisImpostos }
    function Get_Descontos: IXMLCt_descontoOdontoList;
    function Get_ValorTotalImpostos: UnicodeString;
    procedure Set_ValorTotalImpostos(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis }

  TXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis = class(TXMLNode, IXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis)
  private
    FDescontos: IXMLCt_descontoOdontoList;
    FCreditos: IXMLCt_creditoOdontoList;
  protected
    { IXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis }
    function Get_Descontos: IXMLCt_descontoOdontoList;
    function Get_Creditos: IXMLCt_creditoOdontoList;
    function Get_ValorTotalNaoTributavel: UnicodeString;
    procedure Set_ValorTotalNaoTributavel(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_demonstrativoPagamento }

  TXMLCt_demonstrativoPagamento = class(TXMLNode, IXMLCt_demonstrativoPagamento)
  protected
    { IXMLCt_demonstrativoPagamento }
    function Get_CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo;
    function Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_DadosPagamento: IXMLCt_dadoBancario;
    function Get_DadosResumo: IXMLCt_demonstrativoPagamento_dadosResumo;
    function Get_ValorTotal: UnicodeString;
    function Get_DemaisDescontos: IXMLCt_descontos;
    function Get_ValorFinalLiberado: UnicodeString;
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_ValorFinalLiberado(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_demonstrativoPagamentoList }

  TXMLCt_demonstrativoPagamentoList = class(TXMLNodeCollection, IXMLCt_demonstrativoPagamentoList)
  protected
    { IXMLCt_demonstrativoPagamentoList }
    function Add: IXMLCt_demonstrativoPagamento;
    function Insert(const Index: Integer): IXMLCt_demonstrativoPagamento;

    function Get_Item(Index: Integer): IXMLCt_demonstrativoPagamento;
  end;

{ TXMLCt_dadoBancario }

  TXMLCt_dadoBancario = class(TXMLNode, IXMLCt_dadoBancario)
  protected
    { IXMLCt_dadoBancario }
    function Get_DataPagamento: UnicodeString;
    function Get_FormaPagamento: UnicodeString;
    function Get_Banco: Integer;
    function Get_Agencia: UnicodeString;
    function Get_ContaCorrente: UnicodeString;
    procedure Set_DataPagamento(Value: UnicodeString);
    procedure Set_FormaPagamento(Value: UnicodeString);
    procedure Set_Banco(Value: Integer);
    procedure Set_Agencia(Value: UnicodeString);
    procedure Set_ContaCorrente(Value: UnicodeString);
  end;

{ TXMLCt_demonstrativoPagamento_dadosResumo }

  TXMLCt_demonstrativoPagamento_dadosResumo = class(TXMLNode, IXMLCt_demonstrativoPagamento_dadosResumo)
  private
    FDetalheResumo: IXMLCt_dadosResumoList;
  protected
    { IXMLCt_demonstrativoPagamento_dadosResumo }
    function Get_DetalheResumo: IXMLCt_dadosResumoList;
    function Get_TotalGeralInformado: UnicodeString;
    function Get_TotalGeralProcessado: UnicodeString;
    function Get_TotalGeralGlosa: UnicodeString;
    function Get_TotalGeralLiberado: UnicodeString;
    procedure Set_TotalGeralInformado(Value: UnicodeString);
    procedure Set_TotalGeralProcessado(Value: UnicodeString);
    procedure Set_TotalGeralGlosa(Value: UnicodeString);
    procedure Set_TotalGeralLiberado(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_dadosResumo }

  TXMLCt_dadosResumo = class(TXMLNode, IXMLCt_dadosResumo)
  protected
    { IXMLCt_dadosResumo }
    function Get_NumeroFatura: UnicodeString;
    function Get_NumeroLote: UnicodeString;
    function Get_DataEnvioLote: UnicodeString;
    function Get_NumeroProtocolo: UnicodeString;
    function Get_ValorInformado: UnicodeString;
    function Get_ValorProcessado: UnicodeString;
    function Get_ValorLiberado: UnicodeString;
    function Get_ValorGlosa: UnicodeString;
    procedure Set_NumeroFatura(Value: UnicodeString);
    procedure Set_NumeroLote(Value: UnicodeString);
    procedure Set_DataEnvioLote(Value: UnicodeString);
    procedure Set_NumeroProtocolo(Value: UnicodeString);
    procedure Set_ValorInformado(Value: UnicodeString);
    procedure Set_ValorProcessado(Value: UnicodeString);
    procedure Set_ValorLiberado(Value: UnicodeString);
    procedure Set_ValorGlosa(Value: UnicodeString);
  end;

{ TXMLCt_dadosResumoList }

  TXMLCt_dadosResumoList = class(TXMLNodeCollection, IXMLCt_dadosResumoList)
  protected
    { IXMLCt_dadosResumoList }
    function Add: IXMLCt_dadosResumo;
    function Insert(const Index: Integer): IXMLCt_dadosResumo;

    function Get_Item(Index: Integer): IXMLCt_dadosResumo;
  end;

{ TXMLCt_descontos }

  TXMLCt_descontos = class(TXMLNodeCollection, IXMLCt_descontos)
  protected
    { IXMLCt_descontos }
    function Get_ItemDesconto(Index: Integer): IXMLCt_descontos_itemDesconto;
    function Add: IXMLCt_descontos_itemDesconto;
    function Insert(const Index: Integer): IXMLCt_descontos_itemDesconto;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_descontos_itemDesconto }

  TXMLCt_descontos_itemDesconto = class(TXMLNode, IXMLCt_descontos_itemDesconto)
  protected
    { IXMLCt_descontos_itemDesconto }
    function Get_ValorDesconto: UnicodeString;
    function Get_Descricao: UnicodeString;
    procedure Set_ValorDesconto(Value: UnicodeString);
    procedure Set_Descricao(Value: UnicodeString);
  end;

{ TXMLCt_StatusProtocolo }

  TXMLCt_StatusProtocolo = class(TXMLNode, IXMLCt_StatusProtocolo)
  protected
    { IXMLCt_StatusProtocolo }
    function Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
    function Get_StatusProtocolo: UnicodeString;
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_CNESPrestador: UnicodeString;
    function Get_Lote: IXMLCt_StatusProtocolo_lote;
    procedure Set_StatusProtocolo(Value: UnicodeString);
    procedure Set_CNESPrestador(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_StatusProtocolo_lote }

  TXMLCt_StatusProtocolo_lote = class(TXMLNodeCollection, IXMLCt_StatusProtocolo_lote)
  protected
    { IXMLCt_StatusProtocolo_lote }
    function Get_DetalheLote(Index: Integer): IXMLCt_statusLote;
    function Add: IXMLCt_statusLote;
    function Insert(const Index: Integer): IXMLCt_statusLote;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_statusLote }

  TXMLCt_statusLote = class(TXMLNode, IXMLCt_statusLote)
  protected
    { IXMLCt_statusLote }
    function Get_NumeroProtocolo: UnicodeString;
    function Get_NumeroLote: Integer;
    function Get_DataEnvioLote: UnicodeString;
    function Get_NumeroFatura: Integer;
    function Get_ValorProcessado: UnicodeString;
    function Get_ValorLiberado: UnicodeString;
    function Get_ValorGlosa: UnicodeString;
    function Get_Status: UnicodeString;
    function Get_Guias: IXMLCt_statusLote_guias;
    procedure Set_NumeroProtocolo(Value: UnicodeString);
    procedure Set_NumeroLote(Value: Integer);
    procedure Set_DataEnvioLote(Value: UnicodeString);
    procedure Set_NumeroFatura(Value: Integer);
    procedure Set_ValorProcessado(Value: UnicodeString);
    procedure Set_ValorLiberado(Value: UnicodeString);
    procedure Set_ValorGlosa(Value: UnicodeString);
    procedure Set_Status(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_statusLote_guias }

  TXMLCt_statusLote_guias = class(TXMLNode, IXMLCt_statusLote_guias)
  private
    FDetalheguiaMedica: IXMLCt_statusLote_guias_detalheguiaMedicaList;
    FDetalheguiaOdonto: IXMLCt_statusLote_guias_detalheguiaOdontoList;
  protected
    { IXMLCt_statusLote_guias }
    function Get_DetalheguiaMedica: IXMLCt_statusLote_guias_detalheguiaMedicaList;
    function Get_DetalheguiaOdonto: IXMLCt_statusLote_guias_detalheguiaOdontoList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_statusLote_guias_detalheguiaMedica }

  TXMLCt_statusLote_guias_detalheguiaMedica = class(TXMLNode, IXMLCt_statusLote_guias_detalheguiaMedica)
  protected
    { IXMLCt_statusLote_guias_detalheguiaMedica }
    function Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
    function Get_ProcedimentosAnalisados: IXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_statusLote_guias_detalheguiaMedicaList }

  TXMLCt_statusLote_guias_detalheguiaMedicaList = class(TXMLNodeCollection, IXMLCt_statusLote_guias_detalheguiaMedicaList)
  protected
    { IXMLCt_statusLote_guias_detalheguiaMedicaList }
    function Add: IXMLCt_statusLote_guias_detalheguiaMedica;
    function Insert(const Index: Integer): IXMLCt_statusLote_guias_detalheguiaMedica;

    function Get_Item(Index: Integer): IXMLCt_statusLote_guias_detalheguiaMedica;
  end;

{ TXMLCt_cabecalhoGuia }

  TXMLCt_cabecalhoGuia = class(TXMLNode, IXMLCt_cabecalhoGuia)
  protected
    { IXMLCt_cabecalhoGuia }
    function Get_IdentificacaoFontePagadora: IXMLCt_cabecalhoGuia_identificacaoFontePagadora;
    function Get_DataEmissaoGuia: UnicodeString;
    function Get_NumeroGuiaPrestador: UnicodeString;
    function Get_NumeroGuiaOperadora: UnicodeString;
    procedure Set_DataEmissaoGuia(Value: UnicodeString);
    procedure Set_NumeroGuiaPrestador(Value: UnicodeString);
    procedure Set_NumeroGuiaOperadora(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_cabecalhoGuia_identificacaoFontePagadora }

  TXMLCt_cabecalhoGuia_identificacaoFontePagadora = class(TXMLNode, IXMLCt_cabecalhoGuia_identificacaoFontePagadora)
  protected
    { IXMLCt_cabecalhoGuia_identificacaoFontePagadora }
    function Get_RegistroANS: UnicodeString;
    function Get_CnpjFontePagadora: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CnpjFontePagadora(Value: UnicodeString);
  end;

{ TXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados }

  TXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados = class(TXMLNodeCollection, IXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados)
  protected
    { IXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados }
    function Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacao;
    function Add: IXMLCt_itemSolicitacao;
    function Insert(const Index: Integer): IXMLCt_itemSolicitacao;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_itemSolicitacao }

  TXMLCt_itemSolicitacao = class(TXMLNode, IXMLCt_itemSolicitacao)
  protected
    { IXMLCt_itemSolicitacao }
    function Get_IdentificacaoProcedimentos: IXMLCt_tabela;
    function Get_QuantidadeSolicitada: UnicodeString;
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_StatusSolicitacaoProcedimento: UnicodeString;
    function Get_Glosas: IXMLCt_itemSolicitacao_glosas;
    function Get_Observacao: UnicodeString;
    procedure Set_QuantidadeSolicitada(Value: UnicodeString);
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
    procedure Set_StatusSolicitacaoProcedimento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_itemSolicitacao_glosas }

  TXMLCt_itemSolicitacao_glosas = class(TXMLNodeCollection, IXMLCt_itemSolicitacao_glosas)
  protected
    { IXMLCt_itemSolicitacao_glosas }
    function Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_statusLote_guias_detalheguiaOdonto }

  TXMLCt_statusLote_guias_detalheguiaOdonto = class(TXMLNode, IXMLCt_statusLote_guias_detalheguiaOdonto)
  protected
    { IXMLCt_statusLote_guias_detalheguiaOdonto }
    function Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
    function Get_ProcedimentosAnalisados: IXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_statusLote_guias_detalheguiaOdontoList }

  TXMLCt_statusLote_guias_detalheguiaOdontoList = class(TXMLNodeCollection, IXMLCt_statusLote_guias_detalheguiaOdontoList)
  protected
    { IXMLCt_statusLote_guias_detalheguiaOdontoList }
    function Add: IXMLCt_statusLote_guias_detalheguiaOdonto;
    function Insert(const Index: Integer): IXMLCt_statusLote_guias_detalheguiaOdonto;

    function Get_Item(Index: Integer): IXMLCt_statusLote_guias_detalheguiaOdonto;
  end;

{ TXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados }

  TXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados = class(TXMLNodeCollection, IXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados)
  protected
    { IXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados }
    function Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacaoOdonto;
    function Add: IXMLCt_itemSolicitacaoOdonto;
    function Insert(const Index: Integer): IXMLCt_itemSolicitacaoOdonto;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_itemSolicitacaoOdonto }

  TXMLCt_itemSolicitacaoOdonto = class(TXMLNode, IXMLCt_itemSolicitacaoOdonto)
  protected
    { IXMLCt_itemSolicitacaoOdonto }
    function Get_IdentificacaoProcedimentos: IXMLCt_tabela;
    function Get_DenteRegiao: IXMLCt_denteRegiao;
    function Get_Face: UnicodeString;
    function Get_QuantidadeSolicitada: UnicodeString;
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_Glosas: IXMLCt_itemSolicitacaoOdonto_glosas;
    function Get_StatusSolicitacaoProcedimento: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_Face(Value: UnicodeString);
    procedure Set_QuantidadeSolicitada(Value: UnicodeString);
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
    procedure Set_StatusSolicitacaoProcedimento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_itemSolicitacaoOdonto_glosas }

  TXMLCt_itemSolicitacaoOdonto_glosas = class(TXMLNodeCollection, IXMLCt_itemSolicitacaoOdonto_glosas)
  protected
    { IXMLCt_itemSolicitacaoOdonto_glosas }
    function Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_autorizacaoProcedimento }

  TXMLCt_autorizacaoProcedimento = class(TXMLNode, IXMLCt_autorizacaoProcedimento)
  protected
    { IXMLCt_autorizacaoProcedimento }
    function Get_IdentificacaoAutorizacao: IXMLCt_cabecalhoGuia;
    function Get_StatusSolicitacao: UnicodeString;
    function Get_MotivoNegativa: IXMLCt_autorizacaoProcedimento_motivoNegativa;
    function Get_Beneficiario: IXMLCt_beneficiario;
    function Get_PrestadorAutorizado: IXMLCt_contratado;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuiaInternacao;
    function Get_Procedimentos: IXMLCt_autorizacaoProcedimento_procedimentos;
    procedure Set_StatusSolicitacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_autorizacaoProcedimento_motivoNegativa }

  TXMLCt_autorizacaoProcedimento_motivoNegativa = class(TXMLNodeCollection, IXMLCt_autorizacaoProcedimento_motivoNegativa)
  protected
    { IXMLCt_autorizacaoProcedimento_motivoNegativa }
    function Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_autorizacaoGuia }

  TXMLCt_autorizacaoGuia = class(TXMLNode, IXMLCt_autorizacaoGuia)
  protected
    { IXMLCt_autorizacaoGuia }
    function Get_DataAutorizacao: UnicodeString;
    function Get_SenhaAutorizacao: UnicodeString;
    function Get_ValidadeSenha: UnicodeString;
    procedure Set_DataAutorizacao(Value: UnicodeString);
    procedure Set_SenhaAutorizacao(Value: UnicodeString);
    procedure Set_ValidadeSenha(Value: UnicodeString);
  end;

{ TXMLCt_autorizacaoGuiaInternacao }

  TXMLCt_autorizacaoGuiaInternacao = class(TXMLCt_autorizacaoGuia, IXMLCt_autorizacaoGuiaInternacao)
  protected
    { IXMLCt_autorizacaoGuiaInternacao }
    function Get_DiasAutorizado: Integer;
    function Get_DataProvavelAdmisHosp: UnicodeString;
    function Get_TipoAcomodacao: UnicodeString;
    procedure Set_DiasAutorizado(Value: Integer);
    procedure Set_DataProvavelAdmisHosp(Value: UnicodeString);
    procedure Set_TipoAcomodacao(Value: UnicodeString);
  end;

{ TXMLCt_autorizacaoProcedimento_procedimentos }

  TXMLCt_autorizacaoProcedimento_procedimentos = class(TXMLNodeCollection, IXMLCt_autorizacaoProcedimento_procedimentos)
  protected
    { IXMLCt_autorizacaoProcedimento_procedimentos }
    function Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacao;
    function Add: IXMLCt_itemSolicitacao;
    function Insert(const Index: Integer): IXMLCt_itemSolicitacao;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico }

  TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico = class(TXMLCt_autorizacaoProcedimento, IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico)
  protected
    { IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico }
    function Get_DiariaProrrogacaoAutorizada: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList }

  TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList = class(TXMLNodeCollection, IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList)
  protected
    { IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList }
    function Add: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;
    function Insert(const Index: Integer): IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;

    function Get_Item(Index: Integer): IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;
  end;

{ TXMLCt_diariaProrrogacao }

  TXMLCt_diariaProrrogacao = class(TXMLNode, IXMLCt_diariaProrrogacao)
  protected
    { IXMLCt_diariaProrrogacao }
    function Get_TipoAcomodacao: UnicodeString;
    function Get_QuantidadeDiaria: UnicodeString;
    procedure Set_TipoAcomodacao(Value: UnicodeString);
    procedure Set_QuantidadeDiaria(Value: UnicodeString);
  end;

{ TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada }

  TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada = class(TXMLCt_diariaProrrogacao, IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada)
  protected
    { IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada }
    function Get_TipoAcomodacaoAutorizada: UnicodeString;
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_MotivoGlosa: IXMLCt_motivoGlosa;
    procedure Set_TipoAcomodacaoAutorizada(Value: UnicodeString);
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_autorizacaoProcedimentoOdonto }

  TXMLCt_autorizacaoProcedimentoOdonto = class(TXMLNode, IXMLCt_autorizacaoProcedimentoOdonto)
  protected
    { IXMLCt_autorizacaoProcedimentoOdonto }
    function Get_IdentificacaoAutorizacao: IXMLCt_cabecalhoGuia;
    function Get_StatusSolicitacao: UnicodeString;
    function Get_MotivoNegativa: IXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa;
    function Get_Beneficiario: IXMLCt_beneficiario;
    function Get_PrestadorAutorizado: IXMLCt_contratado;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuiaInternacao;
    function Get_Procedimentos: IXMLCt_autorizacaoProcedimentoOdonto_procedimentos;
    function Get_TotalOdonto: IXMLCt_autorizacaoProcedimentoOdonto_totalOdonto;
    procedure Set_StatusSolicitacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa }

  TXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa = class(TXMLNodeCollection, IXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa)
  protected
    { IXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa }
    function Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
    function Add: IXMLCt_motivoGlosa;
    function Insert(const Index: Integer): IXMLCt_motivoGlosa;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_autorizacaoProcedimentoOdonto_procedimentos }

  TXMLCt_autorizacaoProcedimentoOdonto_procedimentos = class(TXMLNodeCollection, IXMLCt_autorizacaoProcedimentoOdonto_procedimentos)
  protected
    { IXMLCt_autorizacaoProcedimentoOdonto_procedimentos }
    function Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacaoOdonto;
    function Add: IXMLCt_itemSolicitacaoOdonto;
    function Insert(const Index: Integer): IXMLCt_itemSolicitacaoOdonto;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_autorizacaoProcedimentoOdonto_totalOdonto }

  TXMLCt_autorizacaoProcedimentoOdonto_totalOdonto = class(TXMLNode, IXMLCt_autorizacaoProcedimentoOdonto_totalOdonto)
  protected
    { IXMLCt_autorizacaoProcedimentoOdonto_totalOdonto }
    function Get_Totalvalor: UnicodeString;
    function Get_TotalFranquiaCoparticipacao: UnicodeString;
    function Get_TotalquantidadeUS: UnicodeString;
    procedure Set_Totalvalor(Value: UnicodeString);
    procedure Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
    procedure Set_TotalquantidadeUS(Value: UnicodeString);
  end;

{ TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto }

  TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto = class(TXMLCt_autorizacaoProcedimentoOdonto, IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto)
  protected
    { IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto }
  end;

{ TXMLCt_situacaoAutorizacao }

  TXMLCt_situacaoAutorizacao = class(TXMLNodeCollection, IXMLCt_situacaoAutorizacao)
  protected
    { IXMLCt_situacaoAutorizacao }
    function Get_DadosAutorizacao(Index: Integer): IXMLCt_situacaoAutorizacao_dadosAutorizacao;
    function Add: IXMLCt_situacaoAutorizacao_dadosAutorizacao;
    function Insert(const Index: Integer): IXMLCt_situacaoAutorizacao_dadosAutorizacao;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_situacaoAutorizacao_dadosAutorizacao }

  TXMLCt_situacaoAutorizacao_dadosAutorizacao = class(TXMLCt_autorizacaoProcedimento, IXMLCt_situacaoAutorizacao_dadosAutorizacao)
  protected
    { IXMLCt_situacaoAutorizacao_dadosAutorizacao }
    function Get_TotalOdonto: IXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto;
    function Get_Ct_diariaProrrogacaoAutorizada: IXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto }

  TXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto = class(TXMLNode, IXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto)
  protected
    { IXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto }
    function Get_Totalvalor: UnicodeString;
    function Get_TotalFranquiaCoparticipacao: UnicodeString;
    function Get_TotalquantidadeUS: UnicodeString;
    procedure Set_Totalvalor(Value: UnicodeString);
    procedure Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
    procedure Set_TotalquantidadeUS(Value: UnicodeString);
  end;

{ TXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada }

  TXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada = class(TXMLCt_diariaProrrogacao, IXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada)
  protected
    { IXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada }
    function Get_TipoAcomodacaoAutorizada: UnicodeString;
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_MotivoGlosa: IXMLCt_motivoGlosa;
    procedure Set_TipoAcomodacaoAutorizada(Value: UnicodeString);
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_retornoElegibilidade }

  TXMLCt_retornoElegibilidade = class(TXMLNode, IXMLCt_retornoElegibilidade)
  protected
    { IXMLCt_retornoElegibilidade }
    function Get_DadosOperadora: IXMLCt_identificacaoFontePagadora;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_RespostaSolicitacao: Boolean;
    function Get_MotivoNegacao: IXMLCt_motivoGlosa;
    procedure Set_RespostaSolicitacao(Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_reciboCancelaGuia }

  TXMLCt_reciboCancelaGuia = class(TXMLNode, IXMLCt_reciboCancelaGuia)
  protected
    { IXMLCt_reciboCancelaGuia }
    function Get_Operadora: IXMLCt_identificacaoFontePagadora;
    function Get_GuiasCanceladas: IXMLCt_reciboCancelaGuia_guiasCanceladas;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_reciboCancelaGuia_guiasCanceladas }

  TXMLCt_reciboCancelaGuia_guiasCanceladas = class(TXMLNodeCollection, IXMLCt_reciboCancelaGuia_guiasCanceladas)
  protected
    { IXMLCt_reciboCancelaGuia_guiasCanceladas }
    function Get_DadosGuia(Index: Integer): IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
    function Add: IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
    function Insert(const Index: Integer): IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia }

  TXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia = class(TXMLCt_cabecalhoGuia, IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia)
  protected
    { IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia }
    function Get_StatusCancelamento: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_StatusCancelamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  end;

{ TXMLMensagemTISS_prestadorParaOperadora }

  TXMLMensagemTISS_prestadorParaOperadora = class(TXMLNode, IXMLMensagemTISS_prestadorParaOperadora)
  protected
    { IXMLMensagemTISS_prestadorParaOperadora }
    function Get_LoteGuias: IXMLCt_loteGuias;
    function Get_LoteAnexo: IXMLCt_loteAnexo;
    function Get_SolicitacaoDemonstrativoRetorno: IXMLCt_solicitacaoDemonstrativoPagamento;
    function Get_SolicitacaoStatusProtocolo: IXMLCt_solicitacaoStatusProtocolo;
    function Get_SolicitacaoProcedimento: IXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento;
    function Get_SolicitaStatusAutorizacao: IXMLCt_solicitaStatusAutorizacao;
    function Get_VerificaElegibilidade: IXMLCt_solicitaElegibilidade;
    function Get_CancelaGuia: IXMLCt_cancelaGuia;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_loteGuias }

  TXMLCt_loteGuias = class(TXMLNode, IXMLCt_loteGuias)
  protected
    { IXMLCt_loteGuias }
    function Get_NumeroLote: Integer;
    function Get_Guias: IXMLCt_loteGuias_guias;
    procedure Set_NumeroLote(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guias }

  TXMLCt_guias = class(TXMLNode, IXMLCt_guias)
  protected
    { IXMLCt_guias }
    function Get_GuiaFaturamento: IXMLCt_guias_guiaFaturamento;
    function Get_GuiaRevisaoGlosa: IXMLCt_guias_guiaRevisaoGlosa;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guias_guiaFaturamento }

  TXMLCt_guias_guiaFaturamento = class(TXMLNode, IXMLCt_guias_guiaFaturamento)
  private
    FGuiaConsulta: IXMLCt_guiaConsultaList;
    FGuiaSP_SADT: IXMLCt_guiaSP_SADTList;
    FGuiaResumoInternacao: IXMLCt_guiaResumoInternacaoList;
    FGuiaHonorarioIndividual: IXMLCt_guiaHonorarioIndividualList;
    FGuiaOdontologia: IXMLCt_guiaOdontologiaList;
  protected
    { IXMLCt_guias_guiaFaturamento }
    function Get_GuiaConsulta: IXMLCt_guiaConsultaList;
    function Get_GuiaSP_SADT: IXMLCt_guiaSP_SADTList;
    function Get_GuiaResumoInternacao: IXMLCt_guiaResumoInternacaoList;
    function Get_GuiaHonorarioIndividual: IXMLCt_guiaHonorarioIndividualList;
    function Get_GuiaOdontologia: IXMLCt_guiaOdontologiaList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaConsulta }

  TXMLCt_guiaConsulta = class(TXMLNode, IXMLCt_guiaConsulta)
  protected
    { IXMLCt_guiaConsulta }
    function Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
    function Get_Beneficiario: IXMLCt_beneficiario;
    function Get_DadosContratado: IXMLCt_contratado;
    function Get_ProfissionalExecutante: IXMLCt_identificacaoProfissional;
    function Get_HipoteseDiagnostica: IXMLCt_guiaConsulta_hipoteseDiagnostica;
    function Get_DadosAtendimento: IXMLCt_guiaConsulta_dadosAtendimento;
    function Get_Observacao: UnicodeString;
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaConsultaList }

  TXMLCt_guiaConsultaList = class(TXMLNodeCollection, IXMLCt_guiaConsultaList)
  protected
    { IXMLCt_guiaConsultaList }
    function Add: IXMLCt_guiaConsulta;
    function Insert(const Index: Integer): IXMLCt_guiaConsulta;

    function Get_Item(Index: Integer): IXMLCt_guiaConsulta;
  end;

{ TXMLCt_identificacaoProfissional }

  TXMLCt_identificacaoProfissional = class(TXMLNode, IXMLCt_identificacaoProfissional)
  protected
    { IXMLCt_identificacaoProfissional }
    function Get_NomeProfissional: UnicodeString;
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    function Get_Cbos: UnicodeString;
    procedure Set_NomeProfissional(Value: UnicodeString);
    procedure Set_Cbos(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_conselhoProfissional }

  TXMLCt_conselhoProfissional = class(TXMLNode, IXMLCt_conselhoProfissional)
  protected
    { IXMLCt_conselhoProfissional }
    function Get_SiglaConselho: UnicodeString;
    function Get_NumeroConselho: UnicodeString;
    function Get_UfConselho: UnicodeString;
    procedure Set_SiglaConselho(Value: UnicodeString);
    procedure Set_NumeroConselho(Value: UnicodeString);
    procedure Set_UfConselho(Value: UnicodeString);
  end;

{ TXMLCt_diagnosticoAtendimento }

  TXMLCt_diagnosticoAtendimento = class(TXMLNode, IXMLCt_diagnosticoAtendimento)
  protected
    { IXMLCt_diagnosticoAtendimento }
    function Get_CID: IXMLCt_diagnostico;
    function Get_TipoDoenca: UnicodeString;
    function Get_TempoReferidoEvolucaoDoenca: IXMLCt_tempoEvolucaoDoenca;
    function Get_IndicadorAcidente: UnicodeString;
    procedure Set_TipoDoenca(Value: UnicodeString);
    procedure Set_IndicadorAcidente(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_diagnostico }

  TXMLCt_diagnostico = class(TXMLNode, IXMLCt_diagnostico)
  protected
    { IXMLCt_diagnostico }
    function Get_NomeTabela: UnicodeString;
    function Get_CodigoDiagnostico: UnicodeString;
    function Get_DescricaoDiagnostico: UnicodeString;
    procedure Set_NomeTabela(Value: UnicodeString);
    procedure Set_CodigoDiagnostico(Value: UnicodeString);
    procedure Set_DescricaoDiagnostico(Value: UnicodeString);
  end;

{ TXMLCt_tempoEvolucaoDoenca }

  TXMLCt_tempoEvolucaoDoenca = class(TXMLNode, IXMLCt_tempoEvolucaoDoenca)
  protected
    { IXMLCt_tempoEvolucaoDoenca }
    function Get_Valor: Integer;
    function Get_UnidadeTempo: UnicodeString;
    procedure Set_Valor(Value: Integer);
    procedure Set_UnidadeTempo(Value: UnicodeString);
  end;

{ TXMLCt_guiaConsulta_hipoteseDiagnostica }

  TXMLCt_guiaConsulta_hipoteseDiagnostica = class(TXMLCt_diagnosticoAtendimento, IXMLCt_guiaConsulta_hipoteseDiagnostica)
  protected
    { IXMLCt_guiaConsulta_hipoteseDiagnostica }
    function Get_DiagnosticoSecundario: IXMLCt_diagnosticosSecundarios;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_diagnosticosSecundarios }

  TXMLCt_diagnosticosSecundarios = class(TXMLNodeCollection, IXMLCt_diagnosticosSecundarios)
  protected
    { IXMLCt_diagnosticosSecundarios }
    function Get_CID(Index: Integer): IXMLCt_diagnostico;
    function Add: IXMLCt_diagnostico;
    function Insert(const Index: Integer): IXMLCt_diagnostico;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_atendimentoConsulta }

  TXMLCt_atendimentoConsulta = class(TXMLNode, IXMLCt_atendimentoConsulta)
  protected
    { IXMLCt_atendimentoConsulta }
    function Get_DataAtendimento: UnicodeString;
    function Get_Procedimento: IXMLCt_atendimentoConsulta_procedimento;
    function Get_TipoConsulta: UnicodeString;
    function Get_TipoSaida: UnicodeString;
    procedure Set_DataAtendimento(Value: UnicodeString);
    procedure Set_TipoConsulta(Value: UnicodeString);
    procedure Set_TipoSaida(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_atendimentoConsulta_procedimento }

  TXMLCt_atendimentoConsulta_procedimento = class(TXMLNode, IXMLCt_atendimentoConsulta_procedimento)
  protected
    { IXMLCt_atendimentoConsulta_procedimento }
    function Get_CodigoTabela: UnicodeString;
    function Get_CodigoProcedimento: UnicodeString;
    procedure Set_CodigoTabela(Value: UnicodeString);
    procedure Set_CodigoProcedimento(Value: UnicodeString);
  end;

{ TXMLCt_guiaConsulta_dadosAtendimento }

  TXMLCt_guiaConsulta_dadosAtendimento = class(TXMLCt_atendimentoConsulta, IXMLCt_guiaConsulta_dadosAtendimento)
  protected
    { IXMLCt_guiaConsulta_dadosAtendimento }
  end;

{ TXMLCt_guiaSP_SADT }

  TXMLCt_guiaSP_SADT = class(TXMLNode, IXMLCt_guiaSP_SADT)
  protected
    { IXMLCt_guiaSP_SADT }
    function Get_IdentificacaoGuiaSADTSP: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_DadosSolicitante: IXMLCt_solicitante;
    function Get_PrestadorExecutante: IXMLCt_guiaSP_SADT_prestadorExecutante;
    function Get_IndicacaoClinica: UnicodeString;
    function Get_CaraterAtendimento: UnicodeString;
    function Get_DataHoraAtendimento: UnicodeString;
    function Get_DiagnosticoAtendimento: IXMLCt_diagnosticoAtendimento;
    function Get_TipoSaida: UnicodeString;
    function Get_TipoAtendimento: UnicodeString;
    function Get_ProcedimentosRealizados: IXMLCt_procedimentoRealizadoEquipe;
    function Get_OutrasDespesas: IXMLCt_outrasDespesas;
    function Get_OPMUtilizada: IXMLCt_OPMUtilizada;
    function Get_ValorTotal: IXMLCt_valorTotalServicos;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_IndicacaoClinica(Value: UnicodeString);
    procedure Set_CaraterAtendimento(Value: UnicodeString);
    procedure Set_DataHoraAtendimento(Value: UnicodeString);
    procedure Set_TipoSaida(Value: UnicodeString);
    procedure Set_TipoAtendimento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSP_SADTList }

  TXMLCt_guiaSP_SADTList = class(TXMLNodeCollection, IXMLCt_guiaSP_SADTList)
  protected
    { IXMLCt_guiaSP_SADTList }
    function Add: IXMLCt_guiaSP_SADT;
    function Insert(const Index: Integer): IXMLCt_guiaSP_SADT;

    function Get_Item(Index: Integer): IXMLCt_guiaSP_SADT;
  end;

{ TXMLCt_solicitante }

  TXMLCt_solicitante = class(TXMLNode, IXMLCt_solicitante)
  protected
    { IXMLCt_solicitante }
    function Get_Contratado: IXMLCt_contratadoSolicitante;
    function Get_Profissional: IXMLCt_identificacaoProfissional;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_contratadoSolicitante }

  TXMLCt_contratadoSolicitante = class(TXMLNode, IXMLCt_contratadoSolicitante)
  protected
    { IXMLCt_contratadoSolicitante }
    function Get_Identificacao: IXMLCt_identificacaoPrestador;
    function Get_NomeContratado: UnicodeString;
    function Get_EnderecoContratado: IXMLCt_endereco;
    function Get_NumeroCNES: UnicodeString;
    procedure Set_NomeContratado(Value: UnicodeString);
    procedure Set_NumeroCNES(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_identificacaoPrestador }

  TXMLCt_identificacaoPrestador = class(TXMLNode, IXMLCt_identificacaoPrestador)
  protected
    { IXMLCt_identificacaoPrestador }
    function Get_CNPJ: UnicodeString;
    function Get_Cpf: UnicodeString;
    function Get_CodigoPrestadorNaOperadora: UnicodeString;
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    procedure Set_CNPJ(Value: UnicodeString);
    procedure Set_Cpf(Value: UnicodeString);
    procedure Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSP_SADT_prestadorExecutante }

  TXMLCt_guiaSP_SADT_prestadorExecutante = class(TXMLCt_contratado, IXMLCt_guiaSP_SADT_prestadorExecutante)
  protected
    { IXMLCt_guiaSP_SADT_prestadorExecutante }
    function Get_ProfissionalExecutanteCompl: IXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_profissionalExecutante }

  TXMLCt_profissionalExecutante = class(TXMLNode, IXMLCt_profissionalExecutante)
  protected
    { IXMLCt_profissionalExecutante }
    function Get_NomeExecutante: UnicodeString;
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    function Get_CodigoCBOS: UnicodeString;
    procedure Set_NomeExecutante(Value: UnicodeString);
    procedure Set_CodigoCBOS(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl }

  TXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl = class(TXMLCt_profissionalExecutante, IXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl)
  protected
    { IXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl }
    function Get_CodigoProfissionalCompl: IXMLCt_identificacaoProfissionalCompl;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_identificacaoProfissionalCompl }

  TXMLCt_identificacaoProfissionalCompl = class(TXMLNode, IXMLCt_identificacaoProfissionalCompl)
  protected
    { IXMLCt_identificacaoProfissionalCompl }
    function Get_Cpf: UnicodeString;
    function Get_CodigoPrestadorNaOperadora: UnicodeString;
    procedure Set_Cpf(Value: UnicodeString);
    procedure Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
  end;

{ TXMLCt_procedimentoRealizadoEquipe }

  TXMLCt_procedimentoRealizadoEquipe = class(TXMLNodeCollection, IXMLCt_procedimentoRealizadoEquipe)
  protected
    { IXMLCt_procedimentoRealizadoEquipe }
    function Get_Procedimentos(Index: Integer): IXMLCt_procedimentoRealizadoEquipe_procedimentos;
    function Add: IXMLCt_procedimentoRealizadoEquipe_procedimentos;
    function Insert(const Index: Integer): IXMLCt_procedimentoRealizadoEquipe_procedimentos;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentoRealizadoEquipe_procedimentos }

  TXMLCt_procedimentoRealizadoEquipe_procedimentos = class(TXMLNode, IXMLCt_procedimentoRealizadoEquipe_procedimentos)
  protected
    { IXMLCt_procedimentoRealizadoEquipe_procedimentos }
    function Get_Equipe: IXMLCt_identificacaoEquipe;
    function Get_Procedimento: IXMLCt_tabela;
    function Get_Data: UnicodeString;
    function Get_HoraInicio: UnicodeString;
    function Get_HoraFim: UnicodeString;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: UnicodeString;
    function Get_TecnicaUtilizada: UnicodeString;
    function Get_ReducaoAcrescimo: UnicodeString;
    function Get_Valor: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    procedure Set_Data(Value: UnicodeString);
    procedure Set_HoraInicio(Value: UnicodeString);
    procedure Set_HoraFim(Value: UnicodeString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: UnicodeString);
    procedure Set_TecnicaUtilizada(Value: UnicodeString);
    procedure Set_ReducaoAcrescimo(Value: UnicodeString);
    procedure Set_Valor(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_identificacaoEquipe }

  TXMLCt_identificacaoEquipe = class(TXMLNodeCollection, IXMLCt_identificacaoEquipe)
  protected
    { IXMLCt_identificacaoEquipe }
    function Get_MembroEquipe(Index: Integer): IXMLCt_identificacaoEquipe_membroEquipe;
    function Add: IXMLCt_identificacaoEquipe_membroEquipe;
    function Insert(const Index: Integer): IXMLCt_identificacaoEquipe_membroEquipe;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_identificacaoEquipe_membroEquipe }

  TXMLCt_identificacaoEquipe_membroEquipe = class(TXMLNode, IXMLCt_identificacaoEquipe_membroEquipe)
  protected
    { IXMLCt_identificacaoEquipe_membroEquipe }
    function Get_CodigoProfissional: IXMLCt_identificacaoPrestadorEquipe;
    function Get_IdentificacaoProfissional: IXMLCt_profissionalExecutante;
    function Get_Cpf: UnicodeString;
    function Get_PosicaoProfissional: UnicodeString;
    procedure Set_Cpf(Value: UnicodeString);
    procedure Set_PosicaoProfissional(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_identificacaoPrestadorEquipe }

  TXMLCt_identificacaoPrestadorEquipe = class(TXMLNode, IXMLCt_identificacaoPrestadorEquipe)
  protected
    { IXMLCt_identificacaoPrestadorEquipe }
    function Get_Cpf: UnicodeString;
    function Get_CodigoPrestadorNaOperadora: UnicodeString;
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
    procedure Set_Cpf(Value: UnicodeString);
    procedure Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_outrasDespesas }

  TXMLCt_outrasDespesas = class(TXMLNode, IXMLCt_outrasDespesas)
  private
    FDespesa: IXMLCt_outrasDespesas_despesaList;
  protected
    { IXMLCt_outrasDespesas }
    function Get_Despesa: IXMLCt_outrasDespesas_despesaList;
    function Get_TotalGeralOutrasDespesas: UnicodeString;
    procedure Set_TotalGeralOutrasDespesas(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_outrasDespesas_despesa }

  TXMLCt_outrasDespesas_despesa = class(TXMLNode, IXMLCt_outrasDespesas_despesa)
  protected
    { IXMLCt_outrasDespesas_despesa }
    function Get_IdentificadorDespesa: IXMLCt_tabela;
    function Get_TipoDespesa: UnicodeString;
    function Get_DataRealizacao: UnicodeString;
    function Get_HoraInicial: UnicodeString;
    function Get_HoraFinal: UnicodeString;
    function Get_ReducaoAcrescimo: UnicodeString;
    function Get_Quantidade: UnicodeString;
    function Get_ValorUnitario: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    procedure Set_TipoDespesa(Value: UnicodeString);
    procedure Set_DataRealizacao(Value: UnicodeString);
    procedure Set_HoraInicial(Value: UnicodeString);
    procedure Set_HoraFinal(Value: UnicodeString);
    procedure Set_ReducaoAcrescimo(Value: UnicodeString);
    procedure Set_Quantidade(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_outrasDespesas_despesaList }

  TXMLCt_outrasDespesas_despesaList = class(TXMLNodeCollection, IXMLCt_outrasDespesas_despesaList)
  protected
    { IXMLCt_outrasDespesas_despesaList }
    function Add: IXMLCt_outrasDespesas_despesa;
    function Insert(const Index: Integer): IXMLCt_outrasDespesas_despesa;

    function Get_Item(Index: Integer): IXMLCt_outrasDespesas_despesa;
  end;

{ TXMLCt_OPMUtilizada }

  TXMLCt_OPMUtilizada = class(TXMLNode, IXMLCt_OPMUtilizada)
  protected
    { IXMLCt_OPMUtilizada }
    function Get_OPM: IXMLCt_OPMUtilizada_OPM;
    function Get_ValorTotalOPM: UnicodeString;
    procedure Set_ValorTotalOPM(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_OPMUtilizada_OPM }

  TXMLCt_OPMUtilizada_OPM = class(TXMLNodeCollection, IXMLCt_OPMUtilizada_OPM)
  protected
    { IXMLCt_OPMUtilizada_OPM }
    function Get_IdentificacaoOPM(Index: Integer): IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
    function Add: IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
    function Insert(const Index: Integer): IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_OPMUtilizada_OPM_identificacaoOPM }

  TXMLCt_OPMUtilizada_OPM_identificacaoOPM = class(TXMLNode, IXMLCt_OPMUtilizada_OPM_identificacaoOPM)
  protected
    { IXMLCt_OPMUtilizada_OPM_identificacaoOPM }
    function Get_OPM: IXMLCt_tabela;
    function Get_Quantidade: UnicodeString;
    function Get_CodigoBarra: UnicodeString;
    function Get_ValorUnitario: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    procedure Set_Quantidade(Value: UnicodeString);
    procedure Set_CodigoBarra(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_valorTotalServicos }

  TXMLCt_valorTotalServicos = class(TXMLNode, IXMLCt_valorTotalServicos)
  protected
    { IXMLCt_valorTotalServicos }
    function Get_ServicosExecutados: UnicodeString;
    function Get_Diarias: UnicodeString;
    function Get_Taxas: UnicodeString;
    function Get_Materiais: UnicodeString;
    function Get_Medicamentos: UnicodeString;
    function Get_Gases: UnicodeString;
    function Get_TotalGeral: UnicodeString;
    procedure Set_ServicosExecutados(Value: UnicodeString);
    procedure Set_Diarias(Value: UnicodeString);
    procedure Set_Taxas(Value: UnicodeString);
    procedure Set_Materiais(Value: UnicodeString);
    procedure Set_Medicamentos(Value: UnicodeString);
    procedure Set_Gases(Value: UnicodeString);
    procedure Set_TotalGeral(Value: UnicodeString);
  end;

{ TXMLCt_guiaResumoInternacao }

  TXMLCt_guiaResumoInternacao = class(TXMLNode, IXMLCt_guiaResumoInternacao)
  protected
    { IXMLCt_guiaResumoInternacao }
    function Get_IdentificacaoGuiaInternacao: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: UnicodeString;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_IdentificacaoExecutante: IXMLCt_contratado;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
    function Get_CaraterInternacao: UnicodeString;
    function Get_Acomodacao: UnicodeString;
    function Get_DataHoraInternacao: UnicodeString;
    function Get_DataHoraSaidaInternacao: UnicodeString;
    function Get_TipoInternacao: UnicodeString;
    function Get_RegimeInternacao: UnicodeString;
    function Get_InternacaoObstetrica: IXMLCt_internacaoObstetrica;
    function Get_ObitoNeonatal: IXMLCt_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: IXMLCt_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: IXMLCt_procedimentoRealizadoEquipe;
    function Get_OPMUtilizadas: IXMLCt_OPMUtilizada;
    function Get_OutrasDespesas: IXMLCt_outrasDespesas;
    function Get_TipoFaturamento: UnicodeString;
    function Get_ValorTotal: IXMLCt_valorTotalServicos;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaSolicitacao(Value: UnicodeString);
    procedure Set_CaraterInternacao(Value: UnicodeString);
    procedure Set_Acomodacao(Value: UnicodeString);
    procedure Set_DataHoraInternacao(Value: UnicodeString);
    procedure Set_DataHoraSaidaInternacao(Value: UnicodeString);
    procedure Set_TipoInternacao(Value: UnicodeString);
    procedure Set_RegimeInternacao(Value: UnicodeString);
    procedure Set_TipoFaturamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaResumoInternacaoList }

  TXMLCt_guiaResumoInternacaoList = class(TXMLNodeCollection, IXMLCt_guiaResumoInternacaoList)
  protected
    { IXMLCt_guiaResumoInternacaoList }
    function Add: IXMLCt_guiaResumoInternacao;
    function Insert(const Index: Integer): IXMLCt_guiaResumoInternacao;

    function Get_Item(Index: Integer): IXMLCt_guiaResumoInternacao;
  end;

{ TXMLCt_internacaoObstetrica }

  TXMLCt_internacaoObstetrica = class(TXMLNode, IXMLCt_internacaoObstetrica)
  protected
    { IXMLCt_internacaoObstetrica }
    function Get_EmGestacao: Boolean;
    function Get_Aborto: Boolean;
    function Get_TranstornoMaternoRelGravidez: Boolean;
    function Get_ComplicacaoPeriodoPuerperio: Boolean;
    function Get_AtendimentoRNSalaParto: Boolean;
    function Get_ComplicacaoNeonatal: Boolean;
    function Get_BaixoPeso: Boolean;
    function Get_PartoCesareo: Boolean;
    function Get_PartoNormal: Boolean;
    function Get_DeclaracoesNascidosVivos: IXMLCt_numeroDN;
    function Get_QtdNascidosVivosTermo: Integer;
    function Get_QtdNascidosMortos: Integer;
    function Get_QtdVivosPrematuros: Integer;
    function Get_ObitoMulher: UnicodeString;
    procedure Set_EmGestacao(Value: Boolean);
    procedure Set_Aborto(Value: Boolean);
    procedure Set_TranstornoMaternoRelGravidez(Value: Boolean);
    procedure Set_ComplicacaoPeriodoPuerperio(Value: Boolean);
    procedure Set_AtendimentoRNSalaParto(Value: Boolean);
    procedure Set_ComplicacaoNeonatal(Value: Boolean);
    procedure Set_BaixoPeso(Value: Boolean);
    procedure Set_PartoCesareo(Value: Boolean);
    procedure Set_PartoNormal(Value: Boolean);
    procedure Set_QtdNascidosVivosTermo(Value: Integer);
    procedure Set_QtdNascidosMortos(Value: Integer);
    procedure Set_QtdVivosPrematuros(Value: Integer);
    procedure Set_ObitoMulher(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_numeroDN }

  TXMLCt_numeroDN = class(TXMLNodeCollection, IXMLCt_numeroDN)
  protected
    { IXMLCt_numeroDN }
    function Get_NumeroDN(Index: Integer): UnicodeString;
    function Add(const NumeroDN: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const NumeroDN: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_obitoNeonatal }

  TXMLCt_obitoNeonatal = class(TXMLNode, IXMLCt_obitoNeonatal)
  protected
    { IXMLCt_obitoNeonatal }
    function Get_QtdeobitoPrecoce: Integer;
    function Get_QtdeobitoTardio: Integer;
    procedure Set_QtdeobitoPrecoce(Value: Integer);
    procedure Set_QtdeobitoTardio(Value: Integer);
  end;

{ TXMLCt_diagnosticoSaidaInternacao }

  TXMLCt_diagnosticoSaidaInternacao = class(TXMLNode, IXMLCt_diagnosticoSaidaInternacao)
  private
    FObito: IXMLCt_obitoInternacaoList;
  protected
    { IXMLCt_diagnosticoSaidaInternacao }
    function Get_DiagnosticoPrincipal: IXMLCt_diagnostico;
    function Get_IndicadorAcidente: UnicodeString;
    function Get_DiagnosticosSecundarios: IXMLCt_diagnosticosSecundarios;
    function Get_MotivoSaidaInternacao: UnicodeString;
    function Get_Obito: IXMLCt_obitoInternacaoList;
    procedure Set_IndicadorAcidente(Value: UnicodeString);
    procedure Set_MotivoSaidaInternacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_obitoInternacao }

  TXMLCt_obitoInternacao = class(TXMLNode, IXMLCt_obitoInternacao)
  protected
    { IXMLCt_obitoInternacao }
    function Get_CID: IXMLCt_diagnostico;
    function Get_NumeroDeclaracao: UnicodeString;
    procedure Set_NumeroDeclaracao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_obitoInternacaoList }

  TXMLCt_obitoInternacaoList = class(TXMLNodeCollection, IXMLCt_obitoInternacaoList)
  protected
    { IXMLCt_obitoInternacaoList }
    function Add: IXMLCt_obitoInternacao;
    function Insert(const Index: Integer): IXMLCt_obitoInternacao;

    function Get_Item(Index: Integer): IXMLCt_obitoInternacao;
  end;

{ TXMLCt_guiaHonorarioIndividual }

  TXMLCt_guiaHonorarioIndividual = class(TXMLNode, IXMLCt_guiaHonorarioIndividual)
  protected
    { IXMLCt_guiaHonorarioIndividual }
    function Get_IdentificacaoGuiaHonorarioIndividual: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_Contratado: IXMLCt_contratado;
    function Get_ContratadoExecutante: IXMLCt_guiaHonorarioIndividual_contratadoExecutante;
    function Get_ProcedimentosExamesRealizados: IXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaHonorarioIndividualList }

  TXMLCt_guiaHonorarioIndividualList = class(TXMLNodeCollection, IXMLCt_guiaHonorarioIndividualList)
  protected
    { IXMLCt_guiaHonorarioIndividualList }
    function Add: IXMLCt_guiaHonorarioIndividual;
    function Insert(const Index: Integer): IXMLCt_guiaHonorarioIndividual;

    function Get_Item(Index: Integer): IXMLCt_guiaHonorarioIndividual;
  end;

{ TXMLCt_guiaHonorarioIndividual_contratadoExecutante }

  TXMLCt_guiaHonorarioIndividual_contratadoExecutante = class(TXMLCt_contratado, IXMLCt_guiaHonorarioIndividual_contratadoExecutante)
  protected
    { IXMLCt_guiaHonorarioIndividual_contratadoExecutante }
    function Get_IdentificacaoProfissional: IXMLCt_profissionalExecutante;
    function Get_PosicaoProfissional: UnicodeString;
    function Get_TipoAcomodacao: UnicodeString;
    procedure Set_PosicaoProfissional(Value: UnicodeString);
    procedure Set_TipoAcomodacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentosRealizados }

  TXMLCt_procedimentosRealizados = class(TXMLNodeCollection, IXMLCt_procedimentosRealizados)
  protected
    { IXMLCt_procedimentosRealizados }
    function Get_ProcedimentoRealizado(Index: Integer): IXMLCt_procedimentosRealizados_procedimentoRealizado;
    function Add: IXMLCt_procedimentosRealizados_procedimentoRealizado;
    function Insert(const Index: Integer): IXMLCt_procedimentosRealizados_procedimentoRealizado;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentosRealizados_procedimentoRealizado }

  TXMLCt_procedimentosRealizados_procedimentoRealizado = class(TXMLNode, IXMLCt_procedimentosRealizados_procedimentoRealizado)
  protected
    { IXMLCt_procedimentosRealizados_procedimentoRealizado }
    function Get_Data: UnicodeString;
    function Get_HoraInicio: UnicodeString;
    function Get_HoraFim: UnicodeString;
    function Get_Procedimento: IXMLCt_tabela;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: UnicodeString;
    function Get_TecnicaUtilizada: UnicodeString;
    function Get_ReducaoAcrescimo: UnicodeString;
    function Get_Valor: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    procedure Set_Data(Value: UnicodeString);
    procedure Set_HoraInicio(Value: UnicodeString);
    procedure Set_HoraFim(Value: UnicodeString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: UnicodeString);
    procedure Set_TecnicaUtilizada(Value: UnicodeString);
    procedure Set_ReducaoAcrescimo(Value: UnicodeString);
    procedure Set_Valor(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados }

  TXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados = class(TXMLCt_procedimentosRealizados, IXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados)
  protected
    { IXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados }
    function Get_TotalGeralHonorario: UnicodeString;
    procedure Set_TotalGeralHonorario(Value: UnicodeString);
  end;

{ TXMLCt_guiaOdontologia }

  TXMLCt_guiaOdontologia = class(TXMLNode, IXMLCt_guiaOdontologia)
  protected
    { IXMLCt_guiaOdontologia }
    function Get_CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: IXMLCt_guiaOdontologia_dadosBeneficiario;
    function Get_DadosContratadoExecutante: IXMLCt_guiaOdontologia_dadosContratadoExecutante;
    function Get_ProcedimentosExecutados: IXMLCt_guiaOdontologia_procedimentosExecutados;
    function Get_OutrasDespesas: IXMLCt_outrasDespesas;
    function Get_DadosAtendimento: IXMLCt_atendimentoOdontologia;
    function Get_TipoFaturamento: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_TipoFaturamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaOdontologiaList }

  TXMLCt_guiaOdontologiaList = class(TXMLNodeCollection, IXMLCt_guiaOdontologiaList)
  protected
    { IXMLCt_guiaOdontologiaList }
    function Add: IXMLCt_guiaOdontologia;
    function Insert(const Index: Integer): IXMLCt_guiaOdontologia;

    function Get_Item(Index: Integer): IXMLCt_guiaOdontologia;
  end;

{ TXMLCt_cabecalhoGuiaOdonto }

  TXMLCt_cabecalhoGuiaOdonto = class(TXMLNode, IXMLCt_cabecalhoGuiaOdonto)
  protected
    { IXMLCt_cabecalhoGuiaOdonto }
    function Get_IdentificacaoFontePagadora: IXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora;
    function Get_NumeroGuiaPrestador: UnicodeString;
    function Get_NumeroGuiaOperadora: UnicodeString;
    function Get_DataEmissaoGuia: UnicodeString;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DataAutorizacao: UnicodeString;
    function Get_SenhaAutorizacao: UnicodeString;
    function Get_ValidadeSenha: UnicodeString;
    procedure Set_NumeroGuiaPrestador(Value: UnicodeString);
    procedure Set_NumeroGuiaOperadora(Value: UnicodeString);
    procedure Set_DataEmissaoGuia(Value: UnicodeString);
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_DataAutorizacao(Value: UnicodeString);
    procedure Set_SenhaAutorizacao(Value: UnicodeString);
    procedure Set_ValidadeSenha(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora }

  TXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora = class(TXMLNode, IXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora)
  protected
    { IXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora }
    function Get_RegistroANS: UnicodeString;
    function Get_CnpjFontePagadora: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CnpjFontePagadora(Value: UnicodeString);
  end;

{ TXMLCt_guiaOdontologia_dadosBeneficiario }

  TXMLCt_guiaOdontologia_dadosBeneficiario = class(TXMLCt_beneficiario, IXMLCt_guiaOdontologia_dadosBeneficiario)
  protected
    { IXMLCt_guiaOdontologia_dadosBeneficiario }
    function Get_NomeEmpresa: UnicodeString;
    function Get_NumeroTelefone: UnicodeString;
    function Get_NomeTitular: UnicodeString;
    procedure Set_NomeEmpresa(Value: UnicodeString);
    procedure Set_NumeroTelefone(Value: UnicodeString);
    procedure Set_NomeTitular(Value: UnicodeString);
  end;

{ TXMLCt_guiaOdontologia_dadosContratadoExecutante }

  TXMLCt_guiaOdontologia_dadosContratadoExecutante = class(TXMLNode, IXMLCt_guiaOdontologia_dadosContratadoExecutante)
  protected
    { IXMLCt_guiaOdontologia_dadosContratadoExecutante }
    function Get_DadosContratado: IXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado;
    function Get_DadosExecutante: IXMLCt_profissionalExecutante;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado }

  TXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado = class(TXMLCt_contratado, IXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado)
  protected
    { IXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado }
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaOdontologia_procedimentosExecutados }

  TXMLCt_guiaOdontologia_procedimentosExecutados = class(TXMLNode, IXMLCt_guiaOdontologia_procedimentosExecutados)
  private
    FProcedimentoExecutado: IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList;
  protected
    { IXMLCt_guiaOdontologia_procedimentosExecutados }
    function Get_ProcedimentoExecutado: IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList;
    function Get_QuantidadeTotalUS: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    function Get_TotalFranquiaCoparticipacao: UnicodeString;
    procedure Set_QuantidadeTotalUS(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentoOdontologia }

  TXMLCt_procedimentoOdontologia = class(TXMLNode, IXMLCt_procedimentoOdontologia)
  protected
    { IXMLCt_procedimentoOdontologia }
    function Get_ProcedimentoOdonto: IXMLCt_tabela;
    function Get_DenteRegiao: IXMLCt_denteRegiao;
    function Get_Face: UnicodeString;
    function Get_Quantidade: Integer;
    function Get_QuantidadeUS: UnicodeString;
    function Get_Valor: UnicodeString;
    function Get_FranquiaCoparticipacao: UnicodeString;
    procedure Set_Face(Value: UnicodeString);
    procedure Set_Quantidade(Value: Integer);
    procedure Set_QuantidadeUS(Value: UnicodeString);
    procedure Set_Valor(Value: UnicodeString);
    procedure Set_FranquiaCoparticipacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado }

  TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado = class(TXMLCt_procedimentoOdontologia, IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado)
  protected
    { IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado }
    function Get_DataRealizacao: UnicodeString;
    procedure Set_DataRealizacao(Value: UnicodeString);
  end;

{ TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList }

  TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList = class(TXMLNodeCollection, IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList)
  protected
    { IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList }
    function Add: IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;
    function Insert(const Index: Integer): IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;

    function Get_Item(Index: Integer): IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;
  end;

{ TXMLCt_atendimentoOdontologia }

  TXMLCt_atendimentoOdontologia = class(TXMLNode, IXMLCt_atendimentoOdontologia)
  protected
    { IXMLCt_atendimentoOdontologia }
    function Get_DataTerminoTratamento: UnicodeString;
    function Get_TipoAtendimento: UnicodeString;
    procedure Set_DataTerminoTratamento(Value: UnicodeString);
    procedure Set_TipoAtendimento(Value: UnicodeString);
  end;

{ TXMLCt_guias_guiaRevisaoGlosa }

  TXMLCt_guias_guiaRevisaoGlosa = class(TXMLNode, IXMLCt_guias_guiaRevisaoGlosa)
  private
    FGuiaConsultaReapresentacao: IXMLCt_guiaConsultaReapresentacaoList;
    FGuiaSP_SADTReapresentacao: IXMLCt_guiaSP_SADTReapresentacaoList;
    FGuiaResumoInternacaoReapresentacao: IXMLCt_guiaResumoInternacaoReapresentacaoList;
    FGuiaHonorarioIndividualReapresentacao: IXMLCt_guiaHonorarioIndividualReapresentacaoList;
    FGuiaOdontologiaReapresentacao: IXMLCt_guiaTratamentoOdontologicoReapresentacaoList;
  protected
    { IXMLCt_guias_guiaRevisaoGlosa }
    function Get_GuiaConsultaReapresentacao: IXMLCt_guiaConsultaReapresentacaoList;
    function Get_GuiaSP_SADTReapresentacao: IXMLCt_guiaSP_SADTReapresentacaoList;
    function Get_GuiaResumoInternacaoReapresentacao: IXMLCt_guiaResumoInternacaoReapresentacaoList;
    function Get_GuiaHonorarioIndividualReapresentacao: IXMLCt_guiaHonorarioIndividualReapresentacaoList;
    function Get_GuiaOdontologiaReapresentacao: IXMLCt_guiaTratamentoOdontologicoReapresentacaoList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaConsultaReapresentacao }

  TXMLCt_guiaConsultaReapresentacao = class(TXMLNode, IXMLCt_guiaConsultaReapresentacao)
  protected
    { IXMLCt_guiaConsultaReapresentacao }
    function Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
    function Get_Beneficiario: IXMLCt_beneficiario;
    function Get_DadosContratado: IXMLCt_contratado;
    function Get_ProfissionalExecutante: IXMLCt_identificacaoProfissional;
    function Get_HipoteseDiagnostica: IXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica;
    function Get_DadosAtendimento: IXMLCt_atendimentoConsultaReapr;
    function Get_Observacao: UnicodeString;
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaConsultaReapresentacaoList }

  TXMLCt_guiaConsultaReapresentacaoList = class(TXMLNodeCollection, IXMLCt_guiaConsultaReapresentacaoList)
  protected
    { IXMLCt_guiaConsultaReapresentacaoList }
    function Add: IXMLCt_guiaConsultaReapresentacao;
    function Insert(const Index: Integer): IXMLCt_guiaConsultaReapresentacao;

    function Get_Item(Index: Integer): IXMLCt_guiaConsultaReapresentacao;
  end;

{ TXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica }

  TXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica = class(TXMLCt_diagnosticoAtendimento, IXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica)
  protected
    { IXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica }
    function Get_DiagnosticoSecundario: IXMLCt_diagnosticosSecundarios;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_atendimentoConsultaReapr }

  TXMLCt_atendimentoConsultaReapr = class(TXMLNode, IXMLCt_atendimentoConsultaReapr)
  protected
    { IXMLCt_atendimentoConsultaReapr }
    function Get_Procedimento: IXMLCt_atendimentoConsultaReapr_procedimento;
    function Get_TipoConsulta: UnicodeString;
    function Get_TipoSaida: UnicodeString;
    function Get_DataAtendimento: UnicodeString;
    procedure Set_TipoConsulta(Value: UnicodeString);
    procedure Set_TipoSaida(Value: UnicodeString);
    procedure Set_DataAtendimento(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_atendimentoConsultaReapr_procedimento }

  TXMLCt_atendimentoConsultaReapr_procedimento = class(TXMLNode, IXMLCt_atendimentoConsultaReapr_procedimento)
  protected
    { IXMLCt_atendimentoConsultaReapr_procedimento }
    function Get_CodigoTabela: UnicodeString;
    function Get_CodigoProcedimento: UnicodeString;
    function Get_Justificativa: UnicodeString;
    procedure Set_CodigoTabela(Value: UnicodeString);
    procedure Set_CodigoProcedimento(Value: UnicodeString);
    procedure Set_Justificativa(Value: UnicodeString);
  end;

{ TXMLCt_guiaSP_SADTReapresentacao }

  TXMLCt_guiaSP_SADTReapresentacao = class(TXMLNode, IXMLCt_guiaSP_SADTReapresentacao)
  protected
    { IXMLCt_guiaSP_SADTReapresentacao }
    function Get_IdentificacaoGuiaSADTSP: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_DadosSolicitante: IXMLCt_solicitante;
    function Get_PrestadorExecutante: IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante;
    function Get_IndicacaoClinica: UnicodeString;
    function Get_CaraterAtendimento: UnicodeString;
    function Get_DataHoraAtendimento: UnicodeString;
    function Get_DiagnosticoAtendimento: IXMLCt_diagnosticoAtendimento;
    function Get_TipoSaida: UnicodeString;
    function Get_TipoAtendimento: UnicodeString;
    function Get_ProcedimentosRealizados: IXMLCt_procedimentoRevisao;
    function Get_OutrasDespesas: IXMLCt_outrasDespesasRevisao;
    function Get_OPMUtilizada: IXMLCt_OPMUtilizadasRevisao;
    function Get_ValorTotal: IXMLCt_valorTotalServicos;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_IndicacaoClinica(Value: UnicodeString);
    procedure Set_CaraterAtendimento(Value: UnicodeString);
    procedure Set_DataHoraAtendimento(Value: UnicodeString);
    procedure Set_TipoSaida(Value: UnicodeString);
    procedure Set_TipoAtendimento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSP_SADTReapresentacaoList }

  TXMLCt_guiaSP_SADTReapresentacaoList = class(TXMLNodeCollection, IXMLCt_guiaSP_SADTReapresentacaoList)
  protected
    { IXMLCt_guiaSP_SADTReapresentacaoList }
    function Add: IXMLCt_guiaSP_SADTReapresentacao;
    function Insert(const Index: Integer): IXMLCt_guiaSP_SADTReapresentacao;

    function Get_Item(Index: Integer): IXMLCt_guiaSP_SADTReapresentacao;
  end;

{ TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante }

  TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante = class(TXMLCt_contratado, IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante)
  protected
    { IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante }
    function Get_ProfissionalExecutanteCompl: IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl }

  TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl = class(TXMLCt_profissionalExecutante, IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl)
  protected
    { IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl }
    function Get_CodigoProfissionalCompl: IXMLCt_identificacaoProfissionalCompl;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentoRevisao }

  TXMLCt_procedimentoRevisao = class(TXMLNodeCollection, IXMLCt_procedimentoRevisao)
  protected
    { IXMLCt_procedimentoRevisao }
    function Get_ProcedimentosRevisao(Index: Integer): IXMLCt_procedimentoRevisao_procedimentosRevisao;
    function Add: IXMLCt_procedimentoRevisao_procedimentosRevisao;
    function Insert(const Index: Integer): IXMLCt_procedimentoRevisao_procedimentosRevisao;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentoRevisao_procedimentosRevisao }

  TXMLCt_procedimentoRevisao_procedimentosRevisao = class(TXMLNode, IXMLCt_procedimentoRevisao_procedimentosRevisao)
  protected
    { IXMLCt_procedimentoRevisao_procedimentosRevisao }
    function Get_Data: UnicodeString;
    function Get_HoraInicio: UnicodeString;
    function Get_HoraFim: UnicodeString;
    function Get_Procedimento: IXMLCt_tabela;
    function Get_QuantidadeRealizada: Integer;
    function Get_ViaAcesso: UnicodeString;
    function Get_TecnicaUtilizada: UnicodeString;
    function Get_ReducaoAcrescimo: UnicodeString;
    function Get_Valor: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    function Get_JustificativaRevisao: UnicodeString;
    procedure Set_Data(Value: UnicodeString);
    procedure Set_HoraInicio(Value: UnicodeString);
    procedure Set_HoraFim(Value: UnicodeString);
    procedure Set_QuantidadeRealizada(Value: Integer);
    procedure Set_ViaAcesso(Value: UnicodeString);
    procedure Set_TecnicaUtilizada(Value: UnicodeString);
    procedure Set_ReducaoAcrescimo(Value: UnicodeString);
    procedure Set_Valor(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_JustificativaRevisao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_outrasDespesasRevisao }

  TXMLCt_outrasDespesasRevisao = class(TXMLNode, IXMLCt_outrasDespesasRevisao)
  private
    FItensDespesas: IXMLCt_outrasDespesasRevisao_itensDespesasList;
  protected
    { IXMLCt_outrasDespesasRevisao }
    function Get_ItensDespesas: IXMLCt_outrasDespesasRevisao_itensDespesasList;
    function Get_TotalGeralOutrasDespesas: UnicodeString;
    procedure Set_TotalGeralOutrasDespesas(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_outrasDespesasRevisao_itensDespesas }

  TXMLCt_outrasDespesasRevisao_itensDespesas = class(TXMLNode, IXMLCt_outrasDespesasRevisao_itensDespesas)
  protected
    { IXMLCt_outrasDespesasRevisao_itensDespesas }
    function Get_TipoDespesa: UnicodeString;
    function Get_DataRealizacao: UnicodeString;
    function Get_Despesa: IXMLCt_tabela;
    function Get_ReducaoAcrescimo: UnicodeString;
    function Get_Quantidade: UnicodeString;
    function Get_ValorUnitario: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    function Get_Justificativa: UnicodeString;
    procedure Set_TipoDespesa(Value: UnicodeString);
    procedure Set_DataRealizacao(Value: UnicodeString);
    procedure Set_ReducaoAcrescimo(Value: UnicodeString);
    procedure Set_Quantidade(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_Justificativa(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_outrasDespesasRevisao_itensDespesasList }

  TXMLCt_outrasDespesasRevisao_itensDespesasList = class(TXMLNodeCollection, IXMLCt_outrasDespesasRevisao_itensDespesasList)
  protected
    { IXMLCt_outrasDespesasRevisao_itensDespesasList }
    function Add: IXMLCt_outrasDespesasRevisao_itensDespesas;
    function Insert(const Index: Integer): IXMLCt_outrasDespesasRevisao_itensDespesas;

    function Get_Item(Index: Integer): IXMLCt_outrasDespesasRevisao_itensDespesas;
  end;

{ TXMLCt_OPMUtilizadasRevisao }

  TXMLCt_OPMUtilizadasRevisao = class(TXMLNode, IXMLCt_OPMUtilizadasRevisao)
  protected
    { IXMLCt_OPMUtilizadasRevisao }
    function Get_OPMUtilizada: IXMLCt_OPMUtilizadasRevisao_OPMUtilizada;
    function Get_ValorTotalOPM: UnicodeString;
    procedure Set_ValorTotalOPM(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_OPMUtilizadasRevisao_OPMUtilizada }

  TXMLCt_OPMUtilizadasRevisao_OPMUtilizada = class(TXMLNodeCollection, IXMLCt_OPMUtilizadasRevisao_OPMUtilizada)
  protected
    { IXMLCt_OPMUtilizadasRevisao_OPMUtilizada }
    function Get_OPM(Index: Integer): IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
    function Add: IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
    function Insert(const Index: Integer): IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM }

  TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM = class(TXMLNode, IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM)
  protected
    { IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM }
    function Get_OPM: IXMLCt_tabela;
    function Get_ValorUnitario: UnicodeString;
    function Get_Quantidade: UnicodeString;
    function Get_CodigoBarra: UnicodeString;
    function Get_ValorTotal: UnicodeString;
    function Get_Justificativa: UnicodeString;
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_Quantidade(Value: UnicodeString);
    procedure Set_CodigoBarra(Value: UnicodeString);
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_Justificativa(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaResumoInternacaoReapresentacao }

  TXMLCt_guiaResumoInternacaoReapresentacao = class(TXMLNode, IXMLCt_guiaResumoInternacaoReapresentacao)
  protected
    { IXMLCt_guiaResumoInternacaoReapresentacao }
    function Get_IdentificacaoGuiaInternacao: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaSolicitacao: UnicodeString;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_IdentificacaoExecutante: IXMLCt_contratado;
    function Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
    function Get_CaraterInternacao: UnicodeString;
    function Get_Acomodacao: UnicodeString;
    function Get_DataHoraInternacao: UnicodeString;
    function Get_DataHoraSaidaInternacao: UnicodeString;
    function Get_TipoInternacao: UnicodeString;
    function Get_RegimeInternacao: UnicodeString;
    function Get_InternacaoObstetrica: IXMLCt_internacaoObstetrica;
    function Get_ObitoNeonatal: IXMLCt_obitoNeonatal;
    function Get_DiagnosticosSaidaInternacao: IXMLCt_diagnosticoSaidaInternacao;
    function Get_ProcedimentosRealizados: IXMLCt_procedimentoRevisao;
    function Get_OPMUtilizadas: IXMLCt_OPMUtilizadasRevisao;
    function Get_OutrasDespesas: IXMLCt_outrasDespesasRevisao;
    function Get_TipoFaturamento: UnicodeString;
    function Get_ValorTotal: IXMLCt_valorTotalServicos;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaSolicitacao(Value: UnicodeString);
    procedure Set_CaraterInternacao(Value: UnicodeString);
    procedure Set_Acomodacao(Value: UnicodeString);
    procedure Set_DataHoraInternacao(Value: UnicodeString);
    procedure Set_DataHoraSaidaInternacao(Value: UnicodeString);
    procedure Set_TipoInternacao(Value: UnicodeString);
    procedure Set_RegimeInternacao(Value: UnicodeString);
    procedure Set_TipoFaturamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaResumoInternacaoReapresentacaoList }

  TXMLCt_guiaResumoInternacaoReapresentacaoList = class(TXMLNodeCollection, IXMLCt_guiaResumoInternacaoReapresentacaoList)
  protected
    { IXMLCt_guiaResumoInternacaoReapresentacaoList }
    function Add: IXMLCt_guiaResumoInternacaoReapresentacao;
    function Insert(const Index: Integer): IXMLCt_guiaResumoInternacaoReapresentacao;

    function Get_Item(Index: Integer): IXMLCt_guiaResumoInternacaoReapresentacao;
  end;

{ TXMLCt_guiaHonorarioIndividualReapresentacao }

  TXMLCt_guiaHonorarioIndividualReapresentacao = class(TXMLNode, IXMLCt_guiaHonorarioIndividualReapresentacao)
  protected
    { IXMLCt_guiaHonorarioIndividualReapresentacao }
    function Get_IdentificacaoGuiaHonorarioIndividual: IXMLCt_cabecalhoGuia;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_Contratado: IXMLCt_contratado;
    function Get_ContratadoExecutante: IXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante;
    function Get_ProcedimentosExamesRealizados: IXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaHonorarioIndividualReapresentacaoList }

  TXMLCt_guiaHonorarioIndividualReapresentacaoList = class(TXMLNodeCollection, IXMLCt_guiaHonorarioIndividualReapresentacaoList)
  protected
    { IXMLCt_guiaHonorarioIndividualReapresentacaoList }
    function Add: IXMLCt_guiaHonorarioIndividualReapresentacao;
    function Insert(const Index: Integer): IXMLCt_guiaHonorarioIndividualReapresentacao;

    function Get_Item(Index: Integer): IXMLCt_guiaHonorarioIndividualReapresentacao;
  end;

{ TXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante }

  TXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante = class(TXMLCt_contratado, IXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante)
  protected
    { IXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante }
    function Get_IdentificacaoProfissional: IXMLCt_profissionalExecutante;
    function Get_PosicaoProfissional: UnicodeString;
    function Get_TipoAcomodacao: UnicodeString;
    procedure Set_PosicaoProfissional(Value: UnicodeString);
    procedure Set_TipoAcomodacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados }

  TXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados = class(TXMLCt_procedimentoRevisao, IXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados)
  protected
    { IXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados }
    function Get_TotalGeralHonorario: UnicodeString;
    procedure Set_TotalGeralHonorario(Value: UnicodeString);
  end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacao }

  TXMLCt_guiaTratamentoOdontologicoReapresentacao = class(TXMLNode, IXMLCt_guiaTratamentoOdontologicoReapresentacao)
  protected
    { IXMLCt_guiaTratamentoOdontologicoReapresentacao }
    function Get_CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario;
    function Get_DadosContratadoExecutante: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante;
    function Get_ProcedimentosExecutados: IXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados;
    function Get_OutrasDespesas: IXMLCt_outrasDespesas;
    function Get_DadosAtendimento: IXMLCt_atendimentoOdontologia;
    function Get_TipoFaturamento: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_TipoFaturamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacaoList }

  TXMLCt_guiaTratamentoOdontologicoReapresentacaoList = class(TXMLNodeCollection, IXMLCt_guiaTratamentoOdontologicoReapresentacaoList)
  protected
    { IXMLCt_guiaTratamentoOdontologicoReapresentacaoList }
    function Add: IXMLCt_guiaTratamentoOdontologicoReapresentacao;
    function Insert(const Index: Integer): IXMLCt_guiaTratamentoOdontologicoReapresentacao;

    function Get_Item(Index: Integer): IXMLCt_guiaTratamentoOdontologicoReapresentacao;
  end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario }

  TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario = class(TXMLCt_beneficiario, IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario)
  protected
    { IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario }
    function Get_NomeEmpresa: UnicodeString;
    function Get_NumeroTelefone: UnicodeString;
    function Get_NomeTitular: UnicodeString;
    procedure Set_NomeEmpresa(Value: UnicodeString);
    procedure Set_NumeroTelefone(Value: UnicodeString);
    procedure Set_NomeTitular(Value: UnicodeString);
  end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante }

  TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante = class(TXMLNode, IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante)
  protected
    { IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante }
    function Get_DadosContratado: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado;
    function Get_DadosExecutante: IXMLCt_profissionalExecutante;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado }

  TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado = class(TXMLCt_contratado, IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado)
  protected
    { IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado }
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados }

  TXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados = class(TXMLNodeCollection, IXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados)
  protected
    { IXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados }
    function Get_ProcedimentoExecutado(Index: Integer): IXMLCt_procedimentoOdontoRevisao;
    function Add: IXMLCt_procedimentoOdontoRevisao;
    function Insert(const Index: Integer): IXMLCt_procedimentoOdontoRevisao;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentoOdontoRevisao }

  TXMLCt_procedimentoOdontoRevisao = class(TXMLNode, IXMLCt_procedimentoOdontoRevisao)
  protected
    { IXMLCt_procedimentoOdontoRevisao }
    function Get_ProcedimentoOdontologia: IXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia;
    function Get_ValorTotal: UnicodeString;
    function Get_QuantidadeTotalUS: UnicodeString;
    function Get_TotalFranquiaCoparticipacao: UnicodeString;
    function Get_JustificativaRevisao: UnicodeString;
    procedure Set_ValorTotal(Value: UnicodeString);
    procedure Set_QuantidadeTotalUS(Value: UnicodeString);
    procedure Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
    procedure Set_JustificativaRevisao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia }

  TXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia = class(TXMLCt_procedimentoOdontologia, IXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia)
  protected
    { IXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia }
    function Get_DataRealizacao: UnicodeString;
    procedure Set_DataRealizacao(Value: UnicodeString);
  end;

{ TXMLCt_loteGuias_guias }

  TXMLCt_loteGuias_guias = class(TXMLCt_guias, IXMLCt_loteGuias_guias)
  protected
    { IXMLCt_loteGuias_guias }
  end;

{ TXMLCt_loteAnexo }

  TXMLCt_loteAnexo = class(TXMLNode, IXMLCt_loteAnexo)
  protected
    { IXMLCt_loteAnexo }
    function Get_NumeroLote: UnicodeString;
    function Get_AnexoGuia: IXMLCt_loteAnexo_anexoGuia;
    procedure Set_NumeroLote(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_loteAnexo_anexoGuia }

  TXMLCt_loteAnexo_anexoGuia = class(TXMLNode, IXMLCt_loteAnexo_anexoGuia)
  protected
    { IXMLCt_loteAnexo_anexoGuia }
    function Get_AnexoSituacaoInicial: IXMLCt_anexoSituacaoInicial;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_anexoSituacaoInicial }

  TXMLCt_anexoSituacaoInicial = class(TXMLNode, IXMLCt_anexoSituacaoInicial)
  protected
    { IXMLCt_anexoSituacaoInicial }
    function Get_CabecalhoAnexoGuia: IXMLCt_cabecalhoAnexoOdonto;
    function Get_DadosBeneficiario: IXMLCt_anexoSituacaoInicial_dadosBeneficiario;
    function Get_DadosContratadoExecutante: IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante;
    function Get_SituacaoInicial: IXMLCt_situacaoInicial;
    function Get_Observacao: UnicodeString;
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_cabecalhoAnexoOdonto }

  TXMLCt_cabecalhoAnexoOdonto = class(TXMLNode, IXMLCt_cabecalhoAnexoOdonto)
  protected
    { IXMLCt_cabecalhoAnexoOdonto }
    function Get_NumeroGuiaPrincipal: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
  end;

{ TXMLCt_anexoSituacaoInicial_dadosBeneficiario }

  TXMLCt_anexoSituacaoInicial_dadosBeneficiario = class(TXMLCt_beneficiario, IXMLCt_anexoSituacaoInicial_dadosBeneficiario)
  protected
    { IXMLCt_anexoSituacaoInicial_dadosBeneficiario }
    function Get_NomeEmpresa: UnicodeString;
    function Get_NumeroTelefone: UnicodeString;
    function Get_NomeTitular: UnicodeString;
    procedure Set_NomeEmpresa(Value: UnicodeString);
    procedure Set_NumeroTelefone(Value: UnicodeString);
    procedure Set_NomeTitular(Value: UnicodeString);
  end;

{ TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante }

  TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante = class(TXMLNode, IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante)
  protected
    { IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante }
    function Get_DadosContratado: IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado;
    function Get_DadosExecutante: IXMLCt_profissionalExecutante;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado }

  TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado = class(TXMLCt_contratado, IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado)
  protected
    { IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado }
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_situacaoInicial }

  TXMLCt_situacaoInicial = class(TXMLNode, IXMLCt_situacaoInicial)
  protected
    { IXMLCt_situacaoInicial }
    function Get_SituacaoClinica: IXMLCt_situacaoClinica;
    function Get_DoencaPeriodontal: Boolean;
    function Get_AlteracaoTecidoMole: Boolean;
    function Get_Observacao: UnicodeString;
    procedure Set_DoencaPeriodontal(Value: Boolean);
    procedure Set_AlteracaoTecidoMole(Value: Boolean);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_situacaoClinica }

  TXMLCt_situacaoClinica = class(TXMLNodeCollection, IXMLCt_situacaoClinica)
  protected
    { IXMLCt_situacaoClinica }
    function Get_Dentes(Index: Integer): IXMLCt_situacaoClinica_dentes;
    function Add: IXMLCt_situacaoClinica_dentes;
    function Insert(const Index: Integer): IXMLCt_situacaoClinica_dentes;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_situacaoClinica_dentes }

  TXMLCt_situacaoClinica_dentes = class(TXMLNode, IXMLCt_situacaoClinica_dentes)
  protected
    { IXMLCt_situacaoClinica_dentes }
    function Get_ElementoDentario: UnicodeString;
    function Get_CondicaoClinica: UnicodeString;
    procedure Set_ElementoDentario(Value: UnicodeString);
    procedure Set_CondicaoClinica(Value: UnicodeString);
  end;

{ TXMLCt_solicitacaoDemonstrativoPagamento }

  TXMLCt_solicitacaoDemonstrativoPagamento = class(TXMLNode, IXMLCt_solicitacaoDemonstrativoPagamento)
  protected
    { IXMLCt_solicitacaoDemonstrativoPagamento }
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_DataSolicitacao: UnicodeString;
    function Get_TipoDemonstrativo: UnicodeString;
    function Get_DataInicial: UnicodeString;
    function Get_DataFinal: UnicodeString;
    function Get_NumeroProtocolo: UnicodeString;
    procedure Set_DataSolicitacao(Value: UnicodeString);
    procedure Set_TipoDemonstrativo(Value: UnicodeString);
    procedure Set_DataInicial(Value: UnicodeString);
    procedure Set_DataFinal(Value: UnicodeString);
    procedure Set_NumeroProtocolo(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_solicitacaoStatusProtocolo }

  TXMLCt_solicitacaoStatusProtocolo = class(TXMLNode, IXMLCt_solicitacaoStatusProtocolo)
  protected
    { IXMLCt_solicitacaoStatusProtocolo }
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_DataSolicitacao: UnicodeString;
    function Get_DetalheProtocolo: IXMLCt_solicitacaoStatusProtocolo_detalheProtocolo;
    procedure Set_DataSolicitacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_solicitacaoStatusProtocolo_detalheProtocolo }

  TXMLCt_solicitacaoStatusProtocolo_detalheProtocolo = class(TXMLNodeCollection, IXMLCt_solicitacaoStatusProtocolo_detalheProtocolo)
  protected
    { IXMLCt_solicitacaoStatusProtocolo_detalheProtocolo }
    function Get_NumeroProtocolo(Index: Integer): UnicodeString;
    function Add(const NumeroProtocolo: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const NumeroProtocolo: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento }

  TXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento = class(TXMLNode, IXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento)
  protected
    { IXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento }
    function Get_GuiaSolicInternacao: IXMLCt_guiaSolicInternacao;
    function Get_GuiaSolicitacaoSADT: IXMLCt_guiaSolicitacaoSP_SADT;
    function Get_GuiaSolicitacaoOdontologia: IXMLCt_guiaSolicitacaoOdonto;
    function Get_GuiaSolicitacaoProrrogacao: IXMLCt_guiaSolicitacaoProrrogacao;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSolicInternacao }

  TXMLCt_guiaSolicInternacao = class(TXMLNode, IXMLCt_guiaSolicInternacao)
  protected
    { IXMLCt_guiaSolicInternacao }
    function Get_IdentificacaoGuiaSolicitacaoInternacao: IXMLCt_cabecalhoSolicitacao;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_DadosSolicitanteAtendimento: IXMLCt_solicitante;
    function Get_DadosSolicitante: IXMLCt_solicitante;
    function Get_PrestadorSolicitado: IXMLCt_guiaSolicInternacao_prestadorSolicitado;
    function Get_CaraterInternacao: UnicodeString;
    function Get_TipoInternacao: UnicodeString;
    function Get_IndicacaoClinica: UnicodeString;
    function Get_RegimeInternacao: UnicodeString;
    function Get_HipotesesDiagnosticas: IXMLCt_hipoteseDiagnostica;
    function Get_ProcedimentosExamesSolicitados: IXMLCt_procedimentosSolicitados;
    function Get_OPMsSolicitadas: IXMLCt_OPMSolicitadas;
    function Get_DiasSolicitados: Integer;
    function Get_DataProvavelAdmisHosp: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_CaraterInternacao(Value: UnicodeString);
    procedure Set_TipoInternacao(Value: UnicodeString);
    procedure Set_IndicacaoClinica(Value: UnicodeString);
    procedure Set_RegimeInternacao(Value: UnicodeString);
    procedure Set_DiasSolicitados(Value: Integer);
    procedure Set_DataProvavelAdmisHosp(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_cabecalhoSolicitacao }

  TXMLCt_cabecalhoSolicitacao = class(TXMLNode, IXMLCt_cabecalhoSolicitacao)
  protected
    { IXMLCt_cabecalhoSolicitacao }
    function Get_IdentificacaoFontePagadora: IXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora;
    function Get_DataEmissaoGuia: UnicodeString;
    function Get_NumeroGuiaOperadora: UnicodeString;
    function Get_NumeroGuiaPrestador: UnicodeString;
    procedure Set_DataEmissaoGuia(Value: UnicodeString);
    procedure Set_NumeroGuiaOperadora(Value: UnicodeString);
    procedure Set_NumeroGuiaPrestador(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora }

  TXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora = class(TXMLNode, IXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora)
  protected
    { IXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora }
    function Get_RegistroANS: UnicodeString;
    function Get_CnpjFontePagadora: UnicodeString;
    procedure Set_RegistroANS(Value: UnicodeString);
    procedure Set_CnpjFontePagadora(Value: UnicodeString);
  end;

{ TXMLCt_guiaSolicInternacao_prestadorSolicitado }

  TXMLCt_guiaSolicInternacao_prestadorSolicitado = class(TXMLCt_identificacaoPrestador, IXMLCt_guiaSolicInternacao_prestadorSolicitado)
  protected
    { IXMLCt_guiaSolicInternacao_prestadorSolicitado }
    function Get_NomePrestador: UnicodeString;
    procedure Set_NomePrestador(Value: UnicodeString);
  end;

{ TXMLCt_hipoteseDiagnostica }

  TXMLCt_hipoteseDiagnostica = class(TXMLNode, IXMLCt_hipoteseDiagnostica)
  protected
    { IXMLCt_hipoteseDiagnostica }
    function Get_CIDPrincipal: IXMLCt_diagnosticoGuia;
    function Get_DiagnosticosSecundarios: IXMLCt_diagnosticosSecundarios;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_diagnosticoGuia }

  TXMLCt_diagnosticoGuia = class(TXMLNode, IXMLCt_diagnosticoGuia)
  protected
    { IXMLCt_diagnosticoGuia }
    function Get_CID: IXMLCt_diagnostico;
    function Get_TipoDoenca: UnicodeString;
    function Get_TempoReferidoEvolucaoDoenca: IXMLCt_tempoEvolucaoDoenca;
    function Get_IndicadorAcidente: UnicodeString;
    procedure Set_TipoDoenca(Value: UnicodeString);
    procedure Set_IndicadorAcidente(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentosSolicitados }

  TXMLCt_procedimentosSolicitados = class(TXMLNodeCollection, IXMLCt_procedimentosSolicitados)
  protected
    { IXMLCt_procedimentosSolicitados }
    function Get_ProcedimentoSolicitado(Index: Integer): IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
    function Add: IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
    function Insert(const Index: Integer): IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_procedimentosSolicitados_procedimentoSolicitado }

  TXMLCt_procedimentosSolicitados_procedimentoSolicitado = class(TXMLNode, IXMLCt_procedimentosSolicitados_procedimentoSolicitado)
  protected
    { IXMLCt_procedimentosSolicitados_procedimentoSolicitado }
    function Get_QuantidadeSolicitada: Integer;
    function Get_Procedimento: IXMLCt_tabela;
    procedure Set_QuantidadeSolicitada(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_OPMSolicitadas }

  TXMLCt_OPMSolicitadas = class(TXMLNodeCollection, IXMLCt_OPMSolicitadas)
  protected
    { IXMLCt_OPMSolicitadas }
    function Get_OPMSolicitada(Index: Integer): IXMLCt_OPMSolicitadas_OPMSolicitada;
    function Add: IXMLCt_OPMSolicitadas_OPMSolicitada;
    function Insert(const Index: Integer): IXMLCt_OPMSolicitadas_OPMSolicitada;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_OPMSolicitadas_OPMSolicitada }

  TXMLCt_OPMSolicitadas_OPMSolicitada = class(TXMLNode, IXMLCt_OPMSolicitadas_OPMSolicitada)
  protected
    { IXMLCt_OPMSolicitadas_OPMSolicitada }
    function Get_QuantidadeSolicitada: UnicodeString;
    function Get_Fabricante: UnicodeString;
    function Get_Valor: UnicodeString;
    function Get_OPM: IXMLCt_tabela;
    procedure Set_QuantidadeSolicitada(Value: UnicodeString);
    procedure Set_Fabricante(Value: UnicodeString);
    procedure Set_Valor(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSolicitacaoSP_SADT }

  TXMLCt_guiaSolicitacaoSP_SADT = class(TXMLNode, IXMLCt_guiaSolicitacaoSP_SADT)
  protected
    { IXMLCt_guiaSolicitacaoSP_SADT }
    function Get_IdentificacaoGuiaSolicitacaoSADTSP: IXMLCt_cabecalhoSolicitacao;
    function Get_NumeroGuiaPrincipal: UnicodeString;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_DadosSolicitante: IXMLCt_solicitante;
    function Get_PrestadorExecutante: IXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante;
    function Get_CaraterSolicitacao: UnicodeString;
    function Get_DataHoraSolicitacao: UnicodeString;
    function Get_Diagnostico: IXMLCt_diagnostico;
    function Get_IndicacaoClinica: UnicodeString;
    function Get_ProcedimentosSolicitados: IXMLCt_procedimentosSolicitados;
    function Get_OpmSolicitada: IXMLCt_OPMSolicitadas;
    function Get_Observacao: UnicodeString;
    procedure Set_NumeroGuiaPrincipal(Value: UnicodeString);
    procedure Set_CaraterSolicitacao(Value: UnicodeString);
    procedure Set_DataHoraSolicitacao(Value: UnicodeString);
    procedure Set_IndicacaoClinica(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante }

  TXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante = class(TXMLCt_contratado, IXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante)
  protected
    { IXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante }
  end;

{ TXMLCt_guiaSolicitacaoOdonto }

  TXMLCt_guiaSolicitacaoOdonto = class(TXMLNode, IXMLCt_guiaSolicitacaoOdonto)
  protected
    { IXMLCt_guiaSolicitacaoOdonto }
    function Get_CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto;
    function Get_DadosBeneficiario: IXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario;
    function Get_DadosSolicitante: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante;
    function Get_PlanoTratamento: IXMLCt_guiaSolicitacaoOdonto_planoTratamento;
    function Get_TipoAtendimento: UnicodeString;
    function Get_DataTerminoTratamento: UnicodeString;
    function Get_Observacao: UnicodeString;
    procedure Set_TipoAtendimento(Value: UnicodeString);
    procedure Set_DataTerminoTratamento(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario }

  TXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario = class(TXMLCt_beneficiario, IXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario)
  protected
    { IXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario }
    function Get_NomeEmpresa: UnicodeString;
    function Get_NumeroTelefone: UnicodeString;
    function Get_NomeTitular: UnicodeString;
    procedure Set_NomeEmpresa(Value: UnicodeString);
    procedure Set_NumeroTelefone(Value: UnicodeString);
    procedure Set_NomeTitular(Value: UnicodeString);
  end;

{ TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante }

  TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante = class(TXMLNode, IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante)
  protected
    { IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante }
    function Get_DadosContratado: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado;
    function Get_DadosProfissional: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado }

  TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado = class(TXMLCt_contratado, IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado)
  protected
    { IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado }
    function Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional }

  TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional = class(TXMLCt_profissionalExecutante, IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional)
  protected
    { IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional }
  end;

{ TXMLCt_guiaSolicitacaoOdonto_planoTratamento }

  TXMLCt_guiaSolicitacaoOdonto_planoTratamento = class(TXMLNodeCollection, IXMLCt_guiaSolicitacaoOdonto_planoTratamento)
  protected
    { IXMLCt_guiaSolicitacaoOdonto_planoTratamento }
    function Get_ProcedimentoSolicitado(Index: Integer): IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
    function Add: IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
    function Insert(const Index: Integer): IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado }

  TXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado = class(TXMLCt_procedimentoOdontologia, IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado)
  protected
    { IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado }
    function Get_TotalFranquiaCoparticipacao: UnicodeString;
    procedure Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
  end;

{ TXMLCt_guiaSolicitacaoProrrogacao }

  TXMLCt_guiaSolicitacaoProrrogacao = class(TXMLNode, IXMLCt_guiaSolicitacaoProrrogacao)
  protected
    { IXMLCt_guiaSolicitacaoProrrogacao }
    function Get_IdentificacaoProrrogacao: IXMLCt_cabecalhoGuia;
    function Get_IdentificacaoGuiaReferencia: IXMLCt_cabecalhoGuia;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
    function Get_DadosSolicitante: IXMLCt_solicitante;
    function Get_IndicacaoClinica: UnicodeString;
    function Get_ResponsavelAutorizacao: UnicodeString;
    function Get_ProcedimentosExamesSolicitados: IXMLCt_procedimentosSolicitados;
    function Get_Diarias: IXMLCt_diariaProrrogacao;
    function Get_OPMsSolicitadas: IXMLCt_OPMSolicitadas;
    function Get_Observacao: UnicodeString;
    procedure Set_IndicacaoClinica(Value: UnicodeString);
    procedure Set_ResponsavelAutorizacao(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_solicitaStatusAutorizacao }

  TXMLCt_solicitaStatusAutorizacao = class(TXMLNode, IXMLCt_solicitaStatusAutorizacao)
  protected
    { IXMLCt_solicitaStatusAutorizacao }
    function Get_IdentificacaoAutorizacao: IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao;
    function Get_DataSolicitaStatus: UnicodeString;
    procedure Set_DataSolicitaStatus(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao }

  TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao = class(TXMLNodeCollection, IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao)
  protected
    { IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao }
    function Get_IdentificacaoSolicitacao(Index: Integer): IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
    function Add: IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
    function Insert(const Index: Integer): IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao }

  TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao = class(TXMLCt_cabecalhoSolicitacao, IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao)
  protected
    { IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao }
    function Get_ProfissionalSolicitante: IXMLCt_contratadoSolicitante;
    function Get_IdentificacaoBeneficiario: IXMLCt_beneficiario;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_solicitaElegibilidade }

  TXMLCt_solicitaElegibilidade = class(TXMLNode, IXMLCt_solicitaElegibilidade)
  protected
    { IXMLCt_solicitaElegibilidade }
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_DadosBeneficiario: IXMLCt_beneficiario;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_cancelaGuia }

  TXMLCt_cancelaGuia = class(TXMLNode, IXMLCt_cancelaGuia)
  protected
    { IXMLCt_cancelaGuia }
    function Get_DadosPrestador: IXMLCt_contratado;
    function Get_TipoGuia: UnicodeString;
    function Get_Guia: IXMLCt_cancelaGuia_guia;
    function Get_Observacao: UnicodeString;
    procedure Set_TipoGuia(Value: UnicodeString);
    procedure Set_Observacao(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_cancelaGuia_guia }

  TXMLCt_cancelaGuia_guia = class(TXMLNodeCollection, IXMLCt_cancelaGuia_guia)
  protected
    { IXMLCt_cancelaGuia_guia }
    function Get_DadosGuia(Index: Integer): IXMLCt_cabecalhoGuia;
    function Add: IXMLCt_cabecalhoGuia;
    function Insert(const Index: Integer): IXMLCt_cabecalhoGuia;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMensagemTISS_epilogo }

  TXMLMensagemTISS_epilogo = class(TXMLNode, IXMLMensagemTISS_epilogo)
  protected
    { IXMLMensagemTISS_epilogo }
    function Get_Hash: UnicodeString;
    procedure Set_Hash(Value: UnicodeString);
  end;

{ TXMLCt_diariaProrrogacaoAutorizada }

  TXMLCt_diariaProrrogacaoAutorizada = class(TXMLCt_diariaProrrogacao, IXMLCt_diariaProrrogacaoAutorizada)
  protected
    { IXMLCt_diariaProrrogacaoAutorizada }
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_MotivoGlosa: IXMLCt_motivoGlosa;
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_executanteComplementar }

  TXMLCt_executanteComplementar = class(TXMLNode, IXMLCt_executanteComplementar)
  protected
    { IXMLCt_executanteComplementar }
    function Get_CodigoProfissionalCompl: IXMLCt_identificacaoPrestador;
    function Get_NomeProfissionalCompl: UnicodeString;
    procedure Set_NomeProfissionalCompl(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_OPMAutorizada }

  TXMLCt_OPMAutorizada = class(TXMLNodeCollection, IXMLCt_OPMAutorizada)
  protected
    { IXMLCt_OPMAutorizada }
    function Get_OPMAutorizada(Index: Integer): IXMLCt_OPMAutorizada_OPMAutorizada;
    function Add: IXMLCt_OPMAutorizada_OPMAutorizada;
    function Insert(const Index: Integer): IXMLCt_OPMAutorizada_OPMAutorizada;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_OPMAutorizada_OPMAutorizada }

  TXMLCt_OPMAutorizada_OPMAutorizada = class(TXMLNode, IXMLCt_OPMAutorizada_OPMAutorizada)
  protected
    { IXMLCt_OPMAutorizada_OPMAutorizada }
    function Get_QuantidadeAutorizada: UnicodeString;
    function Get_Fabricante: UnicodeString;
    function Get_OPM: IXMLCt_tabela;
    procedure Set_QuantidadeAutorizada(Value: UnicodeString);
    procedure Set_Fabricante(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_periodoProcessamento }

  TXMLCt_periodoProcessamento = class(TXMLNode, IXMLCt_periodoProcessamento)
  protected
    { IXMLCt_periodoProcessamento }
    function Get_DataInicial: UnicodeString;
    function Get_DataFinal: UnicodeString;
    procedure Set_DataInicial(Value: UnicodeString);
    procedure Set_DataFinal(Value: UnicodeString);
  end;

{ TXMLCt_situacaoDentes }

  TXMLCt_situacaoDentes = class(TXMLNode, IXMLCt_situacaoDentes)
  protected
    { IXMLCt_situacaoDentes }
    function Get_Dente: UnicodeString;
    function Get_Obturado: Boolean;
    function Get_Careado: Boolean;
    function Get_Perdido: Boolean;
    procedure Set_Dente(Value: UnicodeString);
    procedure Set_Obturado(Value: Boolean);
    procedure Set_Careado(Value: Boolean);
    procedure Set_Perdido(Value: Boolean);
  end;

{ TXMLCt_totaisOdonto }

  TXMLCt_totaisOdonto = class(TXMLNode, IXMLCt_totaisOdonto)
  protected
    { IXMLCt_totaisOdonto }
    function Get_ServicoExecutado: UnicodeString;
    function Get_Taxas: UnicodeString;
    function Get_Materiais: UnicodeString;
    function Get_Medicamentos: UnicodeString;
    function Get_TotalGeral: UnicodeString;
    procedure Set_ServicoExecutado(Value: UnicodeString);
    procedure Set_Taxas(Value: UnicodeString);
    procedure Set_Materiais(Value: UnicodeString);
    procedure Set_Medicamentos(Value: UnicodeString);
    procedure Set_TotalGeral(Value: UnicodeString);
  end;

{ TXMLCt_tratamenteOdontoRealizado }

  TXMLCt_tratamenteOdontoRealizado = class(TXMLNode, IXMLCt_tratamenteOdontoRealizado)
  protected
    { IXMLCt_tratamenteOdontoRealizado }
    function Get_Data: UnicodeString;
    function Get_Procedimento: IXMLCt_tabela;
    function Get_Dente: UnicodeString;
    function Get_Face: UnicodeString;
    procedure Set_Data(Value: UnicodeString);
    procedure Set_Dente(Value: UnicodeString);
    procedure Set_Face(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_tratamentoOdontoSolicitado }

  TXMLCt_tratamentoOdontoSolicitado = class(TXMLNode, IXMLCt_tratamentoOdontoSolicitado)
  protected
    { IXMLCt_tratamentoOdontoSolicitado }
    function Get_Procedimento: IXMLCt_tabela;
    function Get_Dente: UnicodeString;
    function Get_Face: UnicodeString;
    procedure Set_Dente(Value: UnicodeString);
    procedure Set_Face(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSt_tipoGlosaList }

  TXMLSt_tipoGlosaList = class(TXMLNodeCollection, IXMLSt_tipoGlosaList)
  protected
    { IXMLSt_tipoGlosaList }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
  end;

{ Global Functions }

function GetmensagemTISS(Doc: IXMLDocument): IXMLMensagemTISS;
function LoadmensagemTISS(const FileName: string): IXMLMensagemTISS;
function NewmensagemTISS: IXMLMensagemTISS;

const
  TargetNamespace = 'http://www.ans.gov.br/padroes/tiss/schemas';

implementation

{ Global Functions }

function GetmensagemTISS(Doc: IXMLDocument): IXMLMensagemTISS;
begin
  Result := Doc.GetDocBinding('mensagemTISS', TXMLMensagemTISS, TargetNamespace) as IXMLMensagemTISS;
end;

function LoadmensagemTISS(const FileName: string): IXMLMensagemTISS;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('mensagemTISS', TXMLMensagemTISS, TargetNamespace) as IXMLMensagemTISS;
end;

function NewmensagemTISS: IXMLMensagemTISS;
begin
  Result := NewXMLDocument.GetDocBinding('mensagemTISS', TXMLMensagemTISS, TargetNamespace) as IXMLMensagemTISS;
end;

{ TXMLMensagemTISS }

procedure TXMLMensagemTISS.AfterConstruction;
begin
  RegisterChildNode('cabecalho', TXMLCabecalhoTransacao);
  RegisterChildNode('operadoraParaPrestador', TXMLMensagemTISS_operadoraParaPrestador);
  RegisterChildNode('prestadorParaOperadora', TXMLMensagemTISS_prestadorParaOperadora);
  RegisterChildNode('epilogo', TXMLMensagemTISS_epilogo);
  inherited;
end;

function TXMLMensagemTISS.Get_Cabecalho: IXMLCabecalhoTransacao;
begin
  Result := ChildNodes['cabecalho'] as IXMLCabecalhoTransacao;
end;

function TXMLMensagemTISS.Get_OperadoraParaPrestador: IXMLMensagemTISS_operadoraParaPrestador;
begin
  Result := ChildNodes['operadoraParaPrestador'] as IXMLMensagemTISS_operadoraParaPrestador;
end;

function TXMLMensagemTISS.Get_PrestadorParaOperadora: IXMLMensagemTISS_prestadorParaOperadora;
begin
  Result := ChildNodes['prestadorParaOperadora'] as IXMLMensagemTISS_prestadorParaOperadora;
end;

function TXMLMensagemTISS.Get_Epilogo: IXMLMensagemTISS_epilogo;
begin
  Result := ChildNodes['epilogo'] as IXMLMensagemTISS_epilogo;
end;

{ TXMLCabecalhoTransacao }

procedure TXMLCabecalhoTransacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoTransacao', TXMLCabecalhoTransacao_identificacaoTransacao);
  RegisterChildNode('falhaNegocio', TXMLCabecalhoTransacao_falhaNegocio);
  RegisterChildNode('origem', TXMLCabecalhoTransacao_origem);
  RegisterChildNode('destino', TXMLCabecalhoTransacao_destino);
  inherited;
end;

function TXMLCabecalhoTransacao.Get_IdentificacaoTransacao: IXMLCabecalhoTransacao_identificacaoTransacao;
begin
  Result := ChildNodes['identificacaoTransacao'] as IXMLCabecalhoTransacao_identificacaoTransacao;
end;

function TXMLCabecalhoTransacao.Get_FalhaNegocio: IXMLCabecalhoTransacao_falhaNegocio;
begin
  Result := ChildNodes['falhaNegocio'] as IXMLCabecalhoTransacao_falhaNegocio;
end;

function TXMLCabecalhoTransacao.Get_Origem: IXMLCabecalhoTransacao_origem;
begin
  Result := ChildNodes['origem'] as IXMLCabecalhoTransacao_origem;
end;

function TXMLCabecalhoTransacao.Get_Destino: IXMLCabecalhoTransacao_destino;
begin
  Result := ChildNodes['destino'] as IXMLCabecalhoTransacao_destino;
end;

function TXMLCabecalhoTransacao.Get_VersaoPadrao: UnicodeString;
begin
  Result := ChildNodes['versaoPadrao'].Text;
end;

procedure TXMLCabecalhoTransacao.Set_VersaoPadrao(Value: UnicodeString);
begin
  ChildNodes['versaoPadrao'].NodeValue := Value;
end;

{ TXMLCabecalhoTransacao_identificacaoTransacao }

function TXMLCabecalhoTransacao_identificacaoTransacao.Get_TipoTransacao: UnicodeString;
begin
  Result := ChildNodes['tipoTransacao'].Text;
end;

procedure TXMLCabecalhoTransacao_identificacaoTransacao.Set_TipoTransacao(Value: UnicodeString);
begin
  ChildNodes['tipoTransacao'].NodeValue := Value;
end;

function TXMLCabecalhoTransacao_identificacaoTransacao.Get_SequencialTransacao: Integer;
begin
  Result := ChildNodes['sequencialTransacao'].NodeValue;
end;

procedure TXMLCabecalhoTransacao_identificacaoTransacao.Set_SequencialTransacao(Value: Integer);
begin
  ChildNodes['sequencialTransacao'].NodeValue := Value;
end;

function TXMLCabecalhoTransacao_identificacaoTransacao.Get_DataRegistroTransacao: UnicodeString;
begin
  Result := ChildNodes['dataRegistroTransacao'].Text;
end;

procedure TXMLCabecalhoTransacao_identificacaoTransacao.Set_DataRegistroTransacao(Value: UnicodeString);
begin
  ChildNodes['dataRegistroTransacao'].NodeValue := Value;
end;

function TXMLCabecalhoTransacao_identificacaoTransacao.Get_HoraRegistroTransacao: UnicodeString;
begin
  Result := ChildNodes['horaRegistroTransacao'].Text;
end;

procedure TXMLCabecalhoTransacao_identificacaoTransacao.Set_HoraRegistroTransacao(Value: UnicodeString);
begin
  ChildNodes['horaRegistroTransacao'].NodeValue := Value;
end;

{ TXMLCt_motivoGlosa }

function TXMLCt_motivoGlosa.Get_CodigoGlosa: UnicodeString;
begin
  Result := ChildNodes['codigoGlosa'].Text;
end;

procedure TXMLCt_motivoGlosa.Set_CodigoGlosa(Value: UnicodeString);
begin
  ChildNodes['codigoGlosa'].NodeValue := Value;
end;

function TXMLCt_motivoGlosa.Get_DescricaoGlosa: UnicodeString;
begin
  Result := ChildNodes['descricaoGlosa'].Text;
end;

procedure TXMLCt_motivoGlosa.Set_DescricaoGlosa(Value: UnicodeString);
begin
  ChildNodes['descricaoGlosa'].NodeValue := Value;
end;

{ TXMLCt_motivoGlosaList }

function TXMLCt_motivoGlosaList.Add: IXMLCt_motivoGlosa;
begin
  Result := AddItem(-1) as IXMLCt_motivoGlosa;
end;

function TXMLCt_motivoGlosaList.Insert(const Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := AddItem(Index) as IXMLCt_motivoGlosa;
end;

function TXMLCt_motivoGlosaList.Get_Item(Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := List[Index] as IXMLCt_motivoGlosa;
end;

{ TXMLCabecalhoTransacao_falhaNegocio }

function TXMLCabecalhoTransacao_falhaNegocio.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCabecalhoTransacao_falhaNegocio.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCabecalhoTransacao_origem }

procedure TXMLCabecalhoTransacao_origem.AfterConstruction;
begin
  RegisterChildNode('codigoPrestadorNaOperadora', TXMLCt_identificacaoPrestadorExecutante);
  inherited;
end;

function TXMLCabecalhoTransacao_origem.Get_CodigoPrestadorNaOperadora: IXMLCt_identificacaoPrestadorExecutante;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'] as IXMLCt_identificacaoPrestadorExecutante;
end;

function TXMLCabecalhoTransacao_origem.Get_RegistroANS: UnicodeString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure TXMLCabecalhoTransacao_origem.Set_RegistroANS(Value: UnicodeString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function TXMLCabecalhoTransacao_origem.Get_CnpjPagador: UnicodeString;
begin
  Result := ChildNodes['cnpjPagador'].Text;
end;

procedure TXMLCabecalhoTransacao_origem.Set_CnpjPagador(Value: UnicodeString);
begin
  ChildNodes['cnpjPagador'].NodeValue := Value;
end;

{ TXMLCt_identificacaoPrestadorExecutante }

function TXMLCt_identificacaoPrestadorExecutante.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLCt_identificacaoPrestadorExecutante.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLCt_identificacaoPrestadorExecutante.Get_CPF: UnicodeString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLCt_identificacaoPrestadorExecutante.Set_CPF(Value: UnicodeString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLCt_identificacaoPrestadorExecutante.Get_CodigoPrestadorNaOperadora: UnicodeString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure TXMLCt_identificacaoPrestadorExecutante.Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

{ TXMLCabecalhoTransacao_destino }

procedure TXMLCabecalhoTransacao_destino.AfterConstruction;
begin
  RegisterChildNode('codigoPrestadorNaOperadora', TXMLCt_identificacaoPrestadorExecutante);
  inherited;
end;

function TXMLCabecalhoTransacao_destino.Get_CodigoPrestadorNaOperadora: IXMLCt_identificacaoPrestadorExecutante;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'] as IXMLCt_identificacaoPrestadorExecutante;
end;

function TXMLCabecalhoTransacao_destino.Get_RegistroANS: UnicodeString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure TXMLCabecalhoTransacao_destino.Set_RegistroANS(Value: UnicodeString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function TXMLCabecalhoTransacao_destino.Get_CnpjPagador: UnicodeString;
begin
  Result := ChildNodes['cnpjPagador'].Text;
end;

procedure TXMLCabecalhoTransacao_destino.Set_CnpjPagador(Value: UnicodeString);
begin
  ChildNodes['cnpjPagador'].NodeValue := Value;
end;

{ TXMLMensagemTISS_operadoraParaPrestador }

procedure TXMLMensagemTISS_operadoraParaPrestador.AfterConstruction;
begin
  RegisterChildNode('protocoloRecebimento', TXMLCt_protocoloRecebimento);
  RegisterChildNode('protocoloRecebimentoAnexo', TXMLCt_protocoloRecebimentoAnexo);
  RegisterChildNode('demonstrativosRetorno', TXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno);
  RegisterChildNode('situacaoProtocolo', TXMLCt_StatusProtocolo);
  RegisterChildNode('autorizacaoServico', TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico);
  RegisterChildNode('autorizacaoServicoOdonto', TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto);
  RegisterChildNode('situacaoAutorizacao', TXMLCt_situacaoAutorizacao);
  RegisterChildNode('respostaElegibilidade', TXMLCt_retornoElegibilidade);
  RegisterChildNode('reciboCancelaGuia', TXMLCt_reciboCancelaGuia);
  FAutorizacaoServico := CreateCollection(TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList, IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico, 'autorizacaoServico') as IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList;
  inherited;
end;

function TXMLMensagemTISS_operadoraParaPrestador.Get_ProtocoloRecebimento: IXMLCt_protocoloRecebimento;
begin
  Result := ChildNodes['protocoloRecebimento'] as IXMLCt_protocoloRecebimento;
end;

function TXMLMensagemTISS_operadoraParaPrestador.Get_ProtocoloRecebimentoAnexo: IXMLCt_protocoloRecebimentoAnexo;
begin
  Result := ChildNodes['protocoloRecebimentoAnexo'] as IXMLCt_protocoloRecebimentoAnexo;
end;

function TXMLMensagemTISS_operadoraParaPrestador.Get_DemonstrativosRetorno: IXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno;
begin
  Result := ChildNodes['demonstrativosRetorno'] as IXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno;
end;

function TXMLMensagemTISS_operadoraParaPrestador.Get_SituacaoProtocolo: IXMLCt_StatusProtocolo;
begin
  Result := ChildNodes['situacaoProtocolo'] as IXMLCt_StatusProtocolo;
end;

function TXMLMensagemTISS_operadoraParaPrestador.Get_AutorizacaoServico: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList;
begin
  Result := FAutorizacaoServico;
end;

function TXMLMensagemTISS_operadoraParaPrestador.Get_AutorizacaoServicoOdonto: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto;
begin
  Result := ChildNodes['autorizacaoServicoOdonto'] as IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto;
end;

function TXMLMensagemTISS_operadoraParaPrestador.Get_SituacaoAutorizacao: IXMLCt_situacaoAutorizacao;
begin
  Result := ChildNodes['situacaoAutorizacao'] as IXMLCt_situacaoAutorizacao;
end;

function TXMLMensagemTISS_operadoraParaPrestador.Get_RespostaElegibilidade: IXMLCt_retornoElegibilidade;
begin
  Result := ChildNodes['respostaElegibilidade'] as IXMLCt_retornoElegibilidade;
end;

function TXMLMensagemTISS_operadoraParaPrestador.Get_ReciboCancelaGuia: IXMLCt_reciboCancelaGuia;
begin
  Result := ChildNodes['reciboCancelaGuia'] as IXMLCt_reciboCancelaGuia;
end;

{ TXMLCt_protocoloRecebimento }

procedure TXMLCt_protocoloRecebimento.AfterConstruction;
begin
  RegisterChildNode('protocoloRecebimento', TXMLCt_protocoloRecebimento_protocoloRecebimento);
  inherited;
end;

function TXMLCt_protocoloRecebimento.Get_ProtocoloRecebimento: IXMLCt_protocoloRecebimento_protocoloRecebimento;
begin
  Result := ChildNodes['protocoloRecebimento'] as IXMLCt_protocoloRecebimento_protocoloRecebimento;
end;

function TXMLCt_protocoloRecebimento.Get_MensagemErro: UnicodeString;
begin
  Result := ChildNodes['mensagemErro'].Text;
end;

procedure TXMLCt_protocoloRecebimento.Set_MensagemErro(Value: UnicodeString);
begin
  ChildNodes['mensagemErro'].NodeValue := Value;
end;

{ TXMLCt_protocoloRecebimento_protocoloRecebimento }

procedure TXMLCt_protocoloRecebimento_protocoloRecebimento.AfterConstruction;
begin
  RegisterChildNode('dadosOperadora', TXMLCt_identificacaoFontePagadora);
  RegisterChildNode('dadosPrestador', TXMLCt_contratado);
  RegisterChildNode('mensagemDetalheProtocolo', TXMLCt_detalheProtocolo);
  inherited;
end;

function TXMLCt_protocoloRecebimento_protocoloRecebimento.Get_NumeroProtocoloRecebimento: UnicodeString;
begin
  Result := ChildNodes['numeroProtocoloRecebimento'].Text;
end;

procedure TXMLCt_protocoloRecebimento_protocoloRecebimento.Set_NumeroProtocoloRecebimento(Value: UnicodeString);
begin
  ChildNodes['numeroProtocoloRecebimento'].NodeValue := Value;
end;

function TXMLCt_protocoloRecebimento_protocoloRecebimento.Get_DadosOperadora: IXMLCt_identificacaoFontePagadora;
begin
  Result := ChildNodes['dadosOperadora'] as IXMLCt_identificacaoFontePagadora;
end;

function TXMLCt_protocoloRecebimento_protocoloRecebimento.Get_DadosPrestador: IXMLCt_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as IXMLCt_contratado;
end;

function TXMLCt_protocoloRecebimento_protocoloRecebimento.Get_NumeroLote: UnicodeString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure TXMLCt_protocoloRecebimento_protocoloRecebimento.Set_NumeroLote(Value: UnicodeString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function TXMLCt_protocoloRecebimento_protocoloRecebimento.Get_DataEnvioLote: UnicodeString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure TXMLCt_protocoloRecebimento_protocoloRecebimento.Set_DataEnvioLote(Value: UnicodeString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function TXMLCt_protocoloRecebimento_protocoloRecebimento.Get_MensagemDetalheProtocolo: IXMLCt_detalheProtocolo;
begin
  Result := ChildNodes['mensagemDetalheProtocolo'] as IXMLCt_detalheProtocolo;
end;

{ TXMLCt_identificacaoFontePagadora }

procedure TXMLCt_identificacaoFontePagadora.AfterConstruction;
begin
  RegisterChildNode('operadoraRegulada', TXMLCt_identificacaoFontePagadora_operadoraRegulada);
  RegisterChildNode('entidadeNaoRegulada', TXMLCt_identificacaoFontePagadora_entidadeNaoRegulada);
  inherited;
end;

function TXMLCt_identificacaoFontePagadora.Get_OperadoraRegulada: IXMLCt_identificacaoFontePagadora_operadoraRegulada;
begin
  Result := ChildNodes['operadoraRegulada'] as IXMLCt_identificacaoFontePagadora_operadoraRegulada;
end;

function TXMLCt_identificacaoFontePagadora.Get_EntidadeNaoRegulada: IXMLCt_identificacaoFontePagadora_entidadeNaoRegulada;
begin
  Result := ChildNodes['entidadeNaoRegulada'] as IXMLCt_identificacaoFontePagadora_entidadeNaoRegulada;
end;

{ TXMLCt_identificacaoFontePagadora_operadoraRegulada }

function TXMLCt_identificacaoFontePagadora_operadoraRegulada.Get_RegistroANS: UnicodeString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure TXMLCt_identificacaoFontePagadora_operadoraRegulada.Set_RegistroANS(Value: UnicodeString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function TXMLCt_identificacaoFontePagadora_operadoraRegulada.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLCt_identificacaoFontePagadora_operadoraRegulada.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLCt_identificacaoFontePagadora_operadoraRegulada.Get_NomeOperadora: UnicodeString;
begin
  Result := ChildNodes['nomeOperadora'].Text;
end;

procedure TXMLCt_identificacaoFontePagadora_operadoraRegulada.Set_NomeOperadora(Value: UnicodeString);
begin
  ChildNodes['nomeOperadora'].NodeValue := Value;
end;

{ TXMLCt_identificacaoFontePagadora_entidadeNaoRegulada }

function TXMLCt_identificacaoFontePagadora_entidadeNaoRegulada.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLCt_identificacaoFontePagadora_entidadeNaoRegulada.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLCt_identificacaoFontePagadora_entidadeNaoRegulada.Get_NomeOperadoraEntidade: UnicodeString;
begin
  Result := ChildNodes['nomeOperadoraEntidade'].Text;
end;

procedure TXMLCt_identificacaoFontePagadora_entidadeNaoRegulada.Set_NomeOperadoraEntidade(Value: UnicodeString);
begin
  ChildNodes['nomeOperadoraEntidade'].NodeValue := Value;
end;

{ TXMLCt_contratado }

procedure TXMLCt_contratado.AfterConstruction;
begin
  RegisterChildNode('identificacao', TXMLCt_identificacaoPrestadorExecutante);
  RegisterChildNode('enderecoContratado', TXMLCt_endereco);
  inherited;
end;

function TXMLCt_contratado.Get_Identificacao: IXMLCt_identificacaoPrestadorExecutante;
begin
  Result := ChildNodes['identificacao'] as IXMLCt_identificacaoPrestadorExecutante;
end;

function TXMLCt_contratado.Get_NomeContratado: UnicodeString;
begin
  Result := ChildNodes['nomeContratado'].Text;
end;

procedure TXMLCt_contratado.Set_NomeContratado(Value: UnicodeString);
begin
  ChildNodes['nomeContratado'].NodeValue := Value;
end;

function TXMLCt_contratado.Get_EnderecoContratado: IXMLCt_endereco;
begin
  Result := ChildNodes['enderecoContratado'] as IXMLCt_endereco;
end;

function TXMLCt_contratado.Get_NumeroCNES: UnicodeString;
begin
  Result := ChildNodes['numeroCNES'].Text;
end;

procedure TXMLCt_contratado.Set_NumeroCNES(Value: UnicodeString);
begin
  ChildNodes['numeroCNES'].NodeValue := Value;
end;

{ TXMLCt_endereco }

function TXMLCt_endereco.Get_TipoLogradouro: UnicodeString;
begin
  Result := ChildNodes['tipoLogradouro'].Text;
end;

procedure TXMLCt_endereco.Set_TipoLogradouro(Value: UnicodeString);
begin
  ChildNodes['tipoLogradouro'].NodeValue := Value;
end;

function TXMLCt_endereco.Get_Logradouro: UnicodeString;
begin
  Result := ChildNodes['logradouro'].Text;
end;

procedure TXMLCt_endereco.Set_Logradouro(Value: UnicodeString);
begin
  ChildNodes['logradouro'].NodeValue := Value;
end;

function TXMLCt_endereco.Get_Numero: UnicodeString;
begin
  Result := ChildNodes['numero'].Text;
end;

procedure TXMLCt_endereco.Set_Numero(Value: UnicodeString);
begin
  ChildNodes['numero'].NodeValue := Value;
end;

function TXMLCt_endereco.Get_Complemento: UnicodeString;
begin
  Result := ChildNodes['complemento'].Text;
end;

procedure TXMLCt_endereco.Set_Complemento(Value: UnicodeString);
begin
  ChildNodes['complemento'].NodeValue := Value;
end;

function TXMLCt_endereco.Get_CodigoIBGEMunicipio: UnicodeString;
begin
  Result := ChildNodes['codigoIBGEMunicipio'].Text;
end;

procedure TXMLCt_endereco.Set_CodigoIBGEMunicipio(Value: UnicodeString);
begin
  ChildNodes['codigoIBGEMunicipio'].NodeValue := Value;
end;

function TXMLCt_endereco.Get_Municipio: UnicodeString;
begin
  Result := ChildNodes['municipio'].Text;
end;

procedure TXMLCt_endereco.Set_Municipio(Value: UnicodeString);
begin
  ChildNodes['municipio'].NodeValue := Value;
end;

function TXMLCt_endereco.Get_CodigoUF: UnicodeString;
begin
  Result := ChildNodes['codigoUF'].Text;
end;

procedure TXMLCt_endereco.Set_CodigoUF(Value: UnicodeString);
begin
  ChildNodes['codigoUF'].NodeValue := Value;
end;

function TXMLCt_endereco.Get_Cep: UnicodeString;
begin
  Result := ChildNodes['cep'].Text;
end;

procedure TXMLCt_endereco.Set_Cep(Value: UnicodeString);
begin
  ChildNodes['cep'].NodeValue := Value;
end;

{ TXMLCt_detalheProtocolo }

procedure TXMLCt_detalheProtocolo.AfterConstruction;
begin
  RegisterChildNode('codigoGlosaProtocolo', TXMLCt_detalheProtocolo_codigoGlosaProtocolo);
  RegisterChildNode('guias', TXMLCt_detalheProtocolo_guias);
  inherited;
end;

function TXMLCt_detalheProtocolo.Get_NumeroProtocolo: UnicodeString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure TXMLCt_detalheProtocolo.Set_NumeroProtocolo(Value: UnicodeString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function TXMLCt_detalheProtocolo.Get_ValorProtocolo: UnicodeString;
begin
  Result := ChildNodes['valorProtocolo'].Text;
end;

procedure TXMLCt_detalheProtocolo.Set_ValorProtocolo(Value: UnicodeString);
begin
  ChildNodes['valorProtocolo'].NodeValue := Value;
end;

function TXMLCt_detalheProtocolo.Get_CodigoGlosaProtocolo: IXMLCt_detalheProtocolo_codigoGlosaProtocolo;
begin
  Result := ChildNodes['codigoGlosaProtocolo'] as IXMLCt_detalheProtocolo_codigoGlosaProtocolo;
end;

function TXMLCt_detalheProtocolo.Get_Guias: IXMLCt_detalheProtocolo_guias;
begin
  Result := ChildNodes['guias'] as IXMLCt_detalheProtocolo_guias;
end;

{ TXMLCt_detalheProtocolo_codigoGlosaProtocolo }

procedure TXMLCt_detalheProtocolo_codigoGlosaProtocolo.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', TXMLCt_motivoGlosa);
  FMotivoGlosa := CreateCollection(TXMLCt_motivoGlosaList, IXMLCt_motivoGlosa, 'motivoGlosa') as IXMLCt_motivoGlosaList;
  inherited;
end;

function TXMLCt_detalheProtocolo_codigoGlosaProtocolo.Get_MotivoGlosa: IXMLCt_motivoGlosaList;
begin
  Result := FMotivoGlosa;
end;

function TXMLCt_detalheProtocolo_codigoGlosaProtocolo.Get_ValorGlosaProtocolo: UnicodeString;
begin
  Result := ChildNodes['valorGlosaProtocolo'].Text;
end;

procedure TXMLCt_detalheProtocolo_codigoGlosaProtocolo.Set_ValorGlosaProtocolo(Value: UnicodeString);
begin
  ChildNodes['valorGlosaProtocolo'].NodeValue := Value;
end;

{ TXMLCt_detalheProtocolo_guias }

procedure TXMLCt_detalheProtocolo_guias.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', TXMLCt_dadosGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := IXMLCt_dadosGuia;
  inherited;
end;

function TXMLCt_detalheProtocolo_guias.Get_DadosGuia(Index: Integer): IXMLCt_dadosGuia;
begin
  Result := List[Index] as IXMLCt_dadosGuia;
end;

function TXMLCt_detalheProtocolo_guias.Add: IXMLCt_dadosGuia;
begin
  Result := AddItem(-1) as IXMLCt_dadosGuia;
end;

function TXMLCt_detalheProtocolo_guias.Insert(const Index: Integer): IXMLCt_dadosGuia;
begin
  Result := AddItem(Index) as IXMLCt_dadosGuia;
end;

{ TXMLCt_dadosGuia }

procedure TXMLCt_dadosGuia.AfterConstruction;
begin
  RegisterChildNode('beneficiario', TXMLCt_beneficiario);
  RegisterChildNode('procedimentos', TXMLCt_dadosGuia_procedimentos);
  RegisterChildNode('codigoGlosaGuia', TXMLCt_motivoGlosa);
  FCodigoGlosaGuia := CreateCollection(TXMLCt_motivoGlosaList, IXMLCt_motivoGlosa, 'codigoGlosaGuia') as IXMLCt_motivoGlosaList;
  inherited;
end;

function TXMLCt_dadosGuia.Get_NumeroGuiaPrestador: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure TXMLCt_dadosGuia.Set_NumeroGuiaPrestador(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function TXMLCt_dadosGuia.Get_NumeroGuiaOperadora: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure TXMLCt_dadosGuia.Set_NumeroGuiaOperadora(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function TXMLCt_dadosGuia.Get_Beneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_dadosGuia.Get_DataRealizacao: UnicodeString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure TXMLCt_dadosGuia.Set_DataRealizacao(Value: UnicodeString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function TXMLCt_dadosGuia.Get_ValorProcessadoGuia: UnicodeString;
begin
  Result := ChildNodes['valorProcessadoGuia'].Text;
end;

procedure TXMLCt_dadosGuia.Set_ValorProcessadoGuia(Value: UnicodeString);
begin
  ChildNodes['valorProcessadoGuia'].NodeValue := Value;
end;

function TXMLCt_dadosGuia.Get_ValorLiberadoGuia: UnicodeString;
begin
  Result := ChildNodes['valorLiberadoGuia'].Text;
end;

procedure TXMLCt_dadosGuia.Set_ValorLiberadoGuia(Value: UnicodeString);
begin
  ChildNodes['valorLiberadoGuia'].NodeValue := Value;
end;

function TXMLCt_dadosGuia.Get_ValorGlosaGuia: UnicodeString;
begin
  Result := ChildNodes['valorGlosaGuia'].Text;
end;

procedure TXMLCt_dadosGuia.Set_ValorGlosaGuia(Value: UnicodeString);
begin
  ChildNodes['valorGlosaGuia'].NodeValue := Value;
end;

function TXMLCt_dadosGuia.Get_Procedimentos: IXMLCt_dadosGuia_procedimentos;
begin
  Result := ChildNodes['procedimentos'] as IXMLCt_dadosGuia_procedimentos;
end;

function TXMLCt_dadosGuia.Get_CodigoGlosaGuia: IXMLCt_motivoGlosaList;
begin
  Result := FCodigoGlosaGuia;
end;

{ TXMLCt_beneficiario }

function TXMLCt_beneficiario.Get_NumeroCarteira: UnicodeString;
begin
  Result := ChildNodes['numeroCarteira'].Text;
end;

procedure TXMLCt_beneficiario.Set_NumeroCarteira(Value: UnicodeString);
begin
  ChildNodes['numeroCarteira'].NodeValue := Value;
end;

function TXMLCt_beneficiario.Get_NomeBeneficiario: UnicodeString;
begin
  Result := ChildNodes['nomeBeneficiario'].Text;
end;

procedure TXMLCt_beneficiario.Set_NomeBeneficiario(Value: UnicodeString);
begin
  ChildNodes['nomeBeneficiario'].NodeValue := Value;
end;

function TXMLCt_beneficiario.Get_NomePlano: UnicodeString;
begin
  Result := ChildNodes['nomePlano'].Text;
end;

procedure TXMLCt_beneficiario.Set_NomePlano(Value: UnicodeString);
begin
  ChildNodes['nomePlano'].NodeValue := Value;
end;

function TXMLCt_beneficiario.Get_ValidadeCarteira: UnicodeString;
begin
  Result := ChildNodes['validadeCarteira'].Text;
end;

procedure TXMLCt_beneficiario.Set_ValidadeCarteira(Value: UnicodeString);
begin
  ChildNodes['validadeCarteira'].NodeValue := Value;
end;

function TXMLCt_beneficiario.Get_NumeroCNS: UnicodeString;
begin
  Result := ChildNodes['numeroCNS'].Text;
end;

procedure TXMLCt_beneficiario.Set_NumeroCNS(Value: UnicodeString);
begin
  ChildNodes['numeroCNS'].NodeValue := Value;
end;

function TXMLCt_beneficiario.Get_IdentificadorBeneficiario: UnicodeString;
begin
  Result := ChildNodes['identificadorBeneficiario'].Text;
end;

procedure TXMLCt_beneficiario.Set_IdentificadorBeneficiario(Value: UnicodeString);
begin
  ChildNodes['identificadorBeneficiario'].NodeValue := Value;
end;

{ TXMLCt_dadosGuia_procedimentos }

procedure TXMLCt_dadosGuia_procedimentos.AfterConstruction;
begin
  RegisterChildNode('dadosProcedimento', TXMLCt_dadosProcedimento);
  RegisterChildNode('dadosProcedimentoOdonto', TXMLCt_procedimentoOdontoRealizado);
  FDadosProcedimento := CreateCollection(TXMLCt_dadosProcedimentoList, IXMLCt_dadosProcedimento, 'dadosProcedimento') as IXMLCt_dadosProcedimentoList;
  FDadosProcedimentoOdonto := CreateCollection(TXMLCt_procedimentoOdontoRealizadoList, IXMLCt_procedimentoOdontoRealizado, 'dadosProcedimentoOdonto') as IXMLCt_procedimentoOdontoRealizadoList;
  inherited;
end;

function TXMLCt_dadosGuia_procedimentos.Get_DadosProcedimento: IXMLCt_dadosProcedimentoList;
begin
  Result := FDadosProcedimento;
end;

function TXMLCt_dadosGuia_procedimentos.Get_DadosProcedimentoOdonto: IXMLCt_procedimentoOdontoRealizadoList;
begin
  Result := FDadosProcedimentoOdonto;
end;

{ TXMLCt_dadosProcedimento }

procedure TXMLCt_dadosProcedimento.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_tabela);
  RegisterChildNode('relacaoGlosa', TXMLCt_dadosProcedimento_relacaoGlosa);
  inherited;
end;

function TXMLCt_dadosProcedimento.Get_Procedimento: IXMLCt_tabela;
begin
  Result := ChildNodes['procedimento'] as IXMLCt_tabela;
end;

function TXMLCt_dadosProcedimento.Get_QuantidadeExecutada: Integer;
begin
  Result := ChildNodes['quantidadeExecutada'].NodeValue;
end;

procedure TXMLCt_dadosProcedimento.Set_QuantidadeExecutada(Value: Integer);
begin
  ChildNodes['quantidadeExecutada'].NodeValue := Value;
end;

function TXMLCt_dadosProcedimento.Get_ValorProcessado: UnicodeString;
begin
  Result := ChildNodes['valorProcessado'].Text;
end;

procedure TXMLCt_dadosProcedimento.Set_ValorProcessado(Value: UnicodeString);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function TXMLCt_dadosProcedimento.Get_ValorLiberado: UnicodeString;
begin
  Result := ChildNodes['valorLiberado'].Text;
end;

procedure TXMLCt_dadosProcedimento.Set_ValorLiberado(Value: UnicodeString);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

function TXMLCt_dadosProcedimento.Get_GrauParticipacao: UnicodeString;
begin
  Result := ChildNodes['grauParticipacao'].Text;
end;

procedure TXMLCt_dadosProcedimento.Set_GrauParticipacao(Value: UnicodeString);
begin
  ChildNodes['grauParticipacao'].NodeValue := Value;
end;

function TXMLCt_dadosProcedimento.Get_RelacaoGlosa: IXMLCt_dadosProcedimento_relacaoGlosa;
begin
  Result := ChildNodes['relacaoGlosa'] as IXMLCt_dadosProcedimento_relacaoGlosa;
end;

{ TXMLCt_dadosProcedimentoList }

function TXMLCt_dadosProcedimentoList.Add: IXMLCt_dadosProcedimento;
begin
  Result := AddItem(-1) as IXMLCt_dadosProcedimento;
end;

function TXMLCt_dadosProcedimentoList.Insert(const Index: Integer): IXMLCt_dadosProcedimento;
begin
  Result := AddItem(Index) as IXMLCt_dadosProcedimento;
end;

function TXMLCt_dadosProcedimentoList.Get_Item(Index: Integer): IXMLCt_dadosProcedimento;
begin
  Result := List[Index] as IXMLCt_dadosProcedimento;
end;

{ TXMLCt_tabela }

function TXMLCt_tabela.Get_Codigo: UnicodeString;
begin
  Result := ChildNodes['codigo'].Text;
end;

procedure TXMLCt_tabela.Set_Codigo(Value: UnicodeString);
begin
  ChildNodes['codigo'].NodeValue := Value;
end;

function TXMLCt_tabela.Get_TipoTabela: UnicodeString;
begin
  Result := ChildNodes['tipoTabela'].Text;
end;

procedure TXMLCt_tabela.Set_TipoTabela(Value: UnicodeString);
begin
  ChildNodes['tipoTabela'].NodeValue := Value;
end;

function TXMLCt_tabela.Get_Descricao: UnicodeString;
begin
  Result := ChildNodes['descricao'].Text;
end;

procedure TXMLCt_tabela.Set_Descricao(Value: UnicodeString);
begin
  ChildNodes['descricao'].NodeValue := Value;
end;

{ TXMLCt_dadosProcedimento_relacaoGlosa }

procedure TXMLCt_dadosProcedimento_relacaoGlosa.AfterConstruction;
begin
  RegisterChildNode('tipoGlosa', TXMLCt_motivoGlosa);
  FTipoGlosa := CreateCollection(TXMLCt_motivoGlosaList, IXMLCt_motivoGlosa, 'tipoGlosa') as IXMLCt_motivoGlosaList;
  inherited;
end;

function TXMLCt_dadosProcedimento_relacaoGlosa.Get_TipoGlosa: IXMLCt_motivoGlosaList;
begin
  Result := FTipoGlosa;
end;

function TXMLCt_dadosProcedimento_relacaoGlosa.Get_ValorGlosa: UnicodeString;
begin
  Result := ChildNodes['valorGlosa'].Text;
end;

procedure TXMLCt_dadosProcedimento_relacaoGlosa.Set_ValorGlosa(Value: UnicodeString);
begin
  ChildNodes['valorGlosa'].NodeValue := Value;
end;

{ TXMLCt_procedimentoOdontoRealizado }

procedure TXMLCt_procedimentoOdontoRealizado.AfterConstruction;
begin
  RegisterChildNode('procedimentoOdonto', TXMLCt_tabela);
  RegisterChildNode('denteRegiao', TXMLCt_denteRegiao);
  RegisterChildNode('glosas', TXMLCt_procedimentoOdontoRealizado_glosas);
  inherited;
end;

function TXMLCt_procedimentoOdontoRealizado.Get_ProcedimentoOdonto: IXMLCt_tabela;
begin
  Result := ChildNodes['procedimentoOdonto'] as IXMLCt_tabela;
end;

function TXMLCt_procedimentoOdontoRealizado.Get_DenteRegiao: IXMLCt_denteRegiao;
begin
  Result := ChildNodes['denteRegiao'] as IXMLCt_denteRegiao;
end;

function TXMLCt_procedimentoOdontoRealizado.Get_Face: UnicodeString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure TXMLCt_procedimentoOdontoRealizado.Set_Face(Value: UnicodeString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontoRealizado.Get_DataRealizacao: UnicodeString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure TXMLCt_procedimentoOdontoRealizado.Set_DataRealizacao(Value: UnicodeString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontoRealizado.Get_Quantidade: Integer;
begin
  Result := ChildNodes['quantidade'].NodeValue;
end;

procedure TXMLCt_procedimentoOdontoRealizado.Set_Quantidade(Value: Integer);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontoRealizado.Get_ValorProcessado: UnicodeString;
begin
  Result := ChildNodes['valorProcessado'].Text;
end;

procedure TXMLCt_procedimentoOdontoRealizado.Set_ValorProcessado(Value: UnicodeString);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontoRealizado.Get_ValorGlosaEstorno: UnicodeString;
begin
  Result := ChildNodes['valorGlosaEstorno'].Text;
end;

procedure TXMLCt_procedimentoOdontoRealizado.Set_ValorGlosaEstorno(Value: UnicodeString);
begin
  ChildNodes['valorGlosaEstorno'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontoRealizado.Get_Glosas: IXMLCt_procedimentoOdontoRealizado_glosas;
begin
  Result := ChildNodes['glosas'] as IXMLCt_procedimentoOdontoRealizado_glosas;
end;

function TXMLCt_procedimentoOdontoRealizado.Get_ValorLiberado: UnicodeString;
begin
  Result := ChildNodes['valorLiberado'].Text;
end;

procedure TXMLCt_procedimentoOdontoRealizado.Set_ValorLiberado(Value: UnicodeString);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

{ TXMLCt_procedimentoOdontoRealizadoList }

function TXMLCt_procedimentoOdontoRealizadoList.Add: IXMLCt_procedimentoOdontoRealizado;
begin
  Result := AddItem(-1) as IXMLCt_procedimentoOdontoRealizado;
end;

function TXMLCt_procedimentoOdontoRealizadoList.Insert(const Index: Integer): IXMLCt_procedimentoOdontoRealizado;
begin
  Result := AddItem(Index) as IXMLCt_procedimentoOdontoRealizado;
end;

function TXMLCt_procedimentoOdontoRealizadoList.Get_Item(Index: Integer): IXMLCt_procedimentoOdontoRealizado;
begin
  Result := List[Index] as IXMLCt_procedimentoOdontoRealizado;
end;

{ TXMLCt_denteRegiao }

function TXMLCt_denteRegiao.Get_Dente: UnicodeString;
begin
  Result := ChildNodes['dente'].Text;
end;

procedure TXMLCt_denteRegiao.Set_Dente(Value: UnicodeString);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function TXMLCt_denteRegiao.Get_Regiao: UnicodeString;
begin
  Result := ChildNodes['regiao'].Text;
end;

procedure TXMLCt_denteRegiao.Set_Regiao(Value: UnicodeString);
begin
  ChildNodes['regiao'].NodeValue := Value;
end;

{ TXMLCt_procedimentoOdontoRealizado_glosas }

procedure TXMLCt_procedimentoOdontoRealizado_glosas.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', TXMLCt_motivoGlosa);
  ItemTag := 'motivoGlosa';
  ItemInterface := IXMLCt_motivoGlosa;
  inherited;
end;

function TXMLCt_procedimentoOdontoRealizado_glosas.Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := List[Index] as IXMLCt_motivoGlosa;
end;

function TXMLCt_procedimentoOdontoRealizado_glosas.Add: IXMLCt_motivoGlosa;
begin
  Result := AddItem(-1) as IXMLCt_motivoGlosa;
end;

function TXMLCt_procedimentoOdontoRealizado_glosas.Insert(const Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := AddItem(Index) as IXMLCt_motivoGlosa;
end;

{ TXMLCt_protocoloRecebimentoAnexo }

procedure TXMLCt_protocoloRecebimentoAnexo.AfterConstruction;
begin
  RegisterChildNode('protocoloRecebimento', TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento);
  inherited;
end;

function TXMLCt_protocoloRecebimentoAnexo.Get_ProtocoloRecebimento: IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento;
begin
  Result := ChildNodes['protocoloRecebimento'] as IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento;
end;

function TXMLCt_protocoloRecebimentoAnexo.Get_MensagemErro: UnicodeString;
begin
  Result := ChildNodes['mensagemErro'].Text;
end;

procedure TXMLCt_protocoloRecebimentoAnexo.Set_MensagemErro(Value: UnicodeString);
begin
  ChildNodes['mensagemErro'].NodeValue := Value;
end;

{ TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento }

procedure TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.AfterConstruction;
begin
  RegisterChildNode('dadosOperadora', TXMLCt_identificacaoFontePagadora);
  RegisterChildNode('dadosPrestador', TXMLCt_contratado);
  RegisterChildNode('relacaoAnexo', TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo);
  inherited;
end;

function TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Get_NumeroProtocoloRecebimento: UnicodeString;
begin
  Result := ChildNodes['numeroProtocoloRecebimento'].Text;
end;

procedure TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Set_NumeroProtocoloRecebimento(Value: UnicodeString);
begin
  ChildNodes['numeroProtocoloRecebimento'].NodeValue := Value;
end;

function TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Get_DadosOperadora: IXMLCt_identificacaoFontePagadora;
begin
  Result := ChildNodes['dadosOperadora'] as IXMLCt_identificacaoFontePagadora;
end;

function TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Get_DadosPrestador: IXMLCt_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as IXMLCt_contratado;
end;

function TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Get_DataEnvioAnexo: UnicodeString;
begin
  Result := ChildNodes['dataEnvioAnexo'].Text;
end;

procedure TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Set_DataEnvioAnexo(Value: UnicodeString);
begin
  ChildNodes['dataEnvioAnexo'].NodeValue := Value;
end;

function TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Get_NumeroLote: UnicodeString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Set_NumeroLote(Value: UnicodeString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Get_QuantidadeAnexo: Integer;
begin
  Result := ChildNodes['quantidadeAnexo'].NodeValue;
end;

procedure TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Set_QuantidadeAnexo(Value: Integer);
begin
  ChildNodes['quantidadeAnexo'].NodeValue := Value;
end;

function TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Get_RelacaoAnexo: IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo;
begin
  Result := ChildNodes['relacaoAnexo'] as IXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo;
end;

function TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo }

procedure TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo.AfterConstruction;
begin
  ItemTag := 'numeroGuiaPrincipal';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo.Get_NumeroGuiaPrincipal(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo.Add(const NumeroGuiaPrincipal: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := NumeroGuiaPrincipal;
end;

function TXMLCt_protocoloRecebimentoAnexo_protocoloRecebimento_relacaoAnexo.Insert(const Index: Integer; const NumeroGuiaPrincipal: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := NumeroGuiaPrincipal;
end;

{ TXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno }

procedure TXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno.AfterConstruction;
begin
  RegisterChildNode('demonstrativoAnaliseConta', TXMLCt_demonstrativoAnaliseConta);
  RegisterChildNode('demonstrativoOdontologia', TXMLCt_demonstrativoOdontologia);
  RegisterChildNode('demonstrativoPagamento', TXMLCt_demonstrativoPagamento);
  FDemonstrativoAnaliseConta := CreateCollection(TXMLCt_demonstrativoAnaliseContaList, IXMLCt_demonstrativoAnaliseConta, 'demonstrativoAnaliseConta') as IXMLCt_demonstrativoAnaliseContaList;
  FDemonstrativoOdontologia := CreateCollection(TXMLCt_demonstrativoOdontologiaList, IXMLCt_demonstrativoOdontologia, 'demonstrativoOdontologia') as IXMLCt_demonstrativoOdontologiaList;
  FDemonstrativoPagamento := CreateCollection(TXMLCt_demonstrativoPagamentoList, IXMLCt_demonstrativoPagamento, 'demonstrativoPagamento') as IXMLCt_demonstrativoPagamentoList;
  inherited;
end;

function TXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno.Get_DemonstrativoAnaliseConta: IXMLCt_demonstrativoAnaliseContaList;
begin
  Result := FDemonstrativoAnaliseConta;
end;

function TXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno.Get_DemonstrativoOdontologia: IXMLCt_demonstrativoOdontologiaList;
begin
  Result := FDemonstrativoOdontologia;
end;

function TXMLMensagemTISS_operadoraParaPrestador_demonstrativosRetorno.Get_DemonstrativoPagamento: IXMLCt_demonstrativoPagamentoList;
begin
  Result := FDemonstrativoPagamento;
end;

{ TXMLCt_demonstrativoAnaliseConta }

procedure TXMLCt_demonstrativoAnaliseConta.AfterConstruction;
begin
  RegisterChildNode('identificacaoFontePagadora', TXMLCt_identificacaoFontePagadora);
  RegisterChildNode('cabecalhoDemonstrativo', TXMLCt_cabecalhoDemonstrativo);
  RegisterChildNode('dadosPrestador', TXMLCt_contratado);
  RegisterChildNode('fatura', TXMLCt_demonstrativoAnaliseConta_fatura);
  inherited;
end;

function TXMLCt_demonstrativoAnaliseConta.Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
begin
  Result := ChildNodes['identificacaoFontePagadora'] as IXMLCt_identificacaoFontePagadora;
end;

function TXMLCt_demonstrativoAnaliseConta.Get_CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo;
begin
  Result := ChildNodes['cabecalhoDemonstrativo'] as IXMLCt_cabecalhoDemonstrativo;
end;

function TXMLCt_demonstrativoAnaliseConta.Get_DadosPrestador: IXMLCt_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as IXMLCt_contratado;
end;

function TXMLCt_demonstrativoAnaliseConta.Get_Fatura: IXMLCt_demonstrativoAnaliseConta_fatura;
begin
  Result := ChildNodes['fatura'] as IXMLCt_demonstrativoAnaliseConta_fatura;
end;

function TXMLCt_demonstrativoAnaliseConta.Get_ValorProcessadoGeral: UnicodeString;
begin
  Result := ChildNodes['valorProcessadoGeral'].Text;
end;

procedure TXMLCt_demonstrativoAnaliseConta.Set_ValorProcessadoGeral(Value: UnicodeString);
begin
  ChildNodes['valorProcessadoGeral'].NodeValue := Value;
end;

function TXMLCt_demonstrativoAnaliseConta.Get_ValorLiberadoGeral: UnicodeString;
begin
  Result := ChildNodes['valorLiberadoGeral'].Text;
end;

procedure TXMLCt_demonstrativoAnaliseConta.Set_ValorLiberadoGeral(Value: UnicodeString);
begin
  ChildNodes['valorLiberadoGeral'].NodeValue := Value;
end;

function TXMLCt_demonstrativoAnaliseConta.Get_ValorGlosaGeral: UnicodeString;
begin
  Result := ChildNodes['valorGlosaGeral'].Text;
end;

procedure TXMLCt_demonstrativoAnaliseConta.Set_ValorGlosaGeral(Value: UnicodeString);
begin
  ChildNodes['valorGlosaGeral'].NodeValue := Value;
end;

{ TXMLCt_demonstrativoAnaliseContaList }

function TXMLCt_demonstrativoAnaliseContaList.Add: IXMLCt_demonstrativoAnaliseConta;
begin
  Result := AddItem(-1) as IXMLCt_demonstrativoAnaliseConta;
end;

function TXMLCt_demonstrativoAnaliseContaList.Insert(const Index: Integer): IXMLCt_demonstrativoAnaliseConta;
begin
  Result := AddItem(Index) as IXMLCt_demonstrativoAnaliseConta;
end;

function TXMLCt_demonstrativoAnaliseContaList.Get_Item(Index: Integer): IXMLCt_demonstrativoAnaliseConta;
begin
  Result := List[Index] as IXMLCt_demonstrativoAnaliseConta;
end;

{ TXMLCt_cabecalhoDemonstrativo }

function TXMLCt_cabecalhoDemonstrativo.Get_NumeroDemonstrativo: UnicodeString;
begin
  Result := ChildNodes['numeroDemonstrativo'].Text;
end;

procedure TXMLCt_cabecalhoDemonstrativo.Set_NumeroDemonstrativo(Value: UnicodeString);
begin
  ChildNodes['numeroDemonstrativo'].NodeValue := Value;
end;

function TXMLCt_cabecalhoDemonstrativo.Get_DataEmissao: UnicodeString;
begin
  Result := ChildNodes['dataEmissao'].Text;
end;

procedure TXMLCt_cabecalhoDemonstrativo.Set_DataEmissao(Value: UnicodeString);
begin
  ChildNodes['dataEmissao'].NodeValue := Value;
end;

{ TXMLCt_demonstrativoAnaliseConta_fatura }

procedure TXMLCt_demonstrativoAnaliseConta_fatura.AfterConstruction;
begin
  RegisterChildNode('dadosFatura', TXMLCt_dadosConta);
  inherited;
end;

function TXMLCt_demonstrativoAnaliseConta_fatura.Get_DadosFatura: IXMLCt_dadosConta;
begin
  Result := ChildNodes['dadosFatura'] as IXMLCt_dadosConta;
end;

{ TXMLCt_dadosConta }

procedure TXMLCt_dadosConta.AfterConstruction;
begin
  RegisterChildNode('lote', TXMLCt_dadosConta_lote);
  inherited;
end;

function TXMLCt_dadosConta.Get_NumeroFatura: UnicodeString;
begin
  Result := ChildNodes['numeroFatura'].Text;
end;

procedure TXMLCt_dadosConta.Set_NumeroFatura(Value: UnicodeString);
begin
  ChildNodes['numeroFatura'].NodeValue := Value;
end;

function TXMLCt_dadosConta.Get_Lote: IXMLCt_dadosConta_lote;
begin
  Result := ChildNodes['lote'] as IXMLCt_dadosConta_lote;
end;

function TXMLCt_dadosConta.Get_ValorProcessadoFatura: UnicodeString;
begin
  Result := ChildNodes['valorProcessadoFatura'].Text;
end;

procedure TXMLCt_dadosConta.Set_ValorProcessadoFatura(Value: UnicodeString);
begin
  ChildNodes['valorProcessadoFatura'].NodeValue := Value;
end;

function TXMLCt_dadosConta.Get_ValorLiberadoFatura: UnicodeString;
begin
  Result := ChildNodes['valorLiberadoFatura'].Text;
end;

procedure TXMLCt_dadosConta.Set_ValorLiberadoFatura(Value: UnicodeString);
begin
  ChildNodes['valorLiberadoFatura'].NodeValue := Value;
end;

function TXMLCt_dadosConta.Get_ValorGlosaFatura: UnicodeString;
begin
  Result := ChildNodes['valorGlosaFatura'].Text;
end;

procedure TXMLCt_dadosConta.Set_ValorGlosaFatura(Value: UnicodeString);
begin
  ChildNodes['valorGlosaFatura'].NodeValue := Value;
end;

{ TXMLCt_dadosConta_lote }

procedure TXMLCt_dadosConta_lote.AfterConstruction;
begin
  RegisterChildNode('dadosLote', TXMLCt_dadosLote);
  ItemTag := 'dadosLote';
  ItemInterface := IXMLCt_dadosLote;
  inherited;
end;

function TXMLCt_dadosConta_lote.Get_DadosLote(Index: Integer): IXMLCt_dadosLote;
begin
  Result := List[Index] as IXMLCt_dadosLote;
end;

function TXMLCt_dadosConta_lote.Add: IXMLCt_dadosLote;
begin
  Result := AddItem(-1) as IXMLCt_dadosLote;
end;

function TXMLCt_dadosConta_lote.Insert(const Index: Integer): IXMLCt_dadosLote;
begin
  Result := AddItem(Index) as IXMLCt_dadosLote;
end;

{ TXMLCt_dadosLote }

procedure TXMLCt_dadosLote.AfterConstruction;
begin
  RegisterChildNode('guia', TXMLCt_dadosLote_guia);
  FCodigoGlosaProtocolo := CreateCollection(TXMLSt_tipoGlosaList, IXMLNode, 'codigoGlosaProtocolo') as IXMLSt_tipoGlosaList;
  inherited;
end;

function TXMLCt_dadosLote.Get_NumeroLote: UnicodeString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure TXMLCt_dadosLote.Set_NumeroLote(Value: UnicodeString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function TXMLCt_dadosLote.Get_DataEnvioLote: UnicodeString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure TXMLCt_dadosLote.Set_DataEnvioLote(Value: UnicodeString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function TXMLCt_dadosLote.Get_NumeroProtocolo: UnicodeString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure TXMLCt_dadosLote.Set_NumeroProtocolo(Value: UnicodeString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function TXMLCt_dadosLote.Get_ValorProtocolo: UnicodeString;
begin
  Result := ChildNodes['valorProtocolo'].Text;
end;

procedure TXMLCt_dadosLote.Set_ValorProtocolo(Value: UnicodeString);
begin
  ChildNodes['valorProtocolo'].NodeValue := Value;
end;

function TXMLCt_dadosLote.Get_ValorGlosaProtocolo: UnicodeString;
begin
  Result := ChildNodes['valorGlosaProtocolo'].Text;
end;

procedure TXMLCt_dadosLote.Set_ValorGlosaProtocolo(Value: UnicodeString);
begin
  ChildNodes['valorGlosaProtocolo'].NodeValue := Value;
end;

function TXMLCt_dadosLote.Get_CodigoGlosaProtocolo: IXMLSt_tipoGlosaList;
begin
  Result := FCodigoGlosaProtocolo;
end;

function TXMLCt_dadosLote.Get_Guia: IXMLCt_dadosLote_guia;
begin
  Result := ChildNodes['guia'] as IXMLCt_dadosLote_guia;
end;

{ TXMLCt_dadosLote_guia }

procedure TXMLCt_dadosLote_guia.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', TXMLCt_dadosGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := IXMLCt_dadosGuia;
  inherited;
end;

function TXMLCt_dadosLote_guia.Get_DadosGuia(Index: Integer): IXMLCt_dadosGuia;
begin
  Result := List[Index] as IXMLCt_dadosGuia;
end;

function TXMLCt_dadosLote_guia.Add: IXMLCt_dadosGuia;
begin
  Result := AddItem(-1) as IXMLCt_dadosGuia;
end;

function TXMLCt_dadosLote_guia.Insert(const Index: Integer): IXMLCt_dadosGuia;
begin
  Result := AddItem(Index) as IXMLCt_dadosGuia;
end;

{ TXMLCt_demonstrativoOdontologia }

procedure TXMLCt_demonstrativoOdontologia.AfterConstruction;
begin
  RegisterChildNode('cabecalhoDemonstrativo', TXMLCt_cabecalhoDemonstrativo);
  RegisterChildNode('identificacaoFontePagadora', TXMLCt_identificacaoFontePagadora);
  RegisterChildNode('dadosPrestador', TXMLCt_demonstrativoOdontologia_dadosPrestador);
  RegisterChildNode('dadosPagamento', TXMLCt_demonstrativoOdontologia_dadosPagamento);
  RegisterChildNode('debitosCreditosTributaveis', TXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis);
  RegisterChildNode('demaisImpostos', TXMLCt_demonstrativoOdontologia_demaisImpostos);
  RegisterChildNode('debitosCreditosNaoTributaveis', TXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis);
  FDadosPagamento := CreateCollection(TXMLCt_demonstrativoOdontologia_dadosPagamentoList, IXMLCt_demonstrativoOdontologia_dadosPagamento, 'dadosPagamento') as IXMLCt_demonstrativoOdontologia_dadosPagamentoList;
  inherited;
end;

function TXMLCt_demonstrativoOdontologia.Get_CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo;
begin
  Result := ChildNodes['cabecalhoDemonstrativo'] as IXMLCt_cabecalhoDemonstrativo;
end;

function TXMLCt_demonstrativoOdontologia.Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
begin
  Result := ChildNodes['identificacaoFontePagadora'] as IXMLCt_identificacaoFontePagadora;
end;

function TXMLCt_demonstrativoOdontologia.Get_DadosPrestador: IXMLCt_demonstrativoOdontologia_dadosPrestador;
begin
  Result := ChildNodes['dadosPrestador'] as IXMLCt_demonstrativoOdontologia_dadosPrestador;
end;

function TXMLCt_demonstrativoOdontologia.Get_DadosPagamento: IXMLCt_demonstrativoOdontologia_dadosPagamentoList;
begin
  Result := FDadosPagamento;
end;

function TXMLCt_demonstrativoOdontologia.Get_DebitosCreditosTributaveis: IXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis;
begin
  Result := ChildNodes['debitosCreditosTributaveis'] as IXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis;
end;

function TXMLCt_demonstrativoOdontologia.Get_DemaisImpostos: IXMLCt_demonstrativoOdontologia_demaisImpostos;
begin
  Result := ChildNodes['demaisImpostos'] as IXMLCt_demonstrativoOdontologia_demaisImpostos;
end;

function TXMLCt_demonstrativoOdontologia.Get_DebitosCreditosNaoTributaveis: IXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis;
begin
  Result := ChildNodes['debitosCreditosNaoTributaveis'] as IXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis;
end;

function TXMLCt_demonstrativoOdontologia.Get_ValorFinalReceber: UnicodeString;
begin
  Result := ChildNodes['valorFinalReceber'].Text;
end;

procedure TXMLCt_demonstrativoOdontologia.Set_ValorFinalReceber(Value: UnicodeString);
begin
  ChildNodes['valorFinalReceber'].NodeValue := Value;
end;

function TXMLCt_demonstrativoOdontologia.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_demonstrativoOdontologia.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_demonstrativoOdontologiaList }

function TXMLCt_demonstrativoOdontologiaList.Add: IXMLCt_demonstrativoOdontologia;
begin
  Result := AddItem(-1) as IXMLCt_demonstrativoOdontologia;
end;

function TXMLCt_demonstrativoOdontologiaList.Insert(const Index: Integer): IXMLCt_demonstrativoOdontologia;
begin
  Result := AddItem(Index) as IXMLCt_demonstrativoOdontologia;
end;

function TXMLCt_demonstrativoOdontologiaList.Get_Item(Index: Integer): IXMLCt_demonstrativoOdontologia;
begin
  Result := List[Index] as IXMLCt_demonstrativoOdontologia;
end;

{ TXMLCt_demonstrativoOdontologia_dadosPrestador }

procedure TXMLCt_demonstrativoOdontologia_dadosPrestador.AfterConstruction;
begin
  RegisterChildNode('identificadorPrestador', TXMLCt_identificadorPrestOdontoDemo);
  inherited;
end;

function TXMLCt_demonstrativoOdontologia_dadosPrestador.Get_CodigoPrestadorNaOperadora: UnicodeString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure TXMLCt_demonstrativoOdontologia_dadosPrestador.Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

function TXMLCt_demonstrativoOdontologia_dadosPrestador.Get_IdentificadorPrestador: IXMLCt_identificadorPrestOdontoDemo;
begin
  Result := ChildNodes['identificadorPrestador'] as IXMLCt_identificadorPrestOdontoDemo;
end;

function TXMLCt_demonstrativoOdontologia_dadosPrestador.Get_NomeContratado: UnicodeString;
begin
  Result := ChildNodes['nomeContratado'].Text;
end;

procedure TXMLCt_demonstrativoOdontologia_dadosPrestador.Set_NomeContratado(Value: UnicodeString);
begin
  ChildNodes['nomeContratado'].NodeValue := Value;
end;

function TXMLCt_demonstrativoOdontologia_dadosPrestador.Get_NumeroCNES: UnicodeString;
begin
  Result := ChildNodes['numeroCNES'].Text;
end;

procedure TXMLCt_demonstrativoOdontologia_dadosPrestador.Set_NumeroCNES(Value: UnicodeString);
begin
  ChildNodes['numeroCNES'].NodeValue := Value;
end;

{ TXMLCt_identificadorPrestOdontoDemo }

function TXMLCt_identificadorPrestOdontoDemo.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLCt_identificadorPrestOdontoDemo.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLCt_identificadorPrestOdontoDemo.Get_Cpf: UnicodeString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure TXMLCt_identificadorPrestOdontoDemo.Set_Cpf(Value: UnicodeString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

{ TXMLCt_dadosPagamento }

procedure TXMLCt_dadosPagamento.AfterConstruction;
begin
  RegisterChildNode('loteOdonto', TXMLCt_dadosPagamento_loteOdonto);
  FLoteOdonto := CreateCollection(TXMLCt_dadosPagamento_loteOdontoList, IXMLCt_dadosPagamento_loteOdonto, 'loteOdonto') as IXMLCt_dadosPagamento_loteOdontoList;
  inherited;
end;

function TXMLCt_dadosPagamento.Get_DataPagamento: UnicodeString;
begin
  Result := ChildNodes['dataPagamento'].Text;
end;

procedure TXMLCt_dadosPagamento.Set_DataPagamento(Value: UnicodeString);
begin
  ChildNodes['dataPagamento'].NodeValue := Value;
end;

function TXMLCt_dadosPagamento.Get_LoteOdonto: IXMLCt_dadosPagamento_loteOdontoList;
begin
  Result := FLoteOdonto;
end;

{ TXMLCt_loteOdonto }

procedure TXMLCt_loteOdonto.AfterConstruction;
begin
  RegisterChildNode('detalheGuia', TXMLCt_detalheGuiaOdonto);
  FDetalheGuia := CreateCollection(TXMLCt_detalheGuiaOdontoList, IXMLCt_detalheGuiaOdonto, 'detalheGuia') as IXMLCt_detalheGuiaOdontoList;
  inherited;
end;

function TXMLCt_loteOdonto.Get_NumeroLote: UnicodeString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure TXMLCt_loteOdonto.Set_NumeroLote(Value: UnicodeString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function TXMLCt_loteOdonto.Get_DetalheGuia: IXMLCt_detalheGuiaOdontoList;
begin
  Result := FDetalheGuia;
end;

function TXMLCt_loteOdonto.Get_ValorTotalLiberadoLote: UnicodeString;
begin
  Result := ChildNodes['valorTotalLiberadoLote'].Text;
end;

procedure TXMLCt_loteOdonto.Set_ValorTotalLiberadoLote(Value: UnicodeString);
begin
  ChildNodes['valorTotalLiberadoLote'].NodeValue := Value;
end;

function TXMLCt_loteOdonto.Get_ValorTotalProcessadoLote: UnicodeString;
begin
  Result := ChildNodes['valorTotalProcessadoLote'].Text;
end;

procedure TXMLCt_loteOdonto.Set_ValorTotalProcessadoLote(Value: UnicodeString);
begin
  ChildNodes['valorTotalProcessadoLote'].NodeValue := Value;
end;

function TXMLCt_loteOdonto.Get_ValorTotalGlosaLote: UnicodeString;
begin
  Result := ChildNodes['valorTotalGlosaLote'].Text;
end;

procedure TXMLCt_loteOdonto.Set_ValorTotalGlosaLote(Value: UnicodeString);
begin
  ChildNodes['valorTotalGlosaLote'].NodeValue := Value;
end;

{ TXMLCt_detalheGuiaOdonto }

procedure TXMLCt_detalheGuiaOdonto.AfterConstruction;
begin
  RegisterChildNode('procedimentoRealizado', TXMLCt_detalheGuiaOdonto_procedimentoRealizado);
  inherited;
end;

function TXMLCt_detalheGuiaOdonto.Get_NumeroGuiaPrestador: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure TXMLCt_detalheGuiaOdonto.Set_NumeroGuiaPrestador(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function TXMLCt_detalheGuiaOdonto.Get_NumeroGuiaOperadora: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure TXMLCt_detalheGuiaOdonto.Set_NumeroGuiaOperadora(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function TXMLCt_detalheGuiaOdonto.Get_CodigoBeneficiario: UnicodeString;
begin
  Result := ChildNodes['codigoBeneficiario'].Text;
end;

procedure TXMLCt_detalheGuiaOdonto.Set_CodigoBeneficiario(Value: UnicodeString);
begin
  ChildNodes['codigoBeneficiario'].NodeValue := Value;
end;

function TXMLCt_detalheGuiaOdonto.Get_NomeBeneficiario: UnicodeString;
begin
  Result := ChildNodes['NomeBeneficiario'].Text;
end;

procedure TXMLCt_detalheGuiaOdonto.Set_NomeBeneficiario(Value: UnicodeString);
begin
  ChildNodes['NomeBeneficiario'].NodeValue := Value;
end;

function TXMLCt_detalheGuiaOdonto.Get_ProcedimentoRealizado: IXMLCt_detalheGuiaOdonto_procedimentoRealizado;
begin
  Result := ChildNodes['procedimentoRealizado'] as IXMLCt_detalheGuiaOdonto_procedimentoRealizado;
end;

function TXMLCt_detalheGuiaOdonto.Get_ValorTotalGlosaGuia: UnicodeString;
begin
  Result := ChildNodes['valorTotalGlosaGuia'].Text;
end;

procedure TXMLCt_detalheGuiaOdonto.Set_ValorTotalGlosaGuia(Value: UnicodeString);
begin
  ChildNodes['valorTotalGlosaGuia'].NodeValue := Value;
end;

function TXMLCt_detalheGuiaOdonto.Get_ValorTotalLiberadoGuia: UnicodeString;
begin
  Result := ChildNodes['valorTotalLiberadoGuia'].Text;
end;

procedure TXMLCt_detalheGuiaOdonto.Set_ValorTotalLiberadoGuia(Value: UnicodeString);
begin
  ChildNodes['valorTotalLiberadoGuia'].NodeValue := Value;
end;

function TXMLCt_detalheGuiaOdonto.Get_ValorTotalProcessadoGuia: UnicodeString;
begin
  Result := ChildNodes['valorTotalProcessadoGuia'].Text;
end;

procedure TXMLCt_detalheGuiaOdonto.Set_ValorTotalProcessadoGuia(Value: UnicodeString);
begin
  ChildNodes['valorTotalProcessadoGuia'].NodeValue := Value;
end;

{ TXMLCt_detalheGuiaOdontoList }

function TXMLCt_detalheGuiaOdontoList.Add: IXMLCt_detalheGuiaOdonto;
begin
  Result := AddItem(-1) as IXMLCt_detalheGuiaOdonto;
end;

function TXMLCt_detalheGuiaOdontoList.Insert(const Index: Integer): IXMLCt_detalheGuiaOdonto;
begin
  Result := AddItem(Index) as IXMLCt_detalheGuiaOdonto;
end;

function TXMLCt_detalheGuiaOdontoList.Get_Item(Index: Integer): IXMLCt_detalheGuiaOdonto;
begin
  Result := List[Index] as IXMLCt_detalheGuiaOdonto;
end;

{ TXMLCt_detalheGuiaOdonto_procedimentoRealizado }

procedure TXMLCt_detalheGuiaOdonto_procedimentoRealizado.AfterConstruction;
begin
  RegisterChildNode('procedimentosOdonto', TXMLCt_procedimentoOdontoRealizado);
  ItemTag := 'procedimentosOdonto';
  ItemInterface := IXMLCt_procedimentoOdontoRealizado;
  inherited;
end;

function TXMLCt_detalheGuiaOdonto_procedimentoRealizado.Get_ProcedimentosOdonto(Index: Integer): IXMLCt_procedimentoOdontoRealizado;
begin
  Result := List[Index] as IXMLCt_procedimentoOdontoRealizado;
end;

function TXMLCt_detalheGuiaOdonto_procedimentoRealizado.Add: IXMLCt_procedimentoOdontoRealizado;
begin
  Result := AddItem(-1) as IXMLCt_procedimentoOdontoRealizado;
end;

function TXMLCt_detalheGuiaOdonto_procedimentoRealizado.Insert(const Index: Integer): IXMLCt_procedimentoOdontoRealizado;
begin
  Result := AddItem(Index) as IXMLCt_procedimentoOdontoRealizado;
end;

{ TXMLCt_dadosPagamento_loteOdonto }

procedure TXMLCt_dadosPagamento_loteOdonto.AfterConstruction;
begin
  RegisterChildNode('totalGeralLote', TXMLCt_totalDemoOdonto);
  inherited;
end;

function TXMLCt_dadosPagamento_loteOdonto.Get_TotalGeralLote: IXMLCt_totalDemoOdonto;
begin
  Result := ChildNodes['totalGeralLote'] as IXMLCt_totalDemoOdonto;
end;

{ TXMLCt_dadosPagamento_loteOdontoList }

function TXMLCt_dadosPagamento_loteOdontoList.Add: IXMLCt_dadosPagamento_loteOdonto;
begin
  Result := AddItem(-1) as IXMLCt_dadosPagamento_loteOdonto;
end;

function TXMLCt_dadosPagamento_loteOdontoList.Insert(const Index: Integer): IXMLCt_dadosPagamento_loteOdonto;
begin
  Result := AddItem(Index) as IXMLCt_dadosPagamento_loteOdonto;
end;

function TXMLCt_dadosPagamento_loteOdontoList.Get_Item(Index: Integer): IXMLCt_dadosPagamento_loteOdonto;
begin
  Result := List[Index] as IXMLCt_dadosPagamento_loteOdonto;
end;

{ TXMLCt_totalDemoOdonto }

function TXMLCt_totalDemoOdonto.Get_ValorTotalGeralGlosa: UnicodeString;
begin
  Result := ChildNodes['valorTotalGeralGlosa'].Text;
end;

procedure TXMLCt_totalDemoOdonto.Set_ValorTotalGeralGlosa(Value: UnicodeString);
begin
  ChildNodes['valorTotalGeralGlosa'].NodeValue := Value;
end;

function TXMLCt_totalDemoOdonto.Get_ValorTotalGeralLiberado: UnicodeString;
begin
  Result := ChildNodes['valorTotalGeralLiberado'].Text;
end;

procedure TXMLCt_totalDemoOdonto.Set_ValorTotalGeralLiberado(Value: UnicodeString);
begin
  ChildNodes['valorTotalGeralLiberado'].NodeValue := Value;
end;

function TXMLCt_totalDemoOdonto.Get_ValorTotalProcessadoGuia: UnicodeString;
begin
  Result := ChildNodes['valorTotalProcessadoGuia'].Text;
end;

procedure TXMLCt_totalDemoOdonto.Set_ValorTotalProcessadoGuia(Value: UnicodeString);
begin
  ChildNodes['valorTotalProcessadoGuia'].NodeValue := Value;
end;

{ TXMLCt_demonstrativoOdontologia_dadosPagamento }

procedure TXMLCt_demonstrativoOdontologia_dadosPagamento.AfterConstruction;
begin
  RegisterChildNode('totalGeral', TXMLCt_totalDemoOdonto);
  inherited;
end;

function TXMLCt_demonstrativoOdontologia_dadosPagamento.Get_TotalGeral: IXMLCt_totalDemoOdonto;
begin
  Result := ChildNodes['totalGeral'] as IXMLCt_totalDemoOdonto;
end;

{ TXMLCt_demonstrativoOdontologia_dadosPagamentoList }

function TXMLCt_demonstrativoOdontologia_dadosPagamentoList.Add: IXMLCt_demonstrativoOdontologia_dadosPagamento;
begin
  Result := AddItem(-1) as IXMLCt_demonstrativoOdontologia_dadosPagamento;
end;

function TXMLCt_demonstrativoOdontologia_dadosPagamentoList.Insert(const Index: Integer): IXMLCt_demonstrativoOdontologia_dadosPagamento;
begin
  Result := AddItem(Index) as IXMLCt_demonstrativoOdontologia_dadosPagamento;
end;

function TXMLCt_demonstrativoOdontologia_dadosPagamentoList.Get_Item(Index: Integer): IXMLCt_demonstrativoOdontologia_dadosPagamento;
begin
  Result := List[Index] as IXMLCt_demonstrativoOdontologia_dadosPagamento;
end;

{ TXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis }

procedure TXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis.AfterConstruction;
begin
  RegisterChildNode('descontos', TXMLCt_descontoOdonto);
  RegisterChildNode('creditos', TXMLCt_creditoOdonto);
  FDescontos := CreateCollection(TXMLCt_descontoOdontoList, IXMLCt_descontoOdonto, 'descontos') as IXMLCt_descontoOdontoList;
  FCreditos := CreateCollection(TXMLCt_creditoOdontoList, IXMLCt_creditoOdonto, 'creditos') as IXMLCt_creditoOdontoList;
  inherited;
end;

function TXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis.Get_Descontos: IXMLCt_descontoOdontoList;
begin
  Result := FDescontos;
end;

function TXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis.Get_Creditos: IXMLCt_creditoOdontoList;
begin
  Result := FCreditos;
end;

function TXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis.Get_ValorTotalTributavel: UnicodeString;
begin
  Result := ChildNodes['valorTotalTributavel'].Text;
end;

procedure TXMLCt_demonstrativoOdontologia_debitosCreditosTributaveis.Set_ValorTotalTributavel(Value: UnicodeString);
begin
  ChildNodes['valorTotalTributavel'].NodeValue := Value;
end;

{ TXMLCt_descontoOdonto }

function TXMLCt_descontoOdonto.Get_Descricao: UnicodeString;
begin
  Result := ChildNodes['descricao'].Text;
end;

procedure TXMLCt_descontoOdonto.Set_Descricao(Value: UnicodeString);
begin
  ChildNodes['descricao'].NodeValue := Value;
end;

function TXMLCt_descontoOdonto.Get_ValorDesconto: UnicodeString;
begin
  Result := ChildNodes['valorDesconto'].Text;
end;

procedure TXMLCt_descontoOdonto.Set_ValorDesconto(Value: UnicodeString);
begin
  ChildNodes['valorDesconto'].NodeValue := Value;
end;

{ TXMLCt_descontoOdontoList }

function TXMLCt_descontoOdontoList.Add: IXMLCt_descontoOdonto;
begin
  Result := AddItem(-1) as IXMLCt_descontoOdonto;
end;

function TXMLCt_descontoOdontoList.Insert(const Index: Integer): IXMLCt_descontoOdonto;
begin
  Result := AddItem(Index) as IXMLCt_descontoOdonto;
end;

function TXMLCt_descontoOdontoList.Get_Item(Index: Integer): IXMLCt_descontoOdonto;
begin
  Result := List[Index] as IXMLCt_descontoOdonto;
end;

{ TXMLCt_creditoOdonto }

function TXMLCt_creditoOdonto.Get_ValorDesconto: UnicodeString;
begin
  Result := ChildNodes['valorDesconto'].Text;
end;

procedure TXMLCt_creditoOdonto.Set_ValorDesconto(Value: UnicodeString);
begin
  ChildNodes['valorDesconto'].NodeValue := Value;
end;

function TXMLCt_creditoOdonto.Get_Descricao: UnicodeString;
begin
  Result := ChildNodes['descricao'].Text;
end;

procedure TXMLCt_creditoOdonto.Set_Descricao(Value: UnicodeString);
begin
  ChildNodes['descricao'].NodeValue := Value;
end;

{ TXMLCt_creditoOdontoList }

function TXMLCt_creditoOdontoList.Add: IXMLCt_creditoOdonto;
begin
  Result := AddItem(-1) as IXMLCt_creditoOdonto;
end;

function TXMLCt_creditoOdontoList.Insert(const Index: Integer): IXMLCt_creditoOdonto;
begin
  Result := AddItem(Index) as IXMLCt_creditoOdonto;
end;

function TXMLCt_creditoOdontoList.Get_Item(Index: Integer): IXMLCt_creditoOdonto;
begin
  Result := List[Index] as IXMLCt_creditoOdonto;
end;

{ TXMLCt_demonstrativoOdontologia_demaisImpostos }

procedure TXMLCt_demonstrativoOdontologia_demaisImpostos.AfterConstruction;
begin
  RegisterChildNode('descontos', TXMLCt_descontoOdonto);
  FDescontos := CreateCollection(TXMLCt_descontoOdontoList, IXMLCt_descontoOdonto, 'descontos') as IXMLCt_descontoOdontoList;
  inherited;
end;

function TXMLCt_demonstrativoOdontologia_demaisImpostos.Get_Descontos: IXMLCt_descontoOdontoList;
begin
  Result := FDescontos;
end;

function TXMLCt_demonstrativoOdontologia_demaisImpostos.Get_ValorTotalImpostos: UnicodeString;
begin
  Result := ChildNodes['valorTotalImpostos'].Text;
end;

procedure TXMLCt_demonstrativoOdontologia_demaisImpostos.Set_ValorTotalImpostos(Value: UnicodeString);
begin
  ChildNodes['valorTotalImpostos'].NodeValue := Value;
end;

{ TXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis }

procedure TXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis.AfterConstruction;
begin
  RegisterChildNode('descontos', TXMLCt_descontoOdonto);
  RegisterChildNode('creditos', TXMLCt_creditoOdonto);
  FDescontos := CreateCollection(TXMLCt_descontoOdontoList, IXMLCt_descontoOdonto, 'descontos') as IXMLCt_descontoOdontoList;
  FCreditos := CreateCollection(TXMLCt_creditoOdontoList, IXMLCt_creditoOdonto, 'creditos') as IXMLCt_creditoOdontoList;
  inherited;
end;

function TXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis.Get_Descontos: IXMLCt_descontoOdontoList;
begin
  Result := FDescontos;
end;

function TXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis.Get_Creditos: IXMLCt_creditoOdontoList;
begin
  Result := FCreditos;
end;

function TXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis.Get_ValorTotalNaoTributavel: UnicodeString;
begin
  Result := ChildNodes['valorTotalNaoTributavel'].Text;
end;

procedure TXMLCt_demonstrativoOdontologia_debitosCreditosNaoTributaveis.Set_ValorTotalNaoTributavel(Value: UnicodeString);
begin
  ChildNodes['valorTotalNaoTributavel'].NodeValue := Value;
end;

{ TXMLCt_demonstrativoPagamento }

procedure TXMLCt_demonstrativoPagamento.AfterConstruction;
begin
  RegisterChildNode('cabecalhoDemonstrativo', TXMLCt_cabecalhoDemonstrativo);
  RegisterChildNode('identificacaoFontePagadora', TXMLCt_identificacaoFontePagadora);
  RegisterChildNode('dadosPrestador', TXMLCt_contratado);
  RegisterChildNode('dadosPagamento', TXMLCt_dadoBancario);
  RegisterChildNode('dadosResumo', TXMLCt_demonstrativoPagamento_dadosResumo);
  RegisterChildNode('demaisDescontos', TXMLCt_descontos);
  inherited;
end;

function TXMLCt_demonstrativoPagamento.Get_CabecalhoDemonstrativo: IXMLCt_cabecalhoDemonstrativo;
begin
  Result := ChildNodes['cabecalhoDemonstrativo'] as IXMLCt_cabecalhoDemonstrativo;
end;

function TXMLCt_demonstrativoPagamento.Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
begin
  Result := ChildNodes['identificacaoFontePagadora'] as IXMLCt_identificacaoFontePagadora;
end;

function TXMLCt_demonstrativoPagamento.Get_DadosPrestador: IXMLCt_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as IXMLCt_contratado;
end;

function TXMLCt_demonstrativoPagamento.Get_DadosPagamento: IXMLCt_dadoBancario;
begin
  Result := ChildNodes['dadosPagamento'] as IXMLCt_dadoBancario;
end;

function TXMLCt_demonstrativoPagamento.Get_DadosResumo: IXMLCt_demonstrativoPagamento_dadosResumo;
begin
  Result := ChildNodes['dadosResumo'] as IXMLCt_demonstrativoPagamento_dadosResumo;
end;

function TXMLCt_demonstrativoPagamento.Get_ValorTotal: UnicodeString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure TXMLCt_demonstrativoPagamento.Set_ValorTotal(Value: UnicodeString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function TXMLCt_demonstrativoPagamento.Get_DemaisDescontos: IXMLCt_descontos;
begin
  Result := ChildNodes['demaisDescontos'] as IXMLCt_descontos;
end;

function TXMLCt_demonstrativoPagamento.Get_ValorFinalLiberado: UnicodeString;
begin
  Result := ChildNodes['valorFinalLiberado'].Text;
end;

procedure TXMLCt_demonstrativoPagamento.Set_ValorFinalLiberado(Value: UnicodeString);
begin
  ChildNodes['valorFinalLiberado'].NodeValue := Value;
end;

{ TXMLCt_demonstrativoPagamentoList }

function TXMLCt_demonstrativoPagamentoList.Add: IXMLCt_demonstrativoPagamento;
begin
  Result := AddItem(-1) as IXMLCt_demonstrativoPagamento;
end;

function TXMLCt_demonstrativoPagamentoList.Insert(const Index: Integer): IXMLCt_demonstrativoPagamento;
begin
  Result := AddItem(Index) as IXMLCt_demonstrativoPagamento;
end;

function TXMLCt_demonstrativoPagamentoList.Get_Item(Index: Integer): IXMLCt_demonstrativoPagamento;
begin
  Result := List[Index] as IXMLCt_demonstrativoPagamento;
end;

{ TXMLCt_dadoBancario }

function TXMLCt_dadoBancario.Get_DataPagamento: UnicodeString;
begin
  Result := ChildNodes['dataPagamento'].Text;
end;

procedure TXMLCt_dadoBancario.Set_DataPagamento(Value: UnicodeString);
begin
  ChildNodes['dataPagamento'].NodeValue := Value;
end;

function TXMLCt_dadoBancario.Get_FormaPagamento: UnicodeString;
begin
  Result := ChildNodes['formaPagamento'].Text;
end;

procedure TXMLCt_dadoBancario.Set_FormaPagamento(Value: UnicodeString);
begin
  ChildNodes['formaPagamento'].NodeValue := Value;
end;

function TXMLCt_dadoBancario.Get_Banco: Integer;
begin
  Result := ChildNodes['banco'].NodeValue;
end;

procedure TXMLCt_dadoBancario.Set_Banco(Value: Integer);
begin
  ChildNodes['banco'].NodeValue := Value;
end;

function TXMLCt_dadoBancario.Get_Agencia: UnicodeString;
begin
  Result := ChildNodes['agencia'].Text;
end;

procedure TXMLCt_dadoBancario.Set_Agencia(Value: UnicodeString);
begin
  ChildNodes['agencia'].NodeValue := Value;
end;

function TXMLCt_dadoBancario.Get_ContaCorrente: UnicodeString;
begin
  Result := ChildNodes['contaCorrente'].Text;
end;

procedure TXMLCt_dadoBancario.Set_ContaCorrente(Value: UnicodeString);
begin
  ChildNodes['contaCorrente'].NodeValue := Value;
end;

{ TXMLCt_demonstrativoPagamento_dadosResumo }

procedure TXMLCt_demonstrativoPagamento_dadosResumo.AfterConstruction;
begin
  RegisterChildNode('detalheResumo', TXMLCt_dadosResumo);
  FDetalheResumo := CreateCollection(TXMLCt_dadosResumoList, IXMLCt_dadosResumo, 'detalheResumo') as IXMLCt_dadosResumoList;
  inherited;
end;

function TXMLCt_demonstrativoPagamento_dadosResumo.Get_DetalheResumo: IXMLCt_dadosResumoList;
begin
  Result := FDetalheResumo;
end;

function TXMLCt_demonstrativoPagamento_dadosResumo.Get_TotalGeralInformado: UnicodeString;
begin
  Result := ChildNodes['totalGeralInformado'].Text;
end;

procedure TXMLCt_demonstrativoPagamento_dadosResumo.Set_TotalGeralInformado(Value: UnicodeString);
begin
  ChildNodes['totalGeralInformado'].NodeValue := Value;
end;

function TXMLCt_demonstrativoPagamento_dadosResumo.Get_TotalGeralProcessado: UnicodeString;
begin
  Result := ChildNodes['TotalGeralProcessado'].Text;
end;

procedure TXMLCt_demonstrativoPagamento_dadosResumo.Set_TotalGeralProcessado(Value: UnicodeString);
begin
  ChildNodes['TotalGeralProcessado'].NodeValue := Value;
end;

function TXMLCt_demonstrativoPagamento_dadosResumo.Get_TotalGeralGlosa: UnicodeString;
begin
  Result := ChildNodes['TotalGeralGlosa'].Text;
end;

procedure TXMLCt_demonstrativoPagamento_dadosResumo.Set_TotalGeralGlosa(Value: UnicodeString);
begin
  ChildNodes['TotalGeralGlosa'].NodeValue := Value;
end;

function TXMLCt_demonstrativoPagamento_dadosResumo.Get_TotalGeralLiberado: UnicodeString;
begin
  Result := ChildNodes['TotalGeralLiberado'].Text;
end;

procedure TXMLCt_demonstrativoPagamento_dadosResumo.Set_TotalGeralLiberado(Value: UnicodeString);
begin
  ChildNodes['TotalGeralLiberado'].NodeValue := Value;
end;

{ TXMLCt_dadosResumo }

function TXMLCt_dadosResumo.Get_NumeroFatura: UnicodeString;
begin
  Result := ChildNodes['numeroFatura'].Text;
end;

procedure TXMLCt_dadosResumo.Set_NumeroFatura(Value: UnicodeString);
begin
  ChildNodes['numeroFatura'].NodeValue := Value;
end;

function TXMLCt_dadosResumo.Get_NumeroLote: UnicodeString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure TXMLCt_dadosResumo.Set_NumeroLote(Value: UnicodeString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function TXMLCt_dadosResumo.Get_DataEnvioLote: UnicodeString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure TXMLCt_dadosResumo.Set_DataEnvioLote(Value: UnicodeString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function TXMLCt_dadosResumo.Get_NumeroProtocolo: UnicodeString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure TXMLCt_dadosResumo.Set_NumeroProtocolo(Value: UnicodeString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function TXMLCt_dadosResumo.Get_ValorInformado: UnicodeString;
begin
  Result := ChildNodes['valorInformado'].Text;
end;

procedure TXMLCt_dadosResumo.Set_ValorInformado(Value: UnicodeString);
begin
  ChildNodes['valorInformado'].NodeValue := Value;
end;

function TXMLCt_dadosResumo.Get_ValorProcessado: UnicodeString;
begin
  Result := ChildNodes['valorProcessado'].Text;
end;

procedure TXMLCt_dadosResumo.Set_ValorProcessado(Value: UnicodeString);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function TXMLCt_dadosResumo.Get_ValorLiberado: UnicodeString;
begin
  Result := ChildNodes['valorLiberado'].Text;
end;

procedure TXMLCt_dadosResumo.Set_ValorLiberado(Value: UnicodeString);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

function TXMLCt_dadosResumo.Get_ValorGlosa: UnicodeString;
begin
  Result := ChildNodes['valorGlosa'].Text;
end;

procedure TXMLCt_dadosResumo.Set_ValorGlosa(Value: UnicodeString);
begin
  ChildNodes['valorGlosa'].NodeValue := Value;
end;

{ TXMLCt_dadosResumoList }

function TXMLCt_dadosResumoList.Add: IXMLCt_dadosResumo;
begin
  Result := AddItem(-1) as IXMLCt_dadosResumo;
end;

function TXMLCt_dadosResumoList.Insert(const Index: Integer): IXMLCt_dadosResumo;
begin
  Result := AddItem(Index) as IXMLCt_dadosResumo;
end;

function TXMLCt_dadosResumoList.Get_Item(Index: Integer): IXMLCt_dadosResumo;
begin
  Result := List[Index] as IXMLCt_dadosResumo;
end;

{ TXMLCt_descontos }

procedure TXMLCt_descontos.AfterConstruction;
begin
  RegisterChildNode('itemDesconto', TXMLCt_descontos_itemDesconto);
  ItemTag := 'itemDesconto';
  ItemInterface := IXMLCt_descontos_itemDesconto;
  inherited;
end;

function TXMLCt_descontos.Get_ItemDesconto(Index: Integer): IXMLCt_descontos_itemDesconto;
begin
  Result := List[Index] as IXMLCt_descontos_itemDesconto;
end;

function TXMLCt_descontos.Add: IXMLCt_descontos_itemDesconto;
begin
  Result := AddItem(-1) as IXMLCt_descontos_itemDesconto;
end;

function TXMLCt_descontos.Insert(const Index: Integer): IXMLCt_descontos_itemDesconto;
begin
  Result := AddItem(Index) as IXMLCt_descontos_itemDesconto;
end;

{ TXMLCt_descontos_itemDesconto }

function TXMLCt_descontos_itemDesconto.Get_ValorDesconto: UnicodeString;
begin
  Result := ChildNodes['valorDesconto'].Text;
end;

procedure TXMLCt_descontos_itemDesconto.Set_ValorDesconto(Value: UnicodeString);
begin
  ChildNodes['valorDesconto'].NodeValue := Value;
end;

function TXMLCt_descontos_itemDesconto.Get_Descricao: UnicodeString;
begin
  Result := ChildNodes['descricao'].Text;
end;

procedure TXMLCt_descontos_itemDesconto.Set_Descricao(Value: UnicodeString);
begin
  ChildNodes['descricao'].NodeValue := Value;
end;

{ TXMLCt_StatusProtocolo }

procedure TXMLCt_StatusProtocolo.AfterConstruction;
begin
  RegisterChildNode('identificacaoFontePagadora', TXMLCt_identificacaoFontePagadora);
  RegisterChildNode('dadosPrestador', TXMLCt_contratado);
  RegisterChildNode('lote', TXMLCt_StatusProtocolo_lote);
  inherited;
end;

function TXMLCt_StatusProtocolo.Get_IdentificacaoFontePagadora: IXMLCt_identificacaoFontePagadora;
begin
  Result := ChildNodes['identificacaoFontePagadora'] as IXMLCt_identificacaoFontePagadora;
end;

function TXMLCt_StatusProtocolo.Get_StatusProtocolo: UnicodeString;
begin
  Result := ChildNodes['statusProtocolo'].Text;
end;

procedure TXMLCt_StatusProtocolo.Set_StatusProtocolo(Value: UnicodeString);
begin
  ChildNodes['statusProtocolo'].NodeValue := Value;
end;

function TXMLCt_StatusProtocolo.Get_DadosPrestador: IXMLCt_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as IXMLCt_contratado;
end;

function TXMLCt_StatusProtocolo.Get_CNESPrestador: UnicodeString;
begin
  Result := ChildNodes['CNESPrestador'].Text;
end;

procedure TXMLCt_StatusProtocolo.Set_CNESPrestador(Value: UnicodeString);
begin
  ChildNodes['CNESPrestador'].NodeValue := Value;
end;

function TXMLCt_StatusProtocolo.Get_Lote: IXMLCt_StatusProtocolo_lote;
begin
  Result := ChildNodes['lote'] as IXMLCt_StatusProtocolo_lote;
end;

{ TXMLCt_StatusProtocolo_lote }

procedure TXMLCt_StatusProtocolo_lote.AfterConstruction;
begin
  RegisterChildNode('detalheLote', TXMLCt_statusLote);
  ItemTag := 'detalheLote';
  ItemInterface := IXMLCt_statusLote;
  inherited;
end;

function TXMLCt_StatusProtocolo_lote.Get_DetalheLote(Index: Integer): IXMLCt_statusLote;
begin
  Result := List[Index] as IXMLCt_statusLote;
end;

function TXMLCt_StatusProtocolo_lote.Add: IXMLCt_statusLote;
begin
  Result := AddItem(-1) as IXMLCt_statusLote;
end;

function TXMLCt_StatusProtocolo_lote.Insert(const Index: Integer): IXMLCt_statusLote;
begin
  Result := AddItem(Index) as IXMLCt_statusLote;
end;

{ TXMLCt_statusLote }

procedure TXMLCt_statusLote.AfterConstruction;
begin
  RegisterChildNode('guias', TXMLCt_statusLote_guias);
  inherited;
end;

function TXMLCt_statusLote.Get_NumeroProtocolo: UnicodeString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure TXMLCt_statusLote.Set_NumeroProtocolo(Value: UnicodeString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

function TXMLCt_statusLote.Get_NumeroLote: Integer;
begin
  Result := ChildNodes['numeroLote'].NodeValue;
end;

procedure TXMLCt_statusLote.Set_NumeroLote(Value: Integer);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function TXMLCt_statusLote.Get_DataEnvioLote: UnicodeString;
begin
  Result := ChildNodes['dataEnvioLote'].Text;
end;

procedure TXMLCt_statusLote.Set_DataEnvioLote(Value: UnicodeString);
begin
  ChildNodes['dataEnvioLote'].NodeValue := Value;
end;

function TXMLCt_statusLote.Get_NumeroFatura: Integer;
begin
  Result := ChildNodes['numeroFatura'].NodeValue;
end;

procedure TXMLCt_statusLote.Set_NumeroFatura(Value: Integer);
begin
  ChildNodes['numeroFatura'].NodeValue := Value;
end;

function TXMLCt_statusLote.Get_ValorProcessado: UnicodeString;
begin
  Result := ChildNodes['valorProcessado'].Text;
end;

procedure TXMLCt_statusLote.Set_ValorProcessado(Value: UnicodeString);
begin
  ChildNodes['valorProcessado'].NodeValue := Value;
end;

function TXMLCt_statusLote.Get_ValorLiberado: UnicodeString;
begin
  Result := ChildNodes['valorLiberado'].Text;
end;

procedure TXMLCt_statusLote.Set_ValorLiberado(Value: UnicodeString);
begin
  ChildNodes['valorLiberado'].NodeValue := Value;
end;

function TXMLCt_statusLote.Get_ValorGlosa: UnicodeString;
begin
  Result := ChildNodes['valorGlosa'].Text;
end;

procedure TXMLCt_statusLote.Set_ValorGlosa(Value: UnicodeString);
begin
  ChildNodes['valorGlosa'].NodeValue := Value;
end;

function TXMLCt_statusLote.Get_Status: UnicodeString;
begin
  Result := ChildNodes['status'].Text;
end;

procedure TXMLCt_statusLote.Set_Status(Value: UnicodeString);
begin
  ChildNodes['status'].NodeValue := Value;
end;

function TXMLCt_statusLote.Get_Guias: IXMLCt_statusLote_guias;
begin
  Result := ChildNodes['guias'] as IXMLCt_statusLote_guias;
end;

{ TXMLCt_statusLote_guias }

procedure TXMLCt_statusLote_guias.AfterConstruction;
begin
  RegisterChildNode('detalheguiaMedica', TXMLCt_statusLote_guias_detalheguiaMedica);
  RegisterChildNode('detalheguiaOdonto', TXMLCt_statusLote_guias_detalheguiaOdonto);
  FDetalheguiaMedica := CreateCollection(TXMLCt_statusLote_guias_detalheguiaMedicaList, IXMLCt_statusLote_guias_detalheguiaMedica, 'detalheguiaMedica') as IXMLCt_statusLote_guias_detalheguiaMedicaList;
  FDetalheguiaOdonto := CreateCollection(TXMLCt_statusLote_guias_detalheguiaOdontoList, IXMLCt_statusLote_guias_detalheguiaOdonto, 'detalheguiaOdonto') as IXMLCt_statusLote_guias_detalheguiaOdontoList;
  inherited;
end;

function TXMLCt_statusLote_guias.Get_DetalheguiaMedica: IXMLCt_statusLote_guias_detalheguiaMedicaList;
begin
  Result := FDetalheguiaMedica;
end;

function TXMLCt_statusLote_guias.Get_DetalheguiaOdonto: IXMLCt_statusLote_guias_detalheguiaOdontoList;
begin
  Result := FDetalheguiaOdonto;
end;

{ TXMLCt_statusLote_guias_detalheguiaMedica }

procedure TXMLCt_statusLote_guias_detalheguiaMedica.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuia', TXMLCt_cabecalhoGuia);
  RegisterChildNode('procedimentosAnalisados', TXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados);
  inherited;
end;

function TXMLCt_statusLote_guias_detalheguiaMedica.Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuia'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_statusLote_guias_detalheguiaMedica.Get_ProcedimentosAnalisados: IXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados;
begin
  Result := ChildNodes['procedimentosAnalisados'] as IXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados;
end;

{ TXMLCt_statusLote_guias_detalheguiaMedicaList }

function TXMLCt_statusLote_guias_detalheguiaMedicaList.Add: IXMLCt_statusLote_guias_detalheguiaMedica;
begin
  Result := AddItem(-1) as IXMLCt_statusLote_guias_detalheguiaMedica;
end;

function TXMLCt_statusLote_guias_detalheguiaMedicaList.Insert(const Index: Integer): IXMLCt_statusLote_guias_detalheguiaMedica;
begin
  Result := AddItem(Index) as IXMLCt_statusLote_guias_detalheguiaMedica;
end;

function TXMLCt_statusLote_guias_detalheguiaMedicaList.Get_Item(Index: Integer): IXMLCt_statusLote_guias_detalheguiaMedica;
begin
  Result := List[Index] as IXMLCt_statusLote_guias_detalheguiaMedica;
end;

{ TXMLCt_cabecalhoGuia }

procedure TXMLCt_cabecalhoGuia.AfterConstruction;
begin
  RegisterChildNode('identificacaoFontePagadora', TXMLCt_cabecalhoGuia_identificacaoFontePagadora);
  inherited;
end;

function TXMLCt_cabecalhoGuia.Get_IdentificacaoFontePagadora: IXMLCt_cabecalhoGuia_identificacaoFontePagadora;
begin
  Result := ChildNodes['identificacaoFontePagadora'] as IXMLCt_cabecalhoGuia_identificacaoFontePagadora;
end;

function TXMLCt_cabecalhoGuia.Get_DataEmissaoGuia: UnicodeString;
begin
  Result := ChildNodes['dataEmissaoGuia'].Text;
end;

procedure TXMLCt_cabecalhoGuia.Set_DataEmissaoGuia(Value: UnicodeString);
begin
  ChildNodes['dataEmissaoGuia'].NodeValue := Value;
end;

function TXMLCt_cabecalhoGuia.Get_NumeroGuiaPrestador: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure TXMLCt_cabecalhoGuia.Set_NumeroGuiaPrestador(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function TXMLCt_cabecalhoGuia.Get_NumeroGuiaOperadora: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure TXMLCt_cabecalhoGuia.Set_NumeroGuiaOperadora(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

{ TXMLCt_cabecalhoGuia_identificacaoFontePagadora }

function TXMLCt_cabecalhoGuia_identificacaoFontePagadora.Get_RegistroANS: UnicodeString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure TXMLCt_cabecalhoGuia_identificacaoFontePagadora.Set_RegistroANS(Value: UnicodeString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function TXMLCt_cabecalhoGuia_identificacaoFontePagadora.Get_CnpjFontePagadora: UnicodeString;
begin
  Result := ChildNodes['cnpjFontePagadora'].Text;
end;

procedure TXMLCt_cabecalhoGuia_identificacaoFontePagadora.Set_CnpjFontePagadora(Value: UnicodeString);
begin
  ChildNodes['cnpjFontePagadora'].NodeValue := Value;
end;

{ TXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados }

procedure TXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_itemSolicitacao);
  ItemTag := 'procedimento';
  ItemInterface := IXMLCt_itemSolicitacao;
  inherited;
end;

function TXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados.Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacao;
begin
  Result := List[Index] as IXMLCt_itemSolicitacao;
end;

function TXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados.Add: IXMLCt_itemSolicitacao;
begin
  Result := AddItem(-1) as IXMLCt_itemSolicitacao;
end;

function TXMLCt_statusLote_guias_detalheguiaMedica_procedimentosAnalisados.Insert(const Index: Integer): IXMLCt_itemSolicitacao;
begin
  Result := AddItem(Index) as IXMLCt_itemSolicitacao;
end;

{ TXMLCt_itemSolicitacao }

procedure TXMLCt_itemSolicitacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoProcedimentos', TXMLCt_tabela);
  RegisterChildNode('glosas', TXMLCt_itemSolicitacao_glosas);
  inherited;
end;

function TXMLCt_itemSolicitacao.Get_IdentificacaoProcedimentos: IXMLCt_tabela;
begin
  Result := ChildNodes['identificacaoProcedimentos'] as IXMLCt_tabela;
end;

function TXMLCt_itemSolicitacao.Get_QuantidadeSolicitada: UnicodeString;
begin
  Result := ChildNodes['quantidadeSolicitada'].Text;
end;

procedure TXMLCt_itemSolicitacao.Set_QuantidadeSolicitada(Value: UnicodeString);
begin
  ChildNodes['quantidadeSolicitada'].NodeValue := Value;
end;

function TXMLCt_itemSolicitacao.Get_QuantidadeAutorizada: UnicodeString;
begin
  Result := ChildNodes['quantidadeAutorizada'].Text;
end;

procedure TXMLCt_itemSolicitacao.Set_QuantidadeAutorizada(Value: UnicodeString);
begin
  ChildNodes['quantidadeAutorizada'].NodeValue := Value;
end;

function TXMLCt_itemSolicitacao.Get_StatusSolicitacaoProcedimento: UnicodeString;
begin
  Result := ChildNodes['statusSolicitacaoProcedimento'].Text;
end;

procedure TXMLCt_itemSolicitacao.Set_StatusSolicitacaoProcedimento(Value: UnicodeString);
begin
  ChildNodes['statusSolicitacaoProcedimento'].NodeValue := Value;
end;

function TXMLCt_itemSolicitacao.Get_Glosas: IXMLCt_itemSolicitacao_glosas;
begin
  Result := ChildNodes['glosas'] as IXMLCt_itemSolicitacao_glosas;
end;

function TXMLCt_itemSolicitacao.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_itemSolicitacao.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_itemSolicitacao_glosas }

procedure TXMLCt_itemSolicitacao_glosas.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', TXMLCt_motivoGlosa);
  ItemTag := 'motivoGlosa';
  ItemInterface := IXMLCt_motivoGlosa;
  inherited;
end;

function TXMLCt_itemSolicitacao_glosas.Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := List[Index] as IXMLCt_motivoGlosa;
end;

function TXMLCt_itemSolicitacao_glosas.Add: IXMLCt_motivoGlosa;
begin
  Result := AddItem(-1) as IXMLCt_motivoGlosa;
end;

function TXMLCt_itemSolicitacao_glosas.Insert(const Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := AddItem(Index) as IXMLCt_motivoGlosa;
end;

{ TXMLCt_statusLote_guias_detalheguiaOdonto }

procedure TXMLCt_statusLote_guias_detalheguiaOdonto.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuia', TXMLCt_cabecalhoGuia);
  RegisterChildNode('procedimentosAnalisados', TXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados);
  inherited;
end;

function TXMLCt_statusLote_guias_detalheguiaOdonto.Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuia'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_statusLote_guias_detalheguiaOdonto.Get_ProcedimentosAnalisados: IXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados;
begin
  Result := ChildNodes['procedimentosAnalisados'] as IXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados;
end;

{ TXMLCt_statusLote_guias_detalheguiaOdontoList }

function TXMLCt_statusLote_guias_detalheguiaOdontoList.Add: IXMLCt_statusLote_guias_detalheguiaOdonto;
begin
  Result := AddItem(-1) as IXMLCt_statusLote_guias_detalheguiaOdonto;
end;

function TXMLCt_statusLote_guias_detalheguiaOdontoList.Insert(const Index: Integer): IXMLCt_statusLote_guias_detalheguiaOdonto;
begin
  Result := AddItem(Index) as IXMLCt_statusLote_guias_detalheguiaOdonto;
end;

function TXMLCt_statusLote_guias_detalheguiaOdontoList.Get_Item(Index: Integer): IXMLCt_statusLote_guias_detalheguiaOdonto;
begin
  Result := List[Index] as IXMLCt_statusLote_guias_detalheguiaOdonto;
end;

{ TXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados }

procedure TXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_itemSolicitacaoOdonto);
  ItemTag := 'procedimento';
  ItemInterface := IXMLCt_itemSolicitacaoOdonto;
  inherited;
end;

function TXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados.Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacaoOdonto;
begin
  Result := List[Index] as IXMLCt_itemSolicitacaoOdonto;
end;

function TXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados.Add: IXMLCt_itemSolicitacaoOdonto;
begin
  Result := AddItem(-1) as IXMLCt_itemSolicitacaoOdonto;
end;

function TXMLCt_statusLote_guias_detalheguiaOdonto_procedimentosAnalisados.Insert(const Index: Integer): IXMLCt_itemSolicitacaoOdonto;
begin
  Result := AddItem(Index) as IXMLCt_itemSolicitacaoOdonto;
end;

{ TXMLCt_itemSolicitacaoOdonto }

procedure TXMLCt_itemSolicitacaoOdonto.AfterConstruction;
begin
  RegisterChildNode('identificacaoProcedimentos', TXMLCt_tabela);
  RegisterChildNode('denteRegiao', TXMLCt_denteRegiao);
  RegisterChildNode('glosas', TXMLCt_itemSolicitacaoOdonto_glosas);
  inherited;
end;

function TXMLCt_itemSolicitacaoOdonto.Get_IdentificacaoProcedimentos: IXMLCt_tabela;
begin
  Result := ChildNodes['identificacaoProcedimentos'] as IXMLCt_tabela;
end;

function TXMLCt_itemSolicitacaoOdonto.Get_DenteRegiao: IXMLCt_denteRegiao;
begin
  Result := ChildNodes['denteRegiao'] as IXMLCt_denteRegiao;
end;

function TXMLCt_itemSolicitacaoOdonto.Get_Face: UnicodeString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure TXMLCt_itemSolicitacaoOdonto.Set_Face(Value: UnicodeString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

function TXMLCt_itemSolicitacaoOdonto.Get_QuantidadeSolicitada: UnicodeString;
begin
  Result := ChildNodes['quantidadeSolicitada'].Text;
end;

procedure TXMLCt_itemSolicitacaoOdonto.Set_QuantidadeSolicitada(Value: UnicodeString);
begin
  ChildNodes['quantidadeSolicitada'].NodeValue := Value;
end;

function TXMLCt_itemSolicitacaoOdonto.Get_QuantidadeAutorizada: UnicodeString;
begin
  Result := ChildNodes['quantidadeAutorizada'].Text;
end;

procedure TXMLCt_itemSolicitacaoOdonto.Set_QuantidadeAutorizada(Value: UnicodeString);
begin
  ChildNodes['quantidadeAutorizada'].NodeValue := Value;
end;

function TXMLCt_itemSolicitacaoOdonto.Get_Glosas: IXMLCt_itemSolicitacaoOdonto_glosas;
begin
  Result := ChildNodes['glosas'] as IXMLCt_itemSolicitacaoOdonto_glosas;
end;

function TXMLCt_itemSolicitacaoOdonto.Get_StatusSolicitacaoProcedimento: UnicodeString;
begin
  Result := ChildNodes['statusSolicitacaoProcedimento'].Text;
end;

procedure TXMLCt_itemSolicitacaoOdonto.Set_StatusSolicitacaoProcedimento(Value: UnicodeString);
begin
  ChildNodes['statusSolicitacaoProcedimento'].NodeValue := Value;
end;

function TXMLCt_itemSolicitacaoOdonto.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_itemSolicitacaoOdonto.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_itemSolicitacaoOdonto_glosas }

procedure TXMLCt_itemSolicitacaoOdonto_glosas.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', TXMLCt_motivoGlosa);
  ItemTag := 'motivoGlosa';
  ItemInterface := IXMLCt_motivoGlosa;
  inherited;
end;

function TXMLCt_itemSolicitacaoOdonto_glosas.Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := List[Index] as IXMLCt_motivoGlosa;
end;

function TXMLCt_itemSolicitacaoOdonto_glosas.Add: IXMLCt_motivoGlosa;
begin
  Result := AddItem(-1) as IXMLCt_motivoGlosa;
end;

function TXMLCt_itemSolicitacaoOdonto_glosas.Insert(const Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := AddItem(Index) as IXMLCt_motivoGlosa;
end;

{ TXMLCt_autorizacaoProcedimento }

procedure TXMLCt_autorizacaoProcedimento.AfterConstruction;
begin
  RegisterChildNode('identificacaoAutorizacao', TXMLCt_cabecalhoGuia);
  RegisterChildNode('motivoNegativa', TXMLCt_autorizacaoProcedimento_motivoNegativa);
  RegisterChildNode('beneficiario', TXMLCt_beneficiario);
  RegisterChildNode('prestadorAutorizado', TXMLCt_contratado);
  RegisterChildNode('dadosAutorizacao', TXMLCt_autorizacaoGuiaInternacao);
  RegisterChildNode('procedimentos', TXMLCt_autorizacaoProcedimento_procedimentos);
  inherited;
end;

function TXMLCt_autorizacaoProcedimento.Get_IdentificacaoAutorizacao: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoAutorizacao'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_autorizacaoProcedimento.Get_StatusSolicitacao: UnicodeString;
begin
  Result := ChildNodes['statusSolicitacao'].Text;
end;

procedure TXMLCt_autorizacaoProcedimento.Set_StatusSolicitacao(Value: UnicodeString);
begin
  ChildNodes['statusSolicitacao'].NodeValue := Value;
end;

function TXMLCt_autorizacaoProcedimento.Get_MotivoNegativa: IXMLCt_autorizacaoProcedimento_motivoNegativa;
begin
  Result := ChildNodes['motivoNegativa'] as IXMLCt_autorizacaoProcedimento_motivoNegativa;
end;

function TXMLCt_autorizacaoProcedimento.Get_Beneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_autorizacaoProcedimento.Get_PrestadorAutorizado: IXMLCt_contratado;
begin
  Result := ChildNodes['prestadorAutorizado'] as IXMLCt_contratado;
end;

function TXMLCt_autorizacaoProcedimento.Get_DadosAutorizacao: IXMLCt_autorizacaoGuiaInternacao;
begin
  Result := ChildNodes['dadosAutorizacao'] as IXMLCt_autorizacaoGuiaInternacao;
end;

function TXMLCt_autorizacaoProcedimento.Get_Procedimentos: IXMLCt_autorizacaoProcedimento_procedimentos;
begin
  Result := ChildNodes['procedimentos'] as IXMLCt_autorizacaoProcedimento_procedimentos;
end;

{ TXMLCt_autorizacaoProcedimento_motivoNegativa }

procedure TXMLCt_autorizacaoProcedimento_motivoNegativa.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', TXMLCt_motivoGlosa);
  ItemTag := 'motivoGlosa';
  ItemInterface := IXMLCt_motivoGlosa;
  inherited;
end;

function TXMLCt_autorizacaoProcedimento_motivoNegativa.Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := List[Index] as IXMLCt_motivoGlosa;
end;

function TXMLCt_autorizacaoProcedimento_motivoNegativa.Add: IXMLCt_motivoGlosa;
begin
  Result := AddItem(-1) as IXMLCt_motivoGlosa;
end;

function TXMLCt_autorizacaoProcedimento_motivoNegativa.Insert(const Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := AddItem(Index) as IXMLCt_motivoGlosa;
end;

{ TXMLCt_autorizacaoGuia }

function TXMLCt_autorizacaoGuia.Get_DataAutorizacao: UnicodeString;
begin
  Result := ChildNodes['dataAutorizacao'].Text;
end;

procedure TXMLCt_autorizacaoGuia.Set_DataAutorizacao(Value: UnicodeString);
begin
  ChildNodes['dataAutorizacao'].NodeValue := Value;
end;

function TXMLCt_autorizacaoGuia.Get_SenhaAutorizacao: UnicodeString;
begin
  Result := ChildNodes['senhaAutorizacao'].Text;
end;

procedure TXMLCt_autorizacaoGuia.Set_SenhaAutorizacao(Value: UnicodeString);
begin
  ChildNodes['senhaAutorizacao'].NodeValue := Value;
end;

function TXMLCt_autorizacaoGuia.Get_ValidadeSenha: UnicodeString;
begin
  Result := ChildNodes['validadeSenha'].Text;
end;

procedure TXMLCt_autorizacaoGuia.Set_ValidadeSenha(Value: UnicodeString);
begin
  ChildNodes['validadeSenha'].NodeValue := Value;
end;

{ TXMLCt_autorizacaoGuiaInternacao }

function TXMLCt_autorizacaoGuiaInternacao.Get_DiasAutorizado: Integer;
begin
  Result := ChildNodes['diasAutorizado'].NodeValue;
end;

procedure TXMLCt_autorizacaoGuiaInternacao.Set_DiasAutorizado(Value: Integer);
begin
  ChildNodes['diasAutorizado'].NodeValue := Value;
end;

function TXMLCt_autorizacaoGuiaInternacao.Get_DataProvavelAdmisHosp: UnicodeString;
begin
  Result := ChildNodes['dataProvavelAdmisHosp'].Text;
end;

procedure TXMLCt_autorizacaoGuiaInternacao.Set_DataProvavelAdmisHosp(Value: UnicodeString);
begin
  ChildNodes['dataProvavelAdmisHosp'].NodeValue := Value;
end;

function TXMLCt_autorizacaoGuiaInternacao.Get_TipoAcomodacao: UnicodeString;
begin
  Result := ChildNodes['tipoAcomodacao'].Text;
end;

procedure TXMLCt_autorizacaoGuiaInternacao.Set_TipoAcomodacao(Value: UnicodeString);
begin
  ChildNodes['tipoAcomodacao'].NodeValue := Value;
end;

{ TXMLCt_autorizacaoProcedimento_procedimentos }

procedure TXMLCt_autorizacaoProcedimento_procedimentos.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_itemSolicitacao);
  ItemTag := 'procedimento';
  ItemInterface := IXMLCt_itemSolicitacao;
  inherited;
end;

function TXMLCt_autorizacaoProcedimento_procedimentos.Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacao;
begin
  Result := List[Index] as IXMLCt_itemSolicitacao;
end;

function TXMLCt_autorizacaoProcedimento_procedimentos.Add: IXMLCt_itemSolicitacao;
begin
  Result := AddItem(-1) as IXMLCt_itemSolicitacao;
end;

function TXMLCt_autorizacaoProcedimento_procedimentos.Insert(const Index: Integer): IXMLCt_itemSolicitacao;
begin
  Result := AddItem(Index) as IXMLCt_itemSolicitacao;
end;

{ TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico }

procedure TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico.AfterConstruction;
begin
  RegisterChildNode('diariaProrrogacaoAutorizada', TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada);
  inherited;
end;

function TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico.Get_DiariaProrrogacaoAutorizada: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada;
begin
  Result := ChildNodes['diariaProrrogacaoAutorizada'] as IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada;
end;

{ TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList }

function TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList.Add: IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;
begin
  Result := AddItem(-1) as IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;
end;

function TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList.Insert(const Index: Integer): IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;
begin
  Result := AddItem(Index) as IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;
end;

function TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoList.Get_Item(Index: Integer): IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;
begin
  Result := List[Index] as IXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico;
end;

{ TXMLCt_diariaProrrogacao }

function TXMLCt_diariaProrrogacao.Get_TipoAcomodacao: UnicodeString;
begin
  Result := ChildNodes['tipoAcomodacao'].Text;
end;

procedure TXMLCt_diariaProrrogacao.Set_TipoAcomodacao(Value: UnicodeString);
begin
  ChildNodes['tipoAcomodacao'].NodeValue := Value;
end;

function TXMLCt_diariaProrrogacao.Get_QuantidadeDiaria: UnicodeString;
begin
  Result := ChildNodes['quantidadeDiaria'].Text;
end;

procedure TXMLCt_diariaProrrogacao.Set_QuantidadeDiaria(Value: UnicodeString);
begin
  ChildNodes['quantidadeDiaria'].NodeValue := Value;
end;

{ TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada }

procedure TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', TXMLCt_motivoGlosa);
  inherited;
end;

function TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada.Get_TipoAcomodacaoAutorizada: UnicodeString;
begin
  Result := ChildNodes['tipoAcomodacaoAutorizada'].Text;
end;

procedure TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada.Set_TipoAcomodacaoAutorizada(Value: UnicodeString);
begin
  ChildNodes['tipoAcomodacaoAutorizada'].NodeValue := Value;
end;

function TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada.Get_QuantidadeAutorizada: UnicodeString;
begin
  Result := ChildNodes['quantidadeAutorizada'].Text;
end;

procedure TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada.Set_QuantidadeAutorizada(Value: UnicodeString);
begin
  ChildNodes['quantidadeAutorizada'].NodeValue := Value;
end;

function TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServico_diariaProrrogacaoAutorizada.Get_MotivoGlosa: IXMLCt_motivoGlosa;
begin
  Result := ChildNodes['motivoGlosa'] as IXMLCt_motivoGlosa;
end;

{ TXMLCt_autorizacaoProcedimentoOdonto }

procedure TXMLCt_autorizacaoProcedimentoOdonto.AfterConstruction;
begin
  RegisterChildNode('identificacaoAutorizacao', TXMLCt_cabecalhoGuia);
  RegisterChildNode('motivoNegativa', TXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa);
  RegisterChildNode('beneficiario', TXMLCt_beneficiario);
  RegisterChildNode('prestadorAutorizado', TXMLCt_contratado);
  RegisterChildNode('dadosAutorizacao', TXMLCt_autorizacaoGuiaInternacao);
  RegisterChildNode('procedimentos', TXMLCt_autorizacaoProcedimentoOdonto_procedimentos);
  RegisterChildNode('totalOdonto', TXMLCt_autorizacaoProcedimentoOdonto_totalOdonto);
  inherited;
end;

function TXMLCt_autorizacaoProcedimentoOdonto.Get_IdentificacaoAutorizacao: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoAutorizacao'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_autorizacaoProcedimentoOdonto.Get_StatusSolicitacao: UnicodeString;
begin
  Result := ChildNodes['statusSolicitacao'].Text;
end;

procedure TXMLCt_autorizacaoProcedimentoOdonto.Set_StatusSolicitacao(Value: UnicodeString);
begin
  ChildNodes['statusSolicitacao'].NodeValue := Value;
end;

function TXMLCt_autorizacaoProcedimentoOdonto.Get_MotivoNegativa: IXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa;
begin
  Result := ChildNodes['motivoNegativa'] as IXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa;
end;

function TXMLCt_autorizacaoProcedimentoOdonto.Get_Beneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_autorizacaoProcedimentoOdonto.Get_PrestadorAutorizado: IXMLCt_contratado;
begin
  Result := ChildNodes['prestadorAutorizado'] as IXMLCt_contratado;
end;

function TXMLCt_autorizacaoProcedimentoOdonto.Get_DadosAutorizacao: IXMLCt_autorizacaoGuiaInternacao;
begin
  Result := ChildNodes['dadosAutorizacao'] as IXMLCt_autorizacaoGuiaInternacao;
end;

function TXMLCt_autorizacaoProcedimentoOdonto.Get_Procedimentos: IXMLCt_autorizacaoProcedimentoOdonto_procedimentos;
begin
  Result := ChildNodes['procedimentos'] as IXMLCt_autorizacaoProcedimentoOdonto_procedimentos;
end;

function TXMLCt_autorizacaoProcedimentoOdonto.Get_TotalOdonto: IXMLCt_autorizacaoProcedimentoOdonto_totalOdonto;
begin
  Result := ChildNodes['totalOdonto'] as IXMLCt_autorizacaoProcedimentoOdonto_totalOdonto;
end;

{ TXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa }

procedure TXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', TXMLCt_motivoGlosa);
  ItemTag := 'motivoGlosa';
  ItemInterface := IXMLCt_motivoGlosa;
  inherited;
end;

function TXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa.Get_MotivoGlosa(Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := List[Index] as IXMLCt_motivoGlosa;
end;

function TXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa.Add: IXMLCt_motivoGlosa;
begin
  Result := AddItem(-1) as IXMLCt_motivoGlosa;
end;

function TXMLCt_autorizacaoProcedimentoOdonto_motivoNegativa.Insert(const Index: Integer): IXMLCt_motivoGlosa;
begin
  Result := AddItem(Index) as IXMLCt_motivoGlosa;
end;

{ TXMLCt_autorizacaoProcedimentoOdonto_procedimentos }

procedure TXMLCt_autorizacaoProcedimentoOdonto_procedimentos.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_itemSolicitacaoOdonto);
  ItemTag := 'procedimento';
  ItemInterface := IXMLCt_itemSolicitacaoOdonto;
  inherited;
end;

function TXMLCt_autorizacaoProcedimentoOdonto_procedimentos.Get_Procedimento(Index: Integer): IXMLCt_itemSolicitacaoOdonto;
begin
  Result := List[Index] as IXMLCt_itemSolicitacaoOdonto;
end;

function TXMLCt_autorizacaoProcedimentoOdonto_procedimentos.Add: IXMLCt_itemSolicitacaoOdonto;
begin
  Result := AddItem(-1) as IXMLCt_itemSolicitacaoOdonto;
end;

function TXMLCt_autorizacaoProcedimentoOdonto_procedimentos.Insert(const Index: Integer): IXMLCt_itemSolicitacaoOdonto;
begin
  Result := AddItem(Index) as IXMLCt_itemSolicitacaoOdonto;
end;

{ TXMLCt_autorizacaoProcedimentoOdonto_totalOdonto }

function TXMLCt_autorizacaoProcedimentoOdonto_totalOdonto.Get_Totalvalor: UnicodeString;
begin
  Result := ChildNodes['totalvalor'].Text;
end;

procedure TXMLCt_autorizacaoProcedimentoOdonto_totalOdonto.Set_Totalvalor(Value: UnicodeString);
begin
  ChildNodes['totalvalor'].NodeValue := Value;
end;

function TXMLCt_autorizacaoProcedimentoOdonto_totalOdonto.Get_TotalFranquiaCoparticipacao: UnicodeString;
begin
  Result := ChildNodes['totalFranquiaCoparticipacao'].Text;
end;

procedure TXMLCt_autorizacaoProcedimentoOdonto_totalOdonto.Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
begin
  ChildNodes['totalFranquiaCoparticipacao'].NodeValue := Value;
end;

function TXMLCt_autorizacaoProcedimentoOdonto_totalOdonto.Get_TotalquantidadeUS: UnicodeString;
begin
  Result := ChildNodes['totalquantidadeUS'].Text;
end;

procedure TXMLCt_autorizacaoProcedimentoOdonto_totalOdonto.Set_TotalquantidadeUS(Value: UnicodeString);
begin
  ChildNodes['totalquantidadeUS'].NodeValue := Value;
end;

{ TXMLMensagemTISS_operadoraParaPrestador_autorizacaoServicoOdonto }

{ TXMLCt_situacaoAutorizacao }

procedure TXMLCt_situacaoAutorizacao.AfterConstruction;
begin
  RegisterChildNode('dadosAutorizacao', TXMLCt_situacaoAutorizacao_dadosAutorizacao);
  ItemTag := 'dadosAutorizacao';
  ItemInterface := IXMLCt_situacaoAutorizacao_dadosAutorizacao;
  inherited;
end;

function TXMLCt_situacaoAutorizacao.Get_DadosAutorizacao(Index: Integer): IXMLCt_situacaoAutorizacao_dadosAutorizacao;
begin
  Result := List[Index] as IXMLCt_situacaoAutorizacao_dadosAutorizacao;
end;

function TXMLCt_situacaoAutorizacao.Add: IXMLCt_situacaoAutorizacao_dadosAutorizacao;
begin
  Result := AddItem(-1) as IXMLCt_situacaoAutorizacao_dadosAutorizacao;
end;

function TXMLCt_situacaoAutorizacao.Insert(const Index: Integer): IXMLCt_situacaoAutorizacao_dadosAutorizacao;
begin
  Result := AddItem(Index) as IXMLCt_situacaoAutorizacao_dadosAutorizacao;
end;

{ TXMLCt_situacaoAutorizacao_dadosAutorizacao }

procedure TXMLCt_situacaoAutorizacao_dadosAutorizacao.AfterConstruction;
begin
  RegisterChildNode('totalOdonto', TXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto);
  RegisterChildNode('ct_diariaProrrogacaoAutorizada', TXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada);
  inherited;
end;

function TXMLCt_situacaoAutorizacao_dadosAutorizacao.Get_TotalOdonto: IXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto;
begin
  Result := ChildNodes['totalOdonto'] as IXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto;
end;

function TXMLCt_situacaoAutorizacao_dadosAutorizacao.Get_Ct_diariaProrrogacaoAutorizada: IXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada;
begin
  Result := ChildNodes['ct_diariaProrrogacaoAutorizada'] as IXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada;
end;

{ TXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto }

function TXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto.Get_Totalvalor: UnicodeString;
begin
  Result := ChildNodes['totalvalor'].Text;
end;

procedure TXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto.Set_Totalvalor(Value: UnicodeString);
begin
  ChildNodes['totalvalor'].NodeValue := Value;
end;

function TXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto.Get_TotalFranquiaCoparticipacao: UnicodeString;
begin
  Result := ChildNodes['totalFranquiaCoparticipacao'].Text;
end;

procedure TXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto.Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
begin
  ChildNodes['totalFranquiaCoparticipacao'].NodeValue := Value;
end;

function TXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto.Get_TotalquantidadeUS: UnicodeString;
begin
  Result := ChildNodes['totalquantidadeUS'].Text;
end;

procedure TXMLCt_situacaoAutorizacao_dadosAutorizacao_totalOdonto.Set_TotalquantidadeUS(Value: UnicodeString);
begin
  ChildNodes['totalquantidadeUS'].NodeValue := Value;
end;

{ TXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada }

procedure TXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', TXMLCt_motivoGlosa);
  inherited;
end;

function TXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada.Get_TipoAcomodacaoAutorizada: UnicodeString;
begin
  Result := ChildNodes['tipoAcomodacaoAutorizada'].Text;
end;

procedure TXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada.Set_TipoAcomodacaoAutorizada(Value: UnicodeString);
begin
  ChildNodes['tipoAcomodacaoAutorizada'].NodeValue := Value;
end;

function TXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada.Get_QuantidadeAutorizada: UnicodeString;
begin
  Result := ChildNodes['quantidadeAutorizada'].Text;
end;

procedure TXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada.Set_QuantidadeAutorizada(Value: UnicodeString);
begin
  ChildNodes['quantidadeAutorizada'].NodeValue := Value;
end;

function TXMLCt_situacaoAutorizacao_dadosAutorizacao_ct_diariaProrrogacaoAutorizada.Get_MotivoGlosa: IXMLCt_motivoGlosa;
begin
  Result := ChildNodes['motivoGlosa'] as IXMLCt_motivoGlosa;
end;

{ TXMLCt_retornoElegibilidade }

procedure TXMLCt_retornoElegibilidade.AfterConstruction;
begin
  RegisterChildNode('dadosOperadora', TXMLCt_identificacaoFontePagadora);
  RegisterChildNode('dadosBeneficiario', TXMLCt_beneficiario);
  RegisterChildNode('motivoNegacao', TXMLCt_motivoGlosa);
  inherited;
end;

function TXMLCt_retornoElegibilidade.Get_DadosOperadora: IXMLCt_identificacaoFontePagadora;
begin
  Result := ChildNodes['dadosOperadora'] as IXMLCt_identificacaoFontePagadora;
end;

function TXMLCt_retornoElegibilidade.Get_DadosBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_retornoElegibilidade.Get_RespostaSolicitacao: Boolean;
begin
  Result := ChildNodes['respostaSolicitacao'].NodeValue;
end;

procedure TXMLCt_retornoElegibilidade.Set_RespostaSolicitacao(Value: Boolean);
begin
  ChildNodes['respostaSolicitacao'].NodeValue := Value;
end;

function TXMLCt_retornoElegibilidade.Get_MotivoNegacao: IXMLCt_motivoGlosa;
begin
  Result := ChildNodes['motivoNegacao'] as IXMLCt_motivoGlosa;
end;

{ TXMLCt_reciboCancelaGuia }

procedure TXMLCt_reciboCancelaGuia.AfterConstruction;
begin
  RegisterChildNode('operadora', TXMLCt_identificacaoFontePagadora);
  RegisterChildNode('guiasCanceladas', TXMLCt_reciboCancelaGuia_guiasCanceladas);
  inherited;
end;

function TXMLCt_reciboCancelaGuia.Get_Operadora: IXMLCt_identificacaoFontePagadora;
begin
  Result := ChildNodes['operadora'] as IXMLCt_identificacaoFontePagadora;
end;

function TXMLCt_reciboCancelaGuia.Get_GuiasCanceladas: IXMLCt_reciboCancelaGuia_guiasCanceladas;
begin
  Result := ChildNodes['guiasCanceladas'] as IXMLCt_reciboCancelaGuia_guiasCanceladas;
end;

{ TXMLCt_reciboCancelaGuia_guiasCanceladas }

procedure TXMLCt_reciboCancelaGuia_guiasCanceladas.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', TXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
  inherited;
end;

function TXMLCt_reciboCancelaGuia_guiasCanceladas.Get_DadosGuia(Index: Integer): IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
begin
  Result := List[Index] as IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
end;

function TXMLCt_reciboCancelaGuia_guiasCanceladas.Add: IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
begin
  Result := AddItem(-1) as IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
end;

function TXMLCt_reciboCancelaGuia_guiasCanceladas.Insert(const Index: Integer): IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
begin
  Result := AddItem(Index) as IXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia;
end;

{ TXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia }

function TXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia.Get_StatusCancelamento: UnicodeString;
begin
  Result := ChildNodes['statusCancelamento'].Text;
end;

procedure TXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia.Set_StatusCancelamento(Value: UnicodeString);
begin
  ChildNodes['statusCancelamento'].NodeValue := Value;
end;

function TXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_reciboCancelaGuia_guiasCanceladas_dadosGuia.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLMensagemTISS_prestadorParaOperadora }

procedure TXMLMensagemTISS_prestadorParaOperadora.AfterConstruction;
begin
  RegisterChildNode('loteGuias', TXMLCt_loteGuias);
  RegisterChildNode('loteAnexo', TXMLCt_loteAnexo);
  RegisterChildNode('solicitacaoDemonstrativoRetorno', TXMLCt_solicitacaoDemonstrativoPagamento);
  RegisterChildNode('solicitacaoStatusProtocolo', TXMLCt_solicitacaoStatusProtocolo);
  RegisterChildNode('solicitacaoProcedimento', TXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento);
  RegisterChildNode('solicitaStatusAutorizacao', TXMLCt_solicitaStatusAutorizacao);
  RegisterChildNode('verificaElegibilidade', TXMLCt_solicitaElegibilidade);
  RegisterChildNode('cancelaGuia', TXMLCt_cancelaGuia);
  inherited;
end;

function TXMLMensagemTISS_prestadorParaOperadora.Get_LoteGuias: IXMLCt_loteGuias;
begin
  Result := ChildNodes['loteGuias'] as IXMLCt_loteGuias;
end;

function TXMLMensagemTISS_prestadorParaOperadora.Get_LoteAnexo: IXMLCt_loteAnexo;
begin
  Result := ChildNodes['loteAnexo'] as IXMLCt_loteAnexo;
end;

function TXMLMensagemTISS_prestadorParaOperadora.Get_SolicitacaoDemonstrativoRetorno: IXMLCt_solicitacaoDemonstrativoPagamento;
begin
  Result := ChildNodes['solicitacaoDemonstrativoRetorno'] as IXMLCt_solicitacaoDemonstrativoPagamento;
end;

function TXMLMensagemTISS_prestadorParaOperadora.Get_SolicitacaoStatusProtocolo: IXMLCt_solicitacaoStatusProtocolo;
begin
  Result := ChildNodes['solicitacaoStatusProtocolo'] as IXMLCt_solicitacaoStatusProtocolo;
end;

function TXMLMensagemTISS_prestadorParaOperadora.Get_SolicitacaoProcedimento: IXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento;
begin
  Result := ChildNodes['solicitacaoProcedimento'] as IXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento;
end;

function TXMLMensagemTISS_prestadorParaOperadora.Get_SolicitaStatusAutorizacao: IXMLCt_solicitaStatusAutorizacao;
begin
  Result := ChildNodes['solicitaStatusAutorizacao'] as IXMLCt_solicitaStatusAutorizacao;
end;

function TXMLMensagemTISS_prestadorParaOperadora.Get_VerificaElegibilidade: IXMLCt_solicitaElegibilidade;
begin
  Result := ChildNodes['verificaElegibilidade'] as IXMLCt_solicitaElegibilidade;
end;

function TXMLMensagemTISS_prestadorParaOperadora.Get_CancelaGuia: IXMLCt_cancelaGuia;
begin
  Result := ChildNodes['cancelaGuia'] as IXMLCt_cancelaGuia;
end;

{ TXMLCt_loteGuias }

procedure TXMLCt_loteGuias.AfterConstruction;
begin
  RegisterChildNode('guias', TXMLCt_loteGuias_guias);
  inherited;
end;

function TXMLCt_loteGuias.Get_NumeroLote: Integer;
begin
  Result := ChildNodes['numeroLote'].NodeValue;
end;

procedure TXMLCt_loteGuias.Set_NumeroLote(Value: Integer);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function TXMLCt_loteGuias.Get_Guias: IXMLCt_loteGuias_guias;
begin
  Result := ChildNodes['guias'] as IXMLCt_loteGuias_guias;
end;

{ TXMLCt_guias }

procedure TXMLCt_guias.AfterConstruction;
begin
  RegisterChildNode('guiaFaturamento', TXMLCt_guias_guiaFaturamento);
  RegisterChildNode('guiaRevisaoGlosa', TXMLCt_guias_guiaRevisaoGlosa);
  inherited;
end;

function TXMLCt_guias.Get_GuiaFaturamento: IXMLCt_guias_guiaFaturamento;
begin
  Result := ChildNodes['guiaFaturamento'] as IXMLCt_guias_guiaFaturamento;
end;

function TXMLCt_guias.Get_GuiaRevisaoGlosa: IXMLCt_guias_guiaRevisaoGlosa;
begin
  Result := ChildNodes['guiaRevisaoGlosa'] as IXMLCt_guias_guiaRevisaoGlosa;
end;

{ TXMLCt_guias_guiaFaturamento }

procedure TXMLCt_guias_guiaFaturamento.AfterConstruction;
begin
  RegisterChildNode('guiaConsulta', TXMLCt_guiaConsulta);
  RegisterChildNode('guiaSP_SADT', TXMLCt_guiaSP_SADT);
  RegisterChildNode('guiaResumoInternacao', TXMLCt_guiaResumoInternacao);
  RegisterChildNode('guiaHonorarioIndividual', TXMLCt_guiaHonorarioIndividual);
  RegisterChildNode('guiaOdontologia', TXMLCt_guiaOdontologia);
  FGuiaConsulta := CreateCollection(TXMLCt_guiaConsultaList, IXMLCt_guiaConsulta, 'guiaConsulta') as IXMLCt_guiaConsultaList;
  FGuiaSP_SADT := CreateCollection(TXMLCt_guiaSP_SADTList, IXMLCt_guiaSP_SADT, 'guiaSP_SADT') as IXMLCt_guiaSP_SADTList;
  FGuiaResumoInternacao := CreateCollection(TXMLCt_guiaResumoInternacaoList, IXMLCt_guiaResumoInternacao, 'guiaResumoInternacao') as IXMLCt_guiaResumoInternacaoList;
  FGuiaHonorarioIndividual := CreateCollection(TXMLCt_guiaHonorarioIndividualList, IXMLCt_guiaHonorarioIndividual, 'guiaHonorarioIndividual') as IXMLCt_guiaHonorarioIndividualList;
  FGuiaOdontologia := CreateCollection(TXMLCt_guiaOdontologiaList, IXMLCt_guiaOdontologia, 'guiaOdontologia') as IXMLCt_guiaOdontologiaList;
  inherited;
end;

function TXMLCt_guias_guiaFaturamento.Get_GuiaConsulta: IXMLCt_guiaConsultaList;
begin
  Result := FGuiaConsulta;
end;

function TXMLCt_guias_guiaFaturamento.Get_GuiaSP_SADT: IXMLCt_guiaSP_SADTList;
begin
  Result := FGuiaSP_SADT;
end;

function TXMLCt_guias_guiaFaturamento.Get_GuiaResumoInternacao: IXMLCt_guiaResumoInternacaoList;
begin
  Result := FGuiaResumoInternacao;
end;

function TXMLCt_guias_guiaFaturamento.Get_GuiaHonorarioIndividual: IXMLCt_guiaHonorarioIndividualList;
begin
  Result := FGuiaHonorarioIndividual;
end;

function TXMLCt_guias_guiaFaturamento.Get_GuiaOdontologia: IXMLCt_guiaOdontologiaList;
begin
  Result := FGuiaOdontologia;
end;

{ TXMLCt_guiaConsulta }

procedure TXMLCt_guiaConsulta.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuia', TXMLCt_cabecalhoGuia);
  RegisterChildNode('beneficiario', TXMLCt_beneficiario);
  RegisterChildNode('dadosContratado', TXMLCt_contratado);
  RegisterChildNode('profissionalExecutante', TXMLCt_identificacaoProfissional);
  RegisterChildNode('hipoteseDiagnostica', TXMLCt_guiaConsulta_hipoteseDiagnostica);
  RegisterChildNode('dadosAtendimento', TXMLCt_guiaConsulta_dadosAtendimento);
  inherited;
end;

function TXMLCt_guiaConsulta.Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuia'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_guiaConsulta.Get_Beneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_guiaConsulta.Get_DadosContratado: IXMLCt_contratado;
begin
  Result := ChildNodes['dadosContratado'] as IXMLCt_contratado;
end;

function TXMLCt_guiaConsulta.Get_ProfissionalExecutante: IXMLCt_identificacaoProfissional;
begin
  Result := ChildNodes['profissionalExecutante'] as IXMLCt_identificacaoProfissional;
end;

function TXMLCt_guiaConsulta.Get_HipoteseDiagnostica: IXMLCt_guiaConsulta_hipoteseDiagnostica;
begin
  Result := ChildNodes['hipoteseDiagnostica'] as IXMLCt_guiaConsulta_hipoteseDiagnostica;
end;

function TXMLCt_guiaConsulta.Get_DadosAtendimento: IXMLCt_guiaConsulta_dadosAtendimento;
begin
  Result := ChildNodes['dadosAtendimento'] as IXMLCt_guiaConsulta_dadosAtendimento;
end;

function TXMLCt_guiaConsulta.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaConsulta.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaConsultaList }

function TXMLCt_guiaConsultaList.Add: IXMLCt_guiaConsulta;
begin
  Result := AddItem(-1) as IXMLCt_guiaConsulta;
end;

function TXMLCt_guiaConsultaList.Insert(const Index: Integer): IXMLCt_guiaConsulta;
begin
  Result := AddItem(Index) as IXMLCt_guiaConsulta;
end;

function TXMLCt_guiaConsultaList.Get_Item(Index: Integer): IXMLCt_guiaConsulta;
begin
  Result := List[Index] as IXMLCt_guiaConsulta;
end;

{ TXMLCt_identificacaoProfissional }

procedure TXMLCt_identificacaoProfissional.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', TXMLCt_conselhoProfissional);
  inherited;
end;

function TXMLCt_identificacaoProfissional.Get_NomeProfissional: UnicodeString;
begin
  Result := ChildNodes['nomeProfissional'].Text;
end;

procedure TXMLCt_identificacaoProfissional.Set_NomeProfissional(Value: UnicodeString);
begin
  ChildNodes['nomeProfissional'].NodeValue := Value;
end;

function TXMLCt_identificacaoProfissional.Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as IXMLCt_conselhoProfissional;
end;

function TXMLCt_identificacaoProfissional.Get_Cbos: UnicodeString;
begin
  Result := ChildNodes['cbos'].Text;
end;

procedure TXMLCt_identificacaoProfissional.Set_Cbos(Value: UnicodeString);
begin
  ChildNodes['cbos'].NodeValue := Value;
end;

{ TXMLCt_conselhoProfissional }

function TXMLCt_conselhoProfissional.Get_SiglaConselho: UnicodeString;
begin
  Result := ChildNodes['siglaConselho'].Text;
end;

procedure TXMLCt_conselhoProfissional.Set_SiglaConselho(Value: UnicodeString);
begin
  ChildNodes['siglaConselho'].NodeValue := Value;
end;

function TXMLCt_conselhoProfissional.Get_NumeroConselho: UnicodeString;
begin
  Result := ChildNodes['numeroConselho'].Text;
end;

procedure TXMLCt_conselhoProfissional.Set_NumeroConselho(Value: UnicodeString);
begin
  ChildNodes['numeroConselho'].NodeValue := Value;
end;

function TXMLCt_conselhoProfissional.Get_UfConselho: UnicodeString;
begin
  Result := ChildNodes['ufConselho'].Text;
end;

procedure TXMLCt_conselhoProfissional.Set_UfConselho(Value: UnicodeString);
begin
  ChildNodes['ufConselho'].NodeValue := Value;
end;

{ TXMLCt_diagnosticoAtendimento }

procedure TXMLCt_diagnosticoAtendimento.AfterConstruction;
begin
  RegisterChildNode('CID', TXMLCt_diagnostico);
  RegisterChildNode('tempoReferidoEvolucaoDoenca', TXMLCt_tempoEvolucaoDoenca);
  inherited;
end;

function TXMLCt_diagnosticoAtendimento.Get_CID: IXMLCt_diagnostico;
begin
  Result := ChildNodes['CID'] as IXMLCt_diagnostico;
end;

function TXMLCt_diagnosticoAtendimento.Get_TipoDoenca: UnicodeString;
begin
  Result := ChildNodes['tipoDoenca'].Text;
end;

procedure TXMLCt_diagnosticoAtendimento.Set_TipoDoenca(Value: UnicodeString);
begin
  ChildNodes['tipoDoenca'].NodeValue := Value;
end;

function TXMLCt_diagnosticoAtendimento.Get_TempoReferidoEvolucaoDoenca: IXMLCt_tempoEvolucaoDoenca;
begin
  Result := ChildNodes['tempoReferidoEvolucaoDoenca'] as IXMLCt_tempoEvolucaoDoenca;
end;

function TXMLCt_diagnosticoAtendimento.Get_IndicadorAcidente: UnicodeString;
begin
  Result := ChildNodes['indicadorAcidente'].Text;
end;

procedure TXMLCt_diagnosticoAtendimento.Set_IndicadorAcidente(Value: UnicodeString);
begin
  ChildNodes['indicadorAcidente'].NodeValue := Value;
end;

{ TXMLCt_diagnostico }

function TXMLCt_diagnostico.Get_NomeTabela: UnicodeString;
begin
  Result := ChildNodes['nomeTabela'].Text;
end;

procedure TXMLCt_diagnostico.Set_NomeTabela(Value: UnicodeString);
begin
  ChildNodes['nomeTabela'].NodeValue := Value;
end;

function TXMLCt_diagnostico.Get_CodigoDiagnostico: UnicodeString;
begin
  Result := ChildNodes['codigoDiagnostico'].Text;
end;

procedure TXMLCt_diagnostico.Set_CodigoDiagnostico(Value: UnicodeString);
begin
  ChildNodes['codigoDiagnostico'].NodeValue := Value;
end;

function TXMLCt_diagnostico.Get_DescricaoDiagnostico: UnicodeString;
begin
  Result := ChildNodes['descricaoDiagnostico'].Text;
end;

procedure TXMLCt_diagnostico.Set_DescricaoDiagnostico(Value: UnicodeString);
begin
  ChildNodes['descricaoDiagnostico'].NodeValue := Value;
end;

{ TXMLCt_tempoEvolucaoDoenca }

function TXMLCt_tempoEvolucaoDoenca.Get_Valor: Integer;
begin
  Result := ChildNodes['valor'].NodeValue;
end;

procedure TXMLCt_tempoEvolucaoDoenca.Set_Valor(Value: Integer);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function TXMLCt_tempoEvolucaoDoenca.Get_UnidadeTempo: UnicodeString;
begin
  Result := ChildNodes['unidadeTempo'].Text;
end;

procedure TXMLCt_tempoEvolucaoDoenca.Set_UnidadeTempo(Value: UnicodeString);
begin
  ChildNodes['unidadeTempo'].NodeValue := Value;
end;

{ TXMLCt_guiaConsulta_hipoteseDiagnostica }

procedure TXMLCt_guiaConsulta_hipoteseDiagnostica.AfterConstruction;
begin
  RegisterChildNode('diagnosticoSecundario', TXMLCt_diagnosticosSecundarios);
  inherited;
end;

function TXMLCt_guiaConsulta_hipoteseDiagnostica.Get_DiagnosticoSecundario: IXMLCt_diagnosticosSecundarios;
begin
  Result := ChildNodes['diagnosticoSecundario'] as IXMLCt_diagnosticosSecundarios;
end;

{ TXMLCt_diagnosticosSecundarios }

procedure TXMLCt_diagnosticosSecundarios.AfterConstruction;
begin
  RegisterChildNode('CID', TXMLCt_diagnostico);
  ItemTag := 'CID';
  ItemInterface := IXMLCt_diagnostico;
  inherited;
end;

function TXMLCt_diagnosticosSecundarios.Get_CID(Index: Integer): IXMLCt_diagnostico;
begin
  Result := List[Index] as IXMLCt_diagnostico;
end;

function TXMLCt_diagnosticosSecundarios.Add: IXMLCt_diagnostico;
begin
  Result := AddItem(-1) as IXMLCt_diagnostico;
end;

function TXMLCt_diagnosticosSecundarios.Insert(const Index: Integer): IXMLCt_diagnostico;
begin
  Result := AddItem(Index) as IXMLCt_diagnostico;
end;

{ TXMLCt_atendimentoConsulta }

procedure TXMLCt_atendimentoConsulta.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_atendimentoConsulta_procedimento);
  inherited;
end;

function TXMLCt_atendimentoConsulta.Get_DataAtendimento: UnicodeString;
begin
  Result := ChildNodes['dataAtendimento'].Text;
end;

procedure TXMLCt_atendimentoConsulta.Set_DataAtendimento(Value: UnicodeString);
begin
  ChildNodes['dataAtendimento'].NodeValue := Value;
end;

function TXMLCt_atendimentoConsulta.Get_Procedimento: IXMLCt_atendimentoConsulta_procedimento;
begin
  Result := ChildNodes['procedimento'] as IXMLCt_atendimentoConsulta_procedimento;
end;

function TXMLCt_atendimentoConsulta.Get_TipoConsulta: UnicodeString;
begin
  Result := ChildNodes['tipoConsulta'].Text;
end;

procedure TXMLCt_atendimentoConsulta.Set_TipoConsulta(Value: UnicodeString);
begin
  ChildNodes['tipoConsulta'].NodeValue := Value;
end;

function TXMLCt_atendimentoConsulta.Get_TipoSaida: UnicodeString;
begin
  Result := ChildNodes['tipoSaida'].Text;
end;

procedure TXMLCt_atendimentoConsulta.Set_TipoSaida(Value: UnicodeString);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

{ TXMLCt_atendimentoConsulta_procedimento }

function TXMLCt_atendimentoConsulta_procedimento.Get_CodigoTabela: UnicodeString;
begin
  Result := ChildNodes['codigoTabela'].Text;
end;

procedure TXMLCt_atendimentoConsulta_procedimento.Set_CodigoTabela(Value: UnicodeString);
begin
  ChildNodes['codigoTabela'].NodeValue := Value;
end;

function TXMLCt_atendimentoConsulta_procedimento.Get_CodigoProcedimento: UnicodeString;
begin
  Result := ChildNodes['codigoProcedimento'].Text;
end;

procedure TXMLCt_atendimentoConsulta_procedimento.Set_CodigoProcedimento(Value: UnicodeString);
begin
  ChildNodes['codigoProcedimento'].NodeValue := Value;
end;

{ TXMLCt_guiaConsulta_dadosAtendimento }

{ TXMLCt_guiaSP_SADT }

procedure TXMLCt_guiaSP_SADT.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSADTSP', TXMLCt_cabecalhoGuia);
  RegisterChildNode('dadosAutorizacao', TXMLCt_autorizacaoGuia);
  RegisterChildNode('dadosBeneficiario', TXMLCt_beneficiario);
  RegisterChildNode('dadosSolicitante', TXMLCt_solicitante);
  RegisterChildNode('prestadorExecutante', TXMLCt_guiaSP_SADT_prestadorExecutante);
  RegisterChildNode('diagnosticoAtendimento', TXMLCt_diagnosticoAtendimento);
  RegisterChildNode('procedimentosRealizados', TXMLCt_procedimentoRealizadoEquipe);
  RegisterChildNode('outrasDespesas', TXMLCt_outrasDespesas);
  RegisterChildNode('OPMUtilizada', TXMLCt_OPMUtilizada);
  RegisterChildNode('valorTotal', TXMLCt_valorTotalServicos);
  inherited;
end;

function TXMLCt_guiaSP_SADT.Get_IdentificacaoGuiaSADTSP: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaSADTSP'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_guiaSP_SADT.Get_NumeroGuiaPrincipal: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure TXMLCt_guiaSP_SADT.Set_NumeroGuiaPrincipal(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADT.Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as IXMLCt_autorizacaoGuia;
end;

function TXMLCt_guiaSP_SADT.Get_DadosBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_guiaSP_SADT.Get_DadosSolicitante: IXMLCt_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as IXMLCt_solicitante;
end;

function TXMLCt_guiaSP_SADT.Get_PrestadorExecutante: IXMLCt_guiaSP_SADT_prestadorExecutante;
begin
  Result := ChildNodes['prestadorExecutante'] as IXMLCt_guiaSP_SADT_prestadorExecutante;
end;

function TXMLCt_guiaSP_SADT.Get_IndicacaoClinica: UnicodeString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure TXMLCt_guiaSP_SADT.Set_IndicacaoClinica(Value: UnicodeString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADT.Get_CaraterAtendimento: UnicodeString;
begin
  Result := ChildNodes['caraterAtendimento'].Text;
end;

procedure TXMLCt_guiaSP_SADT.Set_CaraterAtendimento(Value: UnicodeString);
begin
  ChildNodes['caraterAtendimento'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADT.Get_DataHoraAtendimento: UnicodeString;
begin
  Result := ChildNodes['dataHoraAtendimento'].Text;
end;

procedure TXMLCt_guiaSP_SADT.Set_DataHoraAtendimento(Value: UnicodeString);
begin
  ChildNodes['dataHoraAtendimento'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADT.Get_DiagnosticoAtendimento: IXMLCt_diagnosticoAtendimento;
begin
  Result := ChildNodes['diagnosticoAtendimento'] as IXMLCt_diagnosticoAtendimento;
end;

function TXMLCt_guiaSP_SADT.Get_TipoSaida: UnicodeString;
begin
  Result := ChildNodes['tipoSaida'].Text;
end;

procedure TXMLCt_guiaSP_SADT.Set_TipoSaida(Value: UnicodeString);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADT.Get_TipoAtendimento: UnicodeString;
begin
  Result := ChildNodes['tipoAtendimento'].Text;
end;

procedure TXMLCt_guiaSP_SADT.Set_TipoAtendimento(Value: UnicodeString);
begin
  ChildNodes['tipoAtendimento'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADT.Get_ProcedimentosRealizados: IXMLCt_procedimentoRealizadoEquipe;
begin
  Result := ChildNodes['procedimentosRealizados'] as IXMLCt_procedimentoRealizadoEquipe;
end;

function TXMLCt_guiaSP_SADT.Get_OutrasDespesas: IXMLCt_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as IXMLCt_outrasDespesas;
end;

function TXMLCt_guiaSP_SADT.Get_OPMUtilizada: IXMLCt_OPMUtilizada;
begin
  Result := ChildNodes['OPMUtilizada'] as IXMLCt_OPMUtilizada;
end;

function TXMLCt_guiaSP_SADT.Get_ValorTotal: IXMLCt_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as IXMLCt_valorTotalServicos;
end;

function TXMLCt_guiaSP_SADT.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaSP_SADT.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaSP_SADTList }

function TXMLCt_guiaSP_SADTList.Add: IXMLCt_guiaSP_SADT;
begin
  Result := AddItem(-1) as IXMLCt_guiaSP_SADT;
end;

function TXMLCt_guiaSP_SADTList.Insert(const Index: Integer): IXMLCt_guiaSP_SADT;
begin
  Result := AddItem(Index) as IXMLCt_guiaSP_SADT;
end;

function TXMLCt_guiaSP_SADTList.Get_Item(Index: Integer): IXMLCt_guiaSP_SADT;
begin
  Result := List[Index] as IXMLCt_guiaSP_SADT;
end;

{ TXMLCt_solicitante }

procedure TXMLCt_solicitante.AfterConstruction;
begin
  RegisterChildNode('contratado', TXMLCt_contratadoSolicitante);
  RegisterChildNode('profissional', TXMLCt_identificacaoProfissional);
  inherited;
end;

function TXMLCt_solicitante.Get_Contratado: IXMLCt_contratadoSolicitante;
begin
  Result := ChildNodes['contratado'] as IXMLCt_contratadoSolicitante;
end;

function TXMLCt_solicitante.Get_Profissional: IXMLCt_identificacaoProfissional;
begin
  Result := ChildNodes['profissional'] as IXMLCt_identificacaoProfissional;
end;

{ TXMLCt_contratadoSolicitante }

procedure TXMLCt_contratadoSolicitante.AfterConstruction;
begin
  RegisterChildNode('identificacao', TXMLCt_identificacaoPrestador);
  RegisterChildNode('enderecoContratado', TXMLCt_endereco);
  inherited;
end;

function TXMLCt_contratadoSolicitante.Get_Identificacao: IXMLCt_identificacaoPrestador;
begin
  Result := ChildNodes['identificacao'] as IXMLCt_identificacaoPrestador;
end;

function TXMLCt_contratadoSolicitante.Get_NomeContratado: UnicodeString;
begin
  Result := ChildNodes['nomeContratado'].Text;
end;

procedure TXMLCt_contratadoSolicitante.Set_NomeContratado(Value: UnicodeString);
begin
  ChildNodes['nomeContratado'].NodeValue := Value;
end;

function TXMLCt_contratadoSolicitante.Get_EnderecoContratado: IXMLCt_endereco;
begin
  Result := ChildNodes['enderecoContratado'] as IXMLCt_endereco;
end;

function TXMLCt_contratadoSolicitante.Get_NumeroCNES: UnicodeString;
begin
  Result := ChildNodes['numeroCNES'].Text;
end;

procedure TXMLCt_contratadoSolicitante.Set_NumeroCNES(Value: UnicodeString);
begin
  ChildNodes['numeroCNES'].NodeValue := Value;
end;

{ TXMLCt_identificacaoPrestador }

procedure TXMLCt_identificacaoPrestador.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', TXMLCt_conselhoProfissional);
  inherited;
end;

function TXMLCt_identificacaoPrestador.Get_CNPJ: UnicodeString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLCt_identificacaoPrestador.Set_CNPJ(Value: UnicodeString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLCt_identificacaoPrestador.Get_Cpf: UnicodeString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure TXMLCt_identificacaoPrestador.Set_Cpf(Value: UnicodeString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

function TXMLCt_identificacaoPrestador.Get_CodigoPrestadorNaOperadora: UnicodeString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure TXMLCt_identificacaoPrestador.Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

function TXMLCt_identificacaoPrestador.Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as IXMLCt_conselhoProfissional;
end;

{ TXMLCt_guiaSP_SADT_prestadorExecutante }

procedure TXMLCt_guiaSP_SADT_prestadorExecutante.AfterConstruction;
begin
  RegisterChildNode('profissionalExecutanteCompl', TXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl);
  inherited;
end;

function TXMLCt_guiaSP_SADT_prestadorExecutante.Get_ProfissionalExecutanteCompl: IXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl;
begin
  Result := ChildNodes['profissionalExecutanteCompl'] as IXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl;
end;

{ TXMLCt_profissionalExecutante }

procedure TXMLCt_profissionalExecutante.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', TXMLCt_conselhoProfissional);
  inherited;
end;

function TXMLCt_profissionalExecutante.Get_NomeExecutante: UnicodeString;
begin
  Result := ChildNodes['nomeExecutante'].Text;
end;

procedure TXMLCt_profissionalExecutante.Set_NomeExecutante(Value: UnicodeString);
begin
  ChildNodes['nomeExecutante'].NodeValue := Value;
end;

function TXMLCt_profissionalExecutante.Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as IXMLCt_conselhoProfissional;
end;

function TXMLCt_profissionalExecutante.Get_CodigoCBOS: UnicodeString;
begin
  Result := ChildNodes['codigoCBOS'].Text;
end;

procedure TXMLCt_profissionalExecutante.Set_CodigoCBOS(Value: UnicodeString);
begin
  ChildNodes['codigoCBOS'].NodeValue := Value;
end;

{ TXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl }

procedure TXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl.AfterConstruction;
begin
  RegisterChildNode('codigoProfissionalCompl', TXMLCt_identificacaoProfissionalCompl);
  inherited;
end;

function TXMLCt_guiaSP_SADT_prestadorExecutante_profissionalExecutanteCompl.Get_CodigoProfissionalCompl: IXMLCt_identificacaoProfissionalCompl;
begin
  Result := ChildNodes['codigoProfissionalCompl'] as IXMLCt_identificacaoProfissionalCompl;
end;

{ TXMLCt_identificacaoProfissionalCompl }

function TXMLCt_identificacaoProfissionalCompl.Get_Cpf: UnicodeString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure TXMLCt_identificacaoProfissionalCompl.Set_Cpf(Value: UnicodeString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

function TXMLCt_identificacaoProfissionalCompl.Get_CodigoPrestadorNaOperadora: UnicodeString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure TXMLCt_identificacaoProfissionalCompl.Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

{ TXMLCt_procedimentoRealizadoEquipe }

procedure TXMLCt_procedimentoRealizadoEquipe.AfterConstruction;
begin
  RegisterChildNode('procedimentos', TXMLCt_procedimentoRealizadoEquipe_procedimentos);
  ItemTag := 'procedimentos';
  ItemInterface := IXMLCt_procedimentoRealizadoEquipe_procedimentos;
  inherited;
end;

function TXMLCt_procedimentoRealizadoEquipe.Get_Procedimentos(Index: Integer): IXMLCt_procedimentoRealizadoEquipe_procedimentos;
begin
  Result := List[Index] as IXMLCt_procedimentoRealizadoEquipe_procedimentos;
end;

function TXMLCt_procedimentoRealizadoEquipe.Add: IXMLCt_procedimentoRealizadoEquipe_procedimentos;
begin
  Result := AddItem(-1) as IXMLCt_procedimentoRealizadoEquipe_procedimentos;
end;

function TXMLCt_procedimentoRealizadoEquipe.Insert(const Index: Integer): IXMLCt_procedimentoRealizadoEquipe_procedimentos;
begin
  Result := AddItem(Index) as IXMLCt_procedimentoRealizadoEquipe_procedimentos;
end;

{ TXMLCt_procedimentoRealizadoEquipe_procedimentos }

procedure TXMLCt_procedimentoRealizadoEquipe_procedimentos.AfterConstruction;
begin
  RegisterChildNode('equipe', TXMLCt_identificacaoEquipe);
  RegisterChildNode('procedimento', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_procedimentoRealizadoEquipe_procedimentos.Get_Equipe: IXMLCt_identificacaoEquipe;
begin
  Result := ChildNodes['equipe'] as IXMLCt_identificacaoEquipe;
end;

function TXMLCt_procedimentoRealizadoEquipe_procedimentos.Get_Procedimento: IXMLCt_tabela;
begin
  Result := ChildNodes['procedimento'] as IXMLCt_tabela;
end;

function TXMLCt_procedimentoRealizadoEquipe_procedimentos.Get_Data: UnicodeString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure TXMLCt_procedimentoRealizadoEquipe_procedimentos.Set_Data(Value: UnicodeString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function TXMLCt_procedimentoRealizadoEquipe_procedimentos.Get_HoraInicio: UnicodeString;
begin
  Result := ChildNodes['horaInicio'].Text;
end;

procedure TXMLCt_procedimentoRealizadoEquipe_procedimentos.Set_HoraInicio(Value: UnicodeString);
begin
  ChildNodes['horaInicio'].NodeValue := Value;
end;

function TXMLCt_procedimentoRealizadoEquipe_procedimentos.Get_HoraFim: UnicodeString;
begin
  Result := ChildNodes['horaFim'].Text;
end;

procedure TXMLCt_procedimentoRealizadoEquipe_procedimentos.Set_HoraFim(Value: UnicodeString);
begin
  ChildNodes['horaFim'].NodeValue := Value;
end;

function TXMLCt_procedimentoRealizadoEquipe_procedimentos.Get_QuantidadeRealizada: Integer;
begin
  Result := ChildNodes['quantidadeRealizada'].NodeValue;
end;

procedure TXMLCt_procedimentoRealizadoEquipe_procedimentos.Set_QuantidadeRealizada(Value: Integer);
begin
  ChildNodes['quantidadeRealizada'].NodeValue := Value;
end;

function TXMLCt_procedimentoRealizadoEquipe_procedimentos.Get_ViaAcesso: UnicodeString;
begin
  Result := ChildNodes['viaAcesso'].Text;
end;

procedure TXMLCt_procedimentoRealizadoEquipe_procedimentos.Set_ViaAcesso(Value: UnicodeString);
begin
  ChildNodes['viaAcesso'].NodeValue := Value;
end;

function TXMLCt_procedimentoRealizadoEquipe_procedimentos.Get_TecnicaUtilizada: UnicodeString;
begin
  Result := ChildNodes['tecnicaUtilizada'].Text;
end;

procedure TXMLCt_procedimentoRealizadoEquipe_procedimentos.Set_TecnicaUtilizada(Value: UnicodeString);
begin
  ChildNodes['tecnicaUtilizada'].NodeValue := Value;
end;

function TXMLCt_procedimentoRealizadoEquipe_procedimentos.Get_ReducaoAcrescimo: UnicodeString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure TXMLCt_procedimentoRealizadoEquipe_procedimentos.Set_ReducaoAcrescimo(Value: UnicodeString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function TXMLCt_procedimentoRealizadoEquipe_procedimentos.Get_Valor: UnicodeString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure TXMLCt_procedimentoRealizadoEquipe_procedimentos.Set_Valor(Value: UnicodeString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function TXMLCt_procedimentoRealizadoEquipe_procedimentos.Get_ValorTotal: UnicodeString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure TXMLCt_procedimentoRealizadoEquipe_procedimentos.Set_ValorTotal(Value: UnicodeString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ TXMLCt_identificacaoEquipe }

procedure TXMLCt_identificacaoEquipe.AfterConstruction;
begin
  RegisterChildNode('membroEquipe', TXMLCt_identificacaoEquipe_membroEquipe);
  ItemTag := 'membroEquipe';
  ItemInterface := IXMLCt_identificacaoEquipe_membroEquipe;
  inherited;
end;

function TXMLCt_identificacaoEquipe.Get_MembroEquipe(Index: Integer): IXMLCt_identificacaoEquipe_membroEquipe;
begin
  Result := List[Index] as IXMLCt_identificacaoEquipe_membroEquipe;
end;

function TXMLCt_identificacaoEquipe.Add: IXMLCt_identificacaoEquipe_membroEquipe;
begin
  Result := AddItem(-1) as IXMLCt_identificacaoEquipe_membroEquipe;
end;

function TXMLCt_identificacaoEquipe.Insert(const Index: Integer): IXMLCt_identificacaoEquipe_membroEquipe;
begin
  Result := AddItem(Index) as IXMLCt_identificacaoEquipe_membroEquipe;
end;

{ TXMLCt_identificacaoEquipe_membroEquipe }

procedure TXMLCt_identificacaoEquipe_membroEquipe.AfterConstruction;
begin
  RegisterChildNode('codigoProfissional', TXMLCt_identificacaoPrestadorEquipe);
  RegisterChildNode('identificacaoProfissional', TXMLCt_profissionalExecutante);
  inherited;
end;

function TXMLCt_identificacaoEquipe_membroEquipe.Get_CodigoProfissional: IXMLCt_identificacaoPrestadorEquipe;
begin
  Result := ChildNodes['codigoProfissional'] as IXMLCt_identificacaoPrestadorEquipe;
end;

function TXMLCt_identificacaoEquipe_membroEquipe.Get_IdentificacaoProfissional: IXMLCt_profissionalExecutante;
begin
  Result := ChildNodes['identificacaoProfissional'] as IXMLCt_profissionalExecutante;
end;

function TXMLCt_identificacaoEquipe_membroEquipe.Get_Cpf: UnicodeString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure TXMLCt_identificacaoEquipe_membroEquipe.Set_Cpf(Value: UnicodeString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

function TXMLCt_identificacaoEquipe_membroEquipe.Get_PosicaoProfissional: UnicodeString;
begin
  Result := ChildNodes['posicaoProfissional'].Text;
end;

procedure TXMLCt_identificacaoEquipe_membroEquipe.Set_PosicaoProfissional(Value: UnicodeString);
begin
  ChildNodes['posicaoProfissional'].NodeValue := Value;
end;

{ TXMLCt_identificacaoPrestadorEquipe }

procedure TXMLCt_identificacaoPrestadorEquipe.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', TXMLCt_conselhoProfissional);
  inherited;
end;

function TXMLCt_identificacaoPrestadorEquipe.Get_Cpf: UnicodeString;
begin
  Result := ChildNodes['cpf'].Text;
end;

procedure TXMLCt_identificacaoPrestadorEquipe.Set_Cpf(Value: UnicodeString);
begin
  ChildNodes['cpf'].NodeValue := Value;
end;

function TXMLCt_identificacaoPrestadorEquipe.Get_CodigoPrestadorNaOperadora: UnicodeString;
begin
  Result := ChildNodes['codigoPrestadorNaOperadora'].Text;
end;

procedure TXMLCt_identificacaoPrestadorEquipe.Set_CodigoPrestadorNaOperadora(Value: UnicodeString);
begin
  ChildNodes['codigoPrestadorNaOperadora'].NodeValue := Value;
end;

function TXMLCt_identificacaoPrestadorEquipe.Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as IXMLCt_conselhoProfissional;
end;

{ TXMLCt_outrasDespesas }

procedure TXMLCt_outrasDespesas.AfterConstruction;
begin
  RegisterChildNode('despesa', TXMLCt_outrasDespesas_despesa);
  FDespesa := CreateCollection(TXMLCt_outrasDespesas_despesaList, IXMLCt_outrasDespesas_despesa, 'despesa') as IXMLCt_outrasDespesas_despesaList;
  inherited;
end;

function TXMLCt_outrasDespesas.Get_Despesa: IXMLCt_outrasDespesas_despesaList;
begin
  Result := FDespesa;
end;

function TXMLCt_outrasDespesas.Get_TotalGeralOutrasDespesas: UnicodeString;
begin
  Result := ChildNodes['totalGeralOutrasDespesas'].Text;
end;

procedure TXMLCt_outrasDespesas.Set_TotalGeralOutrasDespesas(Value: UnicodeString);
begin
  ChildNodes['totalGeralOutrasDespesas'].NodeValue := Value;
end;

{ TXMLCt_outrasDespesas_despesa }

procedure TXMLCt_outrasDespesas_despesa.AfterConstruction;
begin
  RegisterChildNode('identificadorDespesa', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_outrasDespesas_despesa.Get_IdentificadorDespesa: IXMLCt_tabela;
begin
  Result := ChildNodes['identificadorDespesa'] as IXMLCt_tabela;
end;

function TXMLCt_outrasDespesas_despesa.Get_TipoDespesa: UnicodeString;
begin
  Result := ChildNodes['tipoDespesa'].Text;
end;

procedure TXMLCt_outrasDespesas_despesa.Set_TipoDespesa(Value: UnicodeString);
begin
  ChildNodes['tipoDespesa'].NodeValue := Value;
end;

function TXMLCt_outrasDespesas_despesa.Get_DataRealizacao: UnicodeString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure TXMLCt_outrasDespesas_despesa.Set_DataRealizacao(Value: UnicodeString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function TXMLCt_outrasDespesas_despesa.Get_HoraInicial: UnicodeString;
begin
  Result := ChildNodes['horaInicial'].Text;
end;

procedure TXMLCt_outrasDespesas_despesa.Set_HoraInicial(Value: UnicodeString);
begin
  ChildNodes['horaInicial'].NodeValue := Value;
end;

function TXMLCt_outrasDespesas_despesa.Get_HoraFinal: UnicodeString;
begin
  Result := ChildNodes['horaFinal'].Text;
end;

procedure TXMLCt_outrasDespesas_despesa.Set_HoraFinal(Value: UnicodeString);
begin
  ChildNodes['horaFinal'].NodeValue := Value;
end;

function TXMLCt_outrasDespesas_despesa.Get_ReducaoAcrescimo: UnicodeString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure TXMLCt_outrasDespesas_despesa.Set_ReducaoAcrescimo(Value: UnicodeString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function TXMLCt_outrasDespesas_despesa.Get_Quantidade: UnicodeString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure TXMLCt_outrasDespesas_despesa.Set_Quantidade(Value: UnicodeString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function TXMLCt_outrasDespesas_despesa.Get_ValorUnitario: UnicodeString;
begin
  Result := ChildNodes['valorUnitario'].Text;
end;

procedure TXMLCt_outrasDespesas_despesa.Set_ValorUnitario(Value: UnicodeString);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function TXMLCt_outrasDespesas_despesa.Get_ValorTotal: UnicodeString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure TXMLCt_outrasDespesas_despesa.Set_ValorTotal(Value: UnicodeString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ TXMLCt_outrasDespesas_despesaList }

function TXMLCt_outrasDespesas_despesaList.Add: IXMLCt_outrasDespesas_despesa;
begin
  Result := AddItem(-1) as IXMLCt_outrasDespesas_despesa;
end;

function TXMLCt_outrasDespesas_despesaList.Insert(const Index: Integer): IXMLCt_outrasDespesas_despesa;
begin
  Result := AddItem(Index) as IXMLCt_outrasDespesas_despesa;
end;

function TXMLCt_outrasDespesas_despesaList.Get_Item(Index: Integer): IXMLCt_outrasDespesas_despesa;
begin
  Result := List[Index] as IXMLCt_outrasDespesas_despesa;
end;

{ TXMLCt_OPMUtilizada }

procedure TXMLCt_OPMUtilizada.AfterConstruction;
begin
  RegisterChildNode('OPM', TXMLCt_OPMUtilizada_OPM);
  inherited;
end;

function TXMLCt_OPMUtilizada.Get_OPM: IXMLCt_OPMUtilizada_OPM;
begin
  Result := ChildNodes['OPM'] as IXMLCt_OPMUtilizada_OPM;
end;

function TXMLCt_OPMUtilizada.Get_ValorTotalOPM: UnicodeString;
begin
  Result := ChildNodes['valorTotalOPM'].Text;
end;

procedure TXMLCt_OPMUtilizada.Set_ValorTotalOPM(Value: UnicodeString);
begin
  ChildNodes['valorTotalOPM'].NodeValue := Value;
end;

{ TXMLCt_OPMUtilizada_OPM }

procedure TXMLCt_OPMUtilizada_OPM.AfterConstruction;
begin
  RegisterChildNode('identificacaoOPM', TXMLCt_OPMUtilizada_OPM_identificacaoOPM);
  ItemTag := 'identificacaoOPM';
  ItemInterface := IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
  inherited;
end;

function TXMLCt_OPMUtilizada_OPM.Get_IdentificacaoOPM(Index: Integer): IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
begin
  Result := List[Index] as IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
end;

function TXMLCt_OPMUtilizada_OPM.Add: IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
begin
  Result := AddItem(-1) as IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
end;

function TXMLCt_OPMUtilizada_OPM.Insert(const Index: Integer): IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
begin
  Result := AddItem(Index) as IXMLCt_OPMUtilizada_OPM_identificacaoOPM;
end;

{ TXMLCt_OPMUtilizada_OPM_identificacaoOPM }

procedure TXMLCt_OPMUtilizada_OPM_identificacaoOPM.AfterConstruction;
begin
  RegisterChildNode('OPM', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_OPMUtilizada_OPM_identificacaoOPM.Get_OPM: IXMLCt_tabela;
begin
  Result := ChildNodes['OPM'] as IXMLCt_tabela;
end;

function TXMLCt_OPMUtilizada_OPM_identificacaoOPM.Get_Quantidade: UnicodeString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure TXMLCt_OPMUtilizada_OPM_identificacaoOPM.Set_Quantidade(Value: UnicodeString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function TXMLCt_OPMUtilizada_OPM_identificacaoOPM.Get_CodigoBarra: UnicodeString;
begin
  Result := ChildNodes['codigoBarra'].Text;
end;

procedure TXMLCt_OPMUtilizada_OPM_identificacaoOPM.Set_CodigoBarra(Value: UnicodeString);
begin
  ChildNodes['codigoBarra'].NodeValue := Value;
end;

function TXMLCt_OPMUtilizada_OPM_identificacaoOPM.Get_ValorUnitario: UnicodeString;
begin
  Result := ChildNodes['valorUnitario'].Text;
end;

procedure TXMLCt_OPMUtilizada_OPM_identificacaoOPM.Set_ValorUnitario(Value: UnicodeString);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function TXMLCt_OPMUtilizada_OPM_identificacaoOPM.Get_ValorTotal: UnicodeString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure TXMLCt_OPMUtilizada_OPM_identificacaoOPM.Set_ValorTotal(Value: UnicodeString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ TXMLCt_valorTotalServicos }

function TXMLCt_valorTotalServicos.Get_ServicosExecutados: UnicodeString;
begin
  Result := ChildNodes['servicosExecutados'].Text;
end;

procedure TXMLCt_valorTotalServicos.Set_ServicosExecutados(Value: UnicodeString);
begin
  ChildNodes['servicosExecutados'].NodeValue := Value;
end;

function TXMLCt_valorTotalServicos.Get_Diarias: UnicodeString;
begin
  Result := ChildNodes['diarias'].Text;
end;

procedure TXMLCt_valorTotalServicos.Set_Diarias(Value: UnicodeString);
begin
  ChildNodes['diarias'].NodeValue := Value;
end;

function TXMLCt_valorTotalServicos.Get_Taxas: UnicodeString;
begin
  Result := ChildNodes['taxas'].Text;
end;

procedure TXMLCt_valorTotalServicos.Set_Taxas(Value: UnicodeString);
begin
  ChildNodes['taxas'].NodeValue := Value;
end;

function TXMLCt_valorTotalServicos.Get_Materiais: UnicodeString;
begin
  Result := ChildNodes['materiais'].Text;
end;

procedure TXMLCt_valorTotalServicos.Set_Materiais(Value: UnicodeString);
begin
  ChildNodes['materiais'].NodeValue := Value;
end;

function TXMLCt_valorTotalServicos.Get_Medicamentos: UnicodeString;
begin
  Result := ChildNodes['medicamentos'].Text;
end;

procedure TXMLCt_valorTotalServicos.Set_Medicamentos(Value: UnicodeString);
begin
  ChildNodes['medicamentos'].NodeValue := Value;
end;

function TXMLCt_valorTotalServicos.Get_Gases: UnicodeString;
begin
  Result := ChildNodes['gases'].Text;
end;

procedure TXMLCt_valorTotalServicos.Set_Gases(Value: UnicodeString);
begin
  ChildNodes['gases'].NodeValue := Value;
end;

function TXMLCt_valorTotalServicos.Get_TotalGeral: UnicodeString;
begin
  Result := ChildNodes['totalGeral'].Text;
end;

procedure TXMLCt_valorTotalServicos.Set_TotalGeral(Value: UnicodeString);
begin
  ChildNodes['totalGeral'].NodeValue := Value;
end;

{ TXMLCt_guiaResumoInternacao }

procedure TXMLCt_guiaResumoInternacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaInternacao', TXMLCt_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', TXMLCt_beneficiario);
  RegisterChildNode('identificacaoExecutante', TXMLCt_contratado);
  RegisterChildNode('dadosAutorizacao', TXMLCt_autorizacaoGuia);
  RegisterChildNode('internacaoObstetrica', TXMLCt_internacaoObstetrica);
  RegisterChildNode('obitoNeonatal', TXMLCt_obitoNeonatal);
  RegisterChildNode('diagnosticosSaidaInternacao', TXMLCt_diagnosticoSaidaInternacao);
  RegisterChildNode('procedimentosRealizados', TXMLCt_procedimentoRealizadoEquipe);
  RegisterChildNode('OPMUtilizadas', TXMLCt_OPMUtilizada);
  RegisterChildNode('outrasDespesas', TXMLCt_outrasDespesas);
  RegisterChildNode('valorTotal', TXMLCt_valorTotalServicos);
  inherited;
end;

function TXMLCt_guiaResumoInternacao.Get_IdentificacaoGuiaInternacao: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaInternacao'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_guiaResumoInternacao.Get_NumeroGuiaSolicitacao: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaSolicitacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacao.Set_NumeroGuiaSolicitacao(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaSolicitacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacao.Get_DadosBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_guiaResumoInternacao.Get_IdentificacaoExecutante: IXMLCt_contratado;
begin
  Result := ChildNodes['identificacaoExecutante'] as IXMLCt_contratado;
end;

function TXMLCt_guiaResumoInternacao.Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as IXMLCt_autorizacaoGuia;
end;

function TXMLCt_guiaResumoInternacao.Get_CaraterInternacao: UnicodeString;
begin
  Result := ChildNodes['caraterInternacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacao.Set_CaraterInternacao(Value: UnicodeString);
begin
  ChildNodes['caraterInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacao.Get_Acomodacao: UnicodeString;
begin
  Result := ChildNodes['acomodacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacao.Set_Acomodacao(Value: UnicodeString);
begin
  ChildNodes['acomodacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacao.Get_DataHoraInternacao: UnicodeString;
begin
  Result := ChildNodes['dataHoraInternacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacao.Set_DataHoraInternacao(Value: UnicodeString);
begin
  ChildNodes['dataHoraInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacao.Get_DataHoraSaidaInternacao: UnicodeString;
begin
  Result := ChildNodes['dataHoraSaidaInternacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacao.Set_DataHoraSaidaInternacao(Value: UnicodeString);
begin
  ChildNodes['dataHoraSaidaInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacao.Get_TipoInternacao: UnicodeString;
begin
  Result := ChildNodes['tipoInternacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacao.Set_TipoInternacao(Value: UnicodeString);
begin
  ChildNodes['tipoInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacao.Get_RegimeInternacao: UnicodeString;
begin
  Result := ChildNodes['regimeInternacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacao.Set_RegimeInternacao(Value: UnicodeString);
begin
  ChildNodes['regimeInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacao.Get_InternacaoObstetrica: IXMLCt_internacaoObstetrica;
begin
  Result := ChildNodes['internacaoObstetrica'] as IXMLCt_internacaoObstetrica;
end;

function TXMLCt_guiaResumoInternacao.Get_ObitoNeonatal: IXMLCt_obitoNeonatal;
begin
  Result := ChildNodes['obitoNeonatal'] as IXMLCt_obitoNeonatal;
end;

function TXMLCt_guiaResumoInternacao.Get_DiagnosticosSaidaInternacao: IXMLCt_diagnosticoSaidaInternacao;
begin
  Result := ChildNodes['diagnosticosSaidaInternacao'] as IXMLCt_diagnosticoSaidaInternacao;
end;

function TXMLCt_guiaResumoInternacao.Get_ProcedimentosRealizados: IXMLCt_procedimentoRealizadoEquipe;
begin
  Result := ChildNodes['procedimentosRealizados'] as IXMLCt_procedimentoRealizadoEquipe;
end;

function TXMLCt_guiaResumoInternacao.Get_OPMUtilizadas: IXMLCt_OPMUtilizada;
begin
  Result := ChildNodes['OPMUtilizadas'] as IXMLCt_OPMUtilizada;
end;

function TXMLCt_guiaResumoInternacao.Get_OutrasDespesas: IXMLCt_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as IXMLCt_outrasDespesas;
end;

function TXMLCt_guiaResumoInternacao.Get_TipoFaturamento: UnicodeString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure TXMLCt_guiaResumoInternacao.Set_TipoFaturamento(Value: UnicodeString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacao.Get_ValorTotal: IXMLCt_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as IXMLCt_valorTotalServicos;
end;

function TXMLCt_guiaResumoInternacao.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacao.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaResumoInternacaoList }

function TXMLCt_guiaResumoInternacaoList.Add: IXMLCt_guiaResumoInternacao;
begin
  Result := AddItem(-1) as IXMLCt_guiaResumoInternacao;
end;

function TXMLCt_guiaResumoInternacaoList.Insert(const Index: Integer): IXMLCt_guiaResumoInternacao;
begin
  Result := AddItem(Index) as IXMLCt_guiaResumoInternacao;
end;

function TXMLCt_guiaResumoInternacaoList.Get_Item(Index: Integer): IXMLCt_guiaResumoInternacao;
begin
  Result := List[Index] as IXMLCt_guiaResumoInternacao;
end;

{ TXMLCt_internacaoObstetrica }

procedure TXMLCt_internacaoObstetrica.AfterConstruction;
begin
  RegisterChildNode('declaracoesNascidosVivos', TXMLCt_numeroDN);
  inherited;
end;

function TXMLCt_internacaoObstetrica.Get_EmGestacao: Boolean;
begin
  Result := ChildNodes['emGestacao'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_EmGestacao(Value: Boolean);
begin
  ChildNodes['emGestacao'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_Aborto: Boolean;
begin
  Result := ChildNodes['aborto'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_Aborto(Value: Boolean);
begin
  ChildNodes['aborto'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_TranstornoMaternoRelGravidez: Boolean;
begin
  Result := ChildNodes['transtornoMaternoRelGravidez'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_TranstornoMaternoRelGravidez(Value: Boolean);
begin
  ChildNodes['transtornoMaternoRelGravidez'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_ComplicacaoPeriodoPuerperio: Boolean;
begin
  Result := ChildNodes['complicacaoPeriodoPuerperio'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_ComplicacaoPeriodoPuerperio(Value: Boolean);
begin
  ChildNodes['complicacaoPeriodoPuerperio'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_AtendimentoRNSalaParto: Boolean;
begin
  Result := ChildNodes['atendimentoRNSalaParto'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_AtendimentoRNSalaParto(Value: Boolean);
begin
  ChildNodes['atendimentoRNSalaParto'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_ComplicacaoNeonatal: Boolean;
begin
  Result := ChildNodes['complicacaoNeonatal'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_ComplicacaoNeonatal(Value: Boolean);
begin
  ChildNodes['complicacaoNeonatal'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_BaixoPeso: Boolean;
begin
  Result := ChildNodes['baixoPeso'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_BaixoPeso(Value: Boolean);
begin
  ChildNodes['baixoPeso'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_PartoCesareo: Boolean;
begin
  Result := ChildNodes['partoCesareo'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_PartoCesareo(Value: Boolean);
begin
  ChildNodes['partoCesareo'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_PartoNormal: Boolean;
begin
  Result := ChildNodes['partoNormal'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_PartoNormal(Value: Boolean);
begin
  ChildNodes['partoNormal'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_DeclaracoesNascidosVivos: IXMLCt_numeroDN;
begin
  Result := ChildNodes['declaracoesNascidosVivos'] as IXMLCt_numeroDN;
end;

function TXMLCt_internacaoObstetrica.Get_QtdNascidosVivosTermo: Integer;
begin
  Result := ChildNodes['qtdNascidosVivosTermo'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_QtdNascidosVivosTermo(Value: Integer);
begin
  ChildNodes['qtdNascidosVivosTermo'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_QtdNascidosMortos: Integer;
begin
  Result := ChildNodes['qtdNascidosMortos'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_QtdNascidosMortos(Value: Integer);
begin
  ChildNodes['qtdNascidosMortos'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_QtdVivosPrematuros: Integer;
begin
  Result := ChildNodes['qtdVivosPrematuros'].NodeValue;
end;

procedure TXMLCt_internacaoObstetrica.Set_QtdVivosPrematuros(Value: Integer);
begin
  ChildNodes['qtdVivosPrematuros'].NodeValue := Value;
end;

function TXMLCt_internacaoObstetrica.Get_ObitoMulher: UnicodeString;
begin
  Result := ChildNodes['obitoMulher'].Text;
end;

procedure TXMLCt_internacaoObstetrica.Set_ObitoMulher(Value: UnicodeString);
begin
  ChildNodes['obitoMulher'].NodeValue := Value;
end;

{ TXMLCt_numeroDN }

procedure TXMLCt_numeroDN.AfterConstruction;
begin
  ItemTag := 'numeroDN';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLCt_numeroDN.Get_NumeroDN(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLCt_numeroDN.Add(const NumeroDN: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := NumeroDN;
end;

function TXMLCt_numeroDN.Insert(const Index: Integer; const NumeroDN: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := NumeroDN;
end;

{ TXMLCt_obitoNeonatal }

function TXMLCt_obitoNeonatal.Get_QtdeobitoPrecoce: Integer;
begin
  Result := ChildNodes['qtdeobitoPrecoce'].NodeValue;
end;

procedure TXMLCt_obitoNeonatal.Set_QtdeobitoPrecoce(Value: Integer);
begin
  ChildNodes['qtdeobitoPrecoce'].NodeValue := Value;
end;

function TXMLCt_obitoNeonatal.Get_QtdeobitoTardio: Integer;
begin
  Result := ChildNodes['qtdeobitoTardio'].NodeValue;
end;

procedure TXMLCt_obitoNeonatal.Set_QtdeobitoTardio(Value: Integer);
begin
  ChildNodes['qtdeobitoTardio'].NodeValue := Value;
end;

{ TXMLCt_diagnosticoSaidaInternacao }

procedure TXMLCt_diagnosticoSaidaInternacao.AfterConstruction;
begin
  RegisterChildNode('diagnosticoPrincipal', TXMLCt_diagnostico);
  RegisterChildNode('diagnosticosSecundarios', TXMLCt_diagnosticosSecundarios);
  RegisterChildNode('obito', TXMLCt_obitoInternacao);
  FObito := CreateCollection(TXMLCt_obitoInternacaoList, IXMLCt_obitoInternacao, 'obito') as IXMLCt_obitoInternacaoList;
  inherited;
end;

function TXMLCt_diagnosticoSaidaInternacao.Get_DiagnosticoPrincipal: IXMLCt_diagnostico;
begin
  Result := ChildNodes['diagnosticoPrincipal'] as IXMLCt_diagnostico;
end;

function TXMLCt_diagnosticoSaidaInternacao.Get_IndicadorAcidente: UnicodeString;
begin
  Result := ChildNodes['indicadorAcidente'].Text;
end;

procedure TXMLCt_diagnosticoSaidaInternacao.Set_IndicadorAcidente(Value: UnicodeString);
begin
  ChildNodes['indicadorAcidente'].NodeValue := Value;
end;

function TXMLCt_diagnosticoSaidaInternacao.Get_DiagnosticosSecundarios: IXMLCt_diagnosticosSecundarios;
begin
  Result := ChildNodes['diagnosticosSecundarios'] as IXMLCt_diagnosticosSecundarios;
end;

function TXMLCt_diagnosticoSaidaInternacao.Get_MotivoSaidaInternacao: UnicodeString;
begin
  Result := ChildNodes['motivoSaidaInternacao'].Text;
end;

procedure TXMLCt_diagnosticoSaidaInternacao.Set_MotivoSaidaInternacao(Value: UnicodeString);
begin
  ChildNodes['motivoSaidaInternacao'].NodeValue := Value;
end;

function TXMLCt_diagnosticoSaidaInternacao.Get_Obito: IXMLCt_obitoInternacaoList;
begin
  Result := FObito;
end;

{ TXMLCt_obitoInternacao }

procedure TXMLCt_obitoInternacao.AfterConstruction;
begin
  RegisterChildNode('CID', TXMLCt_diagnostico);
  inherited;
end;

function TXMLCt_obitoInternacao.Get_CID: IXMLCt_diagnostico;
begin
  Result := ChildNodes['CID'] as IXMLCt_diagnostico;
end;

function TXMLCt_obitoInternacao.Get_NumeroDeclaracao: UnicodeString;
begin
  Result := ChildNodes['numeroDeclaracao'].Text;
end;

procedure TXMLCt_obitoInternacao.Set_NumeroDeclaracao(Value: UnicodeString);
begin
  ChildNodes['numeroDeclaracao'].NodeValue := Value;
end;

{ TXMLCt_obitoInternacaoList }

function TXMLCt_obitoInternacaoList.Add: IXMLCt_obitoInternacao;
begin
  Result := AddItem(-1) as IXMLCt_obitoInternacao;
end;

function TXMLCt_obitoInternacaoList.Insert(const Index: Integer): IXMLCt_obitoInternacao;
begin
  Result := AddItem(Index) as IXMLCt_obitoInternacao;
end;

function TXMLCt_obitoInternacaoList.Get_Item(Index: Integer): IXMLCt_obitoInternacao;
begin
  Result := List[Index] as IXMLCt_obitoInternacao;
end;

{ TXMLCt_guiaHonorarioIndividual }

procedure TXMLCt_guiaHonorarioIndividual.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaHonorarioIndividual', TXMLCt_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', TXMLCt_beneficiario);
  RegisterChildNode('contratado', TXMLCt_contratado);
  RegisterChildNode('contratadoExecutante', TXMLCt_guiaHonorarioIndividual_contratadoExecutante);
  RegisterChildNode('procedimentosExamesRealizados', TXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados);
  inherited;
end;

function TXMLCt_guiaHonorarioIndividual.Get_IdentificacaoGuiaHonorarioIndividual: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaHonorarioIndividual'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_guiaHonorarioIndividual.Get_NumeroGuiaPrincipal: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure TXMLCt_guiaHonorarioIndividual.Set_NumeroGuiaPrincipal(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function TXMLCt_guiaHonorarioIndividual.Get_DadosBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_guiaHonorarioIndividual.Get_Contratado: IXMLCt_contratado;
begin
  Result := ChildNodes['contratado'] as IXMLCt_contratado;
end;

function TXMLCt_guiaHonorarioIndividual.Get_ContratadoExecutante: IXMLCt_guiaHonorarioIndividual_contratadoExecutante;
begin
  Result := ChildNodes['contratadoExecutante'] as IXMLCt_guiaHonorarioIndividual_contratadoExecutante;
end;

function TXMLCt_guiaHonorarioIndividual.Get_ProcedimentosExamesRealizados: IXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados;
begin
  Result := ChildNodes['procedimentosExamesRealizados'] as IXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados;
end;

function TXMLCt_guiaHonorarioIndividual.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaHonorarioIndividual.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaHonorarioIndividualList }

function TXMLCt_guiaHonorarioIndividualList.Add: IXMLCt_guiaHonorarioIndividual;
begin
  Result := AddItem(-1) as IXMLCt_guiaHonorarioIndividual;
end;

function TXMLCt_guiaHonorarioIndividualList.Insert(const Index: Integer): IXMLCt_guiaHonorarioIndividual;
begin
  Result := AddItem(Index) as IXMLCt_guiaHonorarioIndividual;
end;

function TXMLCt_guiaHonorarioIndividualList.Get_Item(Index: Integer): IXMLCt_guiaHonorarioIndividual;
begin
  Result := List[Index] as IXMLCt_guiaHonorarioIndividual;
end;

{ TXMLCt_guiaHonorarioIndividual_contratadoExecutante }

procedure TXMLCt_guiaHonorarioIndividual_contratadoExecutante.AfterConstruction;
begin
  RegisterChildNode('identificacaoProfissional', TXMLCt_profissionalExecutante);
  inherited;
end;

function TXMLCt_guiaHonorarioIndividual_contratadoExecutante.Get_IdentificacaoProfissional: IXMLCt_profissionalExecutante;
begin
  Result := ChildNodes['identificacaoProfissional'] as IXMLCt_profissionalExecutante;
end;

function TXMLCt_guiaHonorarioIndividual_contratadoExecutante.Get_PosicaoProfissional: UnicodeString;
begin
  Result := ChildNodes['posicaoProfissional'].Text;
end;

procedure TXMLCt_guiaHonorarioIndividual_contratadoExecutante.Set_PosicaoProfissional(Value: UnicodeString);
begin
  ChildNodes['posicaoProfissional'].NodeValue := Value;
end;

function TXMLCt_guiaHonorarioIndividual_contratadoExecutante.Get_TipoAcomodacao: UnicodeString;
begin
  Result := ChildNodes['tipoAcomodacao'].Text;
end;

procedure TXMLCt_guiaHonorarioIndividual_contratadoExecutante.Set_TipoAcomodacao(Value: UnicodeString);
begin
  ChildNodes['tipoAcomodacao'].NodeValue := Value;
end;

{ TXMLCt_procedimentosRealizados }

procedure TXMLCt_procedimentosRealizados.AfterConstruction;
begin
  RegisterChildNode('procedimentoRealizado', TXMLCt_procedimentosRealizados_procedimentoRealizado);
  ItemTag := 'procedimentoRealizado';
  ItemInterface := IXMLCt_procedimentosRealizados_procedimentoRealizado;
  inherited;
end;

function TXMLCt_procedimentosRealizados.Get_ProcedimentoRealizado(Index: Integer): IXMLCt_procedimentosRealizados_procedimentoRealizado;
begin
  Result := List[Index] as IXMLCt_procedimentosRealizados_procedimentoRealizado;
end;

function TXMLCt_procedimentosRealizados.Add: IXMLCt_procedimentosRealizados_procedimentoRealizado;
begin
  Result := AddItem(-1) as IXMLCt_procedimentosRealizados_procedimentoRealizado;
end;

function TXMLCt_procedimentosRealizados.Insert(const Index: Integer): IXMLCt_procedimentosRealizados_procedimentoRealizado;
begin
  Result := AddItem(Index) as IXMLCt_procedimentosRealizados_procedimentoRealizado;
end;

{ TXMLCt_procedimentosRealizados_procedimentoRealizado }

procedure TXMLCt_procedimentosRealizados_procedimentoRealizado.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_procedimentosRealizados_procedimentoRealizado.Get_Data: UnicodeString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure TXMLCt_procedimentosRealizados_procedimentoRealizado.Set_Data(Value: UnicodeString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function TXMLCt_procedimentosRealizados_procedimentoRealizado.Get_HoraInicio: UnicodeString;
begin
  Result := ChildNodes['horaInicio'].Text;
end;

procedure TXMLCt_procedimentosRealizados_procedimentoRealizado.Set_HoraInicio(Value: UnicodeString);
begin
  ChildNodes['horaInicio'].NodeValue := Value;
end;

function TXMLCt_procedimentosRealizados_procedimentoRealizado.Get_HoraFim: UnicodeString;
begin
  Result := ChildNodes['horaFim'].Text;
end;

procedure TXMLCt_procedimentosRealizados_procedimentoRealizado.Set_HoraFim(Value: UnicodeString);
begin
  ChildNodes['horaFim'].NodeValue := Value;
end;

function TXMLCt_procedimentosRealizados_procedimentoRealizado.Get_Procedimento: IXMLCt_tabela;
begin
  Result := ChildNodes['procedimento'] as IXMLCt_tabela;
end;

function TXMLCt_procedimentosRealizados_procedimentoRealizado.Get_QuantidadeRealizada: Integer;
begin
  Result := ChildNodes['quantidadeRealizada'].NodeValue;
end;

procedure TXMLCt_procedimentosRealizados_procedimentoRealizado.Set_QuantidadeRealizada(Value: Integer);
begin
  ChildNodes['quantidadeRealizada'].NodeValue := Value;
end;

function TXMLCt_procedimentosRealizados_procedimentoRealizado.Get_ViaAcesso: UnicodeString;
begin
  Result := ChildNodes['viaAcesso'].Text;
end;

procedure TXMLCt_procedimentosRealizados_procedimentoRealizado.Set_ViaAcesso(Value: UnicodeString);
begin
  ChildNodes['viaAcesso'].NodeValue := Value;
end;

function TXMLCt_procedimentosRealizados_procedimentoRealizado.Get_TecnicaUtilizada: UnicodeString;
begin
  Result := ChildNodes['tecnicaUtilizada'].Text;
end;

procedure TXMLCt_procedimentosRealizados_procedimentoRealizado.Set_TecnicaUtilizada(Value: UnicodeString);
begin
  ChildNodes['tecnicaUtilizada'].NodeValue := Value;
end;

function TXMLCt_procedimentosRealizados_procedimentoRealizado.Get_ReducaoAcrescimo: UnicodeString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure TXMLCt_procedimentosRealizados_procedimentoRealizado.Set_ReducaoAcrescimo(Value: UnicodeString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function TXMLCt_procedimentosRealizados_procedimentoRealizado.Get_Valor: UnicodeString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure TXMLCt_procedimentosRealizados_procedimentoRealizado.Set_Valor(Value: UnicodeString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function TXMLCt_procedimentosRealizados_procedimentoRealizado.Get_ValorTotal: UnicodeString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure TXMLCt_procedimentosRealizados_procedimentoRealizado.Set_ValorTotal(Value: UnicodeString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

{ TXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados }

function TXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados.Get_TotalGeralHonorario: UnicodeString;
begin
  Result := ChildNodes['totalGeralHonorario'].Text;
end;

procedure TXMLCt_guiaHonorarioIndividual_procedimentosExamesRealizados.Set_TotalGeralHonorario(Value: UnicodeString);
begin
  ChildNodes['totalGeralHonorario'].NodeValue := Value;
end;

{ TXMLCt_guiaOdontologia }

procedure TXMLCt_guiaOdontologia.AfterConstruction;
begin
  RegisterChildNode('cabecalhoGuia', TXMLCt_cabecalhoGuiaOdonto);
  RegisterChildNode('dadosBeneficiario', TXMLCt_guiaOdontologia_dadosBeneficiario);
  RegisterChildNode('dadosContratadoExecutante', TXMLCt_guiaOdontologia_dadosContratadoExecutante);
  RegisterChildNode('procedimentosExecutados', TXMLCt_guiaOdontologia_procedimentosExecutados);
  RegisterChildNode('outrasDespesas', TXMLCt_outrasDespesas);
  RegisterChildNode('dadosAtendimento', TXMLCt_atendimentoOdontologia);
  inherited;
end;

function TXMLCt_guiaOdontologia.Get_CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto;
begin
  Result := ChildNodes['cabecalhoGuia'] as IXMLCt_cabecalhoGuiaOdonto;
end;

function TXMLCt_guiaOdontologia.Get_DadosBeneficiario: IXMLCt_guiaOdontologia_dadosBeneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_guiaOdontologia_dadosBeneficiario;
end;

function TXMLCt_guiaOdontologia.Get_DadosContratadoExecutante: IXMLCt_guiaOdontologia_dadosContratadoExecutante;
begin
  Result := ChildNodes['dadosContratadoExecutante'] as IXMLCt_guiaOdontologia_dadosContratadoExecutante;
end;

function TXMLCt_guiaOdontologia.Get_ProcedimentosExecutados: IXMLCt_guiaOdontologia_procedimentosExecutados;
begin
  Result := ChildNodes['procedimentosExecutados'] as IXMLCt_guiaOdontologia_procedimentosExecutados;
end;

function TXMLCt_guiaOdontologia.Get_OutrasDespesas: IXMLCt_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as IXMLCt_outrasDespesas;
end;

function TXMLCt_guiaOdontologia.Get_DadosAtendimento: IXMLCt_atendimentoOdontologia;
begin
  Result := ChildNodes['dadosAtendimento'] as IXMLCt_atendimentoOdontologia;
end;

function TXMLCt_guiaOdontologia.Get_TipoFaturamento: UnicodeString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure TXMLCt_guiaOdontologia.Set_TipoFaturamento(Value: UnicodeString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function TXMLCt_guiaOdontologia.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaOdontologia.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaOdontologiaList }

function TXMLCt_guiaOdontologiaList.Add: IXMLCt_guiaOdontologia;
begin
  Result := AddItem(-1) as IXMLCt_guiaOdontologia;
end;

function TXMLCt_guiaOdontologiaList.Insert(const Index: Integer): IXMLCt_guiaOdontologia;
begin
  Result := AddItem(Index) as IXMLCt_guiaOdontologia;
end;

function TXMLCt_guiaOdontologiaList.Get_Item(Index: Integer): IXMLCt_guiaOdontologia;
begin
  Result := List[Index] as IXMLCt_guiaOdontologia;
end;

{ TXMLCt_cabecalhoGuiaOdonto }

procedure TXMLCt_cabecalhoGuiaOdonto.AfterConstruction;
begin
  RegisterChildNode('identificacaoFontePagadora', TXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora);
  inherited;
end;

function TXMLCt_cabecalhoGuiaOdonto.Get_IdentificacaoFontePagadora: IXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora;
begin
  Result := ChildNodes['identificacaoFontePagadora'] as IXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora;
end;

function TXMLCt_cabecalhoGuiaOdonto.Get_NumeroGuiaPrestador: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure TXMLCt_cabecalhoGuiaOdonto.Set_NumeroGuiaPrestador(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

function TXMLCt_cabecalhoGuiaOdonto.Get_NumeroGuiaOperadora: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure TXMLCt_cabecalhoGuiaOdonto.Set_NumeroGuiaOperadora(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function TXMLCt_cabecalhoGuiaOdonto.Get_DataEmissaoGuia: UnicodeString;
begin
  Result := ChildNodes['dataEmissaoGuia'].Text;
end;

procedure TXMLCt_cabecalhoGuiaOdonto.Set_DataEmissaoGuia(Value: UnicodeString);
begin
  ChildNodes['dataEmissaoGuia'].NodeValue := Value;
end;

function TXMLCt_cabecalhoGuiaOdonto.Get_NumeroGuiaPrincipal: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure TXMLCt_cabecalhoGuiaOdonto.Set_NumeroGuiaPrincipal(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function TXMLCt_cabecalhoGuiaOdonto.Get_DataAutorizacao: UnicodeString;
begin
  Result := ChildNodes['dataAutorizacao'].Text;
end;

procedure TXMLCt_cabecalhoGuiaOdonto.Set_DataAutorizacao(Value: UnicodeString);
begin
  ChildNodes['dataAutorizacao'].NodeValue := Value;
end;

function TXMLCt_cabecalhoGuiaOdonto.Get_SenhaAutorizacao: UnicodeString;
begin
  Result := ChildNodes['senhaAutorizacao'].Text;
end;

procedure TXMLCt_cabecalhoGuiaOdonto.Set_SenhaAutorizacao(Value: UnicodeString);
begin
  ChildNodes['senhaAutorizacao'].NodeValue := Value;
end;

function TXMLCt_cabecalhoGuiaOdonto.Get_ValidadeSenha: UnicodeString;
begin
  Result := ChildNodes['validadeSenha'].Text;
end;

procedure TXMLCt_cabecalhoGuiaOdonto.Set_ValidadeSenha(Value: UnicodeString);
begin
  ChildNodes['validadeSenha'].NodeValue := Value;
end;

{ TXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora }

function TXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora.Get_RegistroANS: UnicodeString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure TXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora.Set_RegistroANS(Value: UnicodeString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function TXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora.Get_CnpjFontePagadora: UnicodeString;
begin
  Result := ChildNodes['cnpjFontePagadora'].Text;
end;

procedure TXMLCt_cabecalhoGuiaOdonto_identificacaoFontePagadora.Set_CnpjFontePagadora(Value: UnicodeString);
begin
  ChildNodes['cnpjFontePagadora'].NodeValue := Value;
end;

{ TXMLCt_guiaOdontologia_dadosBeneficiario }

function TXMLCt_guiaOdontologia_dadosBeneficiario.Get_NomeEmpresa: UnicodeString;
begin
  Result := ChildNodes['nomeEmpresa'].Text;
end;

procedure TXMLCt_guiaOdontologia_dadosBeneficiario.Set_NomeEmpresa(Value: UnicodeString);
begin
  ChildNodes['nomeEmpresa'].NodeValue := Value;
end;

function TXMLCt_guiaOdontologia_dadosBeneficiario.Get_NumeroTelefone: UnicodeString;
begin
  Result := ChildNodes['numeroTelefone'].Text;
end;

procedure TXMLCt_guiaOdontologia_dadosBeneficiario.Set_NumeroTelefone(Value: UnicodeString);
begin
  ChildNodes['numeroTelefone'].NodeValue := Value;
end;

function TXMLCt_guiaOdontologia_dadosBeneficiario.Get_NomeTitular: UnicodeString;
begin
  Result := ChildNodes['nomeTitular'].Text;
end;

procedure TXMLCt_guiaOdontologia_dadosBeneficiario.Set_NomeTitular(Value: UnicodeString);
begin
  ChildNodes['nomeTitular'].NodeValue := Value;
end;

{ TXMLCt_guiaOdontologia_dadosContratadoExecutante }

procedure TXMLCt_guiaOdontologia_dadosContratadoExecutante.AfterConstruction;
begin
  RegisterChildNode('dadosContratado', TXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado);
  RegisterChildNode('dadosExecutante', TXMLCt_profissionalExecutante);
  inherited;
end;

function TXMLCt_guiaOdontologia_dadosContratadoExecutante.Get_DadosContratado: IXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado;
begin
  Result := ChildNodes['dadosContratado'] as IXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado;
end;

function TXMLCt_guiaOdontologia_dadosContratadoExecutante.Get_DadosExecutante: IXMLCt_profissionalExecutante;
begin
  Result := ChildNodes['dadosExecutante'] as IXMLCt_profissionalExecutante;
end;

{ TXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado }

procedure TXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', TXMLCt_conselhoProfissional);
  inherited;
end;

function TXMLCt_guiaOdontologia_dadosContratadoExecutante_dadosContratado.Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as IXMLCt_conselhoProfissional;
end;

{ TXMLCt_guiaOdontologia_procedimentosExecutados }

procedure TXMLCt_guiaOdontologia_procedimentosExecutados.AfterConstruction;
begin
  RegisterChildNode('procedimentoExecutado', TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado);
  FProcedimentoExecutado := CreateCollection(TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList, IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado, 'procedimentoExecutado') as IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList;
  inherited;
end;

function TXMLCt_guiaOdontologia_procedimentosExecutados.Get_ProcedimentoExecutado: IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList;
begin
  Result := FProcedimentoExecutado;
end;

function TXMLCt_guiaOdontologia_procedimentosExecutados.Get_QuantidadeTotalUS: UnicodeString;
begin
  Result := ChildNodes['quantidadeTotalUS'].Text;
end;

procedure TXMLCt_guiaOdontologia_procedimentosExecutados.Set_QuantidadeTotalUS(Value: UnicodeString);
begin
  ChildNodes['quantidadeTotalUS'].NodeValue := Value;
end;

function TXMLCt_guiaOdontologia_procedimentosExecutados.Get_ValorTotal: UnicodeString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure TXMLCt_guiaOdontologia_procedimentosExecutados.Set_ValorTotal(Value: UnicodeString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function TXMLCt_guiaOdontologia_procedimentosExecutados.Get_TotalFranquiaCoparticipacao: UnicodeString;
begin
  Result := ChildNodes['totalFranquiaCoparticipacao'].Text;
end;

procedure TXMLCt_guiaOdontologia_procedimentosExecutados.Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
begin
  ChildNodes['totalFranquiaCoparticipacao'].NodeValue := Value;
end;

{ TXMLCt_procedimentoOdontologia }

procedure TXMLCt_procedimentoOdontologia.AfterConstruction;
begin
  RegisterChildNode('procedimentoOdonto', TXMLCt_tabela);
  RegisterChildNode('denteRegiao', TXMLCt_denteRegiao);
  inherited;
end;

function TXMLCt_procedimentoOdontologia.Get_ProcedimentoOdonto: IXMLCt_tabela;
begin
  Result := ChildNodes['procedimentoOdonto'] as IXMLCt_tabela;
end;

function TXMLCt_procedimentoOdontologia.Get_DenteRegiao: IXMLCt_denteRegiao;
begin
  Result := ChildNodes['denteRegiao'] as IXMLCt_denteRegiao;
end;

function TXMLCt_procedimentoOdontologia.Get_Face: UnicodeString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure TXMLCt_procedimentoOdontologia.Set_Face(Value: UnicodeString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontologia.Get_Quantidade: Integer;
begin
  Result := ChildNodes['quantidade'].NodeValue;
end;

procedure TXMLCt_procedimentoOdontologia.Set_Quantidade(Value: Integer);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontologia.Get_QuantidadeUS: UnicodeString;
begin
  Result := ChildNodes['quantidadeUS'].Text;
end;

procedure TXMLCt_procedimentoOdontologia.Set_QuantidadeUS(Value: UnicodeString);
begin
  ChildNodes['quantidadeUS'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontologia.Get_Valor: UnicodeString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure TXMLCt_procedimentoOdontologia.Set_Valor(Value: UnicodeString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontologia.Get_FranquiaCoparticipacao: UnicodeString;
begin
  Result := ChildNodes['franquiaCoparticipacao'].Text;
end;

procedure TXMLCt_procedimentoOdontologia.Set_FranquiaCoparticipacao(Value: UnicodeString);
begin
  ChildNodes['franquiaCoparticipacao'].NodeValue := Value;
end;

{ TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado }

function TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado.Get_DataRealizacao: UnicodeString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado.Set_DataRealizacao(Value: UnicodeString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

{ TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList }

function TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList.Add: IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;
begin
  Result := AddItem(-1) as IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;
end;

function TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList.Insert(const Index: Integer): IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;
begin
  Result := AddItem(Index) as IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;
end;

function TXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutadoList.Get_Item(Index: Integer): IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;
begin
  Result := List[Index] as IXMLCt_guiaOdontologia_procedimentosExecutados_procedimentoExecutado;
end;

{ TXMLCt_atendimentoOdontologia }

function TXMLCt_atendimentoOdontologia.Get_DataTerminoTratamento: UnicodeString;
begin
  Result := ChildNodes['dataTerminoTratamento'].Text;
end;

procedure TXMLCt_atendimentoOdontologia.Set_DataTerminoTratamento(Value: UnicodeString);
begin
  ChildNodes['dataTerminoTratamento'].NodeValue := Value;
end;

function TXMLCt_atendimentoOdontologia.Get_TipoAtendimento: UnicodeString;
begin
  Result := ChildNodes['tipoAtendimento'].Text;
end;

procedure TXMLCt_atendimentoOdontologia.Set_TipoAtendimento(Value: UnicodeString);
begin
  ChildNodes['tipoAtendimento'].NodeValue := Value;
end;

{ TXMLCt_guias_guiaRevisaoGlosa }

procedure TXMLCt_guias_guiaRevisaoGlosa.AfterConstruction;
begin
  RegisterChildNode('guiaConsultaReapresentacao', TXMLCt_guiaConsultaReapresentacao);
  RegisterChildNode('guiaSP_SADTReapresentacao', TXMLCt_guiaSP_SADTReapresentacao);
  RegisterChildNode('guiaResumoInternacaoReapresentacao', TXMLCt_guiaResumoInternacaoReapresentacao);
  RegisterChildNode('guiaHonorarioIndividualReapresentacao', TXMLCt_guiaHonorarioIndividualReapresentacao);
  RegisterChildNode('guiaOdontologiaReapresentacao', TXMLCt_guiaTratamentoOdontologicoReapresentacao);
  FGuiaConsultaReapresentacao := CreateCollection(TXMLCt_guiaConsultaReapresentacaoList, IXMLCt_guiaConsultaReapresentacao, 'guiaConsultaReapresentacao') as IXMLCt_guiaConsultaReapresentacaoList;
  FGuiaSP_SADTReapresentacao := CreateCollection(TXMLCt_guiaSP_SADTReapresentacaoList, IXMLCt_guiaSP_SADTReapresentacao, 'guiaSP_SADTReapresentacao') as IXMLCt_guiaSP_SADTReapresentacaoList;
  FGuiaResumoInternacaoReapresentacao := CreateCollection(TXMLCt_guiaResumoInternacaoReapresentacaoList, IXMLCt_guiaResumoInternacaoReapresentacao, 'guiaResumoInternacaoReapresentacao') as IXMLCt_guiaResumoInternacaoReapresentacaoList;
  FGuiaHonorarioIndividualReapresentacao := CreateCollection(TXMLCt_guiaHonorarioIndividualReapresentacaoList, IXMLCt_guiaHonorarioIndividualReapresentacao, 'guiaHonorarioIndividualReapresentacao') as IXMLCt_guiaHonorarioIndividualReapresentacaoList;
  FGuiaOdontologiaReapresentacao := CreateCollection(TXMLCt_guiaTratamentoOdontologicoReapresentacaoList, IXMLCt_guiaTratamentoOdontologicoReapresentacao, 'guiaOdontologiaReapresentacao') as IXMLCt_guiaTratamentoOdontologicoReapresentacaoList;
  inherited;
end;

function TXMLCt_guias_guiaRevisaoGlosa.Get_GuiaConsultaReapresentacao: IXMLCt_guiaConsultaReapresentacaoList;
begin
  Result := FGuiaConsultaReapresentacao;
end;

function TXMLCt_guias_guiaRevisaoGlosa.Get_GuiaSP_SADTReapresentacao: IXMLCt_guiaSP_SADTReapresentacaoList;
begin
  Result := FGuiaSP_SADTReapresentacao;
end;

function TXMLCt_guias_guiaRevisaoGlosa.Get_GuiaResumoInternacaoReapresentacao: IXMLCt_guiaResumoInternacaoReapresentacaoList;
begin
  Result := FGuiaResumoInternacaoReapresentacao;
end;

function TXMLCt_guias_guiaRevisaoGlosa.Get_GuiaHonorarioIndividualReapresentacao: IXMLCt_guiaHonorarioIndividualReapresentacaoList;
begin
  Result := FGuiaHonorarioIndividualReapresentacao;
end;

function TXMLCt_guias_guiaRevisaoGlosa.Get_GuiaOdontologiaReapresentacao: IXMLCt_guiaTratamentoOdontologicoReapresentacaoList;
begin
  Result := FGuiaOdontologiaReapresentacao;
end;

{ TXMLCt_guiaConsultaReapresentacao }

procedure TXMLCt_guiaConsultaReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuia', TXMLCt_cabecalhoGuia);
  RegisterChildNode('beneficiario', TXMLCt_beneficiario);
  RegisterChildNode('dadosContratado', TXMLCt_contratado);
  RegisterChildNode('profissionalExecutante', TXMLCt_identificacaoProfissional);
  RegisterChildNode('hipoteseDiagnostica', TXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica);
  RegisterChildNode('dadosAtendimento', TXMLCt_atendimentoConsultaReapr);
  inherited;
end;

function TXMLCt_guiaConsultaReapresentacao.Get_IdentificacaoGuia: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuia'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_guiaConsultaReapresentacao.Get_Beneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['beneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_guiaConsultaReapresentacao.Get_DadosContratado: IXMLCt_contratado;
begin
  Result := ChildNodes['dadosContratado'] as IXMLCt_contratado;
end;

function TXMLCt_guiaConsultaReapresentacao.Get_ProfissionalExecutante: IXMLCt_identificacaoProfissional;
begin
  Result := ChildNodes['profissionalExecutante'] as IXMLCt_identificacaoProfissional;
end;

function TXMLCt_guiaConsultaReapresentacao.Get_HipoteseDiagnostica: IXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica;
begin
  Result := ChildNodes['hipoteseDiagnostica'] as IXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica;
end;

function TXMLCt_guiaConsultaReapresentacao.Get_DadosAtendimento: IXMLCt_atendimentoConsultaReapr;
begin
  Result := ChildNodes['dadosAtendimento'] as IXMLCt_atendimentoConsultaReapr;
end;

function TXMLCt_guiaConsultaReapresentacao.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaConsultaReapresentacao.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaConsultaReapresentacaoList }

function TXMLCt_guiaConsultaReapresentacaoList.Add: IXMLCt_guiaConsultaReapresentacao;
begin
  Result := AddItem(-1) as IXMLCt_guiaConsultaReapresentacao;
end;

function TXMLCt_guiaConsultaReapresentacaoList.Insert(const Index: Integer): IXMLCt_guiaConsultaReapresentacao;
begin
  Result := AddItem(Index) as IXMLCt_guiaConsultaReapresentacao;
end;

function TXMLCt_guiaConsultaReapresentacaoList.Get_Item(Index: Integer): IXMLCt_guiaConsultaReapresentacao;
begin
  Result := List[Index] as IXMLCt_guiaConsultaReapresentacao;
end;

{ TXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica }

procedure TXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica.AfterConstruction;
begin
  RegisterChildNode('diagnosticoSecundario', TXMLCt_diagnosticosSecundarios);
  inherited;
end;

function TXMLCt_guiaConsultaReapresentacao_hipoteseDiagnostica.Get_DiagnosticoSecundario: IXMLCt_diagnosticosSecundarios;
begin
  Result := ChildNodes['diagnosticoSecundario'] as IXMLCt_diagnosticosSecundarios;
end;

{ TXMLCt_atendimentoConsultaReapr }

procedure TXMLCt_atendimentoConsultaReapr.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_atendimentoConsultaReapr_procedimento);
  inherited;
end;

function TXMLCt_atendimentoConsultaReapr.Get_Procedimento: IXMLCt_atendimentoConsultaReapr_procedimento;
begin
  Result := ChildNodes['procedimento'] as IXMLCt_atendimentoConsultaReapr_procedimento;
end;

function TXMLCt_atendimentoConsultaReapr.Get_TipoConsulta: UnicodeString;
begin
  Result := ChildNodes['tipoConsulta'].Text;
end;

procedure TXMLCt_atendimentoConsultaReapr.Set_TipoConsulta(Value: UnicodeString);
begin
  ChildNodes['tipoConsulta'].NodeValue := Value;
end;

function TXMLCt_atendimentoConsultaReapr.Get_TipoSaida: UnicodeString;
begin
  Result := ChildNodes['tipoSaida'].Text;
end;

procedure TXMLCt_atendimentoConsultaReapr.Set_TipoSaida(Value: UnicodeString);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

function TXMLCt_atendimentoConsultaReapr.Get_DataAtendimento: UnicodeString;
begin
  Result := ChildNodes['dataAtendimento'].Text;
end;

procedure TXMLCt_atendimentoConsultaReapr.Set_DataAtendimento(Value: UnicodeString);
begin
  ChildNodes['dataAtendimento'].NodeValue := Value;
end;

{ TXMLCt_atendimentoConsultaReapr_procedimento }

function TXMLCt_atendimentoConsultaReapr_procedimento.Get_CodigoTabela: UnicodeString;
begin
  Result := ChildNodes['codigoTabela'].Text;
end;

procedure TXMLCt_atendimentoConsultaReapr_procedimento.Set_CodigoTabela(Value: UnicodeString);
begin
  ChildNodes['codigoTabela'].NodeValue := Value;
end;

function TXMLCt_atendimentoConsultaReapr_procedimento.Get_CodigoProcedimento: UnicodeString;
begin
  Result := ChildNodes['codigoProcedimento'].Text;
end;

procedure TXMLCt_atendimentoConsultaReapr_procedimento.Set_CodigoProcedimento(Value: UnicodeString);
begin
  ChildNodes['codigoProcedimento'].NodeValue := Value;
end;

function TXMLCt_atendimentoConsultaReapr_procedimento.Get_Justificativa: UnicodeString;
begin
  Result := ChildNodes['justificativa'].Text;
end;

procedure TXMLCt_atendimentoConsultaReapr_procedimento.Set_Justificativa(Value: UnicodeString);
begin
  ChildNodes['justificativa'].NodeValue := Value;
end;

{ TXMLCt_guiaSP_SADTReapresentacao }

procedure TXMLCt_guiaSP_SADTReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSADTSP', TXMLCt_cabecalhoGuia);
  RegisterChildNode('dadosAutorizacao', TXMLCt_autorizacaoGuia);
  RegisterChildNode('dadosBeneficiario', TXMLCt_beneficiario);
  RegisterChildNode('dadosSolicitante', TXMLCt_solicitante);
  RegisterChildNode('prestadorExecutante', TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante);
  RegisterChildNode('diagnosticoAtendimento', TXMLCt_diagnosticoAtendimento);
  RegisterChildNode('procedimentosRealizados', TXMLCt_procedimentoRevisao);
  RegisterChildNode('outrasDespesas', TXMLCt_outrasDespesasRevisao);
  RegisterChildNode('OPMUtilizada', TXMLCt_OPMUtilizadasRevisao);
  RegisterChildNode('valorTotal', TXMLCt_valorTotalServicos);
  inherited;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_IdentificacaoGuiaSADTSP: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaSADTSP'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_NumeroGuiaPrincipal: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure TXMLCt_guiaSP_SADTReapresentacao.Set_NumeroGuiaPrincipal(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as IXMLCt_autorizacaoGuia;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_DadosBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_DadosSolicitante: IXMLCt_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as IXMLCt_solicitante;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_PrestadorExecutante: IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante;
begin
  Result := ChildNodes['prestadorExecutante'] as IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_IndicacaoClinica: UnicodeString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure TXMLCt_guiaSP_SADTReapresentacao.Set_IndicacaoClinica(Value: UnicodeString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_CaraterAtendimento: UnicodeString;
begin
  Result := ChildNodes['caraterAtendimento'].Text;
end;

procedure TXMLCt_guiaSP_SADTReapresentacao.Set_CaraterAtendimento(Value: UnicodeString);
begin
  ChildNodes['caraterAtendimento'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_DataHoraAtendimento: UnicodeString;
begin
  Result := ChildNodes['dataHoraAtendimento'].Text;
end;

procedure TXMLCt_guiaSP_SADTReapresentacao.Set_DataHoraAtendimento(Value: UnicodeString);
begin
  ChildNodes['dataHoraAtendimento'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_DiagnosticoAtendimento: IXMLCt_diagnosticoAtendimento;
begin
  Result := ChildNodes['diagnosticoAtendimento'] as IXMLCt_diagnosticoAtendimento;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_TipoSaida: UnicodeString;
begin
  Result := ChildNodes['tipoSaida'].Text;
end;

procedure TXMLCt_guiaSP_SADTReapresentacao.Set_TipoSaida(Value: UnicodeString);
begin
  ChildNodes['tipoSaida'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_TipoAtendimento: UnicodeString;
begin
  Result := ChildNodes['tipoAtendimento'].Text;
end;

procedure TXMLCt_guiaSP_SADTReapresentacao.Set_TipoAtendimento(Value: UnicodeString);
begin
  ChildNodes['tipoAtendimento'].NodeValue := Value;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_ProcedimentosRealizados: IXMLCt_procedimentoRevisao;
begin
  Result := ChildNodes['procedimentosRealizados'] as IXMLCt_procedimentoRevisao;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_OutrasDespesas: IXMLCt_outrasDespesasRevisao;
begin
  Result := ChildNodes['outrasDespesas'] as IXMLCt_outrasDespesasRevisao;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_OPMUtilizada: IXMLCt_OPMUtilizadasRevisao;
begin
  Result := ChildNodes['OPMUtilizada'] as IXMLCt_OPMUtilizadasRevisao;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_ValorTotal: IXMLCt_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as IXMLCt_valorTotalServicos;
end;

function TXMLCt_guiaSP_SADTReapresentacao.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaSP_SADTReapresentacao.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaSP_SADTReapresentacaoList }

function TXMLCt_guiaSP_SADTReapresentacaoList.Add: IXMLCt_guiaSP_SADTReapresentacao;
begin
  Result := AddItem(-1) as IXMLCt_guiaSP_SADTReapresentacao;
end;

function TXMLCt_guiaSP_SADTReapresentacaoList.Insert(const Index: Integer): IXMLCt_guiaSP_SADTReapresentacao;
begin
  Result := AddItem(Index) as IXMLCt_guiaSP_SADTReapresentacao;
end;

function TXMLCt_guiaSP_SADTReapresentacaoList.Get_Item(Index: Integer): IXMLCt_guiaSP_SADTReapresentacao;
begin
  Result := List[Index] as IXMLCt_guiaSP_SADTReapresentacao;
end;

{ TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante }

procedure TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante.AfterConstruction;
begin
  RegisterChildNode('profissionalExecutanteCompl', TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl);
  inherited;
end;

function TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante.Get_ProfissionalExecutanteCompl: IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl;
begin
  Result := ChildNodes['profissionalExecutanteCompl'] as IXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl;
end;

{ TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl }

procedure TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl.AfterConstruction;
begin
  RegisterChildNode('codigoProfissionalCompl', TXMLCt_identificacaoProfissionalCompl);
  inherited;
end;

function TXMLCt_guiaSP_SADTReapresentacao_prestadorExecutante_profissionalExecutanteCompl.Get_CodigoProfissionalCompl: IXMLCt_identificacaoProfissionalCompl;
begin
  Result := ChildNodes['codigoProfissionalCompl'] as IXMLCt_identificacaoProfissionalCompl;
end;

{ TXMLCt_procedimentoRevisao }

procedure TXMLCt_procedimentoRevisao.AfterConstruction;
begin
  RegisterChildNode('procedimentosRevisao', TXMLCt_procedimentoRevisao_procedimentosRevisao);
  ItemTag := 'procedimentosRevisao';
  ItemInterface := IXMLCt_procedimentoRevisao_procedimentosRevisao;
  inherited;
end;

function TXMLCt_procedimentoRevisao.Get_ProcedimentosRevisao(Index: Integer): IXMLCt_procedimentoRevisao_procedimentosRevisao;
begin
  Result := List[Index] as IXMLCt_procedimentoRevisao_procedimentosRevisao;
end;

function TXMLCt_procedimentoRevisao.Add: IXMLCt_procedimentoRevisao_procedimentosRevisao;
begin
  Result := AddItem(-1) as IXMLCt_procedimentoRevisao_procedimentosRevisao;
end;

function TXMLCt_procedimentoRevisao.Insert(const Index: Integer): IXMLCt_procedimentoRevisao_procedimentosRevisao;
begin
  Result := AddItem(Index) as IXMLCt_procedimentoRevisao_procedimentosRevisao;
end;

{ TXMLCt_procedimentoRevisao_procedimentosRevisao }

procedure TXMLCt_procedimentoRevisao_procedimentosRevisao.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_procedimentoRevisao_procedimentosRevisao.Get_Data: UnicodeString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure TXMLCt_procedimentoRevisao_procedimentosRevisao.Set_Data(Value: UnicodeString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function TXMLCt_procedimentoRevisao_procedimentosRevisao.Get_HoraInicio: UnicodeString;
begin
  Result := ChildNodes['horaInicio'].Text;
end;

procedure TXMLCt_procedimentoRevisao_procedimentosRevisao.Set_HoraInicio(Value: UnicodeString);
begin
  ChildNodes['horaInicio'].NodeValue := Value;
end;

function TXMLCt_procedimentoRevisao_procedimentosRevisao.Get_HoraFim: UnicodeString;
begin
  Result := ChildNodes['horaFim'].Text;
end;

procedure TXMLCt_procedimentoRevisao_procedimentosRevisao.Set_HoraFim(Value: UnicodeString);
begin
  ChildNodes['horaFim'].NodeValue := Value;
end;

function TXMLCt_procedimentoRevisao_procedimentosRevisao.Get_Procedimento: IXMLCt_tabela;
begin
  Result := ChildNodes['procedimento'] as IXMLCt_tabela;
end;

function TXMLCt_procedimentoRevisao_procedimentosRevisao.Get_QuantidadeRealizada: Integer;
begin
  Result := ChildNodes['quantidadeRealizada'].NodeValue;
end;

procedure TXMLCt_procedimentoRevisao_procedimentosRevisao.Set_QuantidadeRealizada(Value: Integer);
begin
  ChildNodes['quantidadeRealizada'].NodeValue := Value;
end;

function TXMLCt_procedimentoRevisao_procedimentosRevisao.Get_ViaAcesso: UnicodeString;
begin
  Result := ChildNodes['viaAcesso'].Text;
end;

procedure TXMLCt_procedimentoRevisao_procedimentosRevisao.Set_ViaAcesso(Value: UnicodeString);
begin
  ChildNodes['viaAcesso'].NodeValue := Value;
end;

function TXMLCt_procedimentoRevisao_procedimentosRevisao.Get_TecnicaUtilizada: UnicodeString;
begin
  Result := ChildNodes['tecnicaUtilizada'].Text;
end;

procedure TXMLCt_procedimentoRevisao_procedimentosRevisao.Set_TecnicaUtilizada(Value: UnicodeString);
begin
  ChildNodes['tecnicaUtilizada'].NodeValue := Value;
end;

function TXMLCt_procedimentoRevisao_procedimentosRevisao.Get_ReducaoAcrescimo: UnicodeString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure TXMLCt_procedimentoRevisao_procedimentosRevisao.Set_ReducaoAcrescimo(Value: UnicodeString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function TXMLCt_procedimentoRevisao_procedimentosRevisao.Get_Valor: UnicodeString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure TXMLCt_procedimentoRevisao_procedimentosRevisao.Set_Valor(Value: UnicodeString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function TXMLCt_procedimentoRevisao_procedimentosRevisao.Get_ValorTotal: UnicodeString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure TXMLCt_procedimentoRevisao_procedimentosRevisao.Set_ValorTotal(Value: UnicodeString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function TXMLCt_procedimentoRevisao_procedimentosRevisao.Get_JustificativaRevisao: UnicodeString;
begin
  Result := ChildNodes['justificativaRevisao'].Text;
end;

procedure TXMLCt_procedimentoRevisao_procedimentosRevisao.Set_JustificativaRevisao(Value: UnicodeString);
begin
  ChildNodes['justificativaRevisao'].NodeValue := Value;
end;

{ TXMLCt_outrasDespesasRevisao }

procedure TXMLCt_outrasDespesasRevisao.AfterConstruction;
begin
  RegisterChildNode('itensDespesas', TXMLCt_outrasDespesasRevisao_itensDespesas);
  FItensDespesas := CreateCollection(TXMLCt_outrasDespesasRevisao_itensDespesasList, IXMLCt_outrasDespesasRevisao_itensDespesas, 'itensDespesas') as IXMLCt_outrasDespesasRevisao_itensDespesasList;
  inherited;
end;

function TXMLCt_outrasDespesasRevisao.Get_ItensDespesas: IXMLCt_outrasDespesasRevisao_itensDespesasList;
begin
  Result := FItensDespesas;
end;

function TXMLCt_outrasDespesasRevisao.Get_TotalGeralOutrasDespesas: UnicodeString;
begin
  Result := ChildNodes['totalGeralOutrasDespesas'].Text;
end;

procedure TXMLCt_outrasDespesasRevisao.Set_TotalGeralOutrasDespesas(Value: UnicodeString);
begin
  ChildNodes['totalGeralOutrasDespesas'].NodeValue := Value;
end;

{ TXMLCt_outrasDespesasRevisao_itensDespesas }

procedure TXMLCt_outrasDespesasRevisao_itensDespesas.AfterConstruction;
begin
  RegisterChildNode('despesa', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_outrasDespesasRevisao_itensDespesas.Get_TipoDespesa: UnicodeString;
begin
  Result := ChildNodes['tipoDespesa'].Text;
end;

procedure TXMLCt_outrasDespesasRevisao_itensDespesas.Set_TipoDespesa(Value: UnicodeString);
begin
  ChildNodes['tipoDespesa'].NodeValue := Value;
end;

function TXMLCt_outrasDespesasRevisao_itensDespesas.Get_DataRealizacao: UnicodeString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure TXMLCt_outrasDespesasRevisao_itensDespesas.Set_DataRealizacao(Value: UnicodeString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

function TXMLCt_outrasDespesasRevisao_itensDespesas.Get_Despesa: IXMLCt_tabela;
begin
  Result := ChildNodes['despesa'] as IXMLCt_tabela;
end;

function TXMLCt_outrasDespesasRevisao_itensDespesas.Get_ReducaoAcrescimo: UnicodeString;
begin
  Result := ChildNodes['reducaoAcrescimo'].Text;
end;

procedure TXMLCt_outrasDespesasRevisao_itensDespesas.Set_ReducaoAcrescimo(Value: UnicodeString);
begin
  ChildNodes['reducaoAcrescimo'].NodeValue := Value;
end;

function TXMLCt_outrasDespesasRevisao_itensDespesas.Get_Quantidade: UnicodeString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure TXMLCt_outrasDespesasRevisao_itensDespesas.Set_Quantidade(Value: UnicodeString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function TXMLCt_outrasDespesasRevisao_itensDespesas.Get_ValorUnitario: UnicodeString;
begin
  Result := ChildNodes['valorUnitario'].Text;
end;

procedure TXMLCt_outrasDespesasRevisao_itensDespesas.Set_ValorUnitario(Value: UnicodeString);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function TXMLCt_outrasDespesasRevisao_itensDespesas.Get_ValorTotal: UnicodeString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure TXMLCt_outrasDespesasRevisao_itensDespesas.Set_ValorTotal(Value: UnicodeString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function TXMLCt_outrasDespesasRevisao_itensDespesas.Get_Justificativa: UnicodeString;
begin
  Result := ChildNodes['justificativa'].Text;
end;

procedure TXMLCt_outrasDespesasRevisao_itensDespesas.Set_Justificativa(Value: UnicodeString);
begin
  ChildNodes['justificativa'].NodeValue := Value;
end;

{ TXMLCt_outrasDespesasRevisao_itensDespesasList }

function TXMLCt_outrasDespesasRevisao_itensDespesasList.Add: IXMLCt_outrasDespesasRevisao_itensDespesas;
begin
  Result := AddItem(-1) as IXMLCt_outrasDespesasRevisao_itensDespesas;
end;

function TXMLCt_outrasDespesasRevisao_itensDespesasList.Insert(const Index: Integer): IXMLCt_outrasDespesasRevisao_itensDespesas;
begin
  Result := AddItem(Index) as IXMLCt_outrasDespesasRevisao_itensDespesas;
end;

function TXMLCt_outrasDespesasRevisao_itensDespesasList.Get_Item(Index: Integer): IXMLCt_outrasDespesasRevisao_itensDespesas;
begin
  Result := List[Index] as IXMLCt_outrasDespesasRevisao_itensDespesas;
end;

{ TXMLCt_OPMUtilizadasRevisao }

procedure TXMLCt_OPMUtilizadasRevisao.AfterConstruction;
begin
  RegisterChildNode('OPMUtilizada', TXMLCt_OPMUtilizadasRevisao_OPMUtilizada);
  inherited;
end;

function TXMLCt_OPMUtilizadasRevisao.Get_OPMUtilizada: IXMLCt_OPMUtilizadasRevisao_OPMUtilizada;
begin
  Result := ChildNodes['OPMUtilizada'] as IXMLCt_OPMUtilizadasRevisao_OPMUtilizada;
end;

function TXMLCt_OPMUtilizadasRevisao.Get_ValorTotalOPM: UnicodeString;
begin
  Result := ChildNodes['valorTotalOPM'].Text;
end;

procedure TXMLCt_OPMUtilizadasRevisao.Set_ValorTotalOPM(Value: UnicodeString);
begin
  ChildNodes['valorTotalOPM'].NodeValue := Value;
end;

{ TXMLCt_OPMUtilizadasRevisao_OPMUtilizada }

procedure TXMLCt_OPMUtilizadasRevisao_OPMUtilizada.AfterConstruction;
begin
  RegisterChildNode('OPM', TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM);
  ItemTag := 'OPM';
  ItemInterface := IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
  inherited;
end;

function TXMLCt_OPMUtilizadasRevisao_OPMUtilizada.Get_OPM(Index: Integer): IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
begin
  Result := List[Index] as IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
end;

function TXMLCt_OPMUtilizadasRevisao_OPMUtilizada.Add: IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
begin
  Result := AddItem(-1) as IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
end;

function TXMLCt_OPMUtilizadasRevisao_OPMUtilizada.Insert(const Index: Integer): IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
begin
  Result := AddItem(Index) as IXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM;
end;

{ TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM }

procedure TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.AfterConstruction;
begin
  RegisterChildNode('OPM', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.Get_OPM: IXMLCt_tabela;
begin
  Result := ChildNodes['OPM'] as IXMLCt_tabela;
end;

function TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.Get_ValorUnitario: UnicodeString;
begin
  Result := ChildNodes['valorUnitario'].Text;
end;

procedure TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.Set_ValorUnitario(Value: UnicodeString);
begin
  ChildNodes['valorUnitario'].NodeValue := Value;
end;

function TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.Get_Quantidade: UnicodeString;
begin
  Result := ChildNodes['quantidade'].Text;
end;

procedure TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.Set_Quantidade(Value: UnicodeString);
begin
  ChildNodes['quantidade'].NodeValue := Value;
end;

function TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.Get_CodigoBarra: UnicodeString;
begin
  Result := ChildNodes['codigoBarra'].Text;
end;

procedure TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.Set_CodigoBarra(Value: UnicodeString);
begin
  ChildNodes['codigoBarra'].NodeValue := Value;
end;

function TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.Get_ValorTotal: UnicodeString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.Set_ValorTotal(Value: UnicodeString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.Get_Justificativa: UnicodeString;
begin
  Result := ChildNodes['justificativa'].Text;
end;

procedure TXMLCt_OPMUtilizadasRevisao_OPMUtilizada_OPM.Set_Justificativa(Value: UnicodeString);
begin
  ChildNodes['justificativa'].NodeValue := Value;
end;

{ TXMLCt_guiaResumoInternacaoReapresentacao }

procedure TXMLCt_guiaResumoInternacaoReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaInternacao', TXMLCt_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', TXMLCt_beneficiario);
  RegisterChildNode('identificacaoExecutante', TXMLCt_contratado);
  RegisterChildNode('dadosAutorizacao', TXMLCt_autorizacaoGuia);
  RegisterChildNode('internacaoObstetrica', TXMLCt_internacaoObstetrica);
  RegisterChildNode('obitoNeonatal', TXMLCt_obitoNeonatal);
  RegisterChildNode('diagnosticosSaidaInternacao', TXMLCt_diagnosticoSaidaInternacao);
  RegisterChildNode('procedimentosRealizados', TXMLCt_procedimentoRevisao);
  RegisterChildNode('OPMUtilizadas', TXMLCt_OPMUtilizadasRevisao);
  RegisterChildNode('outrasDespesas', TXMLCt_outrasDespesasRevisao);
  RegisterChildNode('valorTotal', TXMLCt_valorTotalServicos);
  inherited;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_IdentificacaoGuiaInternacao: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaInternacao'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_NumeroGuiaSolicitacao: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaSolicitacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacaoReapresentacao.Set_NumeroGuiaSolicitacao(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaSolicitacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_DadosBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_IdentificacaoExecutante: IXMLCt_contratado;
begin
  Result := ChildNodes['identificacaoExecutante'] as IXMLCt_contratado;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_DadosAutorizacao: IXMLCt_autorizacaoGuia;
begin
  Result := ChildNodes['dadosAutorizacao'] as IXMLCt_autorizacaoGuia;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_CaraterInternacao: UnicodeString;
begin
  Result := ChildNodes['caraterInternacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacaoReapresentacao.Set_CaraterInternacao(Value: UnicodeString);
begin
  ChildNodes['caraterInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_Acomodacao: UnicodeString;
begin
  Result := ChildNodes['acomodacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacaoReapresentacao.Set_Acomodacao(Value: UnicodeString);
begin
  ChildNodes['acomodacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_DataHoraInternacao: UnicodeString;
begin
  Result := ChildNodes['dataHoraInternacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacaoReapresentacao.Set_DataHoraInternacao(Value: UnicodeString);
begin
  ChildNodes['dataHoraInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_DataHoraSaidaInternacao: UnicodeString;
begin
  Result := ChildNodes['dataHoraSaidaInternacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacaoReapresentacao.Set_DataHoraSaidaInternacao(Value: UnicodeString);
begin
  ChildNodes['dataHoraSaidaInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_TipoInternacao: UnicodeString;
begin
  Result := ChildNodes['tipoInternacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacaoReapresentacao.Set_TipoInternacao(Value: UnicodeString);
begin
  ChildNodes['tipoInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_RegimeInternacao: UnicodeString;
begin
  Result := ChildNodes['regimeInternacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacaoReapresentacao.Set_RegimeInternacao(Value: UnicodeString);
begin
  ChildNodes['regimeInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_InternacaoObstetrica: IXMLCt_internacaoObstetrica;
begin
  Result := ChildNodes['internacaoObstetrica'] as IXMLCt_internacaoObstetrica;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_ObitoNeonatal: IXMLCt_obitoNeonatal;
begin
  Result := ChildNodes['obitoNeonatal'] as IXMLCt_obitoNeonatal;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_DiagnosticosSaidaInternacao: IXMLCt_diagnosticoSaidaInternacao;
begin
  Result := ChildNodes['diagnosticosSaidaInternacao'] as IXMLCt_diagnosticoSaidaInternacao;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_ProcedimentosRealizados: IXMLCt_procedimentoRevisao;
begin
  Result := ChildNodes['procedimentosRealizados'] as IXMLCt_procedimentoRevisao;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_OPMUtilizadas: IXMLCt_OPMUtilizadasRevisao;
begin
  Result := ChildNodes['OPMUtilizadas'] as IXMLCt_OPMUtilizadasRevisao;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_OutrasDespesas: IXMLCt_outrasDespesasRevisao;
begin
  Result := ChildNodes['outrasDespesas'] as IXMLCt_outrasDespesasRevisao;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_TipoFaturamento: UnicodeString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure TXMLCt_guiaResumoInternacaoReapresentacao.Set_TipoFaturamento(Value: UnicodeString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_ValorTotal: IXMLCt_valorTotalServicos;
begin
  Result := ChildNodes['valorTotal'] as IXMLCt_valorTotalServicos;
end;

function TXMLCt_guiaResumoInternacaoReapresentacao.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaResumoInternacaoReapresentacao.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaResumoInternacaoReapresentacaoList }

function TXMLCt_guiaResumoInternacaoReapresentacaoList.Add: IXMLCt_guiaResumoInternacaoReapresentacao;
begin
  Result := AddItem(-1) as IXMLCt_guiaResumoInternacaoReapresentacao;
end;

function TXMLCt_guiaResumoInternacaoReapresentacaoList.Insert(const Index: Integer): IXMLCt_guiaResumoInternacaoReapresentacao;
begin
  Result := AddItem(Index) as IXMLCt_guiaResumoInternacaoReapresentacao;
end;

function TXMLCt_guiaResumoInternacaoReapresentacaoList.Get_Item(Index: Integer): IXMLCt_guiaResumoInternacaoReapresentacao;
begin
  Result := List[Index] as IXMLCt_guiaResumoInternacaoReapresentacao;
end;

{ TXMLCt_guiaHonorarioIndividualReapresentacao }

procedure TXMLCt_guiaHonorarioIndividualReapresentacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaHonorarioIndividual', TXMLCt_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', TXMLCt_beneficiario);
  RegisterChildNode('contratado', TXMLCt_contratado);
  RegisterChildNode('contratadoExecutante', TXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante);
  RegisterChildNode('procedimentosExamesRealizados', TXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados);
  inherited;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacao.Get_IdentificacaoGuiaHonorarioIndividual: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaHonorarioIndividual'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacao.Get_NumeroGuiaPrincipal: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure TXMLCt_guiaHonorarioIndividualReapresentacao.Set_NumeroGuiaPrincipal(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacao.Get_DadosBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacao.Get_Contratado: IXMLCt_contratado;
begin
  Result := ChildNodes['contratado'] as IXMLCt_contratado;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacao.Get_ContratadoExecutante: IXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante;
begin
  Result := ChildNodes['contratadoExecutante'] as IXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacao.Get_ProcedimentosExamesRealizados: IXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados;
begin
  Result := ChildNodes['procedimentosExamesRealizados'] as IXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacao.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaHonorarioIndividualReapresentacao.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaHonorarioIndividualReapresentacaoList }

function TXMLCt_guiaHonorarioIndividualReapresentacaoList.Add: IXMLCt_guiaHonorarioIndividualReapresentacao;
begin
  Result := AddItem(-1) as IXMLCt_guiaHonorarioIndividualReapresentacao;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacaoList.Insert(const Index: Integer): IXMLCt_guiaHonorarioIndividualReapresentacao;
begin
  Result := AddItem(Index) as IXMLCt_guiaHonorarioIndividualReapresentacao;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacaoList.Get_Item(Index: Integer): IXMLCt_guiaHonorarioIndividualReapresentacao;
begin
  Result := List[Index] as IXMLCt_guiaHonorarioIndividualReapresentacao;
end;

{ TXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante }

procedure TXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante.AfterConstruction;
begin
  RegisterChildNode('identificacaoProfissional', TXMLCt_profissionalExecutante);
  inherited;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante.Get_IdentificacaoProfissional: IXMLCt_profissionalExecutante;
begin
  Result := ChildNodes['identificacaoProfissional'] as IXMLCt_profissionalExecutante;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante.Get_PosicaoProfissional: UnicodeString;
begin
  Result := ChildNodes['posicaoProfissional'].Text;
end;

procedure TXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante.Set_PosicaoProfissional(Value: UnicodeString);
begin
  ChildNodes['posicaoProfissional'].NodeValue := Value;
end;

function TXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante.Get_TipoAcomodacao: UnicodeString;
begin
  Result := ChildNodes['tipoAcomodacao'].Text;
end;

procedure TXMLCt_guiaHonorarioIndividualReapresentacao_contratadoExecutante.Set_TipoAcomodacao(Value: UnicodeString);
begin
  ChildNodes['tipoAcomodacao'].NodeValue := Value;
end;

{ TXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados }

function TXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados.Get_TotalGeralHonorario: UnicodeString;
begin
  Result := ChildNodes['totalGeralHonorario'].Text;
end;

procedure TXMLCt_guiaHonorarioIndividualReapresentacao_procedimentosExamesRealizados.Set_TotalGeralHonorario(Value: UnicodeString);
begin
  ChildNodes['totalGeralHonorario'].NodeValue := Value;
end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacao }

procedure TXMLCt_guiaTratamentoOdontologicoReapresentacao.AfterConstruction;
begin
  RegisterChildNode('cabecalhoGuia', TXMLCt_cabecalhoGuiaOdonto);
  RegisterChildNode('dadosBeneficiario', TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario);
  RegisterChildNode('dadosContratadoExecutante', TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante);
  RegisterChildNode('procedimentosExecutados', TXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados);
  RegisterChildNode('outrasDespesas', TXMLCt_outrasDespesas);
  RegisterChildNode('dadosAtendimento', TXMLCt_atendimentoOdontologia);
  inherited;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao.Get_CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto;
begin
  Result := ChildNodes['cabecalhoGuia'] as IXMLCt_cabecalhoGuiaOdonto;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao.Get_DadosBeneficiario: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao.Get_DadosContratadoExecutante: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante;
begin
  Result := ChildNodes['dadosContratadoExecutante'] as IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao.Get_ProcedimentosExecutados: IXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados;
begin
  Result := ChildNodes['procedimentosExecutados'] as IXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao.Get_OutrasDespesas: IXMLCt_outrasDespesas;
begin
  Result := ChildNodes['outrasDespesas'] as IXMLCt_outrasDespesas;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao.Get_DadosAtendimento: IXMLCt_atendimentoOdontologia;
begin
  Result := ChildNodes['dadosAtendimento'] as IXMLCt_atendimentoOdontologia;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao.Get_TipoFaturamento: UnicodeString;
begin
  Result := ChildNodes['tipoFaturamento'].Text;
end;

procedure TXMLCt_guiaTratamentoOdontologicoReapresentacao.Set_TipoFaturamento(Value: UnicodeString);
begin
  ChildNodes['tipoFaturamento'].NodeValue := Value;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaTratamentoOdontologicoReapresentacao.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacaoList }

function TXMLCt_guiaTratamentoOdontologicoReapresentacaoList.Add: IXMLCt_guiaTratamentoOdontologicoReapresentacao;
begin
  Result := AddItem(-1) as IXMLCt_guiaTratamentoOdontologicoReapresentacao;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacaoList.Insert(const Index: Integer): IXMLCt_guiaTratamentoOdontologicoReapresentacao;
begin
  Result := AddItem(Index) as IXMLCt_guiaTratamentoOdontologicoReapresentacao;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacaoList.Get_Item(Index: Integer): IXMLCt_guiaTratamentoOdontologicoReapresentacao;
begin
  Result := List[Index] as IXMLCt_guiaTratamentoOdontologicoReapresentacao;
end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario }

function TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario.Get_NomeEmpresa: UnicodeString;
begin
  Result := ChildNodes['nomeEmpresa'].Text;
end;

procedure TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario.Set_NomeEmpresa(Value: UnicodeString);
begin
  ChildNodes['nomeEmpresa'].NodeValue := Value;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario.Get_NumeroTelefone: UnicodeString;
begin
  Result := ChildNodes['numeroTelefone'].Text;
end;

procedure TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario.Set_NumeroTelefone(Value: UnicodeString);
begin
  ChildNodes['numeroTelefone'].NodeValue := Value;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario.Get_NomeTitular: UnicodeString;
begin
  Result := ChildNodes['nomeTitular'].Text;
end;

procedure TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosBeneficiario.Set_NomeTitular(Value: UnicodeString);
begin
  ChildNodes['nomeTitular'].NodeValue := Value;
end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante }

procedure TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante.AfterConstruction;
begin
  RegisterChildNode('dadosContratado', TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado);
  RegisterChildNode('dadosExecutante', TXMLCt_profissionalExecutante);
  inherited;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante.Get_DadosContratado: IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado;
begin
  Result := ChildNodes['dadosContratado'] as IXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante.Get_DadosExecutante: IXMLCt_profissionalExecutante;
begin
  Result := ChildNodes['dadosExecutante'] as IXMLCt_profissionalExecutante;
end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado }

procedure TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', TXMLCt_conselhoProfissional);
  inherited;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao_dadosContratadoExecutante_dadosContratado.Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as IXMLCt_conselhoProfissional;
end;

{ TXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados }

procedure TXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados.AfterConstruction;
begin
  RegisterChildNode('procedimentoExecutado', TXMLCt_procedimentoOdontoRevisao);
  ItemTag := 'procedimentoExecutado';
  ItemInterface := IXMLCt_procedimentoOdontoRevisao;
  inherited;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados.Get_ProcedimentoExecutado(Index: Integer): IXMLCt_procedimentoOdontoRevisao;
begin
  Result := List[Index] as IXMLCt_procedimentoOdontoRevisao;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados.Add: IXMLCt_procedimentoOdontoRevisao;
begin
  Result := AddItem(-1) as IXMLCt_procedimentoOdontoRevisao;
end;

function TXMLCt_guiaTratamentoOdontologicoReapresentacao_procedimentosExecutados.Insert(const Index: Integer): IXMLCt_procedimentoOdontoRevisao;
begin
  Result := AddItem(Index) as IXMLCt_procedimentoOdontoRevisao;
end;

{ TXMLCt_procedimentoOdontoRevisao }

procedure TXMLCt_procedimentoOdontoRevisao.AfterConstruction;
begin
  RegisterChildNode('procedimentoOdontologia', TXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia);
  inherited;
end;

function TXMLCt_procedimentoOdontoRevisao.Get_ProcedimentoOdontologia: IXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia;
begin
  Result := ChildNodes['procedimentoOdontologia'] as IXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia;
end;

function TXMLCt_procedimentoOdontoRevisao.Get_ValorTotal: UnicodeString;
begin
  Result := ChildNodes['valorTotal'].Text;
end;

procedure TXMLCt_procedimentoOdontoRevisao.Set_ValorTotal(Value: UnicodeString);
begin
  ChildNodes['valorTotal'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontoRevisao.Get_QuantidadeTotalUS: UnicodeString;
begin
  Result := ChildNodes['quantidadeTotalUS'].Text;
end;

procedure TXMLCt_procedimentoOdontoRevisao.Set_QuantidadeTotalUS(Value: UnicodeString);
begin
  ChildNodes['quantidadeTotalUS'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontoRevisao.Get_TotalFranquiaCoparticipacao: UnicodeString;
begin
  Result := ChildNodes['totalFranquiaCoparticipacao'].Text;
end;

procedure TXMLCt_procedimentoOdontoRevisao.Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
begin
  ChildNodes['totalFranquiaCoparticipacao'].NodeValue := Value;
end;

function TXMLCt_procedimentoOdontoRevisao.Get_JustificativaRevisao: UnicodeString;
begin
  Result := ChildNodes['justificativaRevisao'].Text;
end;

procedure TXMLCt_procedimentoOdontoRevisao.Set_JustificativaRevisao(Value: UnicodeString);
begin
  ChildNodes['justificativaRevisao'].NodeValue := Value;
end;

{ TXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia }

function TXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia.Get_DataRealizacao: UnicodeString;
begin
  Result := ChildNodes['dataRealizacao'].Text;
end;

procedure TXMLCt_procedimentoOdontoRevisao_procedimentoOdontologia.Set_DataRealizacao(Value: UnicodeString);
begin
  ChildNodes['dataRealizacao'].NodeValue := Value;
end;

{ TXMLCt_loteGuias_guias }

{ TXMLCt_loteAnexo }

procedure TXMLCt_loteAnexo.AfterConstruction;
begin
  RegisterChildNode('anexoGuia', TXMLCt_loteAnexo_anexoGuia);
  inherited;
end;

function TXMLCt_loteAnexo.Get_NumeroLote: UnicodeString;
begin
  Result := ChildNodes['numeroLote'].Text;
end;

procedure TXMLCt_loteAnexo.Set_NumeroLote(Value: UnicodeString);
begin
  ChildNodes['numeroLote'].NodeValue := Value;
end;

function TXMLCt_loteAnexo.Get_AnexoGuia: IXMLCt_loteAnexo_anexoGuia;
begin
  Result := ChildNodes['anexoGuia'] as IXMLCt_loteAnexo_anexoGuia;
end;

{ TXMLCt_loteAnexo_anexoGuia }

procedure TXMLCt_loteAnexo_anexoGuia.AfterConstruction;
begin
  RegisterChildNode('anexoSituacaoInicial', TXMLCt_anexoSituacaoInicial);
  inherited;
end;

function TXMLCt_loteAnexo_anexoGuia.Get_AnexoSituacaoInicial: IXMLCt_anexoSituacaoInicial;
begin
  Result := ChildNodes['anexoSituacaoInicial'] as IXMLCt_anexoSituacaoInicial;
end;

{ TXMLCt_anexoSituacaoInicial }

procedure TXMLCt_anexoSituacaoInicial.AfterConstruction;
begin
  RegisterChildNode('cabecalhoAnexoGuia', TXMLCt_cabecalhoAnexoOdonto);
  RegisterChildNode('dadosBeneficiario', TXMLCt_anexoSituacaoInicial_dadosBeneficiario);
  RegisterChildNode('dadosContratadoExecutante', TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante);
  RegisterChildNode('situacaoInicial', TXMLCt_situacaoInicial);
  inherited;
end;

function TXMLCt_anexoSituacaoInicial.Get_CabecalhoAnexoGuia: IXMLCt_cabecalhoAnexoOdonto;
begin
  Result := ChildNodes['cabecalhoAnexoGuia'] as IXMLCt_cabecalhoAnexoOdonto;
end;

function TXMLCt_anexoSituacaoInicial.Get_DadosBeneficiario: IXMLCt_anexoSituacaoInicial_dadosBeneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_anexoSituacaoInicial_dadosBeneficiario;
end;

function TXMLCt_anexoSituacaoInicial.Get_DadosContratadoExecutante: IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante;
begin
  Result := ChildNodes['dadosContratadoExecutante'] as IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante;
end;

function TXMLCt_anexoSituacaoInicial.Get_SituacaoInicial: IXMLCt_situacaoInicial;
begin
  Result := ChildNodes['situacaoInicial'] as IXMLCt_situacaoInicial;
end;

function TXMLCt_anexoSituacaoInicial.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_anexoSituacaoInicial.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_cabecalhoAnexoOdonto }

function TXMLCt_cabecalhoAnexoOdonto.Get_NumeroGuiaPrincipal: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure TXMLCt_cabecalhoAnexoOdonto.Set_NumeroGuiaPrincipal(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

{ TXMLCt_anexoSituacaoInicial_dadosBeneficiario }

function TXMLCt_anexoSituacaoInicial_dadosBeneficiario.Get_NomeEmpresa: UnicodeString;
begin
  Result := ChildNodes['nomeEmpresa'].Text;
end;

procedure TXMLCt_anexoSituacaoInicial_dadosBeneficiario.Set_NomeEmpresa(Value: UnicodeString);
begin
  ChildNodes['nomeEmpresa'].NodeValue := Value;
end;

function TXMLCt_anexoSituacaoInicial_dadosBeneficiario.Get_NumeroTelefone: UnicodeString;
begin
  Result := ChildNodes['numeroTelefone'].Text;
end;

procedure TXMLCt_anexoSituacaoInicial_dadosBeneficiario.Set_NumeroTelefone(Value: UnicodeString);
begin
  ChildNodes['numeroTelefone'].NodeValue := Value;
end;

function TXMLCt_anexoSituacaoInicial_dadosBeneficiario.Get_NomeTitular: UnicodeString;
begin
  Result := ChildNodes['nomeTitular'].Text;
end;

procedure TXMLCt_anexoSituacaoInicial_dadosBeneficiario.Set_NomeTitular(Value: UnicodeString);
begin
  ChildNodes['nomeTitular'].NodeValue := Value;
end;

{ TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante }

procedure TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante.AfterConstruction;
begin
  RegisterChildNode('dadosContratado', TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado);
  RegisterChildNode('dadosExecutante', TXMLCt_profissionalExecutante);
  inherited;
end;

function TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante.Get_DadosContratado: IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado;
begin
  Result := ChildNodes['dadosContratado'] as IXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado;
end;

function TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante.Get_DadosExecutante: IXMLCt_profissionalExecutante;
begin
  Result := ChildNodes['dadosExecutante'] as IXMLCt_profissionalExecutante;
end;

{ TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado }

procedure TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', TXMLCt_conselhoProfissional);
  inherited;
end;

function TXMLCt_anexoSituacaoInicial_dadosContratadoExecutante_dadosContratado.Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as IXMLCt_conselhoProfissional;
end;

{ TXMLCt_situacaoInicial }

procedure TXMLCt_situacaoInicial.AfterConstruction;
begin
  RegisterChildNode('situacaoClinica', TXMLCt_situacaoClinica);
  inherited;
end;

function TXMLCt_situacaoInicial.Get_SituacaoClinica: IXMLCt_situacaoClinica;
begin
  Result := ChildNodes['situacaoClinica'] as IXMLCt_situacaoClinica;
end;

function TXMLCt_situacaoInicial.Get_DoencaPeriodontal: Boolean;
begin
  Result := ChildNodes['doencaPeriodontal'].NodeValue;
end;

procedure TXMLCt_situacaoInicial.Set_DoencaPeriodontal(Value: Boolean);
begin
  ChildNodes['doencaPeriodontal'].NodeValue := Value;
end;

function TXMLCt_situacaoInicial.Get_AlteracaoTecidoMole: Boolean;
begin
  Result := ChildNodes['alteracaoTecidoMole'].NodeValue;
end;

procedure TXMLCt_situacaoInicial.Set_AlteracaoTecidoMole(Value: Boolean);
begin
  ChildNodes['alteracaoTecidoMole'].NodeValue := Value;
end;

function TXMLCt_situacaoInicial.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_situacaoInicial.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_situacaoClinica }

procedure TXMLCt_situacaoClinica.AfterConstruction;
begin
  RegisterChildNode('dentes', TXMLCt_situacaoClinica_dentes);
  ItemTag := 'dentes';
  ItemInterface := IXMLCt_situacaoClinica_dentes;
  inherited;
end;

function TXMLCt_situacaoClinica.Get_Dentes(Index: Integer): IXMLCt_situacaoClinica_dentes;
begin
  Result := List[Index] as IXMLCt_situacaoClinica_dentes;
end;

function TXMLCt_situacaoClinica.Add: IXMLCt_situacaoClinica_dentes;
begin
  Result := AddItem(-1) as IXMLCt_situacaoClinica_dentes;
end;

function TXMLCt_situacaoClinica.Insert(const Index: Integer): IXMLCt_situacaoClinica_dentes;
begin
  Result := AddItem(Index) as IXMLCt_situacaoClinica_dentes;
end;

{ TXMLCt_situacaoClinica_dentes }

function TXMLCt_situacaoClinica_dentes.Get_ElementoDentario: UnicodeString;
begin
  Result := ChildNodes['elementoDentario'].Text;
end;

procedure TXMLCt_situacaoClinica_dentes.Set_ElementoDentario(Value: UnicodeString);
begin
  ChildNodes['elementoDentario'].NodeValue := Value;
end;

function TXMLCt_situacaoClinica_dentes.Get_CondicaoClinica: UnicodeString;
begin
  Result := ChildNodes['condicaoClinica'].Text;
end;

procedure TXMLCt_situacaoClinica_dentes.Set_CondicaoClinica(Value: UnicodeString);
begin
  ChildNodes['condicaoClinica'].NodeValue := Value;
end;

{ TXMLCt_solicitacaoDemonstrativoPagamento }

procedure TXMLCt_solicitacaoDemonstrativoPagamento.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', TXMLCt_contratado);
  inherited;
end;

function TXMLCt_solicitacaoDemonstrativoPagamento.Get_DadosPrestador: IXMLCt_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as IXMLCt_contratado;
end;

function TXMLCt_solicitacaoDemonstrativoPagamento.Get_DataSolicitacao: UnicodeString;
begin
  Result := ChildNodes['dataSolicitacao'].Text;
end;

procedure TXMLCt_solicitacaoDemonstrativoPagamento.Set_DataSolicitacao(Value: UnicodeString);
begin
  ChildNodes['dataSolicitacao'].NodeValue := Value;
end;

function TXMLCt_solicitacaoDemonstrativoPagamento.Get_TipoDemonstrativo: UnicodeString;
begin
  Result := ChildNodes['tipoDemonstrativo'].Text;
end;

procedure TXMLCt_solicitacaoDemonstrativoPagamento.Set_TipoDemonstrativo(Value: UnicodeString);
begin
  ChildNodes['tipoDemonstrativo'].NodeValue := Value;
end;

function TXMLCt_solicitacaoDemonstrativoPagamento.Get_DataInicial: UnicodeString;
begin
  Result := ChildNodes['dataInicial'].Text;
end;

procedure TXMLCt_solicitacaoDemonstrativoPagamento.Set_DataInicial(Value: UnicodeString);
begin
  ChildNodes['dataInicial'].NodeValue := Value;
end;

function TXMLCt_solicitacaoDemonstrativoPagamento.Get_DataFinal: UnicodeString;
begin
  Result := ChildNodes['dataFinal'].Text;
end;

procedure TXMLCt_solicitacaoDemonstrativoPagamento.Set_DataFinal(Value: UnicodeString);
begin
  ChildNodes['dataFinal'].NodeValue := Value;
end;

function TXMLCt_solicitacaoDemonstrativoPagamento.Get_NumeroProtocolo: UnicodeString;
begin
  Result := ChildNodes['numeroProtocolo'].Text;
end;

procedure TXMLCt_solicitacaoDemonstrativoPagamento.Set_NumeroProtocolo(Value: UnicodeString);
begin
  ChildNodes['numeroProtocolo'].NodeValue := Value;
end;

{ TXMLCt_solicitacaoStatusProtocolo }

procedure TXMLCt_solicitacaoStatusProtocolo.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', TXMLCt_contratado);
  RegisterChildNode('detalheProtocolo', TXMLCt_solicitacaoStatusProtocolo_detalheProtocolo);
  inherited;
end;

function TXMLCt_solicitacaoStatusProtocolo.Get_DadosPrestador: IXMLCt_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as IXMLCt_contratado;
end;

function TXMLCt_solicitacaoStatusProtocolo.Get_DataSolicitacao: UnicodeString;
begin
  Result := ChildNodes['dataSolicitacao'].Text;
end;

procedure TXMLCt_solicitacaoStatusProtocolo.Set_DataSolicitacao(Value: UnicodeString);
begin
  ChildNodes['dataSolicitacao'].NodeValue := Value;
end;

function TXMLCt_solicitacaoStatusProtocolo.Get_DetalheProtocolo: IXMLCt_solicitacaoStatusProtocolo_detalheProtocolo;
begin
  Result := ChildNodes['detalheProtocolo'] as IXMLCt_solicitacaoStatusProtocolo_detalheProtocolo;
end;

{ TXMLCt_solicitacaoStatusProtocolo_detalheProtocolo }

procedure TXMLCt_solicitacaoStatusProtocolo_detalheProtocolo.AfterConstruction;
begin
  ItemTag := 'numeroProtocolo';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLCt_solicitacaoStatusProtocolo_detalheProtocolo.Get_NumeroProtocolo(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLCt_solicitacaoStatusProtocolo_detalheProtocolo.Add(const NumeroProtocolo: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := NumeroProtocolo;
end;

function TXMLCt_solicitacaoStatusProtocolo_detalheProtocolo.Insert(const Index: Integer; const NumeroProtocolo: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := NumeroProtocolo;
end;

{ TXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento }

procedure TXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento.AfterConstruction;
begin
  RegisterChildNode('guiaSolicInternacao', TXMLCt_guiaSolicInternacao);
  RegisterChildNode('guiaSolicitacaoSADT', TXMLCt_guiaSolicitacaoSP_SADT);
  RegisterChildNode('guiaSolicitacaoOdontologia', TXMLCt_guiaSolicitacaoOdonto);
  RegisterChildNode('guiaSolicitacaoProrrogacao', TXMLCt_guiaSolicitacaoProrrogacao);
  inherited;
end;

function TXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento.Get_GuiaSolicInternacao: IXMLCt_guiaSolicInternacao;
begin
  Result := ChildNodes['guiaSolicInternacao'] as IXMLCt_guiaSolicInternacao;
end;

function TXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento.Get_GuiaSolicitacaoSADT: IXMLCt_guiaSolicitacaoSP_SADT;
begin
  Result := ChildNodes['guiaSolicitacaoSADT'] as IXMLCt_guiaSolicitacaoSP_SADT;
end;

function TXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento.Get_GuiaSolicitacaoOdontologia: IXMLCt_guiaSolicitacaoOdonto;
begin
  Result := ChildNodes['guiaSolicitacaoOdontologia'] as IXMLCt_guiaSolicitacaoOdonto;
end;

function TXMLMensagemTISS_prestadorParaOperadora_solicitacaoProcedimento.Get_GuiaSolicitacaoProrrogacao: IXMLCt_guiaSolicitacaoProrrogacao;
begin
  Result := ChildNodes['guiaSolicitacaoProrrogacao'] as IXMLCt_guiaSolicitacaoProrrogacao;
end;

{ TXMLCt_guiaSolicInternacao }

procedure TXMLCt_guiaSolicInternacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSolicitacaoInternacao', TXMLCt_cabecalhoSolicitacao);
  RegisterChildNode('dadosBeneficiario', TXMLCt_beneficiario);
  RegisterChildNode('dadosSolicitanteAtendimento', TXMLCt_solicitante);
  RegisterChildNode('dadosSolicitante', TXMLCt_solicitante);
  RegisterChildNode('prestadorSolicitado', TXMLCt_guiaSolicInternacao_prestadorSolicitado);
  RegisterChildNode('hipotesesDiagnosticas', TXMLCt_hipoteseDiagnostica);
  RegisterChildNode('procedimentosExamesSolicitados', TXMLCt_procedimentosSolicitados);
  RegisterChildNode('OPMsSolicitadas', TXMLCt_OPMSolicitadas);
  inherited;
end;

function TXMLCt_guiaSolicInternacao.Get_IdentificacaoGuiaSolicitacaoInternacao: IXMLCt_cabecalhoSolicitacao;
begin
  Result := ChildNodes['identificacaoGuiaSolicitacaoInternacao'] as IXMLCt_cabecalhoSolicitacao;
end;

function TXMLCt_guiaSolicInternacao.Get_DadosBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_guiaSolicInternacao.Get_DadosSolicitanteAtendimento: IXMLCt_solicitante;
begin
  Result := ChildNodes['dadosSolicitanteAtendimento'] as IXMLCt_solicitante;
end;

function TXMLCt_guiaSolicInternacao.Get_DadosSolicitante: IXMLCt_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as IXMLCt_solicitante;
end;

function TXMLCt_guiaSolicInternacao.Get_PrestadorSolicitado: IXMLCt_guiaSolicInternacao_prestadorSolicitado;
begin
  Result := ChildNodes['prestadorSolicitado'] as IXMLCt_guiaSolicInternacao_prestadorSolicitado;
end;

function TXMLCt_guiaSolicInternacao.Get_CaraterInternacao: UnicodeString;
begin
  Result := ChildNodes['caraterInternacao'].Text;
end;

procedure TXMLCt_guiaSolicInternacao.Set_CaraterInternacao(Value: UnicodeString);
begin
  ChildNodes['caraterInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaSolicInternacao.Get_TipoInternacao: UnicodeString;
begin
  Result := ChildNodes['tipoInternacao'].Text;
end;

procedure TXMLCt_guiaSolicInternacao.Set_TipoInternacao(Value: UnicodeString);
begin
  ChildNodes['tipoInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaSolicInternacao.Get_IndicacaoClinica: UnicodeString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure TXMLCt_guiaSolicInternacao.Set_IndicacaoClinica(Value: UnicodeString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function TXMLCt_guiaSolicInternacao.Get_RegimeInternacao: UnicodeString;
begin
  Result := ChildNodes['regimeInternacao'].Text;
end;

procedure TXMLCt_guiaSolicInternacao.Set_RegimeInternacao(Value: UnicodeString);
begin
  ChildNodes['regimeInternacao'].NodeValue := Value;
end;

function TXMLCt_guiaSolicInternacao.Get_HipotesesDiagnosticas: IXMLCt_hipoteseDiagnostica;
begin
  Result := ChildNodes['hipotesesDiagnosticas'] as IXMLCt_hipoteseDiagnostica;
end;

function TXMLCt_guiaSolicInternacao.Get_ProcedimentosExamesSolicitados: IXMLCt_procedimentosSolicitados;
begin
  Result := ChildNodes['procedimentosExamesSolicitados'] as IXMLCt_procedimentosSolicitados;
end;

function TXMLCt_guiaSolicInternacao.Get_OPMsSolicitadas: IXMLCt_OPMSolicitadas;
begin
  Result := ChildNodes['OPMsSolicitadas'] as IXMLCt_OPMSolicitadas;
end;

function TXMLCt_guiaSolicInternacao.Get_DiasSolicitados: Integer;
begin
  Result := ChildNodes['diasSolicitados'].NodeValue;
end;

procedure TXMLCt_guiaSolicInternacao.Set_DiasSolicitados(Value: Integer);
begin
  ChildNodes['diasSolicitados'].NodeValue := Value;
end;

function TXMLCt_guiaSolicInternacao.Get_DataProvavelAdmisHosp: UnicodeString;
begin
  Result := ChildNodes['dataProvavelAdmisHosp'].Text;
end;

procedure TXMLCt_guiaSolicInternacao.Set_DataProvavelAdmisHosp(Value: UnicodeString);
begin
  ChildNodes['dataProvavelAdmisHosp'].NodeValue := Value;
end;

function TXMLCt_guiaSolicInternacao.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaSolicInternacao.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_cabecalhoSolicitacao }

procedure TXMLCt_cabecalhoSolicitacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoFontePagadora', TXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora);
  inherited;
end;

function TXMLCt_cabecalhoSolicitacao.Get_IdentificacaoFontePagadora: IXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora;
begin
  Result := ChildNodes['identificacaoFontePagadora'] as IXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora;
end;

function TXMLCt_cabecalhoSolicitacao.Get_DataEmissaoGuia: UnicodeString;
begin
  Result := ChildNodes['dataEmissaoGuia'].Text;
end;

procedure TXMLCt_cabecalhoSolicitacao.Set_DataEmissaoGuia(Value: UnicodeString);
begin
  ChildNodes['dataEmissaoGuia'].NodeValue := Value;
end;

function TXMLCt_cabecalhoSolicitacao.Get_NumeroGuiaOperadora: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaOperadora'].Text;
end;

procedure TXMLCt_cabecalhoSolicitacao.Set_NumeroGuiaOperadora(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaOperadora'].NodeValue := Value;
end;

function TXMLCt_cabecalhoSolicitacao.Get_NumeroGuiaPrestador: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrestador'].Text;
end;

procedure TXMLCt_cabecalhoSolicitacao.Set_NumeroGuiaPrestador(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrestador'].NodeValue := Value;
end;

{ TXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora }

function TXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora.Get_RegistroANS: UnicodeString;
begin
  Result := ChildNodes['registroANS'].Text;
end;

procedure TXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora.Set_RegistroANS(Value: UnicodeString);
begin
  ChildNodes['registroANS'].NodeValue := Value;
end;

function TXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora.Get_CnpjFontePagadora: UnicodeString;
begin
  Result := ChildNodes['cnpjFontePagadora'].Text;
end;

procedure TXMLCt_cabecalhoSolicitacao_identificacaoFontePagadora.Set_CnpjFontePagadora(Value: UnicodeString);
begin
  ChildNodes['cnpjFontePagadora'].NodeValue := Value;
end;

{ TXMLCt_guiaSolicInternacao_prestadorSolicitado }

function TXMLCt_guiaSolicInternacao_prestadorSolicitado.Get_NomePrestador: UnicodeString;
begin
  Result := ChildNodes['nomePrestador'].Text;
end;

procedure TXMLCt_guiaSolicInternacao_prestadorSolicitado.Set_NomePrestador(Value: UnicodeString);
begin
  ChildNodes['nomePrestador'].NodeValue := Value;
end;

{ TXMLCt_hipoteseDiagnostica }

procedure TXMLCt_hipoteseDiagnostica.AfterConstruction;
begin
  RegisterChildNode('CIDPrincipal', TXMLCt_diagnosticoGuia);
  RegisterChildNode('diagnosticosSecundarios', TXMLCt_diagnosticosSecundarios);
  inherited;
end;

function TXMLCt_hipoteseDiagnostica.Get_CIDPrincipal: IXMLCt_diagnosticoGuia;
begin
  Result := ChildNodes['CIDPrincipal'] as IXMLCt_diagnosticoGuia;
end;

function TXMLCt_hipoteseDiagnostica.Get_DiagnosticosSecundarios: IXMLCt_diagnosticosSecundarios;
begin
  Result := ChildNodes['diagnosticosSecundarios'] as IXMLCt_diagnosticosSecundarios;
end;

{ TXMLCt_diagnosticoGuia }

procedure TXMLCt_diagnosticoGuia.AfterConstruction;
begin
  RegisterChildNode('CID', TXMLCt_diagnostico);
  RegisterChildNode('tempoReferidoEvolucaoDoenca', TXMLCt_tempoEvolucaoDoenca);
  inherited;
end;

function TXMLCt_diagnosticoGuia.Get_CID: IXMLCt_diagnostico;
begin
  Result := ChildNodes['CID'] as IXMLCt_diagnostico;
end;

function TXMLCt_diagnosticoGuia.Get_TipoDoenca: UnicodeString;
begin
  Result := ChildNodes['tipoDoenca'].Text;
end;

procedure TXMLCt_diagnosticoGuia.Set_TipoDoenca(Value: UnicodeString);
begin
  ChildNodes['tipoDoenca'].NodeValue := Value;
end;

function TXMLCt_diagnosticoGuia.Get_TempoReferidoEvolucaoDoenca: IXMLCt_tempoEvolucaoDoenca;
begin
  Result := ChildNodes['tempoReferidoEvolucaoDoenca'] as IXMLCt_tempoEvolucaoDoenca;
end;

function TXMLCt_diagnosticoGuia.Get_IndicadorAcidente: UnicodeString;
begin
  Result := ChildNodes['indicadorAcidente'].Text;
end;

procedure TXMLCt_diagnosticoGuia.Set_IndicadorAcidente(Value: UnicodeString);
begin
  ChildNodes['indicadorAcidente'].NodeValue := Value;
end;

{ TXMLCt_procedimentosSolicitados }

procedure TXMLCt_procedimentosSolicitados.AfterConstruction;
begin
  RegisterChildNode('procedimentoSolicitado', TXMLCt_procedimentosSolicitados_procedimentoSolicitado);
  ItemTag := 'procedimentoSolicitado';
  ItemInterface := IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
  inherited;
end;

function TXMLCt_procedimentosSolicitados.Get_ProcedimentoSolicitado(Index: Integer): IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
begin
  Result := List[Index] as IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
end;

function TXMLCt_procedimentosSolicitados.Add: IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
begin
  Result := AddItem(-1) as IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
end;

function TXMLCt_procedimentosSolicitados.Insert(const Index: Integer): IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
begin
  Result := AddItem(Index) as IXMLCt_procedimentosSolicitados_procedimentoSolicitado;
end;

{ TXMLCt_procedimentosSolicitados_procedimentoSolicitado }

procedure TXMLCt_procedimentosSolicitados_procedimentoSolicitado.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_procedimentosSolicitados_procedimentoSolicitado.Get_QuantidadeSolicitada: Integer;
begin
  Result := ChildNodes['quantidadeSolicitada'].NodeValue;
end;

procedure TXMLCt_procedimentosSolicitados_procedimentoSolicitado.Set_QuantidadeSolicitada(Value: Integer);
begin
  ChildNodes['quantidadeSolicitada'].NodeValue := Value;
end;

function TXMLCt_procedimentosSolicitados_procedimentoSolicitado.Get_Procedimento: IXMLCt_tabela;
begin
  Result := ChildNodes['procedimento'] as IXMLCt_tabela;
end;

{ TXMLCt_OPMSolicitadas }

procedure TXMLCt_OPMSolicitadas.AfterConstruction;
begin
  RegisterChildNode('OPMSolicitada', TXMLCt_OPMSolicitadas_OPMSolicitada);
  ItemTag := 'OPMSolicitada';
  ItemInterface := IXMLCt_OPMSolicitadas_OPMSolicitada;
  inherited;
end;

function TXMLCt_OPMSolicitadas.Get_OPMSolicitada(Index: Integer): IXMLCt_OPMSolicitadas_OPMSolicitada;
begin
  Result := List[Index] as IXMLCt_OPMSolicitadas_OPMSolicitada;
end;

function TXMLCt_OPMSolicitadas.Add: IXMLCt_OPMSolicitadas_OPMSolicitada;
begin
  Result := AddItem(-1) as IXMLCt_OPMSolicitadas_OPMSolicitada;
end;

function TXMLCt_OPMSolicitadas.Insert(const Index: Integer): IXMLCt_OPMSolicitadas_OPMSolicitada;
begin
  Result := AddItem(Index) as IXMLCt_OPMSolicitadas_OPMSolicitada;
end;

{ TXMLCt_OPMSolicitadas_OPMSolicitada }

procedure TXMLCt_OPMSolicitadas_OPMSolicitada.AfterConstruction;
begin
  RegisterChildNode('OPM', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_OPMSolicitadas_OPMSolicitada.Get_QuantidadeSolicitada: UnicodeString;
begin
  Result := ChildNodes['quantidadeSolicitada'].Text;
end;

procedure TXMLCt_OPMSolicitadas_OPMSolicitada.Set_QuantidadeSolicitada(Value: UnicodeString);
begin
  ChildNodes['quantidadeSolicitada'].NodeValue := Value;
end;

function TXMLCt_OPMSolicitadas_OPMSolicitada.Get_Fabricante: UnicodeString;
begin
  Result := ChildNodes['fabricante'].Text;
end;

procedure TXMLCt_OPMSolicitadas_OPMSolicitada.Set_Fabricante(Value: UnicodeString);
begin
  ChildNodes['fabricante'].NodeValue := Value;
end;

function TXMLCt_OPMSolicitadas_OPMSolicitada.Get_Valor: UnicodeString;
begin
  Result := ChildNodes['valor'].Text;
end;

procedure TXMLCt_OPMSolicitadas_OPMSolicitada.Set_Valor(Value: UnicodeString);
begin
  ChildNodes['valor'].NodeValue := Value;
end;

function TXMLCt_OPMSolicitadas_OPMSolicitada.Get_OPM: IXMLCt_tabela;
begin
  Result := ChildNodes['OPM'] as IXMLCt_tabela;
end;

{ TXMLCt_guiaSolicitacaoSP_SADT }

procedure TXMLCt_guiaSolicitacaoSP_SADT.AfterConstruction;
begin
  RegisterChildNode('identificacaoGuiaSolicitacaoSADTSP', TXMLCt_cabecalhoSolicitacao);
  RegisterChildNode('dadosBeneficiario', TXMLCt_beneficiario);
  RegisterChildNode('dadosSolicitante', TXMLCt_solicitante);
  RegisterChildNode('prestadorExecutante', TXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante);
  RegisterChildNode('Diagnostico', TXMLCt_diagnostico);
  RegisterChildNode('procedimentosSolicitados', TXMLCt_procedimentosSolicitados);
  RegisterChildNode('opmSolicitada', TXMLCt_OPMSolicitadas);
  inherited;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_IdentificacaoGuiaSolicitacaoSADTSP: IXMLCt_cabecalhoSolicitacao;
begin
  Result := ChildNodes['identificacaoGuiaSolicitacaoSADTSP'] as IXMLCt_cabecalhoSolicitacao;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_NumeroGuiaPrincipal: UnicodeString;
begin
  Result := ChildNodes['numeroGuiaPrincipal'].Text;
end;

procedure TXMLCt_guiaSolicitacaoSP_SADT.Set_NumeroGuiaPrincipal(Value: UnicodeString);
begin
  ChildNodes['numeroGuiaPrincipal'].NodeValue := Value;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_DadosBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_DadosSolicitante: IXMLCt_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as IXMLCt_solicitante;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_PrestadorExecutante: IXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante;
begin
  Result := ChildNodes['prestadorExecutante'] as IXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_CaraterSolicitacao: UnicodeString;
begin
  Result := ChildNodes['caraterSolicitacao'].Text;
end;

procedure TXMLCt_guiaSolicitacaoSP_SADT.Set_CaraterSolicitacao(Value: UnicodeString);
begin
  ChildNodes['caraterSolicitacao'].NodeValue := Value;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_DataHoraSolicitacao: UnicodeString;
begin
  Result := ChildNodes['dataHoraSolicitacao'].Text;
end;

procedure TXMLCt_guiaSolicitacaoSP_SADT.Set_DataHoraSolicitacao(Value: UnicodeString);
begin
  ChildNodes['dataHoraSolicitacao'].NodeValue := Value;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_Diagnostico: IXMLCt_diagnostico;
begin
  Result := ChildNodes['Diagnostico'] as IXMLCt_diagnostico;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_IndicacaoClinica: UnicodeString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure TXMLCt_guiaSolicitacaoSP_SADT.Set_IndicacaoClinica(Value: UnicodeString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_ProcedimentosSolicitados: IXMLCt_procedimentosSolicitados;
begin
  Result := ChildNodes['procedimentosSolicitados'] as IXMLCt_procedimentosSolicitados;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_OpmSolicitada: IXMLCt_OPMSolicitadas;
begin
  Result := ChildNodes['opmSolicitada'] as IXMLCt_OPMSolicitadas;
end;

function TXMLCt_guiaSolicitacaoSP_SADT.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaSolicitacaoSP_SADT.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaSolicitacaoSP_SADT_prestadorExecutante }

{ TXMLCt_guiaSolicitacaoOdonto }

procedure TXMLCt_guiaSolicitacaoOdonto.AfterConstruction;
begin
  RegisterChildNode('cabecalhoGuia', TXMLCt_cabecalhoGuiaOdonto);
  RegisterChildNode('dadosBeneficiario', TXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario);
  RegisterChildNode('dadosSolicitante', TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante);
  RegisterChildNode('planoTratamento', TXMLCt_guiaSolicitacaoOdonto_planoTratamento);
  inherited;
end;

function TXMLCt_guiaSolicitacaoOdonto.Get_CabecalhoGuia: IXMLCt_cabecalhoGuiaOdonto;
begin
  Result := ChildNodes['cabecalhoGuia'] as IXMLCt_cabecalhoGuiaOdonto;
end;

function TXMLCt_guiaSolicitacaoOdonto.Get_DadosBeneficiario: IXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario;
end;

function TXMLCt_guiaSolicitacaoOdonto.Get_DadosSolicitante: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante;
end;

function TXMLCt_guiaSolicitacaoOdonto.Get_PlanoTratamento: IXMLCt_guiaSolicitacaoOdonto_planoTratamento;
begin
  Result := ChildNodes['planoTratamento'] as IXMLCt_guiaSolicitacaoOdonto_planoTratamento;
end;

function TXMLCt_guiaSolicitacaoOdonto.Get_TipoAtendimento: UnicodeString;
begin
  Result := ChildNodes['tipoAtendimento'].Text;
end;

procedure TXMLCt_guiaSolicitacaoOdonto.Set_TipoAtendimento(Value: UnicodeString);
begin
  ChildNodes['tipoAtendimento'].NodeValue := Value;
end;

function TXMLCt_guiaSolicitacaoOdonto.Get_DataTerminoTratamento: UnicodeString;
begin
  Result := ChildNodes['dataTerminoTratamento'].Text;
end;

procedure TXMLCt_guiaSolicitacaoOdonto.Set_DataTerminoTratamento(Value: UnicodeString);
begin
  ChildNodes['dataTerminoTratamento'].NodeValue := Value;
end;

function TXMLCt_guiaSolicitacaoOdonto.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaSolicitacaoOdonto.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario }

function TXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario.Get_NomeEmpresa: UnicodeString;
begin
  Result := ChildNodes['nomeEmpresa'].Text;
end;

procedure TXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario.Set_NomeEmpresa(Value: UnicodeString);
begin
  ChildNodes['nomeEmpresa'].NodeValue := Value;
end;

function TXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario.Get_NumeroTelefone: UnicodeString;
begin
  Result := ChildNodes['numeroTelefone'].Text;
end;

procedure TXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario.Set_NumeroTelefone(Value: UnicodeString);
begin
  ChildNodes['numeroTelefone'].NodeValue := Value;
end;

function TXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario.Get_NomeTitular: UnicodeString;
begin
  Result := ChildNodes['nomeTitular'].Text;
end;

procedure TXMLCt_guiaSolicitacaoOdonto_dadosBeneficiario.Set_NomeTitular(Value: UnicodeString);
begin
  ChildNodes['nomeTitular'].NodeValue := Value;
end;

{ TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante }

procedure TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante.AfterConstruction;
begin
  RegisterChildNode('dadosContratado', TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado);
  RegisterChildNode('dadosProfissional', TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional);
  inherited;
end;

function TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante.Get_DadosContratado: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado;
begin
  Result := ChildNodes['dadosContratado'] as IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado;
end;

function TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante.Get_DadosProfissional: IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional;
begin
  Result := ChildNodes['dadosProfissional'] as IXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional;
end;

{ TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado }

procedure TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado.AfterConstruction;
begin
  RegisterChildNode('conselhoProfissional', TXMLCt_conselhoProfissional);
  inherited;
end;

function TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosContratado.Get_ConselhoProfissional: IXMLCt_conselhoProfissional;
begin
  Result := ChildNodes['conselhoProfissional'] as IXMLCt_conselhoProfissional;
end;

{ TXMLCt_guiaSolicitacaoOdonto_dadosSolicitante_dadosProfissional }

{ TXMLCt_guiaSolicitacaoOdonto_planoTratamento }

procedure TXMLCt_guiaSolicitacaoOdonto_planoTratamento.AfterConstruction;
begin
  RegisterChildNode('procedimentoSolicitado', TXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado);
  ItemTag := 'procedimentoSolicitado';
  ItemInterface := IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
  inherited;
end;

function TXMLCt_guiaSolicitacaoOdonto_planoTratamento.Get_ProcedimentoSolicitado(Index: Integer): IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
begin
  Result := List[Index] as IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
end;

function TXMLCt_guiaSolicitacaoOdonto_planoTratamento.Add: IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
begin
  Result := AddItem(-1) as IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
end;

function TXMLCt_guiaSolicitacaoOdonto_planoTratamento.Insert(const Index: Integer): IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
begin
  Result := AddItem(Index) as IXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado;
end;

{ TXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado }

function TXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado.Get_TotalFranquiaCoparticipacao: UnicodeString;
begin
  Result := ChildNodes['totalFranquiaCoparticipacao'].Text;
end;

procedure TXMLCt_guiaSolicitacaoOdonto_planoTratamento_procedimentoSolicitado.Set_TotalFranquiaCoparticipacao(Value: UnicodeString);
begin
  ChildNodes['totalFranquiaCoparticipacao'].NodeValue := Value;
end;

{ TXMLCt_guiaSolicitacaoProrrogacao }

procedure TXMLCt_guiaSolicitacaoProrrogacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoProrrogacao', TXMLCt_cabecalhoGuia);
  RegisterChildNode('identificacaoGuiaReferencia', TXMLCt_cabecalhoGuia);
  RegisterChildNode('dadosBeneficiario', TXMLCt_beneficiario);
  RegisterChildNode('dadosSolicitante', TXMLCt_solicitante);
  RegisterChildNode('procedimentosExamesSolicitados', TXMLCt_procedimentosSolicitados);
  RegisterChildNode('diarias', TXMLCt_diariaProrrogacao);
  RegisterChildNode('OPMsSolicitadas', TXMLCt_OPMSolicitadas);
  inherited;
end;

function TXMLCt_guiaSolicitacaoProrrogacao.Get_IdentificacaoProrrogacao: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoProrrogacao'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_guiaSolicitacaoProrrogacao.Get_IdentificacaoGuiaReferencia: IXMLCt_cabecalhoGuia;
begin
  Result := ChildNodes['identificacaoGuiaReferencia'] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_guiaSolicitacaoProrrogacao.Get_DadosBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_beneficiario;
end;

function TXMLCt_guiaSolicitacaoProrrogacao.Get_DadosSolicitante: IXMLCt_solicitante;
begin
  Result := ChildNodes['dadosSolicitante'] as IXMLCt_solicitante;
end;

function TXMLCt_guiaSolicitacaoProrrogacao.Get_IndicacaoClinica: UnicodeString;
begin
  Result := ChildNodes['indicacaoClinica'].Text;
end;

procedure TXMLCt_guiaSolicitacaoProrrogacao.Set_IndicacaoClinica(Value: UnicodeString);
begin
  ChildNodes['indicacaoClinica'].NodeValue := Value;
end;

function TXMLCt_guiaSolicitacaoProrrogacao.Get_ResponsavelAutorizacao: UnicodeString;
begin
  Result := ChildNodes['responsavelAutorizacao'].Text;
end;

procedure TXMLCt_guiaSolicitacaoProrrogacao.Set_ResponsavelAutorizacao(Value: UnicodeString);
begin
  ChildNodes['responsavelAutorizacao'].NodeValue := Value;
end;

function TXMLCt_guiaSolicitacaoProrrogacao.Get_ProcedimentosExamesSolicitados: IXMLCt_procedimentosSolicitados;
begin
  Result := ChildNodes['procedimentosExamesSolicitados'] as IXMLCt_procedimentosSolicitados;
end;

function TXMLCt_guiaSolicitacaoProrrogacao.Get_Diarias: IXMLCt_diariaProrrogacao;
begin
  Result := ChildNodes['diarias'] as IXMLCt_diariaProrrogacao;
end;

function TXMLCt_guiaSolicitacaoProrrogacao.Get_OPMsSolicitadas: IXMLCt_OPMSolicitadas;
begin
  Result := ChildNodes['OPMsSolicitadas'] as IXMLCt_OPMSolicitadas;
end;

function TXMLCt_guiaSolicitacaoProrrogacao.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_guiaSolicitacaoProrrogacao.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_solicitaStatusAutorizacao }

procedure TXMLCt_solicitaStatusAutorizacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoAutorizacao', TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao);
  inherited;
end;

function TXMLCt_solicitaStatusAutorizacao.Get_IdentificacaoAutorizacao: IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao;
begin
  Result := ChildNodes['identificacaoAutorizacao'] as IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao;
end;

function TXMLCt_solicitaStatusAutorizacao.Get_DataSolicitaStatus: UnicodeString;
begin
  Result := ChildNodes['dataSolicitaStatus'].Text;
end;

procedure TXMLCt_solicitaStatusAutorizacao.Set_DataSolicitaStatus(Value: UnicodeString);
begin
  ChildNodes['dataSolicitaStatus'].NodeValue := Value;
end;

{ TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao }

procedure TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao.AfterConstruction;
begin
  RegisterChildNode('identificacaoSolicitacao', TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao);
  ItemTag := 'identificacaoSolicitacao';
  ItemInterface := IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
  inherited;
end;

function TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao.Get_IdentificacaoSolicitacao(Index: Integer): IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
begin
  Result := List[Index] as IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
end;

function TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao.Add: IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
begin
  Result := AddItem(-1) as IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
end;

function TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao.Insert(const Index: Integer): IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
begin
  Result := AddItem(Index) as IXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao;
end;

{ TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao }

procedure TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao.AfterConstruction;
begin
  RegisterChildNode('profissionalSolicitante', TXMLCt_contratadoSolicitante);
  RegisterChildNode('identificacaoBeneficiario', TXMLCt_beneficiario);
  inherited;
end;

function TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao.Get_ProfissionalSolicitante: IXMLCt_contratadoSolicitante;
begin
  Result := ChildNodes['profissionalSolicitante'] as IXMLCt_contratadoSolicitante;
end;

function TXMLCt_solicitaStatusAutorizacao_identificacaoAutorizacao_identificacaoSolicitacao.Get_IdentificacaoBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['identificacaoBeneficiario'] as IXMLCt_beneficiario;
end;

{ TXMLCt_solicitaElegibilidade }

procedure TXMLCt_solicitaElegibilidade.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', TXMLCt_contratado);
  RegisterChildNode('dadosBeneficiario', TXMLCt_beneficiario);
  inherited;
end;

function TXMLCt_solicitaElegibilidade.Get_DadosPrestador: IXMLCt_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as IXMLCt_contratado;
end;

function TXMLCt_solicitaElegibilidade.Get_DadosBeneficiario: IXMLCt_beneficiario;
begin
  Result := ChildNodes['dadosBeneficiario'] as IXMLCt_beneficiario;
end;

{ TXMLCt_cancelaGuia }

procedure TXMLCt_cancelaGuia.AfterConstruction;
begin
  RegisterChildNode('dadosPrestador', TXMLCt_contratado);
  RegisterChildNode('guia', TXMLCt_cancelaGuia_guia);
  inherited;
end;

function TXMLCt_cancelaGuia.Get_DadosPrestador: IXMLCt_contratado;
begin
  Result := ChildNodes['dadosPrestador'] as IXMLCt_contratado;
end;

function TXMLCt_cancelaGuia.Get_TipoGuia: UnicodeString;
begin
  Result := ChildNodes['tipoGuia'].Text;
end;

procedure TXMLCt_cancelaGuia.Set_TipoGuia(Value: UnicodeString);
begin
  ChildNodes['tipoGuia'].NodeValue := Value;
end;

function TXMLCt_cancelaGuia.Get_Guia: IXMLCt_cancelaGuia_guia;
begin
  Result := ChildNodes['guia'] as IXMLCt_cancelaGuia_guia;
end;

function TXMLCt_cancelaGuia.Get_Observacao: UnicodeString;
begin
  Result := ChildNodes['observacao'].Text;
end;

procedure TXMLCt_cancelaGuia.Set_Observacao(Value: UnicodeString);
begin
  ChildNodes['observacao'].NodeValue := Value;
end;

{ TXMLCt_cancelaGuia_guia }

procedure TXMLCt_cancelaGuia_guia.AfterConstruction;
begin
  RegisterChildNode('dadosGuia', TXMLCt_cabecalhoGuia);
  ItemTag := 'dadosGuia';
  ItemInterface := IXMLCt_cabecalhoGuia;
  inherited;
end;

function TXMLCt_cancelaGuia_guia.Get_DadosGuia(Index: Integer): IXMLCt_cabecalhoGuia;
begin
  Result := List[Index] as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_cancelaGuia_guia.Add: IXMLCt_cabecalhoGuia;
begin
  Result := AddItem(-1) as IXMLCt_cabecalhoGuia;
end;

function TXMLCt_cancelaGuia_guia.Insert(const Index: Integer): IXMLCt_cabecalhoGuia;
begin
  Result := AddItem(Index) as IXMLCt_cabecalhoGuia;
end;

{ TXMLMensagemTISS_epilogo }

function TXMLMensagemTISS_epilogo.Get_Hash: UnicodeString;
begin
  Result := ChildNodes['hash'].Text;
end;

procedure TXMLMensagemTISS_epilogo.Set_Hash(Value: UnicodeString);
begin
  ChildNodes['hash'].NodeValue := Value;
end;

{ TXMLCt_diariaProrrogacaoAutorizada }

procedure TXMLCt_diariaProrrogacaoAutorizada.AfterConstruction;
begin
  RegisterChildNode('motivoGlosa', TXMLCt_motivoGlosa);
  inherited;
end;

function TXMLCt_diariaProrrogacaoAutorizada.Get_QuantidadeAutorizada: UnicodeString;
begin
  Result := ChildNodes['quantidadeAutorizada'].Text;
end;

procedure TXMLCt_diariaProrrogacaoAutorizada.Set_QuantidadeAutorizada(Value: UnicodeString);
begin
  ChildNodes['quantidadeAutorizada'].NodeValue := Value;
end;

function TXMLCt_diariaProrrogacaoAutorizada.Get_MotivoGlosa: IXMLCt_motivoGlosa;
begin
  Result := ChildNodes['motivoGlosa'] as IXMLCt_motivoGlosa;
end;

{ TXMLCt_executanteComplementar }

procedure TXMLCt_executanteComplementar.AfterConstruction;
begin
  RegisterChildNode('codigoProfissionalCompl', TXMLCt_identificacaoPrestador);
  inherited;
end;

function TXMLCt_executanteComplementar.Get_CodigoProfissionalCompl: IXMLCt_identificacaoPrestador;
begin
  Result := ChildNodes['codigoProfissionalCompl'] as IXMLCt_identificacaoPrestador;
end;

function TXMLCt_executanteComplementar.Get_NomeProfissionalCompl: UnicodeString;
begin
  Result := ChildNodes['nomeProfissionalCompl'].Text;
end;

procedure TXMLCt_executanteComplementar.Set_NomeProfissionalCompl(Value: UnicodeString);
begin
  ChildNodes['nomeProfissionalCompl'].NodeValue := Value;
end;

{ TXMLCt_OPMAutorizada }

procedure TXMLCt_OPMAutorizada.AfterConstruction;
begin
  RegisterChildNode('OPMAutorizada', TXMLCt_OPMAutorizada_OPMAutorizada);
  ItemTag := 'OPMAutorizada';
  ItemInterface := IXMLCt_OPMAutorizada_OPMAutorizada;
  inherited;
end;

function TXMLCt_OPMAutorizada.Get_OPMAutorizada(Index: Integer): IXMLCt_OPMAutorizada_OPMAutorizada;
begin
  Result := List[Index] as IXMLCt_OPMAutorizada_OPMAutorizada;
end;

function TXMLCt_OPMAutorizada.Add: IXMLCt_OPMAutorizada_OPMAutorizada;
begin
  Result := AddItem(-1) as IXMLCt_OPMAutorizada_OPMAutorizada;
end;

function TXMLCt_OPMAutorizada.Insert(const Index: Integer): IXMLCt_OPMAutorizada_OPMAutorizada;
begin
  Result := AddItem(Index) as IXMLCt_OPMAutorizada_OPMAutorizada;
end;

{ TXMLCt_OPMAutorizada_OPMAutorizada }

procedure TXMLCt_OPMAutorizada_OPMAutorizada.AfterConstruction;
begin
  RegisterChildNode('OPM', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_OPMAutorizada_OPMAutorizada.Get_QuantidadeAutorizada: UnicodeString;
begin
  Result := ChildNodes['quantidadeAutorizada'].Text;
end;

procedure TXMLCt_OPMAutorizada_OPMAutorizada.Set_QuantidadeAutorizada(Value: UnicodeString);
begin
  ChildNodes['quantidadeAutorizada'].NodeValue := Value;
end;

function TXMLCt_OPMAutorizada_OPMAutorizada.Get_Fabricante: UnicodeString;
begin
  Result := ChildNodes['fabricante'].Text;
end;

procedure TXMLCt_OPMAutorizada_OPMAutorizada.Set_Fabricante(Value: UnicodeString);
begin
  ChildNodes['fabricante'].NodeValue := Value;
end;

function TXMLCt_OPMAutorizada_OPMAutorizada.Get_OPM: IXMLCt_tabela;
begin
  Result := ChildNodes['OPM'] as IXMLCt_tabela;
end;

{ TXMLCt_periodoProcessamento }

function TXMLCt_periodoProcessamento.Get_DataInicial: UnicodeString;
begin
  Result := ChildNodes['dataInicial'].Text;
end;

procedure TXMLCt_periodoProcessamento.Set_DataInicial(Value: UnicodeString);
begin
  ChildNodes['dataInicial'].NodeValue := Value;
end;

function TXMLCt_periodoProcessamento.Get_DataFinal: UnicodeString;
begin
  Result := ChildNodes['dataFinal'].Text;
end;

procedure TXMLCt_periodoProcessamento.Set_DataFinal(Value: UnicodeString);
begin
  ChildNodes['dataFinal'].NodeValue := Value;
end;

{ TXMLCt_situacaoDentes }

function TXMLCt_situacaoDentes.Get_Dente: UnicodeString;
begin
  Result := ChildNodes['dente'].Text;
end;

procedure TXMLCt_situacaoDentes.Set_Dente(Value: UnicodeString);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function TXMLCt_situacaoDentes.Get_Obturado: Boolean;
begin
  Result := ChildNodes['obturado'].NodeValue;
end;

procedure TXMLCt_situacaoDentes.Set_Obturado(Value: Boolean);
begin
  ChildNodes['obturado'].NodeValue := Value;
end;

function TXMLCt_situacaoDentes.Get_Careado: Boolean;
begin
  Result := ChildNodes['careado'].NodeValue;
end;

procedure TXMLCt_situacaoDentes.Set_Careado(Value: Boolean);
begin
  ChildNodes['careado'].NodeValue := Value;
end;

function TXMLCt_situacaoDentes.Get_Perdido: Boolean;
begin
  Result := ChildNodes['perdido'].NodeValue;
end;

procedure TXMLCt_situacaoDentes.Set_Perdido(Value: Boolean);
begin
  ChildNodes['perdido'].NodeValue := Value;
end;

{ TXMLCt_totaisOdonto }

function TXMLCt_totaisOdonto.Get_ServicoExecutado: UnicodeString;
begin
  Result := ChildNodes['servicoExecutado'].Text;
end;

procedure TXMLCt_totaisOdonto.Set_ServicoExecutado(Value: UnicodeString);
begin
  ChildNodes['servicoExecutado'].NodeValue := Value;
end;

function TXMLCt_totaisOdonto.Get_Taxas: UnicodeString;
begin
  Result := ChildNodes['taxas'].Text;
end;

procedure TXMLCt_totaisOdonto.Set_Taxas(Value: UnicodeString);
begin
  ChildNodes['taxas'].NodeValue := Value;
end;

function TXMLCt_totaisOdonto.Get_Materiais: UnicodeString;
begin
  Result := ChildNodes['materiais'].Text;
end;

procedure TXMLCt_totaisOdonto.Set_Materiais(Value: UnicodeString);
begin
  ChildNodes['materiais'].NodeValue := Value;
end;

function TXMLCt_totaisOdonto.Get_Medicamentos: UnicodeString;
begin
  Result := ChildNodes['medicamentos'].Text;
end;

procedure TXMLCt_totaisOdonto.Set_Medicamentos(Value: UnicodeString);
begin
  ChildNodes['medicamentos'].NodeValue := Value;
end;

function TXMLCt_totaisOdonto.Get_TotalGeral: UnicodeString;
begin
  Result := ChildNodes['totalGeral'].Text;
end;

procedure TXMLCt_totaisOdonto.Set_TotalGeral(Value: UnicodeString);
begin
  ChildNodes['totalGeral'].NodeValue := Value;
end;

{ TXMLCt_tratamenteOdontoRealizado }

procedure TXMLCt_tratamenteOdontoRealizado.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_tratamenteOdontoRealizado.Get_Data: UnicodeString;
begin
  Result := ChildNodes['data'].Text;
end;

procedure TXMLCt_tratamenteOdontoRealizado.Set_Data(Value: UnicodeString);
begin
  ChildNodes['data'].NodeValue := Value;
end;

function TXMLCt_tratamenteOdontoRealizado.Get_Procedimento: IXMLCt_tabela;
begin
  Result := ChildNodes['procedimento'] as IXMLCt_tabela;
end;

function TXMLCt_tratamenteOdontoRealizado.Get_Dente: UnicodeString;
begin
  Result := ChildNodes['dente'].Text;
end;

procedure TXMLCt_tratamenteOdontoRealizado.Set_Dente(Value: UnicodeString);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function TXMLCt_tratamenteOdontoRealizado.Get_Face: UnicodeString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure TXMLCt_tratamenteOdontoRealizado.Set_Face(Value: UnicodeString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

{ TXMLCt_tratamentoOdontoSolicitado }

procedure TXMLCt_tratamentoOdontoSolicitado.AfterConstruction;
begin
  RegisterChildNode('procedimento', TXMLCt_tabela);
  inherited;
end;

function TXMLCt_tratamentoOdontoSolicitado.Get_Procedimento: IXMLCt_tabela;
begin
  Result := ChildNodes['procedimento'] as IXMLCt_tabela;
end;

function TXMLCt_tratamentoOdontoSolicitado.Get_Dente: UnicodeString;
begin
  Result := ChildNodes['dente'].Text;
end;

procedure TXMLCt_tratamentoOdontoSolicitado.Set_Dente(Value: UnicodeString);
begin
  ChildNodes['dente'].NodeValue := Value;
end;

function TXMLCt_tratamentoOdontoSolicitado.Get_Face: UnicodeString;
begin
  Result := ChildNodes['face'].Text;
end;

procedure TXMLCt_tratamentoOdontoSolicitado.Set_Face(Value: UnicodeString);
begin
  ChildNodes['face'].NodeValue := Value;
end;

{ TXMLSt_tipoGlosaList }

function TXMLSt_tipoGlosaList.Add(const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLSt_tipoGlosaList.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLSt_tipoGlosaList.Get_Item(Index: Integer): UnicodeString;
begin
  Result := List[Index].NodeValue;
end;

end.