unit uRegLocalArm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, DB, DBClient, ImgList, DBActns, ActnList, smCadPadrao,
  ComCtrls, Grids, DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, Mask, DBCtrls,
  uLibrary;

type
  TfrmRegLocalArm = class(TfrmCadISO)
    Label3: TLabel;
    DBEdit2: TDBEdit;
    cdsCadRELO_ID: TIntegerField;
    cdsCadRELO_DESCR: TStringField;
    procedure cdsCadBeforePost(DataSet: TDataSet);
    procedure cdsCadNewRecord(DataSet: TDataSet);
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

procedure TfrmRegLocalArm.cdsCadBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCad.State in [dsInsert] then
    cdsCadRELO_ID.AsInteger := GetKey('REG_LOCAL_ARM','RELO_ID');
end;

procedure TfrmRegLocalArm.cdsCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadRELO_ID.AsInteger := 0;
end;


initialization
  RegisterClass(TfrmRegLocalArm);

finalization
  UnRegisterClass(TfrmRegLocalArm);


end.
