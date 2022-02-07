unit uDmRH;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  TDmRH = class(TDataModule)
    RH: TSharedConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmRH: TDmRH;

implementation

uses uDM;

{$R *.dfm}

procedure TDmRH.DataModuleCreate(Sender: TObject);
begin
  with rh do begin
    Close;
    ParentConnection := DM.SocketConnection;
    Open;
  end;
end;

end.
