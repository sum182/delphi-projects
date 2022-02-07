unit uTesteGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, DBXOracle, FMTBcd, Grids, DBGrids, DBClient, DB,
  SqlExpr, Provider, StdCtrls, Buttons, ADODB;

type
  TfrmTeste = class(TForm)
    dsTeste: TDataSource;
    DBGrid1: TDBGrid;
    sqlTeste: TADODataSet;
    dspTeste: TDataSetProvider;
    cdsTeste: TClientDataSet;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure OpenQuerys;
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
  with cdsteste do
  begin
    Append;
  end;
end;

procedure TfrmTeste.BitBtn2Click(Sender: TObject);
begin
  with cdsTEste do
  begin

    if state in [dsInsert,dsEdit] Then
      Post;

    ApplyUpdates(-1);
  end;
end;

procedure TfrmTeste.BitBtn3Click(Sender: TObject);
begin
  with cdsTEste do
  begin
    Cancel;
  end;
end;

procedure TfrmTeste.BitBtn4Click(Sender: TObject);
begin
  with cdsTEste do
  begin
    Edit;
  end;
end;

procedure TfrmTeste.BitBtn5Click(Sender: TObject);
begin
  with cdsTEste do
  begin
     Delete;
     ApplyUpdates(-1);
  end;
end;

procedure TfrmTeste.FormCreate(Sender: TObject);
begin
  OpenQuerys;
end;

procedure TfrmTeste.OpenQuerys;
begin
  with cdsTeste do
  begin
    close;
    open;
  end;
end;

end.
