unit uRegIndexacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, DB, DBClient, ImgList, DBActns, ActnList, smCadPadrao,
  ComCtrls, Grids, DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, Mask, DBCtrls;

type
  TfrmRegIndexacao = class(TfrmCadISO)
    cdsCadREIN_ID: TIntegerField;
    cdsCadREIN_DESCR: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure cdsCadNewRecord(DataSet: TDataSet);
    procedure cdsCadBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegIndexacao: TfrmRegIndexacao;

implementation

uses  uLibrary, uDmReg;

{$R *.dfm}

procedure TfrmRegIndexacao.cdsCadBeforePost(DataSet: TDataSet);
begin
  inherited;
  if dataset.State in [dsInsert] then
    cdsCadREIN_ID.AsInteger := GetKey('REG_INDEXACAO', 'REIN_ID');
end;

procedure TfrmRegIndexacao.cdsCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadREIN_ID.AsInteger := 0;
end;


initialization
  RegisterClass(TfrmRegIndexacao);

finalization
  UnRegisterClass(TfrmRegIndexacao);


end.

