unit uCadTesteACP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, ImgList, DBActns, ActnList, smCadPadrao, ComCtrls, Grids,
  DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, DB, DBClient, Mask, DBCtrls,
  uDmTeste;

type
  TfrmCadTesteACP = class(TfrmCadISO)
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
  frmCadTesteACP: TfrmCadTesteACP;

implementation



{$R *.dfm}

initialization
  RegisterClass(TfrmCadTesteACP);

finalization
  UnRegisterClass(TfrmCadTesteACP);

end.


