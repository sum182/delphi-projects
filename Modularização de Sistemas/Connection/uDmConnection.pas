unit uDmConnection;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, Provider, DB, SqlExpr, DBClient;

type
  TDMConnection = class(TDataModule)
    Cnn: TSQLConnection;
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





initialization
  Application.CreateForm(TDMConnection, DMConnection);

finalization
  DMConnection.Free;


end.
