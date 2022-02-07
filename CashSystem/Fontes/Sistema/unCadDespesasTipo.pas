unit unCadDespesasTipo;

interface

uses
  Windows,  Mask, DBCtrls, DB, DBActns, Classes,
  ActnList, DBClient, ComCtrls, StdCtrls, Buttons, Controls, Grids,
  DBGrids, ToolWin, smGrid, unCadPadrao, smCadPadrao;

type
  TFoCadDespesasTipo = class(TFoCadPadrao)
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure AcNovoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoCadDespesasTipo: TFoCadDespesasTipo;

implementation

uses UnGeral, unDm;

{$R *.dfm}

procedure TFoCadDespesasTipo.AcNovoExecute(Sender: TObject);
begin
  inherited;
  smCadPadrao.DataSource.DataSet.FieldValues['DETI_ID']:=GetGenerator('GEN_DESPESAS_TIPO',1);
end;

Initialization
  RegisterClass(TFoCadDespesasTipo);

Finalization
  UnRegisterClass(TFoCadDespesasTipo);



end.
