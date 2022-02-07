unit uTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  TfrmTeste = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1ID: TIntegerField;
    ClientDataSet1DESC: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTeste: TfrmTeste;

implementation

uses uDM;

{$R *.dfm}

procedure TfrmTeste.BitBtn1Click(Sender: TObject);
begin
  ClientDataSet1.ApplyUpdates(-1);
end;

procedure TfrmTeste.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self   := nil;
end;

procedure TfrmTeste.FormCreate(Sender: TObject);
begin
  with ClientDataSet1 do
  begin
    Close;
    Open;
  end;
end;

end.
