unit uCadtTesteCalib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, DB, DBClient, ImgList, DBActns, ActnList, smCadPadrao,
  ComCtrls, Grids, DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, Mask, DBCtrls,
  FMTBcd, Provider, SqlExpr, uDmTeste, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxDBEdit,
  IBODataset, cxContainer, cxGroupBox, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC;

type
  TfrmCadTesteCalib = class(TfrmCadISO)
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
  frmCadTesteCalib: TfrmCadTesteCalib;

implementation



{$R *.dfm}

initialization
  RegisterClass(TfrmCadTesteCalib);

finalization
  UnRegisterClass(TfrmCadTesteCalib);

end.
