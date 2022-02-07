unit unCadTabelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,  Provider,DBClient, ImgList,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, FMTBcd, SqlExpr, ComCtrls, ToolWin,
  DBActns, ActnList, Grids, DBGrids, smGrid, unCadPadrao, smCadPadrao;

type
  TFoCadTabelas = class(TFoCadPadrao)
    Label3: TLabel;
    Label4: TLabel;
    BuIncluirCampos: TBitBtn;
    BuExcluirCampos: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure BuSalvarClick(Sender: TObject);
    procedure BuIncluirCamposClick(Sender: TObject);
    procedure BuExcluirCamposClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoCadTabelas: TFoCadTabelas;

implementation

uses unDm, UnGeral;

{$R *.dfm}

procedure TFoCadTabelas.BuSalvarClick(Sender: TObject);
begin


  //PARA SALVAR O REGISTRO EM ALTERACAO DE UMA GRID DO DEV
  If Dm.dsTabelasCampos.DataSet.State In [DsEdit,Dsinsert]Then
      Dm.dsTabelasCampos.DataSet.Post;
  ;

  //SALVANDO O REGISTRO EM ALTERACAO
  If dm.cdsTabelasCampos.State In [DsEdit,Dsinsert]Then
      dm.cdsTabelasCampos.Post;
  ;

  //SALVANDO O CLIENTDATASET CADASTRO
  inherited;


  end;

procedure TFoCadTabelas.BuIncluirCamposClick(Sender: TObject);
var     I         :Integer;
    sCampo    :String;
    cdsTmp :TClientDataSet;
begin
  inherited;


  //CRIANDO O CLIENT DATASET
  cdsTmp := TClientDataSet.Create(self);
  cdsTmp.RemoteServer := Dm.DCOMConnection;
  cdsTmp.ProviderName := 'dspGeral';

  Try

    //ABRINDO OS CAMPOS DA TABELA
    cdsTmp.CommandText:= 'SELECT * FROM ' + smCadPadrao.DataSource.DataSet.FieldByName('TABE_TABELA').AsString;
    cdsTmp.Close;
    cdsTmp.Open;
    sCampo := cdsTmp.FieldDefs.Items[1].Name;


    //INCLUINDO TODOS OS CAMPOS DA TABELA
    For i:= 0 To cdsTmp.FieldCount -1 Do
      Begin
        DM.cdsTabelasCampos.Append;
        DM.cdsTabelasCampos.FieldByName('TACA_FIELDNAME'          ).Value:= cdsTmp.FieldDefs.Items[i].Name;
        DM.cdsTabelasCampos.FieldByName('TACA_DISPLAYNAME'           ).Value:= cdsTmp.FieldDefs.Items[i].Name;

        //SE O CAMPO FOR INTEIRO
        IF (cdsTmp.FieldDefs[i].DataType = ftInteger) Then
          DM.cdsTabelasCampos.FieldByName('TACA_TIPO').Value:= 'I'
        ;


        //SE O CAMPO FOR STRING
        IF (cdsTmp.FieldDefs[i].DataType = ftString) Then
          DM.cdsTabelasCampos.FieldByName('TACA_TIPO').Value:= 'S'
        ;


        //SE O CAMPO FOR DATA
        IF (cdsTmp.FieldDefs[i].DataType In [ftTime,ftTimeStamp,ftDate]) Then
          DM.cdsTabelasCampos.FieldByName('TACA_TIPO').Value:= 'D'
        ;



        //SE O CAMPO FOR BLOG
        IF (cdsTmp.FieldDefs[i].DataType In [ftBlob]) Then
          DM.cdsTabelasCampos.FieldByName('TACA_TIPO').Value:= 'BL'
        ;

        //SE O CAMPO FOR BOOLEANO
        IF (cdsTmp.FieldDefs[i].DataType In [ftBoolean]) Then
          DM.cdsTabelasCampos.FieldByName('TACA_TIPO').Value:= 'B'
        ;


        //SE O CAMPO FOR REAL
        IF (cdsTmp.FieldDefs[i].DataType In [ftFloat,FtCurrency]) Then
          DM.cdsTabelasCampos.FieldByName('TACA_TIPO').Value:= 'R'
        ;


        DM.cdsTabelasCampos.FieldByName('TACA_EXIBIR_COMBO'  ).Value:= 'S';
        DM.cdsTabelasCampos.FieldByName('TACA_EXIBIR_GRID').Value:= 'S';
        DM.cdsTabelasCampos.Post;
      End
    ;
 Finally
   FreeAndNil(cdsTmp);
 End;

 

end;

procedure TFoCadTabelas.BuExcluirCamposClick(Sender: TObject);
Begin
  inherited;

  While Not(dm.cdsTabelasCampos.Eof) Do
    dm.cdsTabelasCampos.Delete
  ;


end;







Initialization
  RegisterClass(TFoCadTabelas);

Finalization
  UnRegisterClass(TFoCadTabelas);
end.
