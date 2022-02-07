unit uDmCalib;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  TDmCalib = class(TDataModule)
    Calib: TSharedConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCalib: TDmCalib;

implementation



{$R *.dfm}

procedure TDmCalib.DataModuleCreate(Sender: TObject);
begin
  with Calib do begin
    Close;
//    ParentConnection := DM.SocketConnection;
    Open;
  end;

end;

end.
