unit fMainDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBClient, Grids, DBGrids, ExtCtrls, fMainBase,
  fProperties, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageXML,
  FireDAC.Stan.StorageBin, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Comp.UI;

type
  TfrmMainDemo = class(TfrmMainBase)
    btnBrowseCDS: TButton;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnBrowseDB: TButton;
    FDTable1: TFDTable;
    btnBrowseFile: TButton;
    OpenDialog1: TOpenDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    procedure btnBrowseCDSClick(Sender: TObject);
    procedure btnBrowseDBClick(Sender: TObject);
    procedure btnBrowseFileClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainDemo: TfrmMainDemo;

implementation

{$R *.dfm}

procedure TfrmMainDemo.btnBrowseCDSClick(Sender: TObject);
var
  oFrm: TfrmProperties;
begin
  DataSource1.DataSet := ClientDataSet1;
  oFrm := TfrmProperties.Create(Application);
  oFrm.LoadMemTable('', ClientDataSet1);
  oFrm.Show;
end;

procedure TfrmMainDemo.btnBrowseDBClick(Sender: TObject);
var
  oFrm: TfrmProperties;
begin
  DataSource1.DataSet := FDTable1;
  oFrm := TfrmProperties.Create(Application);
  oFrm.LoadMemTable('', FDTable1);
  oFrm.Show;
end;

procedure TfrmMainDemo.btnBrowseFileClick(Sender: TObject);
var
  oFrm: TfrmProperties;
begin
  DataSource1.DataSet := nil;
  if not OpenDialog1.Execute() then
    Exit;
  oFrm := TfrmProperties.Create(Application);
  oFrm.LoadMemTable(OpenDialog1.FileName, nil);
  oFrm.Show;
end;

procedure TfrmMainDemo.FormCreate(Sender: TObject);
begin
  inherited;
  OpenDialog1.InitialDir := 'C:\Users\Public\Documents\Embarcadero\Studio\15.0\Samples\Data';
end;

end.
