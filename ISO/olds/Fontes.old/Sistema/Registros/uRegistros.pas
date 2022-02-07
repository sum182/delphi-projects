unit uRegistros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, DB, DBClient, ImgList, DBActns, ActnList, smCadPadrao,
  ComCtrls, Grids, DBGrids, smDBGrid, StdCtrls, Buttons, ToolWin, DBCtrls, Mask,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxTextEdit, cxDBEdit, IBODataset, cxContainer, cxGroupBox,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, cxMemo,
  cxNavigator, cxDBNavigator, Provider, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCalendar;

type
  TfrmRegistros = class(TfrmCadISO)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    Label3: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxGroupBox1: TcxGroupBox;
    DBEdit4: TcxDBTextEdit;
    Label10: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    Label8: TLabel;
    cxGroupBox2: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    Bevel1: TBevel;
    cxGroupBox3: TcxGroupBox;
    quRevisoes: TIBOQuery;
    dsRevisoes: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dspCad: TDataSetProvider;
    cdsCad: TClientDataSet;
    dspRevisoes: TDataSetProvider;
    cdsRevisoes: TClientDataSet;
    dsCad_x_Rev: TDataSource;
    cdsCadREGI_IDENT: TStringField;
    cdsCadREGI_NOME: TStringField;
    cdsCadRELO_ID: TIntegerField;
    cdsCadREFO_ID: TIntegerField;
    cdsCadRERE_ID: TIntegerField;
    cdsCadREGI_RETENCAO_QTDE: TIntegerField;
    cdsCadPROC_ID: TIntegerField;
    cdsCadREGI_DESCR: TMemoField;
    cdsCadquRevisoes: TDataSetField;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView2REVI_ID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2REGI_IDENT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2REVI_ELAB_USUARIO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2REVI_ELAB_DT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2REVI_APROV_USUARIO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2REVI_APROV_DT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2REVI_REVISAO_USUARIO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2REVI_REVISAO_DT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2REVI_NUMREV: TcxGridDBBandedColumn;
    ToolBar2: TToolBar;
    btnRevNew: TToolButton;
    btnRevPost: TToolButton;
    btnRevCancel: TToolButton;
    btnRevAlterar: TToolButton;
    btnRevDelete: TToolButton;
    cdsRevisoesREVI_ID: TIntegerField;
    cdsRevisoesREGI_IDENT: TStringField;
    cdsRevisoesREVI_ELAB_USUARIO: TStringField;
    cdsRevisoesREVI_ELAB_DT: TDateField;
    cdsRevisoesREVI_APROV_USUARIO: TStringField;
    cdsRevisoesREVI_APROV_DT: TDateField;
    cdsRevisoesREVI_REVISAO_USUARIO: TStringField;
    cdsRevisoesREVI_REVISAO_DT: TDateField;
    cdsRevisoesREVI_NUMREV: TIntegerField;
    cdsRevisoesMaxNum: TAggregateField;
    procedure cdsRevisoesBeforePost(DataSet: TDataSet);
    procedure dsRevisoesDataChange(Sender: TObject; Field: TField);
    procedure btnRevDeleteClick(Sender: TObject);
    procedure btnRevAlterarClick(Sender: TObject);
    procedure btnRevCancelClick(Sender: TObject);
    procedure btnRevPostClick(Sender: TObject);
    procedure btnRevNewClick(Sender: TObject);
    procedure cdsRevisoesNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure OpenQuerys;
    procedure CloseQuerys;
    function GetMaxNumRevisao: integer;
  public
    { Public declarations }
  end;

var
  frmRegistros: TfrmRegistros;

implementation

uses uLibrary, uDmReg, smMensagens, uDmShared, smGeral;

{$R *.dfm}

procedure TfrmRegistros.cdsRevisoesBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidarCampos(cdsRevisoes);
end;

procedure TfrmRegistros.cdsRevisoesNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsRevisoes.FieldByName('REVI_ID').AsInteger := GetID('GEN_REG_REVISOES');
  cdsRevisoes.FieldByName('REVI_NUMREV').Value := GetMaxNumRevisao;
end;

procedure TfrmRegistros.CloseQuerys;
begin
  with DmReg.quLocalArm do
  begin
    Close;
  end;

  with DmReg.quFormArm do
  begin
    Close;
  end;

  with DmReg.quRetencao do
  begin
    Close;
  end;

  with DmReg.quProcedimentos do
  begin
    Close;
  end;
end;

procedure TfrmRegistros.dsRevisoesDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  ToolBarStateButtons(cdsRevisoes,
    btnRevNew,
    btnRevPost,
    btnRevCancel,
    btnRevAlterar,
    btnRevDelete);
end;

procedure TfrmRegistros.FormCreate(Sender: TObject);
begin
  inherited;
  OpenQuerys;
end;

procedure TfrmRegistros.FormDestroy(Sender: TObject);
begin
  inherited;
  CloseQuerys;
end;

function TfrmRegistros.GetMaxNumRevisao: integer;
begin
  Result := 0;
  if (cdsRevisoesMaxNum.AsString <> '') then
    Result := cdsRevisoesMaxNum.Value;

  Inc(Result);
end;

procedure TfrmRegistros.OpenQuerys;
begin
  with DmReg.quLocalArm do
  begin
    Close;
    Open;
  end;

  with DmReg.quFormArm do
  begin
    Close;
    Open;
  end;

  with DmReg.quRetencao do
  begin
    Close;
    Open;
  end;

  with DmReg.quProcedimentos do
  begin
    Close;
    Open;
  end;

end;

procedure TfrmRegistros.btnRevNewClick(Sender: TObject);
begin
  inherited;
  cdsRevisoes.Append;
end;

procedure TfrmRegistros.btnRevPostClick(Sender: TObject);
begin
  inherited;
  cdsRevisoes.Post;
end;

procedure TfrmRegistros.btnRevCancelClick(Sender: TObject);
begin
  inherited;
  cdsRevisoes.Cancel;
end;

procedure TfrmRegistros.btnRevAlterarClick(Sender: TObject);
begin
  inherited;
  cdsRevisoes.Edit;
end;

procedure TfrmRegistros.btnRevDeleteClick(Sender: TObject);
begin
  inherited;
  cdsRevisoes.Delete;
end;

initialization
  RegisterClass(TfrmRegistros);

finalization
  UnRegisterClass(TfrmRegistros);

end.

