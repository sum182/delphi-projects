unit uTesteFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB, DBClient,
  Provider, SqlExpr, ComCtrls, Grids, DBGrids, XPMan;

type
  TfrmTesteFunc = class(TForm)
    PageControl1: TPageControl;
    tbshCandidato: TTabSheet;
    quCand: TSQLDataSet;
    quCandCAND_ID: TIntegerField;
    quCandCAND_NOME: TStringField;
    quCandCAND_CPF: TStringField;
    quCandCAND_EMAIL: TStringField;
    quCandCAND_NOTA: TFloatField;
    quCandTEST_ID: TIntegerField;
    dspCand: TDataSetProvider;
    cdsCand: TClientDataSet;
    cdsCandCAND_NOME: TStringField;
    cdsCandCAND_CPF: TStringField;
    cdsCandCAND_EMAIL: TStringField;
    cdsCandCAND_NOTA: TFloatField;
    cdsCandTEST_ID: TIntegerField;
    cdsCandTeste: TStringField;
    cdsCandCAND_ID: TIntegerField;
    dsCand: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    edtEmail: TDBEdit;
    Label5: TLabel;
    edtCPF: TDBEdit;
    Label4: TLabel;
    edtNome: TDBEdit;
    Label3: TLabel;
    tbshQuestoes: TTabSheet;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    quQuestoes: TSQLDataSet;
    quQuestoesQUES_ID: TIntegerField;
    quQuestoesQUES_ORDEM: TIntegerField;
    quQuestoesQUES_RESPOSTA: TIntegerField;
    quQuestoesTEST_ID: TIntegerField;
    dspQuestoes: TDataSetProvider;
    cdsQuestoes: TClientDataSet;
    cdsQuestoesQUES_ID: TIntegerField;
    cdsQuestoesQUES_ORDEM: TIntegerField;
    cdsQuestoesQUES_RESPOSTA: TIntegerField;
    cdsQuestoesTEST_ID: TIntegerField;
    cdsQuestoesTeste: TStringField;
    cdsQuestoesquAlternativas: TDataSetField;
    cdsQuestoesLoResposta: TStringField;
    dsQuestoes: TDataSource;
    dsAlteranativas: TDataSource;
    cdsAlternativas: TClientDataSet;
    cdsAlternativasALTE_ID: TIntegerField;
    cdsAlternativasALTE_DESCR: TStringField;
    cdsAlternativasQUES_ID: TIntegerField;
    quAlternativas: TSQLDataSet;
    quAlternativasALTE_ID: TIntegerField;
    quAlternativasALTE_DESCR: TStringField;
    quAlternativasQUES_ID: TIntegerField;
    dsRelacionamento: TDataSource;
    cdsAlternativasResposta: TIntegerField;
    cdsQuestoesRespostaCand: TIntegerField;
    rdgAlteranativas: TRadioGroup;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    DBText4: TDBText;
    Label2: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    Bevel1: TBevel;
    cdsQuestoesLoRespostaCand: TStringField;
    DBLookupComboBox3: TDBLookupComboBox;
    quQuestoesQUES_DESCR: TMemoField;
    cdsQuestoesQUES_DESCR: TMemoField;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    lblQtde: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    XPManifest1: TXPManifest;
    btnNext: TBitBtn;
    BitBtn1: TBitBtn;
    btnFinalizar: TBitBtn;
    Bevel2: TBevel;
    procedure edtCPFExit(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure cdsQuestoesAfterScroll(DataSet: TDataSet);
    procedure btnNextClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cdsCandNewRecord(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure NewTeste;
    procedure EndTeste;
    procedure BeginTeste;
    procedure SetAlternativas;
    procedure SetRespostaCand;
    procedure SetQtde;
  public
    { Public declarations }
  end;

var
  frmTesteFunc: TfrmTesteFunc;

implementation

uses
  smGeral, smDBFireBird, uDM, smMensagens;

{$R *.dfm}

{ TfrmTesteFunc }

procedure TfrmTesteFunc.BeginTeste;
begin
  PageControl1.ActivePageIndex := 1;

  with cdsQuestoes do
  begin
    Close;
    Open;
  end;

end;

procedure TfrmTesteFunc.BitBtn1Click(Sender: TObject);
begin
  SetRespostaCand;
  cdsQuestoes.Prior;
end;

procedure TfrmTesteFunc.btnNextClick(Sender: TObject);
begin
  SetRespostaCand;
  cdsQuestoes.Next;
end;

procedure TfrmTesteFunc.BitBtn4Click(Sender: TObject);
begin
  ValidarCampos(cdsCand);
  with cdsCand do
  begin

    if not (state in [dsInsert, dsEdit]) then
      Edit;

    Post;
    ApplyUpdates(-1);

  end;
  BeginTeste;
end;

procedure TfrmTesteFunc.BitBtn5Click(Sender: TObject);
begin
  with cdsCand do
  begin
    Close;
  end;

  Close;

end;

procedure TfrmTesteFunc.btnFinalizarClick(Sender: TObject);
begin
  if not Msg('Deseja realmente finalizar o teste?',
              mtAviso,
              Sim_Nao_Cancelar) then
    Exit;

  try
    Wait(self, 'Finalizando Teste', 500);
    btnNext.Click;
    EndTeste;
  finally
    WaitEnd(self);
  end;
  Msg('Teste Finalizado com sucesso!', mtAviso);
  //Application.Terminate;
end;

procedure TfrmTesteFunc.cdsCandNewRecord(DataSet: TDataSet);
begin
  cdsCand.FieldByName('CAND_ID').AsInteger :=
    GetGenerator('GEN_CANDIDATOS', DM.cdsGeral);
end;

procedure TfrmTesteFunc.cdsQuestoesAfterScroll(DataSet: TDataSet);
begin
  SetAlternativas;
  SetQtde;
end;

procedure TfrmTesteFunc.edtCPFExit(Sender: TObject);
begin
  if not ValidCPF(edtCPF.Text) then
  begin
    edtCPF.SetFocus;
    MsgException('CPF Inválido!');
  end;
end;

procedure TfrmTesteFunc.edtEmailExit(Sender: TObject);
begin
  if not ValidEmail(edtEmail.Text) then
  begin
    edtEmail.SetFocus;
    MsgException('Email Inválido!');
  end;
end;

procedure TfrmTesteFunc.EndTeste;
var
  i: integer;
  RespCertas: integer;
begin

  RespCertas := 0;
  with cdsQuestoes do
  begin
    First;
    while not EOF do
    begin
      if (cdsQuestoesRespostaCand.AsInteger = cdsQuestoesQUES_RESPOSTA.AsInteger)
      and not (cdsQuestoesRespostaCand.IsNull)
       then
        Inc(RespCertas);
      Next;
    end;
    cdsCand.Edit;
    cdsCandCAND_NOTA.AsFloat := (RespCertas / cdsQuestoes.RecordCount) * 100;
    cdsCand.Post;
    cdsCand.ApplyUpdates(-1);
    //Msg(cdsCandCAND_NOTA.AsString);
  end;
end;

procedure TfrmTesteFunc.FormShow(Sender: TObject);
begin
  NewTeste;
  btnFinalizar.Left := Width div 2;
end;

procedure TfrmTesteFunc.NewTeste;
var
  i: integer;
begin
  for I := 0 to PageControl1.PageCount - 1 do
    PageControl1.Pages[i].TabVisible := False;

  with cdsCand do
  begin
    Close;
    Open;
    Append;
    cdsCandCAND_NOME.FocusControl;
  end;

  PageControl1.ActivePageIndex := 0;
  edtNome.SetFocus;
end;

procedure TfrmTesteFunc.SetAlternativas;
begin
  with cdsAlternativas, rdgAlteranativas do
  begin
    Items.Clear;
    First;
    while not EOF do
    begin
      Items.AddObject(Trim(cdsAlternativasALTE_DESCR.AsString),
        TObject(cdsAlternativasALTE_ID.AsInteger));

      if (cdsQuestoesRespostaCand.AsInteger =
        cdsAlternativasALTE_ID.AsInteger) then
        rdgAlteranativas.ItemIndex := RecNo - 1;

      Next;
    end;

  end;

end;

procedure TfrmTesteFunc.SetQtde;
begin
  lblQtde.Caption := IntToStr(cdsQuestoes.RecNo) +
                     ' de ' +
                     IntToStr(cdsQuestoes.RecordCount);
end;

procedure TfrmTesteFunc.SetRespostaCand;
var
  i: integer;
begin
  cdsQuestoes.Edit;

  with rdgAlteranativas do
  begin
    for I := 0 to Items.Count - 1 do
      if (ItemIndex = i) then
        cdsQuestoesRespostaCand.AsInteger := Integer(items.Objects[i]);

  end;
  cdsQuestoes.Post;
end;

end.


