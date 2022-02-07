unit unCadSocios;

interface

uses
  Windows, ExtCtrls, DBCtrls, Mask, DB, DBActns, Classes,
  ActnList, DBClient, ComCtrls, StdCtrls, Buttons, Controls, Grids,
  DBGrids, ToolWin, smGrid, unCadPadrao, smCadPadrao;

type
  TFoCadSocios = class(TFoCadPadrao)
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxDBMemo1: TDBMemo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    procedure AcNovoExecute(Sender: TObject);
    procedure BuSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoCadSocios: TFoCadSocios;

implementation

uses unDm, UnGeral;

{$R *.dfm}


procedure TFoCadSocios.AcNovoExecute(Sender: TObject);
begin
  inherited;
  dm.cdsSocios.FieldValues['SOCI_ID']:=GetGenerator('GEN_SOCIOS',1);
end;

procedure TFoCadSocios.BuSalvarClick(Sender: TObject);
begin


  //PARA SALVAR O REGISTRO EM ALTERACAO DE UMA GRID DO DEV
  If dm.dsSociosTel.DataSet.State In [DsEdit,Dsinsert]Then
    dm.dsSociosTel.DataSet.Post;
  ;

  //SALVANDO O REGISTRO EM ALTERACAO
  If dm.cdsSociosTel.State In [DsEdit,Dsinsert]Then
    dm.cdsSociosTel.Post;
  ;


  //PARA SALVAR O REGISTRO EM ALTERACAO DE UMA GRID DO DEV
  If dm.dsSociosMaqu.DataSet.State In [DsEdit,Dsinsert]Then
    dm.dsSociosMaqu.DataSet.Post;
  ;

  //SALVANDO O REGISTRO EM ALTERACAO
  If dm.cdsSociosMaqu.State In [DsEdit,Dsinsert]Then
    dm.cdsSociosMaqu.Post;
  ;


  //SALVANDO O CLIENTDATASET CADASTRO
  inherited;





end;

Initialization
  RegisterClass(TFoCadSocios);

Finalization
  UnRegisterClass(TFoCadSocios);



end.




