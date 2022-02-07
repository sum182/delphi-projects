unit uDmTeste;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, TConnect, Provider, SqlExpr;

type
  TDmTeste = class(TDataModule)
    sqlTesteReg: TSQLDataSet;
    dspTesteReg: TDataSetProvider;
    sqlTesteACP: TSQLDataSet;
    dspTesteACP: TDataSetProvider;
    sqlTesteCalib: TSQLDataSet;
    dspTesteCalib: TDataSetProvider;
    sqlTesteRh: TSQLDataSet;
    dspTesteRh: TDataSetProvider;
    LocalCnn: TLocalConnection;
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
