unit uDmCalib;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, ISOServer_TLB, StdVcl, FMTBcd, Provider, DB, SqlExpr;

type
  TClassCalib = class(TRemoteDataModule, IClassCalib)
    sqlCalib: TSQLDataSet;
    dspCalib: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

var
  ClassCalib        : TClassCalib;
  ClassCalibFactory : TComponentFactory;  

implementation

uses uServer;

{$R *.DFM}

class procedure TClassCalib.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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
  ClassCalibFactory := TComponentFactory.Create(ComServer, TClassCalib,
    CLASS_ClassCalib, ciMultiInstance, tmSingle);
end.
