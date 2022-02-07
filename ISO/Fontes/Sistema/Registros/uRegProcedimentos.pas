unit uRegProcedimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBODataset, ImgList, DBActns, ActnList,
  smCadPadrao, StdCtrls, Buttons, ComCtrls, cxContainer, cxGroupBox,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ToolWin, cxTextEdit,
  cxDBEdit, uCadISO;

type
  TfrmProcedimento = class(TfrmCadISO)
    cxGroupBox1: TcxGroupBox;
    edtProcedimento: TcxDBTextEdit;
    quCadPROC_ID: TIntegerField;
    quCadPROC_DESCR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcedimento: TfrmProcedimento;

implementation

{$R *.dfm}


initialization
  RegisterClass(TfrmProcedimento);

finalization
  UnRegisterClass(TfrmProcedimento);

end.
