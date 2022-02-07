unit uCadTesteReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, DB, DBClient, ImgList, DBActns, ActnList, smCadPadrao,
  ComCtrls, Grids, DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, Mask, DBCtrls,
  uDmTeste;

type
  TfrmCadTesteReg = class(TfrmCadISO)
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
  frmCadTesteReg: TfrmCadTesteReg;

implementation

                   


{$R *.dfm}

initialization
  RegisterClass(TfrmCadTesteReg);

finalization
  UnRegisterClass(TfrmCadTesteReg);

end.
