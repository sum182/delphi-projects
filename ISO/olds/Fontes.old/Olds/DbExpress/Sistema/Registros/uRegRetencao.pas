unit uRegRetencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, DB, DBClient, ImgList, DBActns, ActnList, smCadPadrao,
  ComCtrls, Grids, DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, Mask, DBCtrls,
  uLibrary;

type
  TfrmRegRetencao = class(TfrmCadISO)
    Label3: TLabel;
    DBEdit2: TDBEdit;
    cdsCadRERE_ID: TIntegerField;
    cdsCadRERE_DESCR: TStringField;
    procedure cdsCadNewRecord(DataSet: TDataSet);
    procedure cdsCadBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegRetencao: TfrmRegRetencao;

implementation

uses
  uDmReg;



{$R *.dfm}

procedure TfrmRegRetencao.cdsCadBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCad.State in [dsInsert] then
    cdsCadRERE_ID.AsInteger := GetKey('REG_RETENCAO','RERE_ID');
end;

procedure TfrmRegRetencao.cdsCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadRERE_ID.AsInteger := 0;
end;

initialization
  RegisterClass(TfrmRegRetencao);

finalization
  UnRegisterClass(TfrmRegRetencao);

end.
