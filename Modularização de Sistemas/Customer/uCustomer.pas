unit uCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr,uDmConnection, Grids,
  DBGrids, ExtCtrls, DBCtrls;

type
  TfrmCustomer = class(TForm)
    sqlCustomer: TSQLDataSet;
    dspCustomer: TDataSetProvider;
    cdsCustomer: TClientDataSet;
    dsCustomer: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdsCustomerAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustomer: TfrmCustomer;

implementation

{$R *.dfm}

procedure TfrmCustomer.cdsCustomerAfterPost(DataSet: TDataSet);
begin
  cdsCustomer.ApplyUpdates(-1);
end;

procedure TfrmCustomer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCustomer.FormCreate(Sender: TObject);
begin
  with cdsCustomer do
  begin
    Close;
    Open;
  end;
end;


initialization
  RegisterClass(TfrmCustomer);

finalization
  UnRegisterClass(TfrmCustomer);
end.
