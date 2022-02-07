unit uISODLL;

interface

uses
  SysUtils, Classes, ImgList, Controls, DB, DBClient, MConnect, SConnect;


type
  TConnection = class
    FFileName: string;
    FHandle: THandle;
    procedure CreateConnection;
    function GetSocketConnection: TSocketConnection;
    procedure SetSocketConnection(AParent: TComponent);
  end;



implementation

uses
  Windows;

{ TConnection }

procedure TConnection.CreateConnection;
var
  GetSocketConnection: function: TSocketConnection; stdcall;
  CreateConnection: procedure; stdcall;
begin
  FFileName := 'Connection.dll';
  FHandle := 0;

  if (FHandle = 0) then
    FHandle := LoadLibrary(PChar(FFileName));

  if (FHandle = 0) then
    raise Exception.Create('Não foi possível localizar o módulo ' + FFileName);

  @CreateConnection := GetProcAddress(FHandle, 'CreateConnection');
  if (@CreateConnection = nil) then
  begin
    raise Exception.Create('Erro ao carregar o módulo ' + FFileName);
  end;
  CreateConnection;
end;

function TConnection.GetSocketConnection: TSocketConnection;
var
  GetSocketConnection: function: TSocketConnection; stdcall;
begin
  if (FHandle = 0) then
    FHandle := LoadLibrary(PChar(FFileName));

  if (FHandle = 0) then
    raise Exception.Create('Não foi possível localizar o módulo ' + FFileName);

  @GetSocketConnection := GetProcAddress(FHandle, 'GetSocketConnection');
  if (@GetSocketConnection = nil) then
  begin
    raise Exception.Create('Erro ao carregar o módulo ' + FFileName);
  end;
  Result := GetSocketConnection;
end;

procedure TConnection.SetSocketConnection(AParent: TComponent);
var
  i: Integer;
  cnn: TSocketConnection;
begin
  cnn := GetSocketConnection;

  if (cnn = nil) then
    Exit;

  with AParent do
    for i := 0 to ComponentCount - 1 do
    begin
      if (Components[i] is TSharedConnection) then
        TSharedConnection(Components[i]).ParentConnection := cnn;

      if (Components[i] is TSocketConnection) then
        (Components[i]).Free;

    end;
end;

end.

