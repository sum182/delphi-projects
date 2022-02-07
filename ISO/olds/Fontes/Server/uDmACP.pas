unit uDMACP;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, ISOServer_TLB, StdVcl, FMTBcd, Provider, DB, SqlExpr;

type
  TClassACP = class(TRemoteDataModule, IClassACP)
    sqlACP: TSQLDataSet;
    dspACP: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

var
  ClassACP        : TClassACP;
  ClassACPFactory : TComponentFactory;


implementation

uses uServer, uDmMain;

{$R *.DFM}

class procedure TClassACP.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;


initialization
  ClassACPFactory := TComponentFactory.Create(ComServer, TClassACP,
    CLASS_ClassACP, ciMultiInstance, tmSingle);
end.
