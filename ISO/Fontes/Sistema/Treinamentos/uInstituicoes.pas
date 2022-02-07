unit uInstituicoes;

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
  TfrmInstituicoes = class(TfrmCadISO)
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    quCadINTT_ID: TIntegerField;
    quCadINTT_DESCR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInstituicoes: TfrmInstituicoes;

implementation

{$R *.dfm}


initialization
  RegisterClass(TfrmInstituicoes);

finalization
  UnRegisterClass(TfrmInstituicoes);


end.
