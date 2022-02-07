unit uRegRetencao;

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
  TfrmRegRetencao = class(TfrmCadISO)
    Label3: TLabel;
    DBEdit2: TcxDBTextEdit;
    quCadRERE_ID: TIntegerField;
    quCadRERE_DESCR: TStringField;
    procedure quCadNewRecord(DataSet: TDataSet);
    procedure quCadBeforePost(DataSet: TDataSet);
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

procedure TfrmRegRetencao.quCadBeforePost(DataSet: TDataSet);
begin
  inherited;
  if quCad.State in [dsInsert] then
    quCadRERE_ID.AsInteger := GetKey('REG_RETENCAO','RERE_ID');
end;

procedure TfrmRegRetencao.quCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  quCadRERE_ID.AsInteger := 0;
end;

initialization
  RegisterClass(TfrmRegRetencao);

finalization
  UnRegisterClass(TfrmRegRetencao);

end.
