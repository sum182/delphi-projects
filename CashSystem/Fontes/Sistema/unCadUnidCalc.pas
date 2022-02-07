unit unCadUnidCalc;

interface

uses
  Windows, Mask, DBCtrls, DB, DBActns, Classes,
  ActnList, DBClient, ComCtrls, StdCtrls, Buttons, Controls, Grids,
  DBGrids, ToolWin, smGrid, unCadPadrao, smCadPadrao;

type
  TFoCadUnidCalc = class(TFoCadPadrao)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    procedure AcNovoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoCadUnidCalc: TFoCadUnidCalc;

implementation

uses UnGeral, unDm;

{$R *.dfm}

procedure TFoCadUnidCalc.AcNovoExecute(Sender: TObject);
begin
  inherited;
  Dm.cdsUnidCalc.FieldValues['MAUN_ID']:=GetGenerator('GEN_MAQUINAS_UNIDADE_CALCULO',1);
end;

Initialization
  RegisterClass(TFoCadUnidCalc);

Finalization
  UnRegisterClass(TFoCadUnidCalc);


end.




