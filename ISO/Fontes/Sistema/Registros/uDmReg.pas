unit uDmReg;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, uDmConnection, FMTBcd, TConnect,
  Provider, SqlExpr, Forms, uDmShared, IBODataset;

type
  TDmReg = class(TDataModule)
    quLocalArm: TIBOQuery;
    quFormArm: TIBOQuery;
    quRetencao: TIBOQuery;
    quProcedimentos: TIBOQuery;
    dsProcedimentos: TDataSource;
    dsLocalArm: TDataSource;
    dsFormArm: TDataSource;
    dsRetencao: TDataSource;
  private
  public
  end;

var
  DmReg: TDmReg;

implementation



{$R *.dfm}

initialization
  Application.CreateForm(TDmReg, DmReg);

finalization
  //DmReg.Free;

end.
