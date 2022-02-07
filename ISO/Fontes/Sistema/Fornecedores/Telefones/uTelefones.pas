unit uTelefones;

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
  TfrmTelefones = class(TfrmCadISO)
    quCadTETI_ID: TIntegerField;
    quCadTETI_DESCR: TStringField;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelefones: TfrmTelefones;

implementation

{$R *.dfm}
initialization
  RegisterClass(TfrmTelefones);

finalization
  UnRegisterClass(TfrmTelefones);

end.
