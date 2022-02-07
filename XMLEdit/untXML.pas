unit untXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    cdsHistorico: TClientDataSet;
    cdsHistoricoData: TDateTimeField;
    cdsHistoricoKMs: TFloatField;
    cdsHistoricoLitros: TFloatField;
    cdsHistoricoResultado: TFloatField;
    cdsHistoricoTipoCombustivel: TStringField;
    cdsHistoricoItemExibirListView: TStringField;
    DataSource1: TDataSource;
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
