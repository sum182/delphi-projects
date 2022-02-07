unit uDmTreinamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDmTeste, DB, IBODataset, DBClient;

type
  TDmTreinamentos = class(TDmTeste)
    dsTipoTreinamento: TDataSource;
    quTipoTreinamento: TIBOQuery;
    quInstrutores: TIBOQuery;
    quInstituicao: TIBOQuery;
    dsIntrutores: TDataSource;
    dsIntituicao: TDataSource;
    quFunc: TIBOQuery;
    quDepa: TIBOQuery;
    quCargo: TIBOQuery;
    dsFunc: TDataSource;
    dsDepa: TDataSource;
    dsCargo: TDataSource;
    quTipoTreinamentoTRTI_ID: TIntegerField;
    quTipoTreinamentoTRTI_DESCR: TStringField;
    quInstrutoresINST_ID: TIntegerField;
    quInstrutoresINST_NOME: TStringField;
    quInstituicaoINTT_ID: TIntegerField;
    quInstituicaoINTT_DESCR: TStringField;
    quFuncFUNC_ID: TIntegerField;
    quFuncFUNC_NOME: TStringField;
    quFuncDEPA_ID: TIntegerField;
    quFuncCARG_ID: TIntegerField;
    quCargoCARG_ID: TIntegerField;
    quCargoCARG_NOME: TStringField;
    quCargoCARG_DESCR: TMemoField;
    quCargoCARG_SEX_MASC: TStringField;
    quCargoCARG_SEX_FEM: TStringField;
    quCargoCARG_IDADE: TIntegerField;
    quCargoCARG_EXPERIENCIA: TIntegerField;
    quCargoGRIN_MINIMA: TIntegerField;
    quCargoGRIN_DESEJAVEL: TIntegerField;
    quCargoCARG_HABILIDADES: TMemoField;
    quCargoCARG_EPIS: TMemoField;
    quCargoCARG_RESPONSABILIDADES: TMemoField;
    quCargoCARG_EXAMES: TMemoField;
    quParticipTemp: TIBOQuery;
    dsParticipTemp: TDataSource;
    quDepaDEPA_ID: TIntegerField;
    quDepaDEPA_DESCR: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
  var
  SParticipantes : String;
    { Public declarations }
  end;

var
  DmTreinamentos: TDmTreinamentos;

implementation

{$R *.dfm}

procedure TDmTreinamentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  quTipoTreinamento.Close;
  quTipoTreinamento.Open;
  quInstituicao.Close;
  quInstituicao.Open;
  quInstrutores.Close;
  quInstrutores.Open;
  quDepa.Close;
  quDepa.Open;
  quFunc.Close;
  quFunc.Open;
  quCargo.Close;
  quCargo.Open;
end;

end.
