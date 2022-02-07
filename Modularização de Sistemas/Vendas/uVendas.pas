unit uVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, ExtCtrls,
  DBCtrls,uDmConnection;

type
  TfrmVendas = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    sqlVendas: TSQLDataSet;
    dspVendas: TDataSetProvider;
    cdsVendas: TClientDataSet;
    dsVendas: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdsVendasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}

procedure TfrmVendas.cdsVendasAfterPost(DataSet: TDataSet);
begin
  cdsVendas.ApplyUpdates(-1);
end;

procedure TfrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmVendas.FormCreate(Sender: TObject);
begin
  with cdsVendas do
  begin
    Close;
    Open;
  end;
end;

initialization
  RegisterClass(TfrmVendas);

finalization
  UnRegisterClass(TfrmVendas);

end.
