unit uRegistros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, DB, DBClient, ImgList, DBActns, ActnList, smCadPadrao,
  ComCtrls, Grids, DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, DBCtrls, Mask;

type
  TfrmRegistros = class(TfrmCadISO)
    cdsCadLocal: TStringField;
    cdsCadForma: TStringField;
    cdsCadIndexacao: TStringField;
    cdsCadRetencao: TStringField;
    GroupBox1: TGroupBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    cdsCadREGI_IDENT: TStringField;
    cdsCadREGI_NOME: TStringField;
    cdsCadREGI_DTREV: TDateField;
    cdsCadRELO_ID: TIntegerField;
    cdsCadREFO_ID: TIntegerField;
    cdsCadREIN_ID: TIntegerField;
    cdsCadRERE_ID: TIntegerField;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    cdsCadREGI_DESCR: TMemoField;
    GroupBox2: TGroupBox;
    cdsCadREGI_RETENCAO_QTDE: TIntegerField;
    GroupBox3: TGroupBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label8: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
  private
    procedure OpenQuerys;
    procedure CloseQuerys;
  public
    { Public declarations }
  end;

var
  frmRegistros: TfrmRegistros;

implementation

uses uLibrary, uDmReg;

{$R *.dfm}

procedure TfrmRegistros.CloseQuerys;
begin
  with DmReg.cdsLocalArm do
  begin
    Close;
  end;
end;

procedure TfrmRegistros.OpenQuerys;
begin
  with DmReg.cdsLocalArm do
  begin
    Close;
    Open;
  end;

  with DmReg.cdsFormArm do
  begin
    Close;
    Open;
  end;

  with DmReg.cdsIndexacao do
  begin
    Close;
    Open;
  end;

  with DmReg.cdsRetencao do
  begin
    Close;
    Open;
  end;
end;


initialization
  RegisterClass(TfrmRegistros);

finalization
  UnRegisterClass(TfrmRegistros);

end.
