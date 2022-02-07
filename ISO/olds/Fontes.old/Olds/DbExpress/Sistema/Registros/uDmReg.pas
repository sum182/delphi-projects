unit uDmReg;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, uDmConnection, FMTBcd, TConnect,
  Provider, SqlExpr, Forms, uDmShared;

type
  TDmReg = class(TDataModule)
    cdsLocalArm: TClientDataSet;
    cdsLocalArmRELO_DESCR: TStringField;
    cdsLocalArmRELO_ID: TIntegerField;
    cdsFormArm: TClientDataSet;
    cdsRetencao: TClientDataSet;
    cdsIndexacao: TClientDataSet;
    cdsFormArmREFO_ID: TIntegerField;
    cdsFormArmREFO_DESCR: TStringField;
    sqlReg: TSQLDataSet;
    dspReg: TDataSetProvider;
    LocalCnn: TLocalConnection;
    sqlRetensao: TSQLDataSet;
    dspRetensao: TDataSetProvider;
    sqlLocal: TSQLDataSet;
    dspLocal: TDataSetProvider;
    sqlFormArm: TSQLDataSet;
    dspFormArm: TDataSetProvider;
    sqlInd: TSQLDataSet;
    dspIndex: TDataSetProvider;
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
