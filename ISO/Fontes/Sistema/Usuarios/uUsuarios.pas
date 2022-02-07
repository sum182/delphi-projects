unit uUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBODataset, ImgList, DBActns, ActnList,
  smCadPadrao, StdCtrls, Buttons, ComCtrls, cxContainer, cxGroupBox,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ToolWin, cxCheckBox,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit;

type
  TfrmUsuarios = class(TfrmCadISO)
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    quCadUSUA_ID: TIntegerField;
    quCadUSUA_NOME: TStringField;
    quCadUSUA_SENHA: TStringField;
    quCadUSUA_LOGIN: TStringField;
    quCadUSUA_EMAIL: TStringField;
    quCadUSUA_ADMIN: TStringField;
    quCadDEPA_ID: TIntegerField;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    quDepa: TIBOQuery;
    dsDepa: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure OpenQuerys;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

procedure TfrmUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  OpenQuerys;
end;

procedure TfrmUsuarios.OpenQuerys;
begin
  quDepa.Close;
  quDepa.Open;

end;


initialization
  RegisterClass(TfrmUsuarios);

finalization
  UnRegisterClass(TfrmUsuarios);

end.
