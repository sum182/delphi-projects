unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, xmldom,
  Xmlxform, Provider;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ClientDataSet1Codigo: TIntegerField;
    ClientDataSet1Nome: TStringField;
    DBNavigator1: TDBNavigator;
    Button2: TButton;
    XMLTransformProvider1: TXMLTransformProvider;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
 ClientDataSet1.ApplyUpdates(-1);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 ClientDataSet1.ApplyUpdates(-1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
ClientDataSet1.Active:= True;
end;

end.
