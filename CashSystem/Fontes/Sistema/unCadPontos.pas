unit unCadPontos;

interface

uses
  Windows, DB, ExtCtrls, DBCtrls, StdCtrls, Mask,
  DBActns, Classes, ActnList, DBClient, ComCtrls, Buttons, Controls, Grids,
  DBGrids, ToolWin, smGrid, unCadPadrao, smCadPadrao;

type
  TFoCadPontos = class(TFoCadPadrao)
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Bevel3: TBevel;
    GroupBox2: TGroupBox;
    Bevel1: TBevel;
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
  FoCadPontos: TFoCadPontos;

implementation

uses unDm, UnGeral;

{$R *.dfm}


procedure TFoCadPontos.AcNovoExecute(Sender: TObject);
begin
  inherited;
  Dm.cdsPontos.FieldValues['PONT_ID']:=GetGenerator('GEN_PONTOS',1);
end;

procedure TFoCadPontos.BuSalvarClick(Sender: TObject);
begin


  //PARA SALVAR O REGISTRO EM ALTERACAO DE UMA GRID DO DEV
  If Dm.dsPontosTel.DataSet.State In [DsEdit,Dsinsert]Then
    Dm.dsPontosTel.DataSet.Post;
  ;

  //SALVANDO O REGISTRO EM ALTERACAO
  If Dm.cdsPontosTel.State In [DsEdit,Dsinsert]Then
    Dm.cdsPontosTel.Post;
  ;


  //PARA SALVAR O REGISTRO EM ALTERACAO DE UMA GRID DO DEV
  If Dm.dsPontosMaqu.DataSet.State In [DsEdit,Dsinsert]Then
    Dm.dsPontosMaqu.DataSet.Post;
  ;

  //SALVANDO O REGISTRO EM ALTERACAO
  If Dm.cdsPontosMaqu.State In [DsEdit,Dsinsert]Then
    Dm.cdsPontosMaqu.Post;
  ;


  //SALVANDO O CLIENTDATASET CADASTRO
  inherited;




end;

Initialization
  RegisterClass(TFoCadPontos);

Finalization
  UnRegisterClass(TFoCadPontos);



end.





