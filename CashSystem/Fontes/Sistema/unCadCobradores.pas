unit unCadCobradores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,DBClient, Buttons, ExtCtrls, StdCtrls,
   ComCtrls, ToolWin, DBActns, ActnList, Grids, DBGrids, DBCtrls, Mask, smGrid, unCadPadrao, smCadPadrao;

type
  TFoCadCobradores = class(TFoCadPadrao)
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Bevel3: TBevel;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    procedure AcNovoExecute(Sender: TObject);
    procedure BuSalvarClick(Sender: TObject);
    procedure cdsCobradoresTelBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoCadCobradores: TFoCadCobradores;

implementation

uses unDm, UnGeral;

{$R *.dfm}

procedure TFoCadCobradores.AcNovoExecute(Sender: TObject);
begin
  inherited;
  Dm.cdsCobradores.FieldValues['COBR_ID']:=GetGenerator('GEN_COBRADORES',1);
end;

procedure TFoCadCobradores.BuSalvarClick(Sender: TObject);
begin


  //PARA SALVAR O REGISTRO EM ALTERACAO DE UMA GRID DO DEV
  If DM.dsCobradoresTel.DataSet.State In [DsEdit,Dsinsert]Then
      Dm.dsCobradoresTel.DataSet.Post
  ;

  //SALVANDO O REGISTRO EM ALTERACAO
  If dm.cdsCobradoresTel.State In [DsEdit,Dsinsert]Then
      dm.cdsCobradoresTel.Post
  ;

  //SALVANDO O CLIENTDATASET CADASTRO
  inherited;





end;

procedure TFoCadCobradores.cdsCobradoresTelBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidarCampos(DataSet);
end;

Initialization
  RegisterClass(TFoCadCobradores);

Finalization
  UnRegisterClass(TFoCadCobradores);


end.
