unit uDmShared;

interface

uses
  SysUtils, Classes, ImgList, Controls, DB, DBClient, MConnect, SConnect,
  ObjBrkr, XPMan, uDmConnection, uModules, FMTBcd, TConnect, Provider, SqlExpr;

type
  TDmShared = class(TDataModule)
    imgHot: TImageList;
    imgEnabled: TImageList;
    imgDisabled: TImageList;
    imgShortCut: TImageList;
    dsGeral: TDataSource;
    cdsGeral: TClientDataSet;
    sqlConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    LocalCnn: TLocalConnection;
  private

  public

  end;

var
  DmShared: TDmShared;

implementation

uses
  Windows, Forms;

{$R *.dfm}



initialization
  Application.CreateForm(TDmShared, DmShared);

finalization
  DmShared.Free;



end.

