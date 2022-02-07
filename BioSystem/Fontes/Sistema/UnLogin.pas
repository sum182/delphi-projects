unit UnLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, jpeg, ExtCtrls, StdCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, RzBckgnd, RzPanel, IniFiles, db, ImgList, RzAnimtr;

type
  TFoLogin = class(TForm)
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdSenhaPropertiesChange(Sender: TObject);
  private
    FDiretorio: String;
    procedure SetDiretorio(const Value: String);

  private
    FTentativa: Byte;
    procedure SetTentativa(const Value: Byte);

  published
    RzPanel1: TRzPanel;
    RzBackground1: TRzBackground;
    EdUsuario: TcxTextEdit;
    EdSenha: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    BuAcessar: TRzBitBtn;
    BuCancelar: TRzBitBtn;
    procedure BuCancelarClick(Sender: TObject);
    procedure BuAcessarClick(Sender: TObject);
    property Tentativa:Byte read FTentativa write SetTentativa default 0;
    Property Diretorio:String read FDiretorio write SetDiretorio;

  private
    Function Login():Boolean;
    Function LerIni():Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoLogin: TFoLogin;

implementation

uses UnGeral, UnDaMoBio, UnMenuPrincipal;

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
  DaMoBio.cUsuario:= EdUsuario.Text;


  //VERIFICANDO O INI
  If Not( LerIni ) then
    Begin
       MsgErro('Arquivo ''conexao.ini'' não foi encontrado!');
       Exit;
    End
  ;


  //TENTANDO CONECTAR AO SERVIDOR DE APLICAÇÃO
  Try
    DaMoBio.DCOMConnection.Connected := True;
  Except
    MsgErro('Erro na conexão do servidor de aplicação!');
    exit;
  End;


  //TENTANDO SE CONECTAR COM OS PARAMETROS DE USUARIO E SENHA
 // Try
   DaMoBio.DCOMConnection.AppServer.AddConection(GetUsuario,EdSenha.Text,Diretorio);
 // Except
  //  MsgErro('O nome de usuário e a senha não correspondem. !');
  //  exit;
 // End;

  
  Result:=true;
end;



function TFoLogin.LerIni: Boolean;
Var
  ArqIni      : TIniFile;
  nSecao      : Integer;
  sPropSecoes : TStringList;
begin
  LerIni := True;

  // Criando Lista de Propriedades da Sessao Sistemas
  sPropSecoes := TStringList.Create;


  DaMoBio.cServidor := (Trim(sPropSecoes.Values['Banco'    ]));

  Try
    // Lendo o Arquivo INI
    ArqIni      := TIniFile.Create( ExtractFilePath( Application.ExeName )+'conexao.ini');
  Except
    Lerini := False; // caso nao encontre o arquivo retona false;
  end;

  // Lendo os Valores da Sessao Sistema do arquivo INI
  ArqIni.ReadSectionValues( 'Sistema', sPropSecoes );

  // Colocando os dados da Sessao nas variáveis
  Diretorio := '';
  Diretorio := (Trim(sPropSecoes.Values['Servidor' ]));
  Diretorio := Diretorio + (Trim(sPropSecoes.Values['Drive'    ]));
  Diretorio := Diretorio + (Trim(sPropSecoes.Values['Diretorio']));
  Diretorio := Diretorio + (Trim(sPropSecoes.Values['Banco'    ]));

  FreeAndNil( ArqIni );
  FreeAndNil( sPropSecoes );

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

Initialization
  RegisterClass(TFoLogin);

Finalization
  UnRegisterClass(TFoLogin);

end.
