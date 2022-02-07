unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBClient, Grids, DBGrids, smDBGrid,smGeral;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Panel1: TPanel;
    smDBGrid2: TsmDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  with ClientDataSet1 do
  begin
    Close;
    FileName := 'Dados.xml';
    Open;
  end;

end;





end.
