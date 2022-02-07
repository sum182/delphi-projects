unit uTestes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, smCad, ImgList, DBActns, ActnList, smCadPadrao, ComCtrls, Grids,
  DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, FMTBcd, DBCtrls, Mask, DB,
  DBClient, Provider, SqlExpr;

type
  TfrmTestes = class(TfrmCad)
    quTestes: TSQLDataSet;
    dspTestes: TDataSetProvider;
    cdsTestes: TClientDataSet;
    dsTestes: TDataSource;
    cdsTestesTEST_ID: TIntegerField;
    cdsTestesTEST_DESCR: TStringField;
    cdsTestesTEST_APRESENTACAO: TMemoField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    procedure cdsTestesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestes: TfrmTestes;

implementation

uses uDM, smDBFireBird;

{$R *.dfm}

procedure TfrmTestes.cdsTestesNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsTestesTEST_ID.AsInteger:= GetGenerator('GEN_TESTES',DM.cdsGeral);
end;

end.
