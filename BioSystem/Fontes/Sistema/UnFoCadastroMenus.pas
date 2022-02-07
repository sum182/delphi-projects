unit UnFoCadastroMenus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnFoCadastroPadrao, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Provider,
  DBClient, ImgList, dxBar, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, ExtCtrls, RzPanel, RzButton,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxTextEdit, cxMaskEdit,
  StdCtrls, cxContainer, cxGroupBox, cxPC, Mask, DBCtrls, Grids, DBGrids,
  cxDBEdit, cxDBLookupComboBox, cxImageComboBox, FMTBcd, SqlExpr,
  cxNavigator, cxDBNavigator;

type
  TFoCadastroMenus = class(TFoCadastroPadrao)
    DBGrConsultaDBTaViMEGR_ID: TcxGridDBColumn;
    DBGrConsultaDBTaViMEGR_NOME: TcxGridDBColumn;
    DBGrConsultaDBTaViMEGR_CAPTION: TcxGridDBColumn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    CiDaMenuBio: TClientDataSet;
    DaSoMenuBio: TDataSource;
    cxGridDBTableView1MEBI_FORMNAME: TcxGridDBColumn;
    cxGridDBTableView1MEBI_FORMCAPTION: TcxGridDBColumn;
    Bevel1: TBevel;
    cxDBNavigator1: TcxDBNavigator;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure CiDaCadastroNewRecord(DataSet: TDataSet);
    procedure CiDaMenuBioNewRecord(DataSet: TDataSet);
    procedure BuSalvarClick(Sender: TObject);
    procedure CiDaMenuBioBeforeDelete(DataSet: TDataSet);
    procedure CiDaMenuBioBeforeEdit(DataSet: TDataSet);
    procedure CiDaMenuBioBeforeInsert(DataSet: TDataSet);
    procedure BuCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoCadastroMenus: TFoCadastroMenus;

implementation

uses UnDaMoBio, UnGeral, UnMenuPrincipal;

{$R *.dfm}

procedure TFoCadastroMenus.FormShow(Sender: TObject);
begin
  tabela:='MENU_GRUPO';
  inherited;
  CiDaMenuBio.Close;
  CiDaMenuBio.Open;                     
end;

procedure TFoCadastroMenus.CiDaCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
   DataSet.FieldValues['MEGR_ID']:=GetGenerator('GEN_MENU_GRUPO',1);
end;



procedure TFoCadastroMenus.CiDaMenuBioNewRecord(DataSet: TDataSet);
begin
  inherited;
  DATASET.FieldValues['MEBI_ID']:=GetGenerator('GEN_MENU_BIO',1);

end;

procedure TFoCadastroMenus.BuSalvarClick(Sender: TObject);
begin


  IF DaSoMenuBio.DataSet.State in [DsInsert,DsEdit]Then
    DaSoMenuBio.DataSet.Post
  ;

  IF CiDaMenuBio.State in [DsInsert,DsEdit]Then
    CiDaMenuBio.Post
  ;

  inherited;
  CiDaMenuBio.ApplyUpdates(-1);
   FoMenuPrincipal.MontarMenu;
end;






procedure TFoCadastroMenus.CiDaMenuBioBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IF  Not(CiDaCadastro.State In [DsEdit,DsInsert]) Then
    CiDaCadastro.Edit
  ;
end;

procedure TFoCadastroMenus.CiDaMenuBioBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IF  Not(CiDaCadastro.State In [DsEdit,DsInsert]) Then
    CiDaCadastro.Edit
  ;
end;

procedure TFoCadastroMenus.CiDaMenuBioBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  IF  Not(CiDaCadastro.State In [DsEdit,DsInsert]) Then
    CiDaCadastro.Edit
  ;

end;




procedure TFoCadastroMenus.BuCancelarClick(Sender: TObject);
begin
  CiDaMenuBio.Close;
  CiDaMenuBio.Open;
  inherited;

end;

Initialization
  RegisterClass(TFoCadastroMenus);

Finalization
  UnRegisterClass(TFoCadastroMenus);

  end.
