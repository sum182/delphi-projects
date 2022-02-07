unit uDmConnection;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, Provider, DB, SqlExpr, DBClient, TConnect,
  IB_Components, AppEvnts;

type
  TDMConnection = class(TDataModule)
    IBOCnn: TIB_Connection;
    IBOTrans: TIB_Transaction;
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
  with IBOCnn do
  begin
    Close;
    Open;
  end;
end;

initialization
//  Application.CreateForm(TDMConnection, DMConnection);

finalization
  //DMConnection.Free;


end.
