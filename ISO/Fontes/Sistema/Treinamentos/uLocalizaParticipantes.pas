unit uLocalizaParticipantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxControls, cxContainer, cxEdit, cxGroupBox, cxListBox,
  cxDBEdit,uDmTreinamentos, DB, IBODataset, StdCtrls, CheckLst, smCheckListBox,
  Buttons, Grids, DBGrids;

type
  TfrmLocalizaParticip = class(TForm)
    Panel1: TPanel;
    quFuncList: TIBOQuery;
    dsFuncList: TDataSource;
    cxGroupBox1: TcxGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    quFuncListFUNC_ID: TIntegerField;
    quFuncListCODALIAS: TStringField;
    quRecebeFields: TIBOQuery;
    dsRecebeFields: TDataSource;
    quRecebeFieldsFUNC_ID: TIntegerField;
    quRecebeFieldsFUNC_NOME: TStringField;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizaParticip: TfrmLocalizaParticip;

implementation

{$R *.dfm}

procedure TfrmLocalizaParticip.BitBtn1Click(Sender: TObject);
  var
  i : Integer;
  sIdParticipantes: String;
begin
  if DBGrid1.SelectedRows.Count > 0 then
  begin
    for i:= 0 to DBGrid1.SelectedRows.Count-1 do
      begin
      DBGrid1.DataSource.DataSet.GotoBookmark(Pointer(DBGrid1.SelectedRows.Items[i]));
      sIdParticipantes := sIdParticipantes + inttostr(quFuncListFUNC_ID.AsInteger) + ',';
    end;
       sIdParticipantes := sIdParticipantes + '-1';
     with quRecebeFields do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM FUNCIONARIOS');
    SQL.Add('WHERE FUNC_ID IN ('+ sIdParticipantes +')');
    Open;
  end;
  end;

end;

procedure TfrmLocalizaParticip.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmLocalizaParticip.FormCreate(Sender: TObject);
begin
  quFuncList.Close;
  quFuncList.Open;

end;

end.
