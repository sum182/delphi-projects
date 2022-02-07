unit UnPrincipal;

interface

uses
  Bde, SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, DB, FileCtrl, DBTables, Gauges, ExtCtrls,
  CheckLst, ComCtrls, IBDatabase, IBCustomDataSet, IBQuery, IBTable, IBSQL,
  DynamicSkinForm, SkinData, SkinCtrls, SkinBoxCtrls, Mask, IB_Components;

type rCampos = record
       Nombre: string;
       Defect: variant;
       Nulo: boolean;
     end;

type
  TFrmMain = class(TForm)
    Table: TTable;
    CBDatabase: TspSkinComboBox;
    Label1: TspSkinStdLabel;
    BtnExport: TspSkinButton;
    Label4: TspSkinStdLabel;
    Edit1: TspSkinEdit;
    Label6: TspSkinStdLabel;
    Edit2: TspSkinPasswordEdit;
    Label2: TspSkinStdLabel;
    Edit3: TspSkinEdit;
    Button1: TspSkinButton;
    spStoredSkin1: TspStoredSkin;
    spSkinData1: TspSkinData;
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinButton1: TspSkinButton;
    spSkinGroupBox3: TspSkinGroupBox;
    LBTable: TspSkinCheckListBox;
    Progress: TspSkinGauge;
    IB_Connection1: TIB_Connection;
    IB_Transaction1: TIB_Transaction;
    procedure FormCreate(Sender: TObject);
    procedure CBDatabaseChange(Sender: TObject);
    procedure spSkinButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tbl : TFileName;
  end;

var
  FrmMain: TFrmMain;

implementation
{$R *.DFM}

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  Session.GetDatabaseNames(CBDatabase.Items);
end;

procedure TFrmMain.CBDatabaseChange(Sender: TObject);
begin
  Session.GetTableNames( CBDatabase.Items[CBDatabase.ItemIndex], '',
                         True, False, LBTable.Items);
  LBTable.Sorted := True;
  BtnExport.Enabled := LBTable.Items.Count > 0;
end;

procedure TFrmMain.spSkinButton1Click(Sender: TObject);
begin
  Close;
end;

end.
