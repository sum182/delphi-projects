unit uDmMain;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, ISOServer_TLB, StdVcl, DBXpress, FMTBcd, Provider, DB, SqlExpr;

type
  TClassMain = class(TRemoteDataModule, IClassMain)
    sqlGeral: TSQLDataSet;
    dspGeral: TDataSetProvider;
  private
    { Private declarations }
  protected
    function Get_ClassCalib: IClassCalib; safecall;
    function Get_ClassACP: IClassACP; safecall;
    function Get_ClassReg: IClassReg; safecall;
    function Get_ClassRH: IClassRH; safecall;
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

implementation

uses uServer, uDmACP, uDmCalib, uDmReg, uDmRH, smGeral;

{$R *.DFM}


class procedure TClassMain.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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




function TClassMain.Get_ClassACP: IClassACP;
begin
  Result := (ClassACPFactory.CreateComObject(nil) as IClassACP);
end;

function TClassMain.Get_ClassReg: IClassReg;
begin
  Result := (ClassRegFactory.CreateComObject(nil) as IClassReg);
end;

function TClassMain.Get_ClassRH: IClassRH;
begin
  Result := (ClassRHFactory.CreateComObject(nil) as IClassRH);
end;

function TClassMain.Get_ClassCalib: IClassCalib;
begin
  Result := (ClassCalibFactory.CreateComObject(nil) as IClassCalib);
end;

initialization
  TComponentFactory.Create(ComServer, TClassMain,
    Class_ClassMain, ciMultiInstance, tmSingle);
end.
