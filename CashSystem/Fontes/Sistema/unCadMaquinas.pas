unit unCadMaquinas;

interface

uses
  Windows, StdCtrls, DBCtrls, Mask, DB, DBActns,
  Classes, ActnList, DBClient, ComCtrls, Buttons, Controls, Grids, DBGrids,
  ToolWin, smGrid, unCadPadrao, smCadPadrao;

type
  TFoCadMaquinas = class(TFoCadPadrao)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo1: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoCadMaquinas: TFoCadMaquinas;

implementation

uses unDm, UnGeral;

{$R *.dfm}


Initialization
  RegisterClass(TFoCadMaquinas);

Finalization
  UnRegisterClass(TFoCadMaquinas);




end.
