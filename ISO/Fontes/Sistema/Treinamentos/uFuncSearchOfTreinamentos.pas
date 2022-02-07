unit uFuncSearchOfTreinamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ExtCtrls, DBClient, Provider, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, IBODataset, uTreinamentos;

type
  TfrmFuncSearchOfTreinamentos = class(TForm)
    quFuncionarios: TIBOQuery;
    dsFuncionarios: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dspFuncionarios: TDataSetProvider;
    cdsFuncionarios: TClientDataSet;
    Bevel1: TBevel;
    cdsFuncionariosFUNC_ID: TIntegerField;
    cdsFuncionariosFUNC_NOME: TStringField;
    cdsFuncionariosDEPA_ID: TIntegerField;
    cdsFuncionariosCARG_ID: TIntegerField;
    cxGrid1DBTableView1FUNC_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1DEPA_ID: TcxGridDBColumn;
    cxGrid1DBTableView1SELECIONADO: TcxGridDBColumn;
    Bevel2: TBevel;
    btnOK: TcxButton;
    cxButton2: TcxButton;
    quFuncionariosFUNC_ID: TIntegerField;
    quFuncionariosFUNC_NOME: TStringField;
    quFuncionariosDEPA_ID: TIntegerField;
    quFuncionariosCARG_ID: TIntegerField;
    cdsFuncionariosSelecionado: TStringField;
    quFuncionariosSELECIONADO: TStringField;
    procedure btnOKClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncSearchOfTreinamentos: TfrmFuncSearchOfTreinamentos;

implementation

{$R *.dfm}

procedure TfrmFuncSearchOfTreinamentos.btnOKClick(Sender: TObject);
begin
  with frmTreinamentos,cdsFuncionarios do
  begin
    First;
    while not(Eof) do
    begin
      if cdsFuncionariosSELECIONADO.AsString = 'TRUE' then
      begin
        quPerticipantes.Append;
        quPerticipantesFUNC_ID.AsInteger:=  cdsFuncionariosFUNC_ID.AsInteger;
        quPerticipantes.Post;
      end;
      Next;
    end;
  end;

  Close;
end;

procedure TfrmFuncSearchOfTreinamentos.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmFuncSearchOfTreinamentos.FormShow(Sender: TObject);
begin
  cdsFuncionarios.Close;
  cdsFuncionarios.Open;
end;

initialization
  RegisterClass(TfrmFuncSearchOfTreinamentos);

finalization
  UnRegisterClass(TfrmFuncSearchOfTreinamentos);
end.
