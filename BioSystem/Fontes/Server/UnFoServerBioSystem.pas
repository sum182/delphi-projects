unit UnFoServerBioSystem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzStatus, ExtCtrls, RzPanel, RzLabel, RzButton,
  ImgList, RzTray, Menus, DBXpress, DB, SqlExpr, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxGrid, DBClient,
  cxClasses, RzAnimtr;

type
  TFoServerBioSystem = class(TForm)
    RzLabel1: TRzLabel;
    RzStatusBar1: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzResourceStatus1: TRzResourceStatus;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    LaStatusServer: TRzLabel;
    BuSair: TRzBitBtn;
    RzTrayIco: TRzTrayIcon;
    ImageList1: TImageList;
    RzLabel5: TRzLabel;
    cxStyleGrid: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
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
    GrUsuariosLogados: TcxGrid;
    GrUsuariosLogadosDBTableView1: TcxGridDBTableView;
    GrUsuariosLogadosDBTableView1USUA_ID: TcxGridDBColumn;
    GrUsuariosLogadosDBTableView1USUARIO: TcxGridDBColumn;
    GrUsuariosLogadosDBTableView1DATA_HORA: TcxGridDBColumn;
    GrUsuariosLogadosLevel1: TcxGridLevel;
    GrHistorico: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Status: TcxGridDBColumn;
    cxGridDBTableView1Usuario: TcxGridDBColumn;
    cxGridDBTableView1Data_Hora: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ImLiServer: TImageList;
    RzAnimator1: TRzAnimator;
    PoMeNu: TPopupMenu;
    MinimizarServerCashSystem1: TMenuItem;
    ExibirServerCashSystem1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure BuSairClick(Sender: TObject);
    procedure ExibirServerCashSystem1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MinimizarServerCashSystem1Click(Sender: TObject);
    procedure RzTrayIcoRestoreApp(Sender: TObject);



    
  private
    { Private declarations }

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
  FoServerBioSystem: TFoServerBioSystem;

implementation

uses ServerBioSystem_TLB;

{$R *.dfm}

{ TForm1 }



procedure TFoServerBioSystem.BuSairClick(Sender: TObject);
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



procedure TFoServerBioSystem.ExibirServerCashSystem1Click( Sender: TObject);
begin
  RzTrayIco.RestoreApp;
end;

procedure TFoServerBioSystem.Sair1Click(Sender: TObject);
begin
BuSairClick(self);
end;

procedure TFoServerBioSystem.FormClose(Sender: TObject;  var Action: TCloseAction);
begin

  FoServerBioSystem.WindowState:= wsMinimized;
  RzTrayIco.MinimizeApp;
  abort;
end;

procedure TFoServerBioSystem.FormCreate(Sender: TObject);
begin

  //CRIANDO OS CAMPOS DOS CLIENTS DATASETS
  ClDaUsuariosConect.Close;
  ClDaUsuariosConect.CreateDataSet;

  ClDaHistorico.Close;
  ClDaHistorico.CreateDataSet;

  nConexoes:=1;
end;





procedure TFoServerBioSystem.AtualziarNumConexoes;
begin
  //ESTA FUNCAO ATUALIZA O TOTAL DE CONEXOES ATIVAS
  LaUsuariosConectados.Caption := IntToStr(ClDaUsuariosConect.RecordCount);
end;



procedure TFoServerBioSystem.ExcluirUsuario(nUsuaID: Integer);
var FormEstado:TWindowState;
begin
  //ESTA FUNCAO EXCLUI O USUARIO DA GRID DE USUARIOS LOGADOS E SET A GRID DO HISTORICO


  //MINIMIZANDO A APLICAÇÃO
  FormEstado := FoServerBioSystem.WindowState;
  RzTrayIco.MinimizeApp;


  //LOCALIZANDO O USUARIO DE LOGOFF, EXCLUINDO E SETANDO O HISTORICO
  if ClDaUsuariosConect.Locate('USUA_ID',nUsuaID,[LoPartialKey])Then
    Begin
      SetHistorico('Logoff',ClDaUsuariosConect.FieldByName('USUARIO').AsString);
      ClDaUsuariosConect.Delete
    End
  ;


  //ATUALIZANDO O TOTAL DE CONEXOES
  AtualziarNumConexoes();
  FoServerBioSystem.WindowState := FormEstado;


  //SE A APLICAO ESTIVESSE EXIBIDA VOLTA O ESTADO DELA
  IF FoServerBioSystem.WindowState IN [wsMaximized ,wsnormal] Then
    RzTrayIco.RestoreApp
  ;


end;




procedure TFoServerBioSystem.IncluirUsuario(nUsuaID: Integer;  sUsuario: String);
var FormEstado:TWindowState;
begin
  //ESTA FUNCAO INCLUI O USUARIO DA GRID DE USUARIOS LOGADOS E SET A GRID DO HISTORICO


  //MINIMIZANDO A APLICAÇÃO
  FormEstado := FoServerBioSystem.WindowState;
  RzTrayIco.MinimizeApp;

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
  FoServerBioSystem.WindowState := FormEstado;


  //SE A APLICAO ESTIVESSE EXIBIDA VOLTA O ESTADO DELA
  IF FoServerBioSystem.WindowState IN [wsMaximized ,wsnormal] Then
    RzTrayIco.RestoreApp
  ;

end;



procedure TFoServerBioSystem.SetHistorico(sStatus, sUsuario: String);
begin
  //ESTA FUNCAO SETA O HISTORICO DOS USUARIOS
  

  //CRIANDO O REGISTRO DO HISTORICO DE USUARIOS
  ClDaHistorico.Append ;
  ClDaHistorico.FieldByName('STATUS'   ).AsString    := sStatus;
  ClDaHistorico.FieldByName('USUARIO'  ).AsString    := sUsuario;
  ClDaHistorico.FieldByName('DATA_HORA').AsDateTime  := now;
  ClDaHistorico.Post;

end;







procedure TFoServerBioSystem.RzTrayIcoRestoreApp(Sender: TObject);
begin
  //ALTERANDO O ESTADO DO FORM
  FoServerBioSystem.WindowState:= wsNormal;
end;


procedure TFoServerBioSystem.MinimizarServerCashSystem1Click(  Sender: TObject);
begin
   RzTrayIco.MinimizeApp();
end;


end.

