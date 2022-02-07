unit uDmReg;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, ISOServer_TLB, StdVcl, FMTBcd, Provider, DB, SqlExpr;

type
  TClassReg = class(TRemoteDataModule, IClassReg)
    sqlREG: TSQLDataSet;
    dspREG: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

var
  ClassReg        : TClassReg;
  ClassRegFactory : TComponentFactory;

implementation

uses uServer;

{$R *.DFM}

class procedure TClassReg.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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
  ClassRegFactory := TComponentFactory.Create(ComServer, TClassReg,
    CLASS_ClassReg, ciMultiInstance, tmSingle);
end.
