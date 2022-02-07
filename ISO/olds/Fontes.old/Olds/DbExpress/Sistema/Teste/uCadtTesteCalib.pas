unit uCadtTesteCalib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, DB, DBClient, ImgList, DBActns, ActnList, smCadPadrao,
  ComCtrls, Grids, DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, Mask, DBCtrls,
  FMTBcd, Provider, SqlExpr, uDmTeste;

type
  TfrmCadTesteCalib = class(TfrmCadISO)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
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
