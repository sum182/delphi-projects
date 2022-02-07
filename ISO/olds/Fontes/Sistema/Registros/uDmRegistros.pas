unit uDmRegistros;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, Menus, SConnect, Forms;

type
  TDmRegistros = class(TDataModule)
    shcnReg: TSharedConnection;
    mnACP: TMainMenu;
    ACP1: TMenuItem;
    mnTesteACP: TMenuItem;
    SocketConnectionTMP: TSocketConnection;
    procedure mnTesteACPClick(Sender: TObject);
  private
  public
    ParentForm: TForm;
    ParentApplication: TApplication;
    procedure SetSocketConnection;
  end;

var
  DmRegistros: TDmRegistros;
  DllApplication: TApplication;

implementation

uses uISODLL, uTesteACP;

{$R *.dfm}

procedure TDmRegistros.mnTesteACPClick(Sender: TObject);
begin
  Application := ParentApplication;
  frmTesteACP := TfrmTesteACP.Create(ParentForm);
  frmTesteACP.Show;
end;

procedure TDmRegistros.SetSocketConnection;
var
  Connection: TConnection;
begin
  try
    Connection := TConnection.Create;
    Connection.CreateConnection;
    Connection.SetSocketConnection(self);
  finally
    Connection.Free;
  end;
end;

end.

