unit uDM;

interface

uses
  SysUtils, Classes, ImgList, Controls, DB, DBClient, MConnect, SConnect;

type
  TDM = class(TDataModule)
    imgHot: TImageList;
    imgEnabled: TImageList;
    imgDisabled: TImageList;
    imgShortCut: TImageList;
    Calib: TSharedConnection;
    ACP: TSharedConnection;
    Reg: TSharedConnection;
    RH: TSharedConnection;
    SocketConnectionTMP: TSocketConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
    SocketConnection: TSocketConnection;
    procedure SetSocketConnection;

  end;

var
  DM: TDM;

implementation

uses
  Windows;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  SocketConnectionTMP.Free;
end;



procedure TDM.SetSocketConnection;
begin
  with Calib do begin
    Close;
    ParentConnection := SocketConnection;
    Open;
  end;


  with acp do begin
    Close;
    ParentConnection := SocketConnection;
    Open;
  end;

  with reg do begin
    Close;
    ParentConnection := SocketConnection;
    Open;
  end;


  with rh do begin
    Close;
    ParentConnection := SocketConnection;
    Open;
  end;
end;

end.
