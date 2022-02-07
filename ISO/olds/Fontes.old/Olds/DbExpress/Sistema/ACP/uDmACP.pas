unit uDmACP;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  TDmACP = class(TDataModule)
    ACP: TSharedConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmACP: TDmACP;

implementation

uses uDM;

{$R *.dfm}

procedure TDmACP.DataModuleCreate(Sender: TObject);
begin
  with acp do begin
    Close;
    ParentConnection := dm.SocketConnection;
    Open;
  end;
end;

end.
