unit uCadTesteACP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, ImgList, DBActns, ActnList, smCadPadrao, ComCtrls, Grids,
  DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, DB, DBClient, Mask, DBCtrls,
  uDmTeste, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, IBODataset, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxContainer, cxGroupBox, cxTextEdit, cxDBEdit;

type
  TfrmCadTesteACP = class(TfrmCadISO)
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTesteACP: TfrmCadTesteACP;

implementation



{$R *.dfm}

initialization
  RegisterClass(TfrmCadTesteACP);

finalization
  UnRegisterClass(TfrmCadTesteACP);

end.


