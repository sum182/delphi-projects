unit unCadMaquinasTipo;

interface

uses
  Windows, StdCtrls, DBCtrls, Mask, DB, DBActns,
  Classes, ActnList, DBClient, ComCtrls, Buttons, Controls, Grids, DBGrids,
  ToolWin, smGrid, unCadPadrao, smCadPadrao;

type
  TFoCadMaquinasTipo = class(TFoCadPadrao)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AcNovoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoCadMaquinasTipo: TFoCadMaquinasTipo;

implementation

uses unDm, UnGeral;

{$R *.dfm}


procedure TFoCadMaquinasTipo.AcNovoExecute(Sender: TObject);
begin
  inherited;
  Dm.cdsMaquTipo.FieldValues['MATI_ID']:=GetGenerator('GEN_MAQUINAS_TIPO',1);
end;

procedure TFoCadMaquinasTipo.FormCreate(Sender: TObject);
begin
  inherited;
  dm.cdsLoUnidCalc.Close;
  dm.cdsLoUnidCalc.Open;

end;

procedure TFoCadMaquinasTipo.FormDestroy(Sender: TObject);
begin
  inherited;
  dm.cdsLoUnidCalc.Close;
end;

Initialization
  RegisterClass(TFoCadMaquinasTipo);

Finalization
  UnRegisterClass(TFoCadMaquinasTipo);



end.



