unit uDmTeste;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient;

type
  TDmTeste = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmTeste: TDmTeste;

implementation

uses
  uDmConnection, Forms;

{$R *.dfm}

initialization
  Application.CreateForm(TDmTeste, DmTeste);

finalization


end.
