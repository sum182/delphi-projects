unit uDmConnection;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, Provider, DB, SqlExpr, DBClient, TConnect;

type
  TDMConnection = class(TDataModule)
    Cnn: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
  public

  end;

var
  DMConnection: TDMConnection;

implementation

uses
  Forms, smMensagens;

{$R *.dfm}



{ TDMCnn }





procedure TDMConnection.DataModuleCreate(Sender: TObject);
begin
  with Cnn do
  begin
    Close;
    Open;
  end;
end;

initialization
  Application.CreateForm(TDMConnection, DMConnection);

finalization
  DMConnection.Free;


end.
