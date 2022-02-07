unit uServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ExtCtrls,ImgList, Menus, DBXpress, DB, SqlExpr, DBClient,
  Buttons, Grids, DBGrids, XPMan;

type
  TfrmServer = class(TForm)
    RzLabel1: TLabel;
    RzLabel3: TLabel;
    LaStatusServer: TLabel;
    BuSair: TBitBtn;
    ImageList1: TImageList;
    RzLabel5: TLabel;
    Label3: TLabel;
    LaUsuariosConectados: TLabel;
    ClDaHistorico: TClientDataSet;
    ClDaHistoricoStatus: TStringField;
    ClDaHistoricoUsuario: TStringField;
    ClDaHistoricoData_Hora: TDateTimeField;
    DaSoHistorico: TDataSource;
    DaSoUsuariosConect: TDataSource;
    ClDaUsuariosConect: TClientDataSet;
    ClDaUsuariosConectUSUA_ID: TIntegerField;
    ClDaUsuariosConectUSUARIO: TStringField;
    ClDaUsuariosConectDATA_HORA: TDateTimeField;
    ImLiServer: TImageList;
    PoMeNu: TPopupMenu;
    MinimizarServerCashSystem1: TMenuItem;
    ExibirServerCashSystem1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    XPManifest: TXPManifest;
    GrHistorico: TDBGrid;
    GrUsuariosLogados: TDBGrid;
    TrayIco: TTrayIcon;
    sqlConection: TSQLConnection;
    procedure BuSairClick(Sender: TObject);
    procedure ExibirServerCashSystem1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MinimizarServerCashSystem1Click(Sender: TObject);
    procedure TrayIcoRestoreApp(Sender: TObject);
    procedure MinimizarApp();
    procedure RestaurarApp();


  private
    procedure ConectSocketServer;

  public
    //VARIAVEL QUE ARMAZENA O TOTAL DE CONEXOES ATIVAS
    nConexoes:Integer;

    Procedure IncluirUsuario(nUsuaID:Integer ; sUsuario:String);
    Procedure ExcluirUsuario(nUsuaID:Integer);
    Procedure AtualziarNumConexoes();
    Procedure SetHistorico(sStatus:String;sUsuario:String);


    { Public declarations }
  end;

var
  frmServer: TfrmServer;

implementation

uses uDmACP, uDmCalib, uDmMain, uDmReg, uDmRH, smGeral;



{$R *.dfm}

{ TForm1 }



procedure TfrmServer.BuSairClick(Sender: TObject);
begin

  if (MessageDlg('Deseja fechar o servidor de aplicação?' + #13  + 'Todos os usuários conectados a este servidor serão desconectados!', mtWarning, [mbYes, mbNo, mbCancel], 3) in [ mrNo, mrCancel, mrNone]) then
    Exit
  ;


  //LIMPANDO OS DADOS DA MEMORIA DOS CLIENT DATASETS
  ClDaUsuariosConect.Close;
  ClDaHistorico.Close;

  //LIMPANDO DA MEMORIA AS GRIDS
  FreeAndNil(GrHistorico);
  FreeAndNil(GrUsuariosLogados);


  Application.Terminate;
end;



procedure TfrmServer.ConectSocketServer;
begin
  if not(ProcessExecute('scktsrvr.exe')) then
      WinExec('scktsrvr.exe',SW_SHOWNORMAL);
end;

procedure TfrmServer.ExibirServerCashSystem1Click( Sender: TObject);
begin
RestaurarApp;

end;

procedure TfrmServer.Sair1Click(Sender: TObject);
begin
BuSairClick(self);
end;

procedure TfrmServer.FormClose(Sender: TObject;  var Action: TCloseAction);
begin

  WindowState:= wsMinimized;
  MinimizarApp;
  abort;
end;

procedure TfrmServer.FormCreate(Sender: TObject);
begin
  //CRIANDO OS CAMPOS DOS CLIENTS DATASETS
  ClDaUsuariosConect.Close;
  ClDaUsuariosConect.CreateDataSet;

  ClDaHistorico.Close;
  ClDaHistorico.CreateDataSet;
  nConexoes:=1;
  MinimizarApp;

  with sqlConection do
  begin
    Close;
    Open;
  end;

  ConectSocketServer;
end;





procedure TfrmServer.AtualziarNumConexoes;
begin
  //ESTA FUNCAO ATUALIZA O TOTAL DE CONEXOES ATIVAS
  LaUsuariosConectados.Caption := IntToStr(ClDaUsuariosConect.RecordCount);
end;



procedure TfrmServer.ExcluirUsuario(nUsuaID: Integer);
var FormEstado:TWindowState;
begin
  //ESTA FUNCAO EXCLUI O USUARIO DA GRID DE USUARIOS LOGADOS E SET A GRID DO HISTORICO


  //MINIMIZANDO A APLICAÇÃO
  FormEstado := WindowState;
  MinimizarApp;


  //LOCALIZANDO O USUARIO DE LOGOFF, EXCLUINDO E SETANDO O HISTORICO
  if ClDaUsuariosConect.Locate('USUA_ID',nUsuaID,[LoPartialKey])Then
    Begin
      SetHistorico('Logoff',ClDaUsuariosConect.FieldByName('USUARIO').AsString);
      ClDaUsuariosConect.Delete
    End
  ;


  //ATUALIZANDO O TOTAL DE CONEXOES
  AtualziarNumConexoes();
  WindowState := FormEstado;


  //SE A APLICAO ESTIVESSE EXIBIDA VOLTA O ESTADO DELA
  IF WindowState IN [wsMaximized ,wsnormal] Then
    RestaurarApp();
  ;


end;




procedure TfrmServer.IncluirUsuario(nUsuaID: Integer;  sUsuario: String);
var FormEstado:TWindowState;
begin
  //ESTA FUNCAO INCLUI O USUARIO DA GRID DE USUARIOS LOGADOS E SET A GRID DO HISTORICO


  //MINIMIZANDO A APLICAÇÃO
  FormEstado := WindowState;
  MinimizarApp;

  //CRIANDO O REGISTRO DE LOGIN
  ClDaUsuariosConect.Append ;
  ClDaUsuariosConect.FieldByName('USUA_ID'  ).AsInteger   := nUsuaID;
  ClDaUsuariosConect.FieldByName('USUARIO'  ).AsString    := sUsuario;
  ClDaUsuariosConect.FieldByName('DATA_HORA').AsDateTime  := now;
  ClDaUsuariosConect.Post;

  //SETANDO O HISTORICO
  SetHistorico('Login',sUsuario);

  //INCREMENTANDO A VARIAVEL DE CONEXOES
  nConexoes := nConexoes +1;



  //ATUALIZANDO O TOTAL DE CONEXOES
  AtualziarNumConexoes();
  WindowState := FormEstado;


  //SE A APLICAO ESTIVESSE EXIBIDA VOLTA O ESTADO DELA
  IF WindowState IN [wsMaximized ,wsnormal] Then
    RestaurarApp()
  ;

end;



procedure TfrmServer.SetHistorico(sStatus, sUsuario: String);
begin
  //ESTA FUNCAO SETA O HISTORICO DOS USUARIOS
  

  //CRIANDO O REGISTRO DO HISTORICO DE USUARIOS
  ClDaHistorico.Append ;
  ClDaHistorico.FieldByName('STATUS'   ).AsString    := sStatus;
  ClDaHistorico.FieldByName('USUARIO'  ).AsString    := sUsuario;
  ClDaHistorico.FieldByName('DATA_HORA').AsDateTime  := now;
  ClDaHistorico.Post;

end;







procedure TfrmServer.TrayIcoRestoreApp(Sender: TObject);
begin
  //ALTERANDO O ESTADO DO FORM
  WindowState:= wsNormal;
end;




procedure TfrmServer.RestaurarApp;
begin
    application.Restore;
    ShowWindow( Application.Handle, sw_Restore );
    SetForegroundWindow( Application.Handle );
    Self.WindowState:= wsNormal;
end;

procedure TfrmServer.MinimizarApp;
begin
    application.Minimize;
    ShowWindow( Application.Handle, sw_Hide );
end;

procedure TfrmServer.MinimizarServerCashSystem1Click(  Sender: TObject);
begin
 MinimizarApp();
end;


end.

