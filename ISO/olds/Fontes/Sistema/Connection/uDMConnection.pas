unit uDMConnection;

interface

uses
  SysUtils, Classes, ImgList, Controls, DB, DBClient, MConnect, SConnect,
  ObjBrkr;

type
  TDMConnection = class(TDataModule)
    SocketConnection: TSocketConnection;
    SimpleObjectBroker: TSimpleObjectBroker;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConnection: TDMConnection;

implementation

{$R *.dfm}

procedure TDMConnection.DataModuleCreate(Sender: TObject);
begin
  SocketConnection.Close;
  SocketConnection.Open;
end;

end.
