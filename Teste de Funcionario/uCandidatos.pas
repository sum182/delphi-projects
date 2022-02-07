unit uCandidatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, smCad, ImgList, DBActns, ActnList, smCadPadrao, ComCtrls, Grids,
  DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, FMTBcd, DBCtrls, Mask, DB,
  DBClient, Provider, SqlExpr;

type
  TfrmCandidatos = class(TfrmCad)
    quCand: TSQLDataSet;
    dspCand: TDataSetProvider;
    cdsCand: TClientDataSet;
    dsCand: TDataSource;
    cdsCandCAND_ID: TIntegerField;
    cdsCandCAND_NOME: TStringField;
    cdsCandCAND_CPF: TStringField;
    cdsCandCAND_EMAIL: TStringField;
    cdsCandCAND_NOTA: TFloatField;
    cdsCandTEST_ID: TIntegerField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    cdsCandTeste: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    quCandCAND_ID: TIntegerField;
    quCandCAND_NOME: TStringField;
    quCandCAND_CPF: TStringField;
    quCandCAND_EMAIL: TStringField;
    quCandCAND_NOTA: TFloatField;
    quCandTEST_ID: TIntegerField;
    procedure cdsCandNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCandidatos: TfrmCandidatos;

implementation

uses uDM, smDBFireBird;

{$R *.dfm}

procedure TfrmCandidatos.cdsCandNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCand.FieldByName('CAND_ID').AsInteger :=
   GetGenerator('GEN_CANDIDATOS',DM.cdsGeral);
end;

end.
