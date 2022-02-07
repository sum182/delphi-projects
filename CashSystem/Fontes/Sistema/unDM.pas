unit unDM;

interface

uses
  SysUtils, Classes, FMTBcd, DBXpress, DB, SqlExpr, DBClient, Provider,
   forms, controls, ImgList, MConnect, AppEvnts,XPMan, Menus, MidasLib, DBClientActns,smMensagens,
  DBActns, ActnList;

type
  TDm = class(TDataModule)
    ImagensOld: TImageList;
    DCOMConnection: TDCOMConnection;
    XPManifest: TXPManifest;
    ImTrayIco: TImageList;
    PoMeNu: TPopupMenu;
    MinimizarServerCashSystem1: TMenuItem;
    ExibirServerCashSystem1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    ImagensEnabled: TImageList;
    ImagensDisabled: TImageList;
    ImagensAll: TImageList;
    dsCobradores: TDataSource;
    cdsCobradores: TClientDataSet;
    cdsCobradoresCOBR_ID: TIntegerField;
    cdsCobradoresCOBR_NOME: TStringField;
    cdsCobradoresCOBR_ENDERECO: TStringField;
    cdsCobradoresCOBR_DTINI: TDateField;
    cdsCobradoresCOBR_DTFIM: TDateField;
    cdsCobradoresCOBR_PERCENTUAL: TFloatField;
    cdsCobradoressqlCobradoresTel: TDataSetField;
    ApplicationEvents: TApplicationEvents;
    cdsCobradoresTel: TClientDataSet;
    cdsCobradoresTelCOBR_ID: TIntegerField;
    cdsCobradoresTelTITE_ID: TIntegerField;
    cdsCobradoresTelCOTE_TEL: TStringField;
    cdsCobradoresTelTITE_DESC: TStringField;
    dsCobradoresTel: TDataSource;
    dsLoTipoTel: TDataSource;
    cdsLoTipoTel: TClientDataSet;
    cdsSocios: TClientDataSet;
    CiDaCadastroSOCI_ID: TIntegerField;
    CiDaCadastroSOCI_NOME: TStringField;
    CiDaCadastroSOCI_ENDERECO: TStringField;
    CiDaCadastroSOCI_BAIRRO: TStringField;
    CiDaCadastroSOCI_ESTADO: TStringField;
    CiDaCadastroSOCI_CEP: TStringField;
    CiDaCadastroSOCI_RG: TStringField;
    CiDaCadastroSOCI_CPF: TStringField;
    CiDaCadastroSOCI_CGC: TStringField;
    CiDaCadastroSOCI_OBS: TBlobField;
    CiDaCadastroSOCI_DTINI: TDateField;
    CiDaCadastroSOCI_DTFIM: TDateField;
    cdsSociossqlSociosTel: TDataSetField;
    cdsSociossqlSociosMaqu: TDataSetField;
    dsSocios: TDataSource;
    cdsLoTipoTelTITE_ID: TIntegerField;
    cdsLoTipoTelTITE_DESCRICAO: TStringField;
    dsLoMaquinas: TDataSource;
    cdsSociosMaqu: TClientDataSet;
    dsSociosMaqu: TDataSource;
    cdsLoMaquinas: TClientDataSet;
    cdsSociosTel: TClientDataSet;
    dsSociosTel: TDataSource;
    cdsSociosTelSOCI_ID: TIntegerField;
    cdsSociosTelTITE_ID: TIntegerField;
    cdsSociosTelSOCI_TEL: TStringField;
    cdsSociosTelTITE_DESC: TStringField;
    cdsLoMaquinasMAQU_ID: TStringField;
    cdsLoMaquinasMAQU_PRECO: TFloatField;
    cdsLoMaquinasMAQU_OBS: TBlobField;
    cdsLoMaquinasMATI_ID: TIntegerField;
    cdsSociosMaquSOCI_ID: TIntegerField;
    cdsSociosMaquMAQU_ID: TStringField;
    cdsSociosMaquSOMA_DTINI: TDateField;
    cdsSociosMaquSOMA_DTFIM: TDateField;
    cdsSociosMaquSOMA_PERCENTUAL: TFloatField;
    cdsSociosMaquMAQU_DESC: TStringField;
    dsPontos: TDataSource;
    cdsPontos: TClientDataSet;
    CiDaCadastroPONT_ID: TIntegerField;
    CiDaCadastroPONT_GUERRA: TStringField;
    CiDaCadastroPONT_RAZAOSOCIAL: TStringField;
    CiDaCadastroPONT_BAIRRO: TStringField;
    CiDaCadastroPONT_ESTADO: TStringField;
    CiDaCadastroPONT_CEP: TStringField;
    CiDaCadastroPONT_CGC: TStringField;
    CiDaCadastroPONT_RESPONSAVEL: TStringField;
    CiDaCadastroPONT_ENDERECO: TStringField;
    CiDaCadastroPONT_OBS: TBlobField;
    cdsPontossqlPontosTel: TDataSetField;
    cdsPontossqlPontosMaqu: TDataSetField;
    dsPontosTel: TDataSource;
    cdsPontosTel: TClientDataSet;
    cdsPontosTelPONT_ID: TIntegerField;
    cdsPontosTelTITE_ID: TIntegerField;
    cdsPontosTelPONT_TEL: TStringField;
    cdsPontosTelTITE_DESC: TStringField;
    dsPontosMaqu: TDataSource;
    cdsPontosMaqu: TClientDataSet;
    cdsPontosMaquMAQU_ID: TStringField;
    cdsPontosMaquPONT_ID: TIntegerField;
    cdsPontosMaquPOMA_DTINI: TDateField;
    cdsPontosMaquPOMA_DTFIM: TDateField;
    cdsPontosMaquPOMA_PERCENTUAL: TFloatField;
    cdsPontosMaquMAQU_NOME: TStringField;
    dsMaquinas: TDataSource;
    cdsMaquinas: TClientDataSet;
    cdsMaquinasMAQU_ID: TStringField;
    cdsMaquinasMAQU_PRECO: TFloatField;
    cdsMaquinasMAQU_OBS: TBlobField;
    cdsMaquinasMATI_ID: TIntegerField;
    cdsLoMaquTipo: TClientDataSet;
    dsLoMaquTipo: TDataSource;
    cdsUnidCalc: TClientDataSet;
    CiDaCadastroMAUN_ID: TIntegerField;
    CiDaCadastroMAUN_DESC: TStringField;
    CiDaCadastroMAUN_UNIDADE: TFloatField;
    dsUnidCalc: TDataSource;
    cdsMaquTipo: TClientDataSet;
    cdsMaquTipoMATI_ID: TIntegerField;
    cdsMaquTipoMATI_DESC: TStringField;
    cdsMaquTipoMATI_OBS: TBlobField;
    cdsMaquTipoMATI_FABRICANTE: TStringField;
    cdsMaquTipoMAUN_ID: TIntegerField;
    dsMaquTipo: TDataSource;
    cdsLoMaquTipoMATI_ID: TIntegerField;
    cdsLoMaquTipoMATI_DESC: TStringField;
    cdsLoMaquTipoMATI_OBS: TBlobField;
    cdsLoMaquTipoMATI_FABRICANTE: TStringField;
    cdsLoMaquTipoMAUN_ID: TIntegerField;
    cdsLoUnidCalc: TClientDataSet;
    dsLoUnidCalc: TDataSource;
    dsLoDespesasTipo: TDataSource;
    cdsLoDespesasTipo: TClientDataSet;
    dsDespesas: TDataSource;
    cdsDespesas: TClientDataSet;
    cdsDespesasDESP_ID: TIntegerField;
    cdsDespesasDESP_DATA: TDateField;
    cdsDespesasDESP_OBS: TBlobField;
    cdsDespesasDESP_VALOR: TFloatField;
    cdsDespesasDETI_ID: TIntegerField;
    cdsDespesasTipo: TClientDataSet;
    cdsDespesasTipoDETI_ID: TIntegerField;
    cdsDespesasTipoDETI_DESC: TStringField;
    dsDespesasTipo: TDataSource;
    cdsTabelasCampos: TClientDataSet;
    cdsTabelasCamposTACA_ID: TIntegerField;
    cdsTabelasCamposTACA_FIELDNAME: TStringField;
    cdsTabelasCamposTACA_DISPLAYNAME: TStringField;
    cdsTabelasCamposTACA_TIPO: TStringField;
    cdsTabelasCamposTACA_EXIBIR_COMBO: TStringField;
    cdsTabelasCamposTACA_EXIBIR_GRID: TStringField;
    cdsTabelasCamposTABE_ID: TIntegerField;
    dsTabelasCampos: TDataSource;
    dsLoTipoCampos: TDataSource;
    cdsLoTipoCampos: TClientDataSet;
    dsTabelas: TDataSource;
    cdsTabelas: TClientDataSet;
    cdsTabelasTABE_ID: TIntegerField;
    cdsTabelasTABE_TABELA: TStringField;
    cdsTabelassqlTabelasCampos: TDataSetField;
    dsLeituras: TDataSource;
    cdsLeituras: TClientDataSet;
    cdsLeiturasLEIT_ID: TIntegerField;
    cdsLeiturasLEIT_ENTRADAS_MAN: TIntegerField;
    cdsLeiturasLEIT_SAIDAS_MAN: TIntegerField;
    cdsLeiturasLEIT_MANUAL_MAN: TIntegerField;
    cdsLeiturasLEIT_ENTRADAS_ELE: TIntegerField;
    cdsLeiturasLEIT_SAIDAS_ELE: TIntegerField;
    cdsLeiturasLEIT_MANUAL_ELE: TIntegerField;
    cdsLeiturasLEIT_ELETRONICO_3: TIntegerField;
    cdsLeiturasLEIT_ELETRONICO_H: TIntegerField;
    cdsLeiturasLETI_DATA: TDateField;
    cdsLeiturasLETI_OBS: TBlobField;
    cdsLeiturasLEIT_RESULT_ENTRADAS: TIntegerField;
    cdsLeiturasLEIT_RESULT_SAIDAS: TIntegerField;
    cdsLeiturasLEIT_RESULT_MANUAL: TIntegerField;
    cdsLeiturasLEIT_RESULT_3: TIntegerField;
    cdsLeiturasLEIT_RESULT_H: TIntegerField;
    cdsLeiturasLEIT_RESULT_SALDO_QTDE: TFloatField;
    cdsLeiturasLEIT_RESULT_CLIENTE_QTDE: TFloatField;
    cdsLeiturasLEIT_RESULT_FIRMA_QTDE: TFloatField;
    cdsLeiturasLEIT_RESULT_SALDO_REAIS: TFloatField;
    cdsLeiturasLEIT_RESULT_CLIENTE_REAIS: TFloatField;
    cdsLeiturasLEIT_RESULT_FIRMA_REAIS: TFloatField;
    cdsLeiturasLEIT_PERCENTUAL_PONTO: TFloatField;
    cdsLeiturasLEIT_PERCENTUAL_COBRADOR: TFloatField;
    cdsLeiturasLEIT_COMIS_COBR_QTDE: TFloatField;
    cdsLeiturasLEIT_COMIS_COBR_VALOR: TFloatField;
    cdsLeiturasLEIT_RESTANTE_QTDE: TFloatField;
    cdsLeiturasLEIT_RESTANTE_VALOR: TFloatField;
    cdsLeiturasMAQU_ID: TStringField;
    cdsLeiturasPONT_ID: TIntegerField;
    cdsLeiturasCOBR_ID: TIntegerField;
    cdsLeiturassqlLeiturasComissSocios: TDataSetField;
    procedure cdsTabelasNewRecord(DataSet: TDataSet);
    procedure cdsTabelasCamposNewRecord(DataSet: TDataSet);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure DataModuleCreate(Sender: TObject);
    procedure MinimizarServerCashSystem1Click(Sender: TObject);
    procedure ExibirServerCashSystem1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure cdsMaquinasTipoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    cUsuario  :String;
    cServidor :String;
  end;

var
  Dm: TDm;

implementation

uses UnLogin, UnGeraL;

{$R *.dfm}

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  FoLogin := TFoLogin.Create(Application);

  IF ( FoLogin.ShowModal = mrCancel ) Then
    Application.Terminate
  ;

  DCOMConnection.Connected := True;
end;



procedure TDm.MinimizarServerCashSystem1Click(Sender: TObject);
begin
//RzTrayIco.MinimizeApp;
end;

procedure TDm.ExibirServerCashSystem1Click(Sender: TObject);
begin
//RzTrayIco.RestoreApp;
end;

procedure TDm.Sair1Click(Sender: TObject);
begin
Application.Terminate;
end;



procedure TDm.ApplicationEventsException(Sender: TObject; E: Exception);
begin
  Screen.Cursor := crDefault;
  Mensagem('***Erro***' + #13 + e.Message,mtErro );
end;

procedure TDm.cdsMaquinasTipoNewRecord(DataSet: TDataSet);
begin
  DaTaSet.FieldValues['MATI_ID']:=GetGenerator('GEN_MAQUINAS_TIPO',1);
end;

procedure TDm.cdsTabelasCamposNewRecord(DataSet: TDataSet);
begin
 DATASET.FieldValues['TACA_ID']:=GetGenerator('GEN_TABELAS_CAMPOS',1);
end;

procedure TDm.cdsTabelasNewRecord(DataSet: TDataSet);
begin
DATASET.FieldValues['TABE_ID']:=GetGenerator('GEN_TABELAS',1)
end;

end.
