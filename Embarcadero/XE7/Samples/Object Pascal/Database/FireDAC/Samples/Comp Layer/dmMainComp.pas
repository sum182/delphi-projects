unit dmMainComp;

interface

uses
  SysUtils, Classes, DB,
  dmMainBase,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Def, FireDAC.Stan.Async, FireDAC.Stan.Error,
    FireDAC.Stan.Pool,
{$IFDEF FireDAC_MONITOR}
  FireDAC.Moni.Custom, FireDAC.Moni.FlatFile, FireDAC.Moni.RemoteClient,
{$ENDIF}
  FireDAC.Phys.Intf, FireDAC.Phys, FireDAC.Phys.MSAcc, FireDAC.Phys.MySQL,
    FireDAC.Phys.ASA, FireDAC.Phys.ADS, FireDAC.Phys.IB, FireDAC.Phys.FB, FireDAC.Phys.PG, 
    FireDAC.Phys.SQLite, FireDAC.Phys.ODBC, FireDAC.Phys.MSSQL, FireDAC.Phys.DB2, 
    FireDAC.Phys.Oracle, FireDAC.Phys.TDBX,
  FireDAC.DApt,
  FireDAC.Comp.Client,
  FireDAC.VCLUI.Error, FireDAC.VCLUI.Login, FireDAC.VCLUI.Async,
    FireDAC.VCLUI.Wait, FireDAC.UI.Intf, FireDAC.Comp.UI;

type
  TdmlMainComp = class(TdmlMainBase)
    dbMain: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmlMainComp: TdmlMainComp;

implementation

{$R *.dfm}

end.
