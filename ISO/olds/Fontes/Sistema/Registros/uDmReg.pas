unit uDmReg;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, Menus, SConnect, Forms;

type
  TDmReg = class(TDataModule)
    shcnReg: TSharedConnection;
    MainMenu: TMainMenu;
    mnReg: TMenuItem;
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
  DmReg: TDmReg;
  DllApplication: TApplication;

implementation

uses uISODLL, uTesteReg;

{$R *.dfm}

procedure TDmReg.mnTesteACPClick(Sender: TObject);
begin
  Application := ParentApplication;
  frmTesteReg := TfrmTesteReg.Create(ParentForm);
  frmTesteReg.Show;
end;

procedure TDmReg.SetSocketConnection;
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

