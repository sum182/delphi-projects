unit untPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListView.Types, MultiDetailAppearanceU, FMX.ListView,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.ListBox, FMX.Layouts, FMX.TabControl, Data.DB, Datasnap.DBClient,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, FMX.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Layout1: TLayout;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    lstMnuMain: TListBox;
    lblTipoCombustivel: TListBoxItem;
    cmbTipoCombustivel: TComboBox;
    lbKMs: TListBoxItem;
    edtKMs: TEdit;
    lbLitros: TListBoxItem;
    edtLitros: TEdit;
    ListBoxItem2: TListBoxItem;
    btnCalcular: TButton;
    lstHistorico: TListView;
    cdsHistorico: TClientDataSet;
    cdsHistoricoData: TDateTimeField;
    cdsHistoricoKMs: TFloatField;
    cdsHistoricoLitros: TFloatField;
    cdsHistoricoResultado: TFloatField;
    cdsHistoricoTipoCombustivel: TStringField;
    cdsHistoricoItemExibirListView: TStringField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    TabItem3: TTabItem;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    btnLimparHistorico: TButton;
    StyleBookAndroid: TStyleBook;
    StyleBookDefaut: TStyleBook;
    lblResultado: TListBoxItem;
    procedure FormCreate(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure cdsHistoricoCalcFields(DataSet: TDataSet);
    procedure edtKMsChange(Sender: TObject);
    procedure edtLitrosChange(Sender: TObject);
    procedure edtKMsKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure edtLitrosKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure edtKMsKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure btnLimparHistoricoClick(Sender: TObject);
    procedure cmbTipoCombustivelChange(Sender: TObject);
  private
    fKMs:Double;
    fLitros:Double;
    fResultado: Double;
    fTipoCombustivel:string;
    procedure Calcular;
    procedure SetButtons;
    procedure OpenXML;
    procedure SetHistorico;
    procedure SetStyle;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

uses smGeralFMX,System.IOUtils;

{ TfrmPrincipal }

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  Calcular;
end;

procedure TfrmPrincipal.btnLimparHistoricoClick(Sender: TObject);
begin
  if not IsSysOSAndroid then
    if MessageDlg('Deseja apagar todo histórico?', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes,TMsgDlgBtn.mbNo], 0) = mrNo then
      Exit;

  cdsHistorico.Close;
  cdsHistorico.Open;
  cdsHistorico.First;
  while not(cdsHistorico.Eof) do
    cdsHistorico.Delete;
  ShowMessage('Limpeza de Histórico realizado com sucesso.');
end;

procedure TfrmPrincipal.Calcular;
begin
   try
    fKms:= StrToFloatDef(edtKMs.Text,0);
    fLitros:= StrToFloatDef(edtLitros.Text,0);
    fTipoCombustivel:= cmbTipoCombustivel.ListItems[cmbTipoCombustivel.ItemIndex].ItemData.Text;
    fResultado:=fKms/fLitros;
    lblResultado.Text:= 'O consumo foi de ' + FormatFloat('#,##0.00',fResultado) + ' KMs por litro';

    edtKMs.Text:= '';
    edtLitros.Text:= '';

    SetHistorico;
    cdsHistorico.Close;
    cdsHistorico.Open;
  except on  E:Exception do
    ShowMessage('Erro ao calcular: ' + E.Message)
  end;

end;

procedure TfrmPrincipal.cdsHistoricoCalcFields(DataSet: TDataSet);
begin
  cdsHistoricoItemExibirListView.AsString := 'Data: ' + DateToStr(cdsHistoricoData.AsDateTime) +
                                             ' Consumo: '+ FormatFloat('0.00',cdsHistoricoResultado.AsFloat);

end;

procedure TfrmPrincipal.cmbTipoCombustivelChange(Sender: TObject);
begin
  SetButtons;
end;

procedure TfrmPrincipal.edtKMsChange(Sender: TObject);
begin
  SetButtons;
end;

procedure TfrmPrincipal.edtKMsKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  SetButtons;
end;

procedure TfrmPrincipal.edtKMsKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  SetButtons;
end;

procedure TfrmPrincipal.edtLitrosChange(Sender: TObject);
begin
  SetButtons;
end;

procedure TfrmPrincipal.edtLitrosKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  SetButtons;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  lblResultado.Text:='';
  SetStyle;
  OpenXML;
  SetButtons;
  TabControl1.ActiveTab:=TabItem1;
end;

procedure TfrmPrincipal.OpenXML;
var
  Path:String;
begin
  try
    cdsHistorico.Close;

    if (IsSysOSAndroid) or (IsSysOSAndroid) then
      Path:=  TPath.Combine(TPath.GetDocumentsPath, 'data.xml');


    if (IsSysOSWindows)then
      Path:= 'C:\Projetos\FuelApp\db\data.xml';

    cdsHistorico.FileName:= Path;
    cdsHistorico.Open;
    //ShowMessage('xml aberto');

  except on E:Exception do
    ShowMessage('Erro ao abrir XML ' + #13 + E.message);
  end;

end;

procedure TfrmPrincipal.SetButtons;
begin
  btnCalcular.Enabled:= ((StrToIntDef(edtLitros.Text,0) > 0) and
                        (StrToIntDef(edtKMs.Text,0) > 0) and
                        (cmbTipoCombustivel.ItemIndex >= 0));
end;

procedure TfrmPrincipal.SetHistorico;
begin
  if (cdsHistorico.State in [dsInactive]) then
    Exit;

  cdsHistorico.Append;
  cdsHistoricoData.AsDateTime:= Date;
  cdsHistoricoKMs.AsFloat:=  fKMs;
  cdsHistoricoLitros.AsFloat:= fLitros;
  cdsHistoricoResultado.AsFloat:= fResultado;
  cdsHistoricoTipoCombustivel.AsString := fTipoCombustivel;
  cdsHistorico.Post;
end;

procedure TfrmPrincipal.SetStyle;
begin
  if (IsSysOSAndroid) and (frmPrincipal.StyleBook <> StyleBookAndroid)then
    frmPrincipal.StyleBook := StyleBookAndroid;
end;

end.
