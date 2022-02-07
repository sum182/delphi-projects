unit uDepartamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBODataset, ImgList, DBActns, ActnList,
  smCadPadrao, StdCtrls, Buttons, ComCtrls, cxContainer, cxGroupBox,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ToolWin, cxTextEdit,
  cxDBEdit;

type
  TfrmDepartamentos = class(TfrmCadISO)
    cxGroupBox1: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDepartamentos: TfrmDepartamentos;

implementation

{$R *.dfm}
initialization
  RegisterClass(TfrmDepartamentos);

finalization
  UnRegisterClass(TfrmDepartamentos);

end.
