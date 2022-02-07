unit uRegLocalArm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, DB, DBClient, ImgList, DBActns, ActnList, smCadPadrao,
  ComCtrls, Grids, DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, Mask, DBCtrls,
  uLibrary, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxTextEdit, cxDBEdit, IBODataset, cxContainer, cxGroupBox,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC;

type
  TfrmRegLocalArm = class(TfrmCadISO)
    Label3: TLabel;
    DBEdit2: TcxDBTextEdit;
    quCadRELO_ID: TIntegerField;
    quCadRELO_DESCR: TStringField;
    procedure quCadBeforePost(DataSet: TDataSet);
    procedure quCadNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegLocalArm: TfrmRegLocalArm;

implementation

uses
  uDmReg;



{$R *.dfm}

procedure TfrmRegLocalArm.quCadBeforePost(DataSet: TDataSet);
begin
  inherited;
  if quCad.State in [dsInsert] then
    quCadRELO_ID.AsInteger := GetKey('REG_LOCAL_ARM','RELO_ID');
end;

procedure TfrmRegLocalArm.quCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  quCadRELO_ID.AsInteger := 0;
end;


initialization
  RegisterClass(TfrmRegLocalArm);

finalization
  UnRegisterClass(TfrmRegLocalArm);


end.
