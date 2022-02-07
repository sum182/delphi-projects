unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TForm1 = class(TForm)
    SQLConnection1: TSQLConnection;
    dst_Mestre: TSQLDataSet;
    dst_Detalhe: TSQLDataSet;
    dts_Detalhe: TDataSource;
    dsp_Mestre: TDataSetProvider;
    dts_Mestre: TDataSource;
    dts_LinkMestre: TDataSource;
    cds_Detalhe: TClientDataSet;
    cds_Mestre: TClientDataSet;
    cds_MestreTABE_ID: TIntegerField;
    cds_MestreTABE_TABELA: TStringField;
    cds_Mestredst_Detalhe: TDataSetField;
    dst_MestreTABE_ID: TIntegerField;
    dst_MestreTABE_TABELA: TStringField;
    cds_DetalheTACA_ID: TIntegerField;
    cds_DetalheTACA_CAMPO: TStringField;
    cds_DetalheTACA_DESC: TStringField;
    cds_DetalheTACA_TIPO: TStringField;
    cds_DetalheTACA_EXIBIR_SELECT: TStringField;
    cds_DetalheTACA_EXIBIR_PESQUISA: TStringField;
    cds_DetalheTABE_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
