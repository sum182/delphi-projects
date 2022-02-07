unit untDMImportarXML;

interface

uses
  System.SysUtils, System.Classes, Xml.xmldom, Data.DB, Datasnap.Provider,
  Datasnap.Xmlxform, Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDMImportarXML = class(TDataModule)
    cdsXMLGuias: TClientDataSet;
    XMLTransformProviderGuias: TXMLTransformProvider;
    dsXMLGuias: TDataSource;
    dsXMLCabecalho: TDataSource;
    XMLTransformProviderCabecalho: TXMLTransformProvider;
    cdsXMLCabecalho: TClientDataSet;
    fdqCabecalho: TFDQuery;
    cdsXMLCabecalhoans_tipoTransacao: TStringField;
    cdsXMLCabecalhoans_sequencialTransacao: TStringField;
    cdsXMLCabecalhoans_dataRegistroTransacao: TStringField;
    cdsXMLCabecalhoans_horaRegistroTransacao: TStringField;
    cdsXMLCabecalhoans_registroANS: TStringField;
    cdsXMLCabecalhoans_versaoPadrao: TStringField;
    cdsXMLGuiasans_registroANS: TStringField;
    cdsXMLGuiasans_dataEmissaoGuia: TStringField;
    cdsXMLGuiasans_numeroGuiaPrestador: TStringField;
    cdsXMLGuiasans_dadosAutorizacao: TStringField;
    cdsXMLGuiasans_numeroCarteira: TStringField;
    cdsXMLGuiasans_nomeBeneficiario: TStringField;
    cdsXMLGuiasans_nomePlano: TStringField;
    cdsXMLGuiasans_nomeContratado1: TStringField;
    cdsXMLGuiasans_nomeProfissional: TStringField;
    cdsXMLGuiasans_siglaConselho: TStringField;
    cdsXMLGuiasans_numeroConselho: TStringField;
    cdsXMLGuiasans_ufConselho: TStringField;
    cdsXMLGuiasans_nomeContratado2: TStringField;
    cdsXMLGuiasans_caraterAtendimento: TStringField;
    cdsXMLGuiasans_tipoSaida: TStringField;
    cdsXMLGuiasans_tipoAtendimento: TStringField;
    cdsXMLGuiasans_codigo: TStringField;
    cdsXMLGuiasans_tipoTabela: TStringField;
    cdsXMLGuiasans_descricao: TStringField;
    cdsXMLGuiasans_data: TStringField;
    cdsXMLGuiasans_quantidadeRealizada: TStringField;
    cdsXMLGuiasans_valor: TStringField;
    cdsXMLGuiasans_valorTotal1: TStringField;
    cdsXMLGuiasans_valorTotal2: TStringField;
    fdqCabecalhoID_GUIAS_CABECALHO: TIntegerField;
    fdqCabecalhoTIPO_TRANSACAO: TStringField;
    fdqCabecalhoSEQUENCIAL_TRANSACAO: TIntegerField;
    fdqCabecalhoDATA_REGISTRO_TRANSACAO: TDateField;
    fdqCabecalhoHORA_REGISTRO_TRANSACAO: TTimeField;
    fdqCabecalhoREGISTRO_ANS: TStringField;
    fdqCabecalhoVERSAO_PADRAO: TStringField;
    fdqCabecalhoDT_HR_IMPORTACAO: TSQLTimeStampField;
    fdqDetalhe: TFDQuery;
    fdqDetalheID_GUIAS_DETALHE: TIntegerField;
    fdqDetalheID_GUIAS_CABECALHO: TIntegerField;
    fdqDetalheREGISTRO_ANS: TStringField;
    fdqDetalheDATA_EMISSAO_GUIA: TDateField;
    fdqDetalheNUMERO_GUIA_PRESTADOR: TIntegerField;
    fdqDetalheDADOS_AUTORIZACAO: TStringField;
    fdqDetalheNUMERO_CARTEIRA: TIntegerField;
    fdqDetalheNOME_BENEFICIARIO: TStringField;
    fdqDetalheNOME_PLANO: TStringField;
    fdqDetalheNOME_CONTRATADO1: TStringField;
    fdqDetalheNOME_PROFISSIONAL: TStringField;
    fdqDetalheSIGLA_CONSELHO: TStringField;
    fdqDetalheNUMERO_CONSELHO: TStringField;
    fdqDetalheUF_CONSELHO: TStringField;
    fdqDetalheNOME_CONTRATADO2: TStringField;
    fdqDetalheCARATER_ATENDIMENTO: TStringField;
    fdqDetalheTIPO_SAIDA: TStringField;
    fdqDetalheTIPO_ATENDIMENTO: TStringField;
    fdqDetalheCODIGO: TStringField;
    fdqDetalheTIPO_TABELA: TStringField;
    fdqDetalheDESCRICAO: TStringField;
    fdqDetalheDATA: TDateField;
    fdqDetalheQUANTIDADE_REALIZADA: TIntegerField;
    fdqDetalheVALOR: TFloatField;
    fdqDetalheVALORTOTAL_1: TFloatField;
    fdqDetalheVALORTOTAL_2: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMImportarXML: TDMImportarXML;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses untDM;

{$R *.dfm}

end.
