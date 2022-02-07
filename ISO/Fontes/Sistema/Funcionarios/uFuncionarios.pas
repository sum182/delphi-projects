unit uFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBODataset, ImgList, DBActns, ActnList,
  smCadPadrao, StdCtrls, Buttons, ComCtrls, cxContainer, cxGroupBox,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ToolWin, cxTextEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmFuncionarios = class(TfrmCadISO)
    quCadFUNC_ID: TIntegerField;
    quCadFUNC_NOME: TStringField;
    quCadDEPA_ID: TIntegerField;
    cxGroupBox1: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    quDepa: TIBOQuery;
    dsDepa: TDataSource;
    Label3: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure OpenQuerys;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarios: TfrmFuncionarios;

implementation

{$R *.dfm}

procedure TfrmFuncionarios.FormCreate(Sender: TObject);
begin
  inherited;
    OpenQuerys;
end;

procedure TfrmFuncionarios.OpenQuerys;
begin
  quDepa.Close;
  quDepa.Open;
end;


initialization
  RegisterClass(TfrmFuncionarios);

finalization
  UnRegisterClass(TfrmFuncionarios);


end.
