unit uTreinamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBODataset, ImgList, DBActns, ActnList,
  smCadPadrao, StdCtrls, Buttons, ComCtrls, cxContainer, cxGroupBox,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ToolWin, cxDBLookupComboBox,
  cxDBEdit, cxDropDownEdit, cxCalendar, cxMemo, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit,uDmTreinamentos, cxCheckBox,uLocalizaParticipantes,
  cxDBExtLookupComboBox, Grids, DBGrids, ExtCtrls;

type
  TfrmTreinamentos = class(TfrmCadISO)
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxGroupBox2: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtData: TcxDBDateEdit;
    edtCargHoraT: TcxDBTextEdit;
    edtCargHoraP: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGroupBox4: TcxGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBDateEdit1: TcxDBDateEdit;
    Label10: TLabel;
    cxGroupBox5: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    ToolBar2: TToolBar;
    btnRevNew: TToolButton;
    btnRevPost: TToolButton;
    btnRevCancel: TToolButton;
    btnRevAlterar: TToolButton;
    btnRevDelete: TToolButton;
    ToolButton2: TToolButton;
    quPerticipantes: TIBOQuery;
    dsPerticipantes: TDataSource;
    quCadTREI_ID: TIntegerField;
    quCadTREI_NOME: TStringField;
    quCadTREI_DESCR: TBlobField;
    quCadTREI_DATA: TDateField;
    quCadTREI_CARGHOR_TEOR: TIntegerField;
    quCadTREI_CARGHOR_PRAT: TIntegerField;
    quCadINST_ID: TIntegerField;
    quCadTRTI_ID: TIntegerField;
    quCadINTT_ID: TIntegerField;
    quCadTREI_EFICAZ: TStringField;
    quCadTREI_EFICAZ_DT: TDateField;
    quCadFUNC_ID: TIntegerField;
    quCadDEPA_ID: TIntegerField;
    quCadCARG_ID: TIntegerField;
    quPerticipantesFUNC_ID: TIntegerField;
    quPerticipantesFUNC_NOME: TStringField;
    quPerticipantesDEPA_ID: TIntegerField;
    quPerticipantesDEPA_DESCR: TStringField;
    quPerticipantesCARG_ID: TIntegerField;
    quPerticipantesCARG_DESCR: TMemoField;
    cxGrid1DBTableView1FUNC_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1DEPA_DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1CARG_DESCR: TcxGridDBColumn;
    grPesquisaTREI_NOME: TcxGridDBColumn;
    grPesquisaTREI_DATA: TcxGridDBColumn;
    grPesquisaTREI_CARGHOR_TEOR: TcxGridDBColumn;
    grPesquisaTREI_CARGHOR_PRAT: TcxGridDBColumn;
    cxGroupBox6: TcxGroupBox;
    Panel2: TPanel;
    grbParticip: TcxGroupBox;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    quRecebeFields: TIBOQuery;
    quRecebeFieldsFUNC_ID: TIntegerField;
    quRecebeFieldsFUNC_NOME: TStringField;
    dsRecebeFields: TDataSource;
    quFuncList: TIBOQuery;
    quFuncListFUNC_ID: TIntegerField;
    quFuncListCODALIAS: TStringField;
    dsFuncList: TDataSource;
    ToolButton7: TToolButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnRevDeleteClick(Sender: TObject);
    procedure btnRevAlterarClick(Sender: TObject);
    procedure btnRevCancelClick(Sender: TObject);
    procedure btnRevPostClick(Sender: TObject);
    procedure btnRevNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AcLocalizarExecute(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTreinamentos: TfrmTreinamentos;

implementation

uses
  smForms;

{$R *.dfm}

procedure TfrmTreinamentos.AcLocalizarExecute(Sender: TObject);
begin
  inherited;
  PaCoPadrao.ActivePageIndex := 1; 
  cxGroupBox6.Visible := True;
  //Application.CreateForm(TfrmLocalizaParticip,frmLocalizaParticip);
 // frmLocalizaParticip.ShowModal;


end;

procedure TfrmTreinamentos.BitBtn1Click(Sender: TObject);
 var
  i : Integer;
  sIdParticipantes: String;
begin
  inherited;
 PaCoPadrao.ActivePageIndex := 1;

if DBGrid2.SelectedRows.Count > 0 then
  begin
    for i:= 0 to DBGrid2.SelectedRows.Count-1 do
      begin
      DBGrid2.DataSource.DataSet.GotoBookmark(Pointer(DBGrid2.SelectedRows.Items[i]));
      sIdParticipantes := sIdParticipantes + inttostr(quFuncListFUNC_ID.AsInteger) + ',';
    end;
       sIdParticipantes := sIdParticipantes + '-1';
     with quRecebeFields do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM FUNCIONARIOS');
    SQL.Add('WHERE FUNC_ID IN ('+ sIdParticipantes +')');
    Open;
  end;
  end;
     with quPerticipantes do
     begin
     Close;
     SQL.Clear;
     SQL.Add('SELECT  F.FUNC_ID,F.FUNC_NOME,');
     SQL.Add('D.DEPA_ID,D.DEPA_DESCR,');
     SQL.Add('C.CARG_ID,C.CARG_DESCR ');
     SQL.Add('FROM    FUNCIONARIOS F,DEPARTAMENTOS D,CARGOS C');
     SQL.Add ('WHERE FUNC_ID IN ('+ sIdParticipantes +')');
     SQL.Add('AND     F.DEPA_ID = D.DEPA_ID ');
     SQL.Add('AND     F.CARG_ID = C.CARG_ID');
     Open;
     end;
end;

procedure TfrmTreinamentos.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PaCoPadrao.ActivePageIndex := 1;
  cxGroupBox6.Visible := False;
end;

procedure TfrmTreinamentos.btnRevAlterarClick(Sender: TObject);
begin
  inherited;
  quPerticipantes.Edit;
end;

procedure TfrmTreinamentos.btnRevCancelClick(Sender: TObject);
begin
  inherited;
  quPerticipantes.Cancel;
end;

procedure TfrmTreinamentos.btnRevDeleteClick(Sender: TObject);
begin
  inherited;
  quPerticipantes.Delete;
end;

procedure TfrmTreinamentos.btnRevNewClick(Sender: TObject);
begin
  inherited;
  quPerticipantes.Append;
end;

procedure TfrmTreinamentos.btnRevPostClick(Sender: TObject);
begin
  inherited;
  quPerticipantes.Post;
end;

procedure TfrmTreinamentos.FormCreate(Sender: TObject);
begin
  inherited;

     with quPerticipantes do
     begin
     Close;
     SQL.Clear;
     SQL.Add('SELECT  F.FUNC_ID,F.FUNC_NOME,');
     SQL.Add('D.DEPA_ID,D.DEPA_DESCR,');
     SQL.Add('C.CARG_ID,C.CARG_DESCR ');
     SQL.Add('FROM    FUNCIONARIOS F,DEPARTAMENTOS D,CARGOS C');
     SQL.Add('where 1=1 ');
     SQL.Add('AND     F.DEPA_ID = D.DEPA_ID ');
     SQL.Add('AND     F.CARG_ID = C.CARG_ID');
     Open;
     end;

  DmTreinamentos.quInstrutores.Close;
  DmTreinamentos.quInstrutores.Open;

  DmTreinamentos.quInstituicao.Close;
  DmTreinamentos.quInstituicao.Open;

  DmTreinamentos.quTipoTreinamento.Close;
  DmTreinamentos.quTipoTreinamento.Open;

  //quRecebeFields.Close;
  //quRecebeFields.Open;

  quFuncList.Close;
  quFuncList.Open;

end;

procedure TfrmTreinamentos.ToolButton7Click(Sender: TObject);
begin
  inherited;
  OpenFormMDIClass('TfrmFuncSearchOfTreinamentos');
end;

initialization
  RegisterClass(TfrmTreinamentos);

finalization
  UnRegisterClass(TfrmTreinamentos);


end.
