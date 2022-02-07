unit UnBuscaPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, SqlExpr, UnFoBuscaPadrao, DBClient, Provider;

type

  TBuscaPadrao = class(TComponent)

  private
    cSelect : String;
    cConexao : TSQLConnection;
    cRemoteServer : TCustomRemoteServer;
    cProvider : String;

    cTabela : String;
    nPosicao : Byte;
    nQtdePacotes : SmallInt;
    cTitulo : string;


  protected
    procedure Notification(AComponent: TComponent;
                            Operation: TOperation); override;


  public
    constructor Create(Owner: TComponent); override;
    Function Executa: Boolean;
    Function Resultado: Variant;

  published

    { Comando Sql  para busca dos dados}
    property Select: String
             read cSelect
             write cSelect;

    { Conexao com o banco de dados. }
    property Conexao : TSQLConnection
              read cConexao
              write cConexao;


    property Tabela : String
              read cTabela
              write cTabela;

    property Posicao : Byte
             read nPosicao
             Write nPosicao;

    property QtdePacotes : SmallInt
             read  nQtdePacotes
             write nQtdePacotes;

    Property Titulo: String
             read cTitulo
             write cTitulo;

    Property RemoteServer : TCustomRemoteServer
             read cRemoteServer
             write cRemoteServer;

    Property Provider : String
             read cProvider
             write cProvider;



  end;

   procedure Register;

implementation



{ cria o componente e inicializa defaults }
constructor TBuscaPadrao.Create(Owner: TComponent);
begin
  inherited Create(Owner);

end;


{ verifica se o label associado foi deletado }
procedure TBuscaPadrao.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
end;


    // Executando a Mensagem
    Function TBuscaPadrao.Executa: Boolean;
    Var
      LeftBtOk: Integer;
    begin
      Try
        FoBuscaPadrao := TFoBuscaPadrao.Create( Application );
        //FoBuscaPadrao.SetConexao(Conexao);
        FoBuscaPadrao.SetRemoteServer(cRemoteServer);
        FoBuscaPadrao.SetProvider(cProvider);
        FoBuscaPadrao.SetCampos(Tabela);
        FoBuscaPadrao.SetSelect(Select);
        FoBuscaPadrao.SetPosicao(Posicao);
        FoBuscaPadrao.SetPacotes(QtdePacotes);
        FoBuscaPadrao.Titulo := Titulo;
        FoBuscaPadrao.ShowModal;


        Result := not (FoBuscaPadrao.Cancelou);
      Except
        FreeAndNil(FoBuscaPadrao);
      End;
    end;



    // pegando o resultado
    function TBuscaPadrao.Resultado: Variant;
      begin

         Result := FoBuscaPadrao.Resultado;
         FreeAndNil(FoBuscaPadrao);

      end;




    { register }
    procedure Register;
    begin
      RegisterComponents('BioSystem', [TBuscaPadrao]);
    end;




end.

