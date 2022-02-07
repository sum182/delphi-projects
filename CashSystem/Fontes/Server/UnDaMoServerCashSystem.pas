unit UnDaMoServerCashSystem;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  forms,DBClient, Server_CashSystem_TLB, StdVcl, DBXpress, FMTBcd, Provider, DB, SqlExpr,DIALOGS,StdCtrls,MidasLib;


type
  TServerCashSystem = class(TRemoteDataModule, IServerCashSystem)
    sqlGeral: TSQLDataSet;
    dspGeral: TDataSetProvider;
    sqlTabelas: TSQLDataSet;
    dspTabelas: TDataSetProvider;
    sqlTabelasCampos: TSQLDataSet;
    dspTabelasCampos: TDataSetProvider;
    SqlDaSeMenu_Grupo: TSQLDataSet;
    DaSePrMenu_Grupo: TDataSetProvider;
    SqlDaSeMenuBio: TSQLDataSet;
    DaSePrMenuBio: TDataSetProvider;
    SQLConnection: TSQLConnection;
    SqlMenuUsuario: TSQLDataSet;
    DaSePrMenuUsuario: TDataSetProvider;
    SqlMenuTabelas: TSQLDataSet;
    DaSePrMenuTabelas: TDataSetProvider;
    SqlDaSeUsuarios: TSQLDataSet;
    DaSePrUsuarios: TDataSetProvider;
    SqlSrPrGrantRevoke: TSQLStoredProc;
    DaSePrGrantRevoke: TDataSetProvider;
    SqlCoUsuarios: TSQLConnection;
    sqlMaquinas: TSQLDataSet;
    dspMaquinas: TDataSetProvider;
    sqlMaquinasTipo: TSQLDataSet;
    dspMaquinasTipo: TDataSetProvider;
    sqlUnidCalc: TSQLDataSet;
    dsplUnidCalc: TDataSetProvider;
    sqlDespesas: TSQLDataSet;
    dspDespesas: TDataSetProvider;
    sqlDespesasTipo: TSQLDataSet;
    dsoDespesasTipo: TDataSetProvider;
    sqlPontos: TSQLDataSet;
    dspPontos: TDataSetProvider;
    dsPontos: TDataSource;
    sqlPontosTel: TSQLDataSet;
    sqlPontosPONT_ID: TIntegerField;
    sqlPontosPONT_GUERRA: TStringField;
    sqlPontosPONT_RAZAOSOCIAL: TStringField;
    sqlPontosPONT_BAIRRO: TStringField;
    sqlPontosPONT_ESTADO: TStringField;
    sqlPontosPONT_CEP: TStringField;
    sqlPontosPONT_CGC: TStringField;
    sqlPontosPONT_RESPONSAVEL: TStringField;
    sqlPontosPONT_ENDERECO: TStringField;
    sqlPontosPONT_OBS: TBlobField;
    sqlPontosMaqu: TSQLDataSet;
    sqlCobradores: TSQLDataSet;
    sqlCobradoresTel: TSQLDataSet;
    dsCobradores: TDataSource;
    dspCobradores: TDataSetProvider;
    dsSocios: TDataSource;
    dspSocios: TDataSetProvider;
    sqlSociosMaqu: TSQLDataSet;
    sqlSocios: TSQLDataSet;
    sqlSociosTel: TSQLDataSet;
    sqlLeituras: TSQLDataSet;
    dspLeituras: TDataSetProvider;
    dsLeituras: TDataSource;
    sqlLeiturasComissSocios: TSQLDataSet;
    dsTabelas: TDataSource;
    procedure RemoteDataModuleDestroy(Sender: TObject);

  private
    { Private declarations }

  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;

    procedure AddConection(const Usuario, Senha, Diretorio: WideString);safecall;
    procedure EndConection(const Usuario: WideString); safecall;


    public

    //VARIAVEL QUE IDENFICA O USUARIO
     nUsuaId:Integer;


    { Public declarations }
    Function ConectServer():Boolean;

  end;

implementation

uses UnFoServerCashSystem;

{$R *.DFM}




class procedure TServerCashSystem.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;


function TServerCashSystem.ConectServer: Boolean;
begin
  Result := (SQLConnection.Connected);
end;



procedure TServerCashSystem.AddConection(const Usuario, Senha,Diretorio: WideString);
Begin
   //ESTA FUNCAO CONECTA O USUARIO AO BANCO



     //CONECTANDO O USUARIO
     SQLConnection.Connected                   := False;
     SQLConnection.Params.Values['Database']   := Diretorio;
     SQLConnection.Params.Values['SQLDialect'] := '3';
     SQLConnection.Params.Values['User_Name']  := Usuario;
     SQLConnection.Params.Values['PassWord']   := Senha;
     SQLConnection.Connected                   := True;



     //ALIMENTANDO A VARIAVEL QUE IDENTIFICA O USUARIO
     nUsuaId := FoServerCashSystem.nConexoes;

     //SETANDO AS FUNCOES DE LOGINS DE USUARIOS
     FoServerCashSystem.IncluirUsuario(nUsuaId,Usuario);


end;


procedure TServerCashSystem.EndConection(const Usuario: WideString);
begin

  //SETANDO AS FUNCOES DE LOGINS DE USUARIOS
  FoServerCashSystem.ExcluirUsuario(nUsuaId);

end;






procedure TServerCashSystem.RemoteDataModuleDestroy(Sender: TObject);
begin

  EndConection(SQLConnection.Params.Values['User_Name']);

end;





initialization
  TComponentFactory.Create(ComServer, TServerCashSystem,
    Class_ServerCashSystem, ciMultiInstance, tmApartment);
end.
