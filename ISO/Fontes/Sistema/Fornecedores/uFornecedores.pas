unit uFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBODataset, ImgList, DBActns, ActnList,
  smCadPadrao, StdCtrls, Buttons, ComCtrls, cxContainer, cxGroupBox,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ToolWin, cxTextEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo;

type
  TfrmFornecedores = class(TfrmCadISO)
    cxGroupBox1: TcxGroupBox;
    edtNome: TcxDBTextEdit;
    edtFantasia: TcxDBTextEdit;
    edtEndereco: TcxDBTextEdit;
    edtNumero: TcxDBTextEdit;
    edtComplemento: TcxDBTextEdit;
    edtBairro: TcxDBTextEdit;
    edtCep: TcxDBTextEdit;
    edtCidade: TcxDBTextEdit;
    edtUf: TcxDBTextEdit;
    edtCGC: TcxDBTextEdit;
    edtEmail: TcxDBTextEdit;
    edtSite: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dtDataCadastro: TcxDBDateEdit;
    Label14: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label15: TLabel;
    quCadFORNE_ID: TIntegerField;
    quCadFORNE_NOME: TStringField;
    quCadFORNE_NOME_FANTASIA: TStringField;
    quCadFORNE_ENDERECO: TStringField;
    quCadFORNE_ENDERECO_NUMERO: TStringField;
    quCadFORNE_COMPLEMENTO: TStringField;
    quCadFORNE_BAIRRO: TStringField;
    quCadFORNE_CIDADE: TStringField;
    quCadFORNE_CEP: TStringField;
    quCadFORNE_UF: TStringField;
    quCadFORNE_CGC: TStringField;
    quCadFORNE_OBS: TMemoField;
    quCadFORNE_EMAIL: TStringField;
    quCadFORNE_SITE: TStringField;
    quCadFORNE_DT_CADASTRO: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

{$R *.dfm}

initialization
  RegisterClass(TfrmFornecedores);

finalization
  UnRegisterClass(TfrmFornecedores);

end.
