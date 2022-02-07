unit uDM;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, SqlExpr, DB, DBClient, Provider, XPMan;

type
  TDM = class(TDataModule)
    cnnConnection: TSQLConnection;
    dspGeral: TDataSetProvider;
    cdsGeral: TClientDataSet;
    dsGeral: TDataSource;
    quGeral: TSQLDataSet;
    quTestes: TSQLDataSet;
    dspTestes: TDataSetProvider;
    cdsTestes: TClientDataSet;
    XPManifest: TXPManifest;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  with cnnConnection do
  begin
    Close;
    Open;
  end;
end;

end.
