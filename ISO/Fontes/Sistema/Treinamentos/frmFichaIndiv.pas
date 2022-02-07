unit frmFichaIndiv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadISO, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBODataset, ImgList, DBActns, ActnList,
  smCadPadrao, StdCtrls, Buttons, ComCtrls, cxContainer, cxGroupBox,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ToolWin, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmFichaIndividual = class(TfrmCadISO)
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxGroupBox1: TcxGroupBox;
    quFunc: TIBOQuery;
    quDepa: TIBOQuery;
    dsFunc: TDataSource;
    dsDepa: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFichaIndividual: TfrmFichaIndividual;

implementation

{$R *.dfm}

procedure TfrmFichaIndividual.FormCreate(Sender: TObject);
begin
  inherited;
  quFunc.Close;
  quFunc.Open;
  quDepa.Close;
  quDepa.Open;
end;

end.
