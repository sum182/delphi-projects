unit untImportarExcel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.ComCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI;

type
  TfrmImportarExcel = class(TForm)
    ADOConnection1: TADOConnection;
    tbExcel: TADODataSet;
    dsExcel: TDataSource;
    GroupBox1: TGroupBox;
    btnAbrirExcel: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    dsGuias: TDataSource;
    btnImportar: TBitBtn;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQueryGuias: TFDQuery;
    procedure btnAbrirExcelClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure CopyRecord(Origem, Destino: TDataset; AliasDestino:String);
    procedure DataSetDelete(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  frmImportarExcel: TfrmImportarExcel;

implementation

{$R *.dfm}

uses untDM;

procedure TfrmImportarExcel.btnAbrirExcelClick(Sender: TObject);
begin
  tbExcel.Close;
  tbExcel.Open;
end;

procedure TfrmImportarExcel.btnImportarClick(Sender: TObject);
begin
  try
    FDQueryGuias.Close;
    FDQueryGuias.Open;

    FDQueryGuias.DisableControls;
    tbExcel.DisableControls;

    DataSetDelete(FDQueryGuias);
    tbExcel.First;
    while not(tbExcel.Eof) do
    begin
      CopyRecord(tbExcel,FDQueryGuias,'ns1:');
      tbExcel.Next;
    end;

    FDQueryGuias.Close;
    FDQueryGuias.Open;

  finally
    FDQueryGuias.EnableControls;
    tbExcel.EnableControls;
  end;
end;

procedure TfrmImportarExcel.CopyRecord(Origem, Destino: TDataset;AliasDestino:String);
var
  i: integer;
  j: integer;
begin

  Destino.Append;

  for i := 0 to Origem.FieldCount - 1 do
    for j := 0 to Destino.FieldCount - 1 do
      if UpperCase(Origem.Fields[i].FieldName) = UpperCase(AliasDestino + Destino.Fields[j].FieldName) then
      begin
        Destino.Fields[i].Value := Origem.Fields[j].Value;
        Break;
      end;
  Destino.Post;

end;

procedure TfrmImportarExcel.DataSetDelete(DataSet: TDataSet);
begin
  with dataset do
  begin
    First;
    while not (eof) do
      Delete;
  end;

end;

procedure TfrmImportarExcel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tbExcel.Close;
  FDQueryGuias.Close;
end;

end.
