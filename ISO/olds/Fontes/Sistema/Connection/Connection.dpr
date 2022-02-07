library Connection;

uses
  SysUtils,
  Classes,
  ImgList,
  Controls,
  DB,
  DBClient,
  MConnect,
  SConnect,
  uDMConnection in 'uDMConnection.pas' {DMConnection: TDataModule};


procedure CreateConnection;stdcall;
begin
  with DMConnection do
  begin
    DMConnection:= TDMConnection.Create(nil);
  end;
end;

function GetSocketConnection:TSocketConnection;stdcall;
begin
  Result := DMConnection.SocketConnection;
end;

{$R *.res}

exports
  CreateConnection,
  GetSocketConnection;

begin
end.
