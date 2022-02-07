unit uDmRH;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, ISOServer_TLB, StdVcl, FMTBcd, Provider, DB, SqlExpr;

type
  TClassRH = class(TRemoteDataModule, IClassRH)
    sqlRH: TSQLDataSet;
    dspRH: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

var
  ClassRH        : TClassRH;
  ClassRHFactory : TComponentFactory;


implementation

uses uServer;

{$R *.DFM}

class procedure TClassRH.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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
  ClassRHFactory := TComponentFactory.Create(ComServer, TClassRH,
    CLASS_ClassRH, ciMultiInstance, tmSingle);
end.
