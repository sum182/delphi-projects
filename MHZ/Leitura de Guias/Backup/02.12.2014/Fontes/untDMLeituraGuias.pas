unit untDMLeituraGuias;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient;

type
  TDMLeituraGuias = class(TDataModule)
    fdqGuias: TFDQuery;
    dsGuias: TDataSource;
    fdqGuiasLidas: TFDQuery;
    dsGuiasLidas: TDataSource;
    fdqStatus: TFDQuery;
    dsStatus: TDataSource;
    fdqGuiasLidasID_GUIAS_DETALHE: TIntegerField;
    fdqGuiasLidasID_GUIAS_CABECALHO: TIntegerField;
    fdqGuiasLidasREGISTRO_ANS: TStringField;
    fdqGuiasLidasDATA_EMISSAO_GUIA: TDateField;
    fdqGuiasLidasDADOS_AUTORIZACAO: TStringField;
    fdqGuiasLidasNOME_BENEFICIARIO: TStringField;
    fdqGuiasLidasNOME_PLANO: TStringField;
    fdqGuiasLidasNOME_CONTRATADO1: TStringField;
    fdqGuiasLidasNOME_PROFISSIONAL: TStringField;
    fdqGuiasLidasSIGLA_CONSELHO: TStringField;
    fdqGuiasLidasNUMERO_CONSELHO: TStringField;
    fdqGuiasLidasUF_CONSELHO: TStringField;
    fdqGuiasLidasNOME_CONTRATADO2: TStringField;
    fdqGuiasLidasCARATER_ATENDIMENTO: TStringField;
    fdqGuiasLidasTIPO_SAIDA: TStringField;
    fdqGuiasLidasTIPO_ATENDIMENTO: TStringField;
    fdqGuiasLidasCODIGO: TStringField;
    fdqGuiasLidasTIPO_TABELA: TStringField;
    fdqGuiasLidasDESCRICAO: TStringField;
    fdqGuiasLidasDATA: TDateField;
    fdqGuiasLidasQUANTIDADE_REALIZADA: TIntegerField;
    fdqGuiasLidasVALOR: TFloatField;
    fdqGuiasLidasVALORTOTAL_1: TFloatField;
    fdqGuiasLidasVALORTOTAL_2: TFloatField;
    fdqGuiasLidasLIDA: TStringField;
    fdqGuiasLidasRETIRADA: TStringField;
    fdqGuiasLidasDATA_LEITURA: TDateField;
    fdqGuiasLidasHORA_LEITURA: TTimeField;
    fdqGuiasLidasID_USUARIO_LEITURA: TIntegerField;
    fdqGuiasLidasID_LEITURA_STATUS: TIntegerField;
    fdqGuiasLidasSEQUENCIAL_TRANSACAO: TIntegerField;
    fdqGuiasLidasTIPO_SERVICO: TStringField;
    fdqGuiasLidasSTATUS: TStringField;
    fdqGuiasLidasIntCalcStatus1: TIntegerField;
    fdqGuiasLidasIntCalcStatus2: TIntegerField;
    fdqGuiasLidasIntCalcStatus3: TIntegerField;
    fdqGuiasLidasIntCalcStatus4: TIntegerField;
    fdqGuiasLidasIntCalcStatus5: TIntegerField;
    fdqGuiasLidasIntCalcStatus6: TIntegerField;
    fdqGuiasLidasAgregStatus1: TAggregateField;
    fdqGuiasLidasAgregStatus2: TAggregateField;
    fdqGuiasLidasAgregStatus3: TAggregateField;
    fdqGuiasLidasAgregStatus4: TAggregateField;
    fdqGuiasLidasAgregStatus5: TAggregateField;
    fdqGuiasLidasAgregStatus6: TAggregateField;
    fdqGuiasID_GUIAS_DETALHE: TIntegerField;
    fdqGuiasID_GUIAS_CABECALHO: TIntegerField;
    fdqGuiasREGISTRO_ANS: TStringField;
    fdqGuiasDATA_EMISSAO_GUIA: TDateField;
    fdqGuiasNUMERO_GUIA_PRESTADOR: TIntegerField;
    fdqGuiasDADOS_AUTORIZACAO: TStringField;
    fdqGuiasNUMERO_CARTEIRA: TIntegerField;
    fdqGuiasNOME_BENEFICIARIO: TStringField;
    fdqGuiasNOME_PLANO: TStringField;
    fdqGuiasNOME_CONTRATADO1: TStringField;
    fdqGuiasNOME_PROFISSIONAL: TStringField;
    fdqGuiasSIGLA_CONSELHO: TStringField;
    fdqGuiasNUMERO_CONSELHO: TStringField;
    fdqGuiasUF_CONSELHO: TStringField;
    fdqGuiasNOME_CONTRATADO2: TStringField;
    fdqGuiasCARATER_ATENDIMENTO: TStringField;
    fdqGuiasTIPO_SAIDA: TStringField;
    fdqGuiasTIPO_ATENDIMENTO: TStringField;
    fdqGuiasCODIGO: TStringField;
    fdqGuiasTIPO_TABELA: TStringField;
    fdqGuiasDESCRICAO: TStringField;
    fdqGuiasDATA: TDateField;
    fdqGuiasQUANTIDADE_REALIZADA: TIntegerField;
    fdqGuiasVALOR: TFloatField;
    fdqGuiasVALORTOTAL_1: TFloatField;
    fdqGuiasVALORTOTAL_2: TFloatField;
    fdqGuiasLIDA: TStringField;
    fdqGuiasRETIRADA: TStringField;
    fdqGuiasCADASTRADA_MANUALMENTE: TStringField;
    fdqGuiasDATA_LEITURA: TDateField;
    fdqGuiasHORA_LEITURA: TTimeField;
    fdqGuiasID_USUARIO_LEITURA: TIntegerField;
    fdqGuiasID_LEITURA_STATUS: TIntegerField;
    fdqGuiasSEQUENCIAL_TRANSACAO: TIntegerField;
    fdqGuiasTipo_Servico: TStringField;
    fdqGuiasLidasNUMERO_CARTEIRA: TIntegerField;
    fdqGuiasLidasCADASTRADA_MANUALMENTE: TStringField;
    fdqGuiasLidasNUMERO_GUIA_PRESTADOR: TIntegerField;
    fdqGuiasGUIA_EM_BRANCO: TStringField;
    fdqGuiasLidasGUIA_EM_BRANCO: TStringField;
    fdqGuiasGUIA_COM_DESCONTO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure fdqGuiasLidasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMLeituraGuias: TDMLeituraGuias;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses untDM, smDB;

{$R *.dfm}

procedure TDMLeituraGuias.DataModuleCreate(Sender: TObject);
begin
  CloseDataSets(self);
end;

procedure TDMLeituraGuias.fdqGuiasLidasCalcFields(DataSet: TDataSet);
begin
  if fdqGuiasLidas.FieldByName('ID_LEITURA_STATUS').AsInteger = 1 then
    fdqGuiasLidasIntCalcStatus1.AsInteger:= 1;

  if fdqGuiasLidas.FieldByName('ID_LEITURA_STATUS').AsInteger = 2 then
    fdqGuiasLidasIntCalcStatus2.AsInteger:= 1;

  if fdqGuiasLidas.FieldByName('ID_LEITURA_STATUS').AsInteger = 3 then
    fdqGuiasLidasIntCalcStatus3.AsInteger:= 1;

  if fdqGuiasLidas.FieldByName('ID_LEITURA_STATUS').AsInteger = 4 then
    fdqGuiasLidasIntCalcStatus4.AsInteger:= 1;

  if fdqGuiasLidas.FieldByName('ID_LEITURA_STATUS').AsInteger = 5 then
    fdqGuiasLidasIntCalcStatus5.AsInteger:= 1;

  if fdqGuiasLidas.FieldByName('ID_LEITURA_STATUS').AsInteger = 6 then
    fdqGuiasLidasIntCalcStatus6.AsInteger:= 1;
end;

end.
