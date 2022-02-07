unit untAnaliseGeralGuias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, smCadFD, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList,
  smCadPadrao, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  smDBGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.ToolWin, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxSpinEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxTextEdit, cxGroupBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLabel, cxCurrencyEdit, Vcl.Menus, cxButtons, dxCore, cxDateUtils,
  cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTimeEdit, cxCheckBox, cxDBLabel, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,cxGridExportLink;

type
  TfrmAnaliseGeralGuias = class(TfrmCadFD)
    gbxDadosGuia: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    edtData: TcxDateEdit;
    cxLabel2: TcxLabel;
    Label11: TLabel;
    Label12: TLabel;
    btnPesquisar: TcxButton;
    fdqStatus: TFDQuery;
    dsStatus: TDataSource;
    fdqTipoServico: TFDQuery;
    fdqTipoServicoID_TIPO_SERVICO: TIntegerField;
    fdqTipoServicoDESCRICAO: TStringField;
    dsTipoServico: TDataSource;
    cmbTipoServico: TcxLookupComboBox;
    cmbStatus: TcxLookupComboBox;
    fdqLotes: TFDQuery;
    dsLotes: TDataSource;
    cmbLotes: TcxLookupComboBox;
    edtCarteirinha: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edtGuia: TcxTextEdit;
    Label14: TLabel;
    cxGroupBox2: TcxGroupBox;
    Label19: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    chkGuiaLida: TcxDBCheckBox;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label16: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label10: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label15: TLabel;
    fdqCabecalho: TFDQuery;
    dsCabecalho: TDataSource;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    fdqCabecalhoID_GUIAS_CABECALHO: TIntegerField;
    fdqCabecalhoID_GUIAS_GRUPO_LOTE: TIntegerField;
    fdqCabecalhoTIPO_TRANSACAO: TStringField;
    fdqCabecalhoSEQUENCIAL_TRANSACAO: TIntegerField;
    fdqCabecalhoDATA_REGISTRO_TRANSACAO: TDateField;
    fdqCabecalhoHORA_REGISTRO_TRANSACAO: TTimeField;
    fdqCabecalhoREGISTRO_ANS: TStringField;
    fdqCabecalhoVERSAO_PADRAO: TStringField;
    fdqCabecalhoFINALIZADO: TStringField;
    fdqCabecalhoCANCELADO: TStringField;
    fdqCadID_GUIAS_DETALHE: TIntegerField;
    fdqCadID_GUIAS_CABECALHO: TIntegerField;
    fdqCadREGISTRO_ANS: TStringField;
    fdqCadDATA_EMISSAO_GUIA: TDateField;
    fdqCadNUMERO_GUIA_PRESTADOR: TIntegerField;
    fdqCadDADOS_AUTORIZACAO: TStringField;
    fdqCadNUMERO_CARTEIRA: TIntegerField;
    fdqCadNOME_BENEFICIARIO: TStringField;
    fdqCadNOME_PLANO: TStringField;
    fdqCadNOME_CONTRATADO1: TStringField;
    fdqCadNOME_PROFISSIONAL: TStringField;
    fdqCadSIGLA_CONSELHO: TStringField;
    fdqCadNUMERO_CONSELHO: TStringField;
    fdqCadUF_CONSELHO: TStringField;
    fdqCadNOME_CONTRATADO2: TStringField;
    fdqCadCARATER_ATENDIMENTO: TStringField;
    fdqCadTIPO_SAIDA: TStringField;
    fdqCadTIPO_ATENDIMENTO: TStringField;
    fdqCadCODIGO: TStringField;
    fdqCadTIPO_TABELA: TStringField;
    fdqCadDESCRICAO: TStringField;
    fdqCadDATA: TDateField;
    fdqCadQUANTIDADE_REALIZADA: TIntegerField;
    fdqCadVALOR: TFloatField;
    fdqCadVALORTOTAL_1: TFloatField;
    fdqCadVALORTOTAL_2: TFloatField;
    fdqCadLIDA: TStringField;
    fdqCadRETIRADA: TStringField;
    fdqCadDATA_LEITURA: TDateField;
    fdqCadHORA_LEITURA: TTimeField;
    fdqCadID_USUARIO_LEITURA: TIntegerField;
    fdqCadID_LEITURA_STATUS: TIntegerField;
    fdqCadSEQUENCIAL_TRANSACAO: TIntegerField;
    fdqCadTIPO_SERVICO: TStringField;
    fdqCadSTATUS: TStringField;
    fdqCadLOGIN: TStringField;
    fdqCadDT_IMPORTACAO: TDateField;
    fdqCadHR_IMPORTACAO: TTimeField;
    cxGroupBox3: TcxGroupBox;
    Label18: TLabel;
    Label17: TLabel;
    Label13: TLabel;
    cxDBTimeEdit2: TcxDBTimeEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    Label20: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    fdqBuscaID_GUIAS_DETALHE: TIntegerField;
    fdqBuscaID_GUIAS_CABECALHO: TIntegerField;
    fdqBuscaREGISTRO_ANS: TStringField;
    fdqBuscaDATA_EMISSAO_GUIA: TDateField;
    fdqBuscaNUMERO_GUIA_PRESTADOR: TIntegerField;
    fdqBuscaDADOS_AUTORIZACAO: TStringField;
    fdqBuscaNUMERO_CARTEIRA: TIntegerField;
    fdqBuscaNOME_BENEFICIARIO: TStringField;
    fdqBuscaNOME_PLANO: TStringField;
    fdqBuscaNOME_CONTRATADO1: TStringField;
    fdqBuscaNOME_PROFISSIONAL: TStringField;
    fdqBuscaSIGLA_CONSELHO: TStringField;
    fdqBuscaNUMERO_CONSELHO: TStringField;
    fdqBuscaUF_CONSELHO: TStringField;
    fdqBuscaNOME_CONTRATADO2: TStringField;
    fdqBuscaCARATER_ATENDIMENTO: TStringField;
    fdqBuscaTIPO_SAIDA: TStringField;
    fdqBuscaTIPO_ATENDIMENTO: TStringField;
    fdqBuscaCODIGO: TStringField;
    fdqBuscaTIPO_TABELA: TStringField;
    fdqBuscaDESCRICAO: TStringField;
    fdqBuscaDATA: TDateField;
    fdqBuscaQUANTIDADE_REALIZADA: TIntegerField;
    fdqBuscaVALOR: TFloatField;
    fdqBuscaVALORTOTAL_1: TFloatField;
    fdqBuscaVALORTOTAL_2: TFloatField;
    fdqBuscaLIDA: TStringField;
    fdqBuscaRETIRADA: TStringField;
    fdqBuscaDATA_LEITURA: TDateField;
    fdqBuscaHORA_LEITURA: TTimeField;
    fdqBuscaID_USUARIO_LEITURA: TIntegerField;
    fdqBuscaID_LEITURA_STATUS: TIntegerField;
    fdqBuscaSEQUENCIAL_TRANSACAO: TIntegerField;
    fdqBuscaTIPO_SERVICO: TStringField;
    fdqBuscaSTATUS: TStringField;
    cxGroupBox4: TcxGroupBox;
    lblStatus6: TcxLabel;
    lblStatus4: TcxLabel;
    lblStatus3: TcxLabel;
    lblStatus2: TcxLabel;
    lblStatus1: TcxLabel;
    lblStatus5: TcxLabel;
    fdqBuscaIntCalcStatus1: TIntegerField;
    fdqBuscaIntCalcStatus2: TIntegerField;
    fdqBuscaIntCalcStatus3: TIntegerField;
    fdqBuscaIntCalcStatus4: TIntegerField;
    fdqBuscaIntCalcStatus5: TIntegerField;
    fdqBuscaIntCalcStatus6: TIntegerField;
    fdqBuscaAgregStatus1: TAggregateField;
    fdqBuscaAgregStatus3: TAggregateField;
    fdqBuscaAgregStatus4: TAggregateField;
    fdqBuscaAgregStatus5: TAggregateField;
    fdqBuscaAgregStatus6: TAggregateField;
    fdqBuscaAgregStatus2: TAggregateField;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    gbxGrid: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1NOME_BENEFICIARIO: TcxGridDBColumn;
    cxGrid2DBTableView1Data: TcxGridDBColumn;
    cxGrid2DBTableView1NUMERO_CARTEIRA: TcxGridDBColumn;
    cxGrid2DBTableView1NUMERO_GUIA_PRESTADOR: TcxGridDBColumn;
    cxGrid2DBTableView1TIPO_SERVICO: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid2DBTableView1SEQUENCIAL_TRANSACAO: TcxGridDBColumn;
    cxGrid2DBTableView1NOME_PLANO: TcxGridDBColumn;
    cxGrid2DBTableView1VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1DATA_LEITURA: TcxGridDBColumn;
    cxGrid2DBTableView1HORA_LEITURA: TcxGridDBColumn;
    cxGrid2DBTableView1STATUS: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxLabel5: TcxLabel;
    lblTotalRegistros: TcxLabel;
    cxDBCheckBox5: TcxDBCheckBox;
    fdqCadCADASTRADA_MANUALMENTE: TStringField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btnExportExcel: TToolButton;
    Salvar: TSaveDialog;
    cxGrid2DBTableView1CADASTRADA_MANUALMENTE: TcxGridDBColumn;
    fdqBuscaCADASTRADA_MANUALMENTE: TStringField;
    cxGrid2DBTableView1RETIRADA: TcxGridDBColumn;
    cxGrid2DBTableView1LIDA: TcxGridDBColumn;
    fdqBuscaLOTE_FINALIZADO: TStringField;
    fdqBuscaLOTE_CANCELADO: TStringField;
    cxGrid2DBTableView1LOTE_FINALIZADO: TcxGridDBColumn;
    cxGrid2DBTableView1LOTE_CANCELADO: TcxGridDBColumn;
    fdqCadGUIA_EM_BRANCO: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    fdqBuscaGUIA_EM_BRANCO: TStringField;
    cxGrid2DBTableView1Guia_em_Branco: TcxGridDBColumn;
    fdqCadGUIA_COM_DESCONTO: TStringField;
    fdqBuscaGUIA_COM_DESCONTO: TStringField;
    cxDBCheckBox6: TcxDBCheckBox;
    cxGrid2DBTableView1GUIA_COM_DESCONTO: TcxGridDBColumn;
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure fdqCadBeforeEdit(DataSet: TDataSet);
    procedure AcApplyUpdateExecute(Sender: TObject);
    procedure AcCancelarExecute(Sender: TObject);
    procedure fdqBuscaCalcFields(DataSet: TDataSet);
    procedure AcImprimirExecute(Sender: TObject);
    procedure btnExportExcelClick(Sender: TObject);
    procedure PaCoPadraoChange(Sender: TObject);
    procedure PaCoPadraoChanging(Sender: TObject; var AllowChange: Boolean);
    procedure chkGuiaLidaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ValidarPesquisa;
    procedure OpenQuerys;
    procedure Pesquisar;
    procedure SetSQLPesquisa;
    procedure SetPesquisaFiltroLote;
    procedure SetPesquisaFiltroData;
    procedure SetPesquisaFiltroTipodeServico;
    procedure SetPesquisaFiltroStatus;
    procedure SetPesquisaFiltroCarteirinha;
    procedure SetPesquisaFiltroGuia;
    procedure SetPesquisaTotalRegistros;
    procedure SetLabelsStatus;
  public
    { Public declarations }
  end;

var
  frmAnaliseGeralGuias: TfrmAnaliseGeralGuias;

implementation

{$R *.dfm}

uses untDM, smDB, smGeral, smMensagens;

procedure TfrmAnaliseGeralGuias.AcApplyUpdateExecute(Sender: TObject);
begin
  fdqCabecalho.Post;
  inherited;
end;

procedure TfrmAnaliseGeralGuias.AcCancelarExecute(Sender: TObject);
begin
  fdqCabecalho.Cancel;
  inherited;
end;

procedure TfrmAnaliseGeralGuias.AcImprimirExecute(Sender: TObject);
begin
  inherited;
   dxComponentPrinter1Link1.Preview(true);
end;

procedure TfrmAnaliseGeralGuias.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TfrmAnaliseGeralGuias.chkGuiaLidaClick(Sender: TObject);
begin
  inherited;
  if not(chkGuiaLida.Checked) then
  begin
    fdqCadDATA_LEITURA.Clear;
    fdqCadHORA_LEITURA.Clear;
    fdqCadID_USUARIO_LEITURA.Clear;
  end
  else
  begin
    fdqCadDATA_LEITURA.AsDateTime:=Now;
    fdqCadHORA_LEITURA.AsDateTime:=Now;
    fdqCadID_USUARIO_LEITURA.AsInteger:=Dm.GetUsuario;
  end

end;

procedure TfrmAnaliseGeralGuias.cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  ShowTabCadastro;
end;

procedure TfrmAnaliseGeralGuias.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ShowTabCadastro;
end;

procedure TfrmAnaliseGeralGuias.fdqBuscaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if fdqBusca.FieldByName('ID_LEITURA_STATUS').AsInteger = 1 then
    fdqBuscaIntCalcStatus1.AsInteger:= 1;

  if fdqBusca.FieldByName('ID_LEITURA_STATUS').AsInteger = 2 then
    fdqBuscaIntCalcStatus2.AsInteger:= 1;

  if fdqBusca.FieldByName('ID_LEITURA_STATUS').AsInteger = 3 then
    fdqBuscaIntCalcStatus3.AsInteger:= 1;

  if fdqBusca.FieldByName('ID_LEITURA_STATUS').AsInteger = 4 then
    fdqBuscaIntCalcStatus4.AsInteger:= 1;

  if fdqBusca.FieldByName('ID_LEITURA_STATUS').AsInteger = 5 then
    fdqBuscaIntCalcStatus5.AsInteger:= 1;

  if fdqBusca.FieldByName('ID_LEITURA_STATUS').AsInteger = 6 then
    fdqBuscaIntCalcStatus6.AsInteger:= 1;
end;

procedure TfrmAnaliseGeralGuias.fdqCadBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  fdqCabecalho.Edit;
end;

procedure TfrmAnaliseGeralGuias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmAnaliseGeralGuias:=nil;
end;

procedure TfrmAnaliseGeralGuias.FormCreate(Sender: TObject);
begin
  inherited;
  CloseDataSets(self);
end;

procedure TfrmAnaliseGeralGuias.FormShow(Sender: TObject);
begin
  inherited;
  OpenQuerys;
  SetLabelsStatus;
end;

procedure TfrmAnaliseGeralGuias.OpenQuerys;
begin
  fdqTipoServico.Close;
  fdqTipoServico.Open;

  fdqStatus.Close;
  fdqStatus.Open;

  fdqLotes.Close;
  fdqLotes.Open;

  fdqCabecalho.Close;
  fdqCabecalho.Open;
end;

procedure TfrmAnaliseGeralGuias.PaCoPadraoChange(Sender: TObject);
begin
  inherited;
  btnImprimir.Visible:= (PaCoPadrao.ActivePageIndex = 0);
  btnExportExcel.Visible:= (PaCoPadrao.ActivePageIndex = 0);
end;

procedure TfrmAnaliseGeralGuias.PaCoPadraoChanging(Sender: TObject; var AllowChange: Boolean);
begin
  inherited;
  btnImprimir.Visible:= (PaCoPadrao.ActivePageIndex = 0);
  btnExportExcel.Visible:= (PaCoPadrao.ActivePageIndex = 0);

end;

procedure TfrmAnaliseGeralGuias.Pesquisar;
begin
  try
    ValidarPesquisa;
    try
      Wait(Self,'Buscando Informações');
      SetSQLPesquisa;
      SetPesquisaFiltroLote;
      SetPesquisaFiltroData;
      SetPesquisaFiltroTipodeServico;
      SetPesquisaFiltroStatus;
      SetPesquisaFiltroCarteirinha;
      SetPesquisaFiltroGuia;
      fdqBusca.Open;
      SetPesquisaTotalRegistros;
    except
      on E: Exception do
      begin
        WaitEnd(self);
        raise Exception.Create('Erro na pesquisa ' + E.Message);
      end;
    end;
  finally
    WaitEnd(self);
  end;

end;

procedure TfrmAnaliseGeralGuias.SetSQLPesquisa;
begin
  fdqBusca.Close;
  fdqBusca.SQL.Clear;
  fdqBusca.Params.Clear;
  fdqBusca.SQL.Add('SELECT ');
  fdqBusca.SQL.Add('GUIA.*,');
  fdqBusca.SQL.Add('CABEC.SEQUENCIAL_TRANSACAO,');
  fdqBusca.SQL.Add('CABEC.FINALIZADO AS LOTE_FINALIZADO,');
  fdqBusca.SQL.Add('CABEC.CANCELADO AS LOTE_CANCELADO,');
  fdqBusca.SQL.Add('TP.DESCRICAO AS  "TIPO_SERVICO",');
  fdqBusca.SQL.Add('STATUS.DESCRICAO AS STATUS');
  fdqBusca.SQL.Add('FROM GUIAS_DETALHE GUIA');
  fdqBusca.SQL.Add('INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_GUIAS_CABECALHO = GUIA.ID_GUIAS_CABECALHO)');
  fdqBusca.SQL.Add('INNER JOIN GUIAS_GRUPO_LOTE GRUPO ON (GRUPO.ID_GUIAS_GRUPO_LOTE = CABEC.ID_GUIAS_GRUPO_LOTE)');
  fdqBusca.SQL.Add('INNER JOIN TIPO_SERVICO TP ON (TP.ID_TIPO_SERVICO = GRUPO.ID_TIPO_SERVICO)');
  fdqBusca.SQL.Add('LEFT OUTER JOIN LEITURA_STATUS STATUS ON (STATUS.ID_LEITURA_STATUS = GUIA.ID_LEITURA_STATUS)');
  fdqBusca.SQL.Add('WHERE 1=1');
end;

procedure TfrmAnaliseGeralGuias.ValidarPesquisa;
begin
  if (
      (cmbLotes.Text = '') and
      (edtData.Text = '') and
      (cmbTipoServico.Text = '') and
      (cmbStatus.Text = '')and
      (edtCarteirinha.Text = '')and
      (edtGuia.Text = '')
     ) then
   begin
     Msg('É obrigatório o preenchimento de algum campo para filtrar a busca.',mtAviso);
     Abort;
   end;
end;

procedure TfrmAnaliseGeralGuias.btnExportExcelClick(Sender: TObject);
begin
  inherited;

  try
    Wait(self,'Exportando Informações');
    Salvar.FileName := Self.Caption + '_' + FormatDateTime('ddmmyyhhnn', Now);
    Salvar.Filter := 'Excel files (*.xls)|*.XLS';

    if Salvar.Execute then
    begin
      Application.ProcessMessages;
      ExportGridToExcel(Salvar.FileName, cxGrid2,False, True);
      Msg('Arquivo Gerado com sucesso!');
      edtData.SetFocus;
      fdqBusca.First;
    end;

  finally
    WaitEnd(self);
  end;

  Pesquisar;

end;

procedure TfrmAnaliseGeralGuias.SetPesquisaFiltroLote;
begin
  // Filtro de Lotes
  if cmbLotes.Text <> '' then
  begin
    fdqBusca.SQL.Add('AND CABEC.sequencial_transacao = :sequencial_transacao');
    fdqBusca.ParamByName('sequencial_transacao').AsString := cmbLotes.Text;
  end;
end;

procedure TfrmAnaliseGeralGuias.SetPesquisaFiltroData;
begin
  // Filtro de Data
  if (edtData.Text <> '') then
  begin
    fdqBusca.SQL.Add('AND GUIA.DATA = :DATA');
    fdqBusca.ParamByName('DATA').AsDate := edtData.Date;
  end;
end;

procedure TfrmAnaliseGeralGuias.SetPesquisaFiltroTipodeServico;
begin
  // Filtro de Tipo de Serviço
  if (cmbTipoServico.Text <> '') then
  begin
    fdqBusca.SQL.Add('AND GRUPO.ID_TIPO_SERVICO = :ID_TIPO_SERVICO');
    fdqBusca.ParamByName('ID_TIPO_SERVICO').AsInteger :=
      cmbTipoServico.EditValue;
  end;
end;

procedure TfrmAnaliseGeralGuias.SetPesquisaFiltroStatus;
begin
  // Filtro de Status
  if (cmbStatus.Text <> '') then
  begin
    fdqBusca.SQL.Add('AND GUIA.ID_LEITURA_STATUS = :ID_LEITURA_STATUS');
    fdqBusca.ParamByName('ID_LEITURA_STATUS').AsInteger :=
      cmbStatus.EditingValue;
  end;
end;

procedure TfrmAnaliseGeralGuias.SetLabelsStatus;
var
  LabelStatus:TcxLabel;
begin
  if (fdqStatus.State in [dsInactive]) then
    Exit;

  fdqStatus.First;
  while not(fdqStatus.Eof) do
  begin
    LabelStatus:=  (FindComponent('lblStatus' + fdqStatus.FieldByName('id_leitura_status').AsString) as TcxLabel);

    if (LabelStatus <> nil) then
      LabelStatus.Caption:= fdqStatus.FieldByName('descricao').AsString + ':';

    fdqStatus.Next;
  end;
end;

procedure TfrmAnaliseGeralGuias.SetPesquisaFiltroCarteirinha;
begin
  // Filtro de Número de Carteirinha
  if (edtCarteirinha.Text <> '') then
  begin
    fdqBusca.SQL.Add('AND GUIA.NUMERO_CARTEIRA = :NUMERO_CARTEIRA');
    fdqBusca.ParamByName('NUMERO_CARTEIRA').AsInteger :=
      StrToInt(edtCarteirinha.Text);
  end;
end;

procedure TfrmAnaliseGeralGuias.SetPesquisaFiltroGuia;
begin
  // Filtro de Numero de Guia do Prestador
  if (edtGuia.Text <> '') then
  begin
    fdqBusca.SQL.Add('AND GUIA.NUMERO_GUIA_PRESTADOR = :NUMERO_GUIA_PRESTADOR');
    fdqBusca.ParamByName('NUMERO_GUIA_PRESTADOR').AsInteger :=
      StrToInt(edtGuia.Text);
  end;
end;

procedure TfrmAnaliseGeralGuias.SetPesquisaTotalRegistros;
begin
  if not (fdqBusca.State in [dsInactive]) then
  begin
    lblTotalRegistros.Caption:= IntToStr(fdqBusca.RecordCount);
  end;
end;

end.
