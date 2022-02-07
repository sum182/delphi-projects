unit UnFoCadastroTabelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnFoCadastroPadrao, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Provider,
  DBClient, ImgList, dxBar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, Buttons, ExtCtrls, RzPanel, RzButton,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxTextEdit, cxMaskEdit,
  StdCtrls, cxContainer, cxGroupBox, cxPC, Mask, DBCtrls, cxDBEdit,
  cxDBLookupComboBox, cxImageComboBox, FMTBcd, SqlExpr, cxNavigator,
  cxDBNavigator;

type
  TFoCadastroTabelas = class(TFoCadastroPadrao)
    DBGrConsultaDBTaViTABE_ID: TcxGridDBColumn;
    DBGrConsultaDBTaViTABE_TABELA: TcxGridDBColumn;
    ClDaConsultaTABE_ID: TIntegerField;
    ClDaConsultaTABE_TABELA: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    CiDaTabelas_Campos: TClientDataSet;
    DaSoTabelas_Campos: TDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1TACA_CAMPO: TcxGridDBColumn;
    cxGridDBTableView1TACA_DESC: TcxGridDBColumn;
    cxGridDBTableView1TACA_TIPO: TcxGridDBColumn;
    cxGridDBTableView1TACA_EXBIR_PESQUISA: TcxGridDBColumn;
    cxGridDBTableView1TACA_EXIBIR_SELECT: TcxGridDBColumn;
    CiDaTipo_Campos: TClientDataSet;
    DaSoTipo_Campos: TDataSource;
    BuIncluirCampos: TRzBitBtn;
    BuExcluirCampos: TRzBitBtn;
    CiDaTabelas_CamposTACA_ID: TIntegerField;
    CiDaTabelas_CamposTABE_ID: TIntegerField;
    CiDaTabelas_CamposTACA_CAMPO: TStringField;
    CiDaTabelas_CamposTACA_DESC: TStringField;
    CiDaTabelas_CamposTACA_TIPO: TStringField;
    CiDaTabelas_CamposTACA_EXIBIR_SELECT: TStringField;
    CiDaTabelas_CamposTACA_EXIBIR_PESQUISA: TStringField;
    cxDBNavigator1: TcxDBNavigator;
    Bevel1: TBevel;
    procedure FormShow(Sender: TObject);
    procedure CiDaCadastroAfterOpen(DataSet: TDataSet);
    procedure BuSalvarClick(Sender: TObject);
    procedure BuCancelarClick(Sender: TObject);
    procedure BuIncluirCamposClick(Sender: TObject);
    procedure CiDaTabelas_CamposNewRecord(DataSet: TDataSet);
    procedure CiDaCadastroNewRecord(DataSet: TDataSet);
    procedure BuExcluirCamposClick(Sender: TObject);
    procedure CiDaTabelas_CamposAfterPost(DataSet: TDataSet);
    procedure CiDaTabelas_CamposBeforeInsert(DataSet: TDataSet);
    procedure CiDaTabelas_CamposBeforeEdit(DataSet: TDataSet);
    procedure CiDaTabelas_CamposBeforeDelete(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure DaSoTabelas_CamposDataChange(Sender: TObject; Field: TField);
    procedure BtnSaveAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoCadastroTabelas: TFoCadastroTabelas;

implementation

uses UnDaMoBio, UnGeral;

{$R *.dfm}

procedure TFoCadastroTabelas.FormShow(Sender: TObject);
begin
  Tabela        := 'TABELAS';
  Ordem         := ' ORDER BY TABE_ID ';
  FiltroPadrao  := ' AND TABE_ID <> 0 ';
  inherited;
  CiDaTipo_Campos.Close;
  CiDaTipo_Campos.Open;

end;


procedure TFoCadastroTabelas.CiDaCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CiDaTabelas_Campos.Close;
  CiDaTabelas_Campos.Open;
end;

procedure TFoCadastroTabelas.BuSalvarClick(Sender: TObject);
begin

  If DaSoTabelas_Campos.DataSet.State In [DsEdit,Dsinsert]Then
      DaSoTabelas_Campos.DataSet.Post;
  ;

  If CiDaTabelas_Campos.State In [DsEdit,Dsinsert]Then
      CiDaTabelas_Campos.Post;
  ;





  inherited;


 try
    CiDaTabelas_Campos.ApplyUpdates(0);
  except
  on E: Exception do
    ShowMessage('error');
    end;


  end;

procedure TFoCadastroTabelas.BuCancelarClick(Sender: TObject);
begin
  CiDaTabelas_Campos.Close;
  CiDaTabelas_Campos.Open;
  inherited;
end;

procedure TFoCadastroTabelas.BuIncluirCamposClick(Sender: TObject);
var sSql      :String;
    I         :Integer;
    sCampo    :String;
    CiDaGeral :TClientDataSet;
begin
  inherited;


  //CRIANDO O CLIENT DATASET
  CiDaGeral := TClientDataSet.Create(self);
  CiDaGeral.RemoteServer := DaMoBio.DCOMConnection;
  CiDaGeral.ProviderName := 'DaSePrGeral';

  Try

    //ABRINDO OS CAMPOS DA TABELA
    sSql:='SELECT * FROM ' + CiDaCadastro.FieldByName('TABE_TABELA').AsString;
    CiDaGeral.CommandText:= sSql;
    CiDaGeral.Close;
    CiDaGeral.Open;
    sCampo := CiDaGeral.FieldDefs.Items[1].Name;


    //INCLUINDO TODOS OS CAMPOS DA TABELA
    For i:= 0 To CiDaGeral.FieldCount -1 Do
      Begin
        CiDaTabelas_Campos.Append;
        CiDaTabelas_Campos.FieldByName('TACA_CAMPO'          ).Value:= CiDaGeral.FieldDefs.Items[i].Name;
        CiDaTabelas_Campos.FieldByName('TACA_DESC'           ).Value:= CiDaGeral.FieldDefs.Items[i].Name;

        //SE O CAMPO FOR INTEIRO
        IF (CiDaGeral.FieldDefs[i].DataType = ftInteger) Then
          CiDaTabelas_Campos.FieldByName('TACA_TIPO').Value:= 'I'
        ;


        //SE O CAMPO FOR STRING
        IF (CiDaGeral.FieldDefs[i].DataType = ftString) Then
          CiDaTabelas_Campos.FieldByName('TACA_TIPO').Value:= 'S'
        ;


        //SE O CAMPO FOR DATA
        IF (CiDaGeral.FieldDefs[i].DataType In [ftTime,ftTimeStamp,ftDate]) Then
          CiDaTabelas_Campos.FieldByName('TACA_TIPO').Value:= 'D'
        ;



        //SE O CAMPO FOR BLOG
        IF (CiDaGeral.FieldDefs[i].DataType In [ftBlob]) Then
          CiDaTabelas_Campos.FieldByName('TACA_TIPO').Value:= 'BL'
        ;

        //SE O CAMPO FOR BOOLEANO
        IF (CiDaGeral.FieldDefs[i].DataType In [ftBoolean]) Then
          CiDaTabelas_Campos.FieldByName('TACA_TIPO').Value:= 'B'
        ;


        //SE O CAMPO FOR REAL
        IF (CiDaGeral.FieldDefs[i].DataType In [ftFloat,FtCurrency]) Then
          CiDaTabelas_Campos.FieldByName('TACA_TIPO').Value:= 'R'
        ;


        CiDaTabelas_Campos.FieldByName('TACA_EXIBIR_SELECT'  ).Value:= 'S';
        CiDaTabelas_Campos.FieldByName('TACA_EXIBIR_PESQUISA').Value:= 'S';
        CiDaTabelas_Campos.Post;
      End
    ;
 Finally
   FreeAndNil(CiDaGeral);
 End;

 

end;

procedure TFoCadastroTabelas.CiDaTabelas_CamposNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DATASET.FieldValues['TACA_ID']:=GetGenerator('GEN_TABELAS_CAMPOS',1);
end;

procedure TFoCadastroTabelas.CiDaCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  DATASET.FieldValues['TABE_ID']:=GetGenerator('GEN_TABELAS',1);
end;

procedure TFoCadastroTabelas.BuExcluirCamposClick(Sender: TObject);
var sSql:String;
    I:Integer;
    nTabelaId:Integer;
BEGIN
  inherited;

  While Not(CiDaTabelas_Campos.Eof) Do
    CiDaTabelas_Campos.Delete
  ;


end;

procedure TFoCadastroTabelas.CiDaTabelas_CamposAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CiDaTabelas_Campos.ApplyUpdates(-1);
end;







procedure TFoCadastroTabelas.CiDaTabelas_CamposBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  IF  Not(CiDaCadastro.State In [DsEdit,DsInsert]) Then
    CiDaCadastro.Edit
  ;
end;

procedure TFoCadastroTabelas.CiDaTabelas_CamposBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
   IF  Not(CiDaCadastro.State In [DsEdit,DsInsert]) Then
    CiDaCadastro.Edit
  ;
end;

procedure TFoCadastroTabelas.CiDaTabelas_CamposBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  IF  Not(DaSoCadastro.DataSet.State In [DsEdit,DsInsert]) Then
    CiDaCadastro.Edit
  ;
end;





procedure TFoCadastroTabelas.BitBtn1Click(Sender: TObject);
begin
  inherited;
CiDaTabelas_Campos.Delete;
end;

procedure TFoCadastroTabelas.DaSoTabelas_CamposDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
//  SQLDaSeTabelas_Campos.TransactionLevel := SQLDaSeCadastro.TransactionLevel;
end;

procedure TFoCadastroTabelas.BtnSaveAllClick(Sender: TObject);
begin
  CiDaTabelas_Campos.ApplyUpdates(-1);
  inherited;

end;

Initialization
  RegisterClass(TFoCadastroTabelas);

Finalization
  UnRegisterClass(TFoCadastroTabelas);
end.
