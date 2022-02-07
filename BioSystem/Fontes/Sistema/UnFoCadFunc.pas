unit UnFoCadFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnFoCadastroPadrao, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, SqlExpr,
  Provider, DBClient, RzButton, RzPanel, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, ExtCtrls, cxDropDownEdit, cxCalendar,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, StdCtrls, cxContainer,
  cxGroupBox, cxPC, cxImage, cxDBEdit;

type
  TFoCadFunc = class(TFoCadastroPadrao)
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ImFunc: TcxDBImage;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxGroupBox2: TcxGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    DBGrConsultaDBTaViFUNC_ID: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_NOME: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_NOMEPAI: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_NOMEMAE: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_RG: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_CPF: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_DTNASCIMENTO: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_ESTADOCIVIL: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_NACIONALIDADE: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_EMAIL: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_FOTO: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_ENDERECO: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_ENDNUMERO: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_BAIRRO: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_CIDADE: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_ESTADO: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_CEP: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_COMPLEMENTO: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_DTCONTRATO: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_DTRECISAO: TcxGridDBColumn;
    DBGrConsultaDBTaViFUNC_CLT: TcxGridDBColumn;
    RzBitBtn1: TRzBitBtn;
    cxDBMaskEdit4: TcxDBMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure CiDaCadastroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoCadFunc: TFoCadFunc;

implementation

uses UnGeral;

{$R *.dfm}
procedure TFoCadFunc.FormShow(Sender: TObject);
begin

  Tabela        := ' FUNCIONARIOS';
  Ordem         := ' ORDER BY FUNC_NOME ';
  FiltroPadrao  := ' AND FUNC_ID <> 0 ';
  inherited;

end;

procedure TFoCadFunc.RzBitBtn1Click(Sender: TObject);
begin
  inherited;
  ImFunc.LoadFromFile;
end;

procedure TFoCadFunc.CiDaCadastroBeforePost(DataSet: TDataSet);
begin
  DATASET.FieldValues['FUNC_ID']:=GetGenerator('GEN_FUNCIONARIOS',1);
  inherited;

end;

Initialization
  RegisterClass(TFoCadFunc);

Finalization
  UnRegisterClass(TFoCadFunc);
end.
