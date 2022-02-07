unit uRegFormArm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, DB, DBClient, ImgList, DBActns, ActnList, smCadPadrao,
  ComCtrls, Grids, DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, Mask, DBCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxTextEdit, cxDBEdit, IBODataset, cxContainer, cxGroupBox,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC;

type
  TfrmRegFormArm = class(TfrmCadISO)
    Label3: TLabel;
    DBEdit2: TcxDBTextEdit;
    quCadREFO_ID: TIntegerField;
    quCadREFO_DESCR: TStringField;
    procedure quCadBeforePost(DataSet: TDataSet);
    procedure quCadNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegFormArm: TfrmRegFormArm;

implementation

uses  uLibrary, uDmReg;

{$R *.dfm}

procedure TfrmRegFormArm.quCadBeforePost(DataSet: TDataSet);
begin
  inherited;
  if dataset.State in [dsInsert] then
    quCadREFO_ID.AsInteger := GetKey('REG_FORMA_ARM','REFO_ID');
end;

procedure TfrmRegFormArm.quCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  quCadREFO_ID.AsInteger := 0;
end;



initialization
  RegisterClass(TfrmRegFormArm);

finalization
  UnRegisterClass(TfrmRegFormArm);

end.
