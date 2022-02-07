unit UnDaMoBio;

interface

uses
  SysUtils, Classes, FMTBcd, DBXpress, DB, SqlExpr, DBClient, Provider,
  cxLookAndFeels, cxEdit, forms, controls, ImgList, MConnect, AppEvnts,
  RzBHints, RzStatus, XPMan, Menus, RzTray;

type
  TDaMoBio = class(TDataModule)
    LookAndFiel: TcxLookAndFeelController;
    StyleDev: TcxDefaultEditStyleController;
    Imagens: TImageList;
    DCOMConnection: TDCOMConnection;
    Versao: TRzVersionInfo;
    XPManifest: TXPManifest;
    RzTrayIco: TRzTrayIcon;
    ImTrayIco: TImageList;
    PoMeNu: TPopupMenu;
    MinimizarServerCashSystem1: TMenuItem;
    ExibirServerCashSystem1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure DataModuleCreate(Sender: TObject);
    procedure MinimizarServerCashSystem1Click(Sender: TObject);
    procedure ExibirServerCashSystem1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cUsuario  :String;
    cServidor :String;
  end;

var
  DaMoBio: TDaMoBio;

implementation

uses UnLogin, UnGeral;

{$R *.dfm}

procedure TDaMoBio.DataModuleCreate(Sender: TObject);
begin
  FoLogin := TFoLogin.Create(Application);

  IF ( FoLogin.ShowModal = mrCancel ) Then
    Application.Terminate
  ;

  DCOMConnection.Connected := True;
end;



procedure TDaMoBio.MinimizarServerCashSystem1Click(Sender: TObject);
begin
RzTrayIco.MinimizeApp;
end;

procedure TDaMoBio.ExibirServerCashSystem1Click(Sender: TObject);
begin
RzTrayIco.RestoreApp;
end;

procedure TDaMoBio.Sair1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
