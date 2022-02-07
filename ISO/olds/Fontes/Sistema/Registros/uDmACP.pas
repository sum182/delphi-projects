unit uDmACP;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, Menus, SConnect, Forms;

type
  TDmACP = class(TDataModule)
    shcnACP: TSharedConnection;
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
  DmACP: TDmACP;
  DllApplication: TApplication;

implementation

uses uISODLL, uTesteACP;

{$R *.dfm}

procedure TDmACP.mnTesteACPClick(Sender: TObject);
begin
  Application := ParentApplication;
  frmTesteACP := TfrmTesteACP.Create(ParentForm);
  frmTesteACP.Show;
end;

procedure TDmACP.SetSocketConnection;
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

