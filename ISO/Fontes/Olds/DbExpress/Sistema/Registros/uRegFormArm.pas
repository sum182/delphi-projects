unit uRegFormArm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, DB, DBClient, ImgList, DBActns, ActnList, smCadPadrao,
  ComCtrls, Grids, DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, Mask, DBCtrls;

type
  TfrmRegFormArm = class(TfrmCadISO)
    cdsCadREFO_ID: TIntegerField;
    cdsCadREFO_DESCR: TStringField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure cdsCadBeforePost(DataSet: TDataSet);
    procedure cdsCadNewRecord(DataSet: TDataSet);
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

procedure TfrmRegFormArm.cdsCadBeforePost(DataSet: TDataSet);
begin
  inherited;
  if dataset.State in [dsInsert] then
    cdsCadREFO_ID.AsInteger := GetKey('REG_FORMA_ARM','REFO_ID');
end;

procedure TfrmRegFormArm.cdsCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadREFO_ID.AsInteger := 0;
end;



initialization
  RegisterClass(TfrmRegFormArm);

finalization
  UnRegisterClass(TfrmRegFormArm);

end.
