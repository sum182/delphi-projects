unit untFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxCalendar, cxGroupBox, ppCtrls, ppPrnabl,
  ppClass, ppBands, ppCache, ppDesignLayer, ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppVar,
  dxGDIPlusClasses, Vcl.Grids, Vcl.DBGrids;

type
  TfrmFechamento = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Label11: TLabel;
    edtDataInicial: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnPesquisar: TcxButton;
    cmbTipoServico: TcxLookupComboBox;
    edtDataFinal: TcxDateEdit;
    cxLabel1: TcxLabel;
    fdqPesquisa: TFDQuery;
    dsPesquisa: TDataSource;
    cxGroupBox2: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_SERVICO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_IMPORTADO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_LIDO: TcxGridDBColumn;
    cxGrid1DBTableView1REGISTROS: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    fdqPesquisaLOTE: TIntegerField;
    fdqPesquisaTIPO_SERVICO: TStringField;
    fdqPesquisaDATA: TDateField;
    fdqPesquisaVALOR_IMPORTADO: TFloatField;
    fdqPesquisaVALOR_LIDO: TFloatField;
    fdqPesquisaREGISTROS: TIntegerField;
    fdqTipoServico: TFDQuery;
    fdqTipoServicoID_TIPO_SERVICO: TIntegerField;
    fdqTipoServicoDESCRICAO: TStringField;
    dsTipoServico: TDataSource;
    btnSair: TcxButton;
    ppPesquisa: TppDBPipeline;
    ppReport: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppImage2: TppImage;
    ppLabel8: TppLabel;
    ppLine3: TppLine;
    ppDBText5: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLine4: TppLine;
    btnGerarRelatorio: TcxButton;
    fdqPesquisaVALOR_IMPORTADO_COM_DESC: TFloatField;
    cxGrid1DBTableView1VALOR_IMPORTADO_COM_DESC: TcxGridDBColumn;
    ppLabel11: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc4: TppDBCalc;
    fdqPesquisaDiferenca: TCurrencyField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    ppLabel12: TppLabel;
    ppDBText7: TppDBText;
    ppDBCalc3: TppDBCalc;
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGerarRelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fdqPesquisaCalcFields(DataSet: TDataSet);
  private
    procedure SetValoresIniciais;
    procedure ValidarPesquisa;
    procedure Pesquisar;
    procedure OpenQuerys;
  public
    { Public declarations }
  end;

var
  frmFechamento: TfrmFechamento;

implementation

{$R *.dfm}

uses untDM, smGeral, smMensagens, smDB;

{ TfrmFechamento }

procedure TfrmFechamento.btnPesquisarClick(Sender: TObject);
begin
  try
    Wait(self,'Buscando Informações');
    cxGrid1DBTableView1.DataController.DataSource:=dsPesquisa;
    ValidarPesquisa;
    Pesquisar;
  finally
    WaitEnd(self);
  end;
end;

procedure TfrmFechamento.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFechamento.fdqPesquisaCalcFields(DataSet: TDataSet);
begin
  fdqPesquisaDiferenca.AsCurrency := fdqPesquisaVALOR_IMPORTADO_COM_DESC.AsCurrency - fdqPesquisaVALOR_LIDO.AsCurrency;
end;

procedure TfrmFechamento.btnGerarRelatorioClick(Sender: TObject);
begin
  try
    cxGrid1DBTableView1.DataController.DataSource:= nil;
    fdqPesquisa.DisableControls;
    ppReport.Print;
  finally
    cxGrid1DBTableView1.DataController.DataSource:= dsPesquisa;
    fdqPesquisa.EnableControls;
  end;

end;

procedure TfrmFechamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmFechamento:=nil;
end;

procedure TfrmFechamento.FormShow(Sender: TObject);
begin
  //CloseDataSets(self);
  OpenQuerys;
  SetValoresIniciais;
end;

procedure TfrmFechamento.OpenQuerys;
begin
  fdqTipoServico.Close;
  fdqTipoServico.Open;

  fdqPesquisa.Close;
end;

procedure TfrmFechamento.Pesquisar;
begin
  fdqPesquisa.Close;
  fdqPesquisa.ParamByName('DT_INI').AsDate:= edtDataInicial.Date;
  fdqPesquisa.ParamByName('DT_FIM').AsDate:= edtDataFinal.Date;
  fdqPesquisa.ParamByName('ID_TIPO_SERVICO').AsInteger:= cmbTipoServico.EditValue;
  fdqPesquisa.Open;
end;

procedure TfrmFechamento.SetValoresIniciais;
begin
  edtDataInicial.Text:= GetFirstDay;
  edtDataFinal.Text:= GetLastDay;
end;

procedure TfrmFechamento.ValidarPesquisa;
begin
  if edtDataInicial.Text = '' then
  begin
    Msg('É obrigatório o preenchimento do campo Data Iinicial!',mtAviso);
    edtDataInicial.SetFocus;
    Abort;
  end;


  if edtDataFinal.Text = '' then
  begin
    Msg('É obrigatório o preenchimento do campo Final!',mtAviso);
    edtDataFinal.SetFocus;
    Abort;
  end;


  if cmbTipoServico.Text = '' then
  begin
    Msg('É obrigatório o preenchimento do campo Tipo de Serviço!',mtAviso);
    cmbTipoServico.SetFocus;
    Abort;
  end;
end;

end.
