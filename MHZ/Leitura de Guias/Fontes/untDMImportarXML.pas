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
    fdqDetalhe: TFDQuery;
    fdqVerifInserido: TFDQuery;
    fdqGrupoLote: TFDQuery;
    fdqGrupoLoteID_GUIAS_GRUPO_LOTE: TIntegerField;
    fdqGrupoLoteID_USUARIO: TIntegerField;
    fdqGrupoLoteDT_IMPORTACAO: TDateField;
    fdqGrupoLoteHR_IMPORTACAO: TTimeField;
    fdqCabecalhoID_GUIAS_GRUPO_LOTE: TIntegerField;
    FDTransaction: TFDTransaction;
    fdqTipoServico: TFDQuery;
    dsTipoServico: TDataSource;
    fdqGrupoLoteID_TIPO_SERVICO: TIntegerField;
    fdqTipoServicoID_TIPO_SERVICO: TIntegerField;
    fdqTipoServicoDESCRICAO: TStringField;
    fdqLtRzGrupoLote: TFDQuery;
    fdqLtRzCabecalho: TFDQuery;
    fdqLtRzDetalhe: TFDQuery;
    dsLtRzGrupoLote: TDataSource;
    dsLtRzCabecalho: TDataSource;
    dsLtRzDetalhe: TDataSource;
    fdqUpdateLeiturasRealizadas: TFDQuery;
    fdqDeleteGrupoNaoUtilizado: TFDQuery;
    fdqUpdateGuiaDesc: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMImportarXML: TDMImportarXML;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses untDM, smDB;

{$R *.dfm}

procedure TDMImportarXML.DataModuleCreate(Sender: TObject);
begin
  CloseDataSets(self);
end;

end.
