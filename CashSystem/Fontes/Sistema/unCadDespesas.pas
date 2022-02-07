unit unCadDespesas;

interface

uses
  Windows, StdCtrls, DBCtrls, Mask, DB, DBActns,
  Classes, ActnList, DBClient, ComCtrls, Buttons, Controls, Grids, DBGrids,
  ToolWin, smGrid, unCadPadrao, smCadPadrao;

type
  TFoCadDespesas = class(TFoCadPadrao)
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
    procedure AcNovoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoCadDespesas: TFoCadDespesas;

implementation

uses unDm, UnGeral;

{$R *.dfm}

procedure TFoCadDespesas.FormCreate(Sender: TObject);
begin
  inherited;
  DM.cdsLoDespesasTipo.Close;
  DM.cdsLoDespesasTipo.Open;
end;

procedure TFoCadDespesas.FormDestroy(Sender: TObject);
begin
  inherited;
  DM.cdsLoDespesasTipo.Close;
end;

procedure TFoCadDespesas.AcNovoExecute(Sender: TObject);
begin
  inherited;
  Dm.cdsDespesas.FieldValues['DESP_ID']:=GetGenerator('GEN_DESPESAS',1);
end;

Initialization
  RegisterClass(TFoCadDespesas);

Finalization
  UnRegisterClass(TFoCadDespesas);



end.
