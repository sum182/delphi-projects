unit UnDaMoServerBioSystem;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, ServerBioSystem_TLB, StdVcl, FMTBcd, DBXpress, DB, SqlExpr,
  Provider;

type
  TServer_BioSystem = class(TRemoteDataModule, IServer_BioSystem)
    SqlDaSeGeral: TSQLDataSet;
    DaSePrGeral: TDataSetProvider;
    SqlDaSeTabelas: TSQLDataSet;
    DaSePrTabelas: TDataSetProvider;
    SqlDaSeTabelas_Campos: TSQLDataSet;
    DaSePrTabelas_Campos: TDataSetProvider;
    SqlDaSeMenu_Grupo: TSQLDataSet;
    DaSePrMenu_Grupo: TDataSetProvider;
    SqlDaSeMenuBio: TSQLDataSet;
    DaSePrMenuBio: TDataSetProvider;
    SQLConnection: TSQLConnection;
    procedure RemoteDataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure AddConection(const USUARIO, SENHA, DIRETORIO: WideString);
      safecall;
    procedure EndConection(const Usuario: WideString); safecall;
  public

      //VARIAVEL QUE IDENFICA O USUARIO
     nUsuaId:Integer;


    { Public declarations }
      Function ConectServer():Boolean;
  end;

implementation

uses UnFoServerBioSystem;

{$R *.DFM}

class procedure TServer_BioSystem.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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




procedure TServer_BioSystem.AddConection(const USUARIO, SENHA,  DIRETORIO: WideString);
begin
    //ESTA FUNCAO CONECTA O USUARIO AO BANCO



     //CONECTANDO O USUARIO
     SQLConnection.Connected                   := False;
     SQLConnection.Params.Values['Database']   := Diretorio;
     SQLConnection.Params.Values['SQLDialect'] := '3';
     SQLConnection.Params.Values['User_Name']  := Usuario;
     SQLConnection.Params.Values['PassWord']   := Senha;
     SQLConnection.Connected                   := True;



     //ALIMENTANDO A VARIAVEL QUE IDENTIFICA O USUARIO
     nUsuaId := FoServerBioSystem.nConexoes;

     //SETANDO AS FUNCOES DE LOGINS DE USUARIOS
     FoServerBioSystem.IncluirUsuario(nUsuaId,Usuario);
end;





procedure TServer_BioSystem.EndConection(const Usuario: WideString);
begin

  //SETANDO AS FUNCOES DE LOGINS DE USUARIOS
  FoServerBioSystem.ExcluirUsuario(nUsuaId);


end;





function TServer_BioSystem.ConectServer: Boolean;
begin
 Result := (SQLConnection.Connected);
end;

procedure TServer_BioSystem.RemoteDataModuleDestroy(Sender: TObject);
begin
  EndConection(SQLConnection.Params.Values['User_Name']);
end;

initialization
  TComponentFactory.Create(ComServer, TServer_BioSystem,
    Class_Server_BioSystem, ciMultiInstance, tmApartment);
end.
