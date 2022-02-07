unit UnLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls,db, ImgList,  DBClient, Buttons;
type
  TFoLogin = class(TForm)
    dsXml: TDataSource;
    CdsXml: TClientDataSet;
    CdsXmlServidor: TStringField;
    CdsXmlDiretorio: TStringField;
    CdsXmlBanco: TStringField;
    CdsXmlDrive: TStringField;
    RzPanel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EdUsuario: TEdit;
    EdSenha: TEdit;
    BuAcessar: TBitBtn;
    BuCancelar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdSenhaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FDiretorio: String;
    procedure SetDiretorio(const Value: String);

  private
    FTentativa: Byte;
    procedure SetTentativa(const Value: Byte);

  published
    procedure BuCancelarClick(Sender: TObject);
    procedure BuAcessarClick(Sender: TObject);
    property Tentativa:Byte read FTentativa write SetTentativa default 0;
    Property Diretorio:String read FDiretorio write SetDiretorio;

  private
    Function Login():Boolean;
    Function LerXml ():Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoLogin: TFoLogin;

implementation

uses UnGeral, unDm;

{$R *.dfm}

procedure TFoLogin.BuCancelarClick(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TFoLogin.BuAcessarClick(Sender: TObject);
begin

   if not( Login ) then
     Begin

       // maximo de 3 tentativas para senha depois cancela e sai.
       if (Tentativa > 2) then

         Begin
           MsgInfo('Tentativas esgotadas.'+#13+'Verifique com o CPD se você tem acesso ao sistema. ');
           close;
         end

       else
         Tentativa := Tentativa + 1
       ;



     end // fim da verificação se o login foi efetuado com sucesso.
   else
     ModalResult := mrOK;
   ;

end;

procedure TFoLogin.SetTentativa(const Value: Byte);
begin
  FTentativa := Value;
end;





function TFoLogin.Login: Boolean;
begin

  //ALIMENTANDO A VARIAVEL QUE ARMZENA O USUARIO LOGADO
  Dm.cUsuario:= EdUsuario.Text;


  //VERIFICANDO O INI
  If Not( LerXml ) then
    Begin
       MsgErro('Erro na abertura do arquivo de inicialização!');
       //Abort;
    End
  ;


  //TENTANDO CONECTAR AO SERVIDOR DE APLICAÇÃO
  Try
    Dm.DCOMConnection.Connected := True;
  Except
    MsgErro('Erro na conexão do servidor de aplicação!');
    exit;
  End;


  //TENTANDO SE CONECTAR COM OS PARAMETROS DE USUARIO E SENHA
  Try
   Dm.DCOMConnection.AppServer.AddConection(GetUsuario,EdSenha.Text,Diretorio);
  Except
     MsgErro('O nome de usuário e a senha não correspondem.!');
    exit;
  End;

  
  Result:=true;
end;




procedure TFoLogin.SetDiretorio(const Value: String);
begin
  FDiretorio := Value;
end;


procedure TFoLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // limpando da memoria
  Action := caFree;

end;

procedure TFoLogin.EdSenhaPropertiesChange(Sender: TObject);
begin
  BuAcessar.Enabled := ((EdUsuario.Text <> '')  and (EdSenha.Text <> '') );
end;

procedure TFoLogin.FormShow(Sender: TObject);
begin
//  EdUsuario.Clear;
//  EdSenha.Clear;
end;

function TFoLogin.LerXml: Boolean;

begin

  Diretorio := '';
  Result := False;

  //TENTANDO ABRIR O ARQUIVO XML
  Try
    cdsXml.LoadFromFile('ConexaoXml.xml');
    CdsXml.Open;
  Except
    MsgErro('Erro na abertura do arquivo de inicialização!');
//    Abort;
  end;



  //CONEXAO LOCAL
  IF (UpperCase(CdsXmlServidor.AsString) = 'LOCALHOST')Then
    Begin
      Diretorio :=  Diretorio +  ExtractFilePath( Application.ExeName );
      Diretorio :=  Diretorio +  CdsXmlBanco.AsString;
    End

  //CONEXAO COM SERVIDOR
  Else
    Begin
      Diretorio := Diretorio + CdsXmlServidor.AsString ;
      Diretorio := Diretorio + CdsXmlDrive.AsString;
      Diretorio := Diretorio + CdsXmlDiretorio.AsString;
      Diretorio := Diretorio + CdsXmlBanco.AsString;
    End
  ;

  CdsXml.Close;
  Result := True;

end;

Initialization
  RegisterClass(TFoLogin);

Finalization
  UnRegisterClass(TFoLogin);

end.
