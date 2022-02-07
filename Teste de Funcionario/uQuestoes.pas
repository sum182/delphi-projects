unit uQuestoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, smCad, ImgList, DBActns, ActnList, smCadPadrao, ComCtrls, Grids,
  DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, FMTBcd, DB, DBClient, Provider,
  SqlExpr, DBCtrls, Mask, ExtCtrls;

type
  TfrmQuestoes = class(TfrmCad)
    dspQuestoes: TDataSetProvider;
    cdsQuestoes: TClientDataSet;
    dsQuestoes: TDataSource;
    quQuestoes: TSQLDataSet;
    cdsQuestoesQUES_ID: TIntegerField;
    cdsQuestoesTEST_ID: TIntegerField;
    Label3: TLabel;
    Label4: TLabel;
    cdsQuestoesQUES_ORDEM: TIntegerField;
    cdsQuestoesTeste: TStringField;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Bevel1: TBevel;
    ToolBar2: TToolBar;
    btnAltNew: TToolButton;
    btnAltPost: TToolButton;
    btnAltCancel: TToolButton;
    btnAltEdit: TToolButton;
    btnAltDelete: TToolButton;
    dsRelacionamento: TDataSource;
    quQuestoesQUES_ID: TIntegerField;
    quQuestoesQUES_ORDEM: TIntegerField;
    quQuestoesTEST_ID: TIntegerField;
    quAlternativas: TSQLDataSet;
    cdsQuestoesquAlternativas: TDataSetField;
    cdsAlternativas: TClientDataSet;
    dsAlteranativas: TDataSource;
    quAlternativasALTE_ID: TIntegerField;
    quAlternativasALTE_DESCR: TStringField;
    quAlternativasQUES_ID: TIntegerField;
    cdsAlternativasALTE_ID: TIntegerField;
    cdsAlternativasALTE_DESCR: TStringField;
    cdsAlternativasQUES_ID: TIntegerField;
    smDBGrid1: TsmDBGrid;
    cdsQuestoesLoResposta: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    quQuestoesQUES_RESPOSTA: TIntegerField;
    cdsQuestoesQUES_RESPOSTA: TIntegerField;
    quQuestoesQUES_DESCR: TMemoField;
    cdsQuestoesQUES_DESCR: TMemoField;
    DBMemo1: TDBMemo;
    procedure cdsQuestoesBeforeDelete(DataSet: TDataSet);
    procedure cdsQuestoesAfterOpen(DataSet: TDataSet);
    procedure dsAlteranativasDataChange(Sender: TObject; Field: TField);
    procedure btnAltDeleteClick(Sender: TObject);
    procedure btnAltEditClick(Sender: TObject);
    procedure btnAltCancelClick(Sender: TObject);
    procedure btnAltPostClick(Sender: TObject);
    procedure btnAltNewClick(Sender: TObject);
    procedure cdsAlternativasNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsQuestoesNewRecord(DataSet: TDataSet);
  private
    procedure SetButtons;
  public
    { Public declarations }
  end;

var
  frmQuestoes: TfrmQuestoes;

implementation

uses uDM, smDBFireBird, smGeral, smDB;

{$R *.dfm}

procedure TfrmQuestoes.cdsAlternativasNewRecord(DataSet: TDataSet);
begin
  inherited;
  GetGenerator('GEN_ALTERNATIVAS',
    DM.cdsGeral,
    cdsAlternativasALTE_ID);
end;

procedure TfrmQuestoes.cdsQuestoesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SetButtons;
  cdsAlternativas.Cancel
end;

procedure TfrmQuestoes.cdsQuestoesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DataSetDelete(cdsAlternativas);
end;

procedure TfrmQuestoes.cdsQuestoesNewRecord(DataSet: TDataSet);
begin
  inherited;
  GetGenerator('GEN_QUESTOES', dm.cdsGeral, cdsQuestoesQUES_ID);
end;

procedure TfrmQuestoes.dsAlteranativasDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SetButtons;
end;

procedure TfrmQuestoes.FormDestroy(Sender: TObject);
begin
  inherited;
  with dm.cdsTestes do
  begin
    Close;
  end;

end;

procedure TfrmQuestoes.FormShow(Sender: TObject);
begin
  inherited;
  with dm.cdsTestes do
  begin
    Close;
    Open;
  end;
end;

procedure TfrmQuestoes.SetButtons;
begin
  ToolBarStateButtons(cdsAlternativas,
    btnAltNew,
    btnAltPost,
    btnAltCancel,
    btnAltEdit,
    btnAltDelete);

end;

procedure TfrmQuestoes.btnAltNewClick(Sender: TObject);
begin
  inherited;
  cdsAlternativas.Append;
end;

procedure TfrmQuestoes.btnAltPostClick(Sender: TObject);
begin
  inherited;
  cdsAlternativas.Post;
end;

procedure TfrmQuestoes.btnAltCancelClick(Sender: TObject);
begin
  inherited;
  cdsAlternativas.Cancel;
end;

procedure TfrmQuestoes.btnAltEditClick(Sender: TObject);
begin
  inherited;
  cdsAlternativas.Edit;
end;

procedure TfrmQuestoes.btnAltDeleteClick(Sender: TObject);
begin
  inherited;
  cdsAlternativas.Delete;
end;

end.

