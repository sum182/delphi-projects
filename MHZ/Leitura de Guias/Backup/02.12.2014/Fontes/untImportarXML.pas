unit untImportarXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, FileCtrl,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxGroupBox, Data.DB, Datasnap.DBClient, Vcl.Menus, cxButtons,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxCheckBox, cxLabel, cxPC, Vcl.Grids, Vcl.DBGrids,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, Vcl.ExtCtrls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar;

type
  TfrmImportarXML = class(TForm)
    OpenDialog1: TOpenDialog;
    gbxBotoes: TcxGroupBox;
    pgtControl: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    gbxArquivosSelecionados: TcxGroupBox;
    lstbxArquivos: TListBox;
    btnAbrirArquivos: TcxButton;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    gbxLog: TcxGroupBox;
    memoLog: TMemo;
    cxLabel1: TcxLabel;
    chkBuscarLeiturasRealizadas: TcxCheckBox;
    btnVoltar: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_TIPO_SERVICO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    btnSair: TcxButton;
    btnImportar: TcxButton;
    btnAvancar: TcxButton;
    btnNovo: TcxButton;
    gbxImportarGuiasLidas: TcxGroupBox;
    lblSelecioneGrupoLotes: TcxLabel;
    gbxPesquisaGrupoLotes: TcxGroupBox;
    edtDataGuaisRealizadas: TcxDateEdit;
    btnPesquisarGuiasRealizadas: TcxButton;
    cxLabel2: TcxLabel;
    gbxGrupoLotes: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1DT_IMPORTACAO: TcxGridDBColumn;
    cxGridDBTableView1HR_IMPORTACAO: TcxGridDBColumn;
    cxGridDBTableView1USUARIO: TcxGridDBColumn;
    cxGridDBTableView1TIPO_SERVICO: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    gbxLotes: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1SEQUENCIAL_TRANSACAO: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    procedure btnAbrirArquivosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnPesquisarGuiasRealizadasClick(Sender: TObject);
    procedure chkBuscarLeiturasRealizadasClick(Sender: TObject);
    procedure edtDataGuaisRealizadasPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    IdCabecalho:Integer;
    IdGrupoLote:Integer;
    DiretorioApp: string;
    DiretorioImportando: string;
    DiretorioImportados: string;
    DiretorioConvertidos: string;
    DiretorioXTR: string;
    DiretorioErroImportacao: string;


    procedure CriarDiretorio(Diretorio: string);
    procedure DeletarArquivo(NomeArquivo: string);
    procedure MoverArquivo(Origem, Destino, Arquivo: String);
    procedure ConverterArquivo(ArquivoImportado: string);
    procedure ImportarArquivo(NomeArquivo: string);
    procedure SetDiretorios;

    function GetData(DataStr:String):TDateTime;
    function GetValor(ValorStr:String):Currency;
    procedure OpenXMLTransformProvider(Arquivo: string);
    procedure OpenCdsXML;
    procedure SalvarDadosGrupoLote;
    procedure SalvarDadosCabecalho;
    procedure SalvarDadosDetalhe;
    function ArquivoJaImportado(Arquivo: string):Boolean;
    procedure SetStatusBtnImportar;
    procedure SetLog(str:String);
    procedure SetEnabledBotoesNavegacao;
    procedure SetHideAbasPageControl;
    procedure OpenQuerys;
    procedure OpenQuerysLeiturasRealizadas;
    procedure SetValoresCamposForm;
    procedure VisualizarCamposImportacaoGuiasLidas;
    procedure ImportarLeiturasRealizadas(NomeArquivo: string);
    procedure CancelarLoteUtilizado;
    procedure ValidarImportacaoLeiturasRealizadas;
    procedure DeleteGrupoLoteNaoUtilizado;

  public
    { Public declarations }
  end;

var
  frmImportarXML: TfrmImportarXML;

implementation

{$R *.dfm}

uses smGeral, untDMImportarXML, smMensagens, smDBFireBird, untDM, smDB;

procedure TfrmImportarXML.btnAbrirArquivosClick(Sender: TObject);
var
  i: integer;
begin
  try
    if OpenDialog1.Execute then
    begin
      Wait(self, 'Abrindo Arquivos');
      lstbxArquivos.Items.Clear;
      memoLog.Lines.Clear;

      for i := 0 to OpenDialog1.Files.Count - 1 do
      begin
        ConverterArquivo(OpenDialog1.Files[i]);
      end;
    end;

  finally
    SetStatusBtnImportar;
    SetEnabledBotoesNavegacao;
    WaitEnd(self);
  end;

end;

procedure TfrmImportarXML.btnAvancarClick(Sender: TObject);
begin
  if (pgtControl.PageCount) >  (pgtControl.ActivePageIndex + 1)Then
    pgtControl.ActivePageIndex := pgtControl.ActivePageIndex + 1;

  SetEnabledBotoesNavegacao;
  VisualizarCamposImportacaoGuiasLidas;
end;

procedure TfrmImportarXML.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImportarXML.CriarDiretorio(Diretorio: string);
var
  DiretorioNovo: String;
begin
  DiretorioNovo := GetCurrentDir + '' + Diretorio + '';

  if not DirectoryExists(DiretorioNovo) then
    ForceDirectories(DiretorioNovo)
end;


procedure TfrmImportarXML.DeletarArquivo(NomeArquivo: string);
begin
  // Criando Diretórios
  {CriarDiretorio(DiretorioImportando);
  CriarDiretorio(DiretorioImportados);
  CriarDiretorio(DiretorioConvertidos);
  CriarDiretorio(DiretorioErroImportacao);
  }

  DeleteFile( DiretorioApp + DiretorioImportando + '\' + NomeArquivo);
  DeleteFile( DiretorioApp + DiretorioImportados + '\' + NomeArquivo);
  DeleteFile( DiretorioApp + DiretorioConvertidos + '\' + NomeArquivo);
  DeleteFile( DiretorioApp + DiretorioErroImportacao + '\' + NomeArquivo);

end;

procedure TfrmImportarXML.DeleteGrupoLoteNaoUtilizado;
begin
  DMImportarXML.fdqDeleteGrupoNaoUtilizado.Close;
  DMImportarXML.fdqDeleteGrupoNaoUtilizado.ParamByName('id_guias_grupo_lote').AsInteger :=  IdGrupoLote;
  DMImportarXML.fdqDeleteGrupoNaoUtilizado.ExecSQL;
end;

procedure TfrmImportarXML.edtDataGuaisRealizadasPropertiesChange(
  Sender: TObject);
begin
  btnPesquisarGuiasRealizadas.Enabled:= edtDataGuaisRealizadas.Text <> '';
end;

procedure TfrmImportarXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmImportarXML:=nil;
  FreeAndNil(DMImportarXML);
end;

procedure TfrmImportarXML.FormCreate(Sender: TObject);
begin
  SetDiretorios;
  DMImportarXML:= TDMImportarXML.Create(self);
  CloseDataSets(self);
end;

procedure TfrmImportarXML.FormShow(Sender: TObject);
begin
  SetStatusBtnImportar;
  SetHideAbasPageControl;
  SetValoresCamposForm;
  SetEnabledBotoesNavegacao;
  OpenQuerys;
end;

function TfrmImportarXML.GetData(DataStr: String): TDateTime;
var
  Data: TDate;
  Ano: Integer;
  Mes: Integer;
  Dia: Integer;
begin
  //Função para pegar a data no formato
  // yyyy-mm-dd exemplo:2014-09-30

  //Pegando a Data
  Ano:= StrToIntDef(Copy(DataStr,1,4),0);
  Mes:= StrToIntDef(Copy(DataStr,6,2),0);
  Dia:= StrToIntDef(Copy(DataStr,9,2),0);

  if(Ano > 0) and (Mes > 0) and (Dia > 0)Then
    Result:=EncodeDate(Ano,Mes,Dia);

end;


function TfrmImportarXML.GetValor(ValorStr: String): Currency;
begin
  ValorStr:= (StringReplace(ValorStr, ',', '', [rfReplaceAll]));
  Result:= StrToFloat(StringReplace(ValorStr, '.', ',', [rfReplaceAll]));
end;

procedure TfrmImportarXML.OpenXMLTransformProvider(Arquivo: string);
begin
  try
    DMImportarXML.XMLTransformProviderCabecalho.TransformRead.TransformationFile := DiretorioApp + DiretorioXTR + '\' + 'ToDpCabecalho.xtr';
    DMImportarXML.XMLTransformProviderCabecalho.XMLDataFile := Arquivo;

    DMImportarXML.XMLTransformProviderGuias.TransformRead.TransformationFile := DiretorioApp + DiretorioXTR + '\' + 'ToDpGuias.xtr';
    DMImportarXML.XMLTransformProviderGuias.XMLDataFile := Arquivo;
  except on E:Exception do
    raise Exception.Create('Erro na abertura dos arquivos xtr. ' + #13 + E.Message);
  end;
end;

procedure TfrmImportarXML.OpenCdsXML;
begin
  try
    DMImportarXML.cdsXMLCabecalho.Close;
    DMImportarXML.cdsXMLCabecalho.Open;
    DMImportarXML.cdsXMLGuias.Close;
    DMImportarXML.cdsXMLGuias.Open;
  except on E:Exception do
    raise Exception.Create('Erro na abertura dos arquivos XML. ' + #13 + E.Message);
  end;
end;

procedure TfrmImportarXML.OpenQuerys;
begin
  DMImportarXML.fdqTipoServico.Close;
  DMImportarXML.fdqTipoServico.Open;

end;

procedure TfrmImportarXML.OpenQuerysLeiturasRealizadas;
begin
  DMImportarXML.fdqLtRzGrupoLote.Close;
  DMImportarXML.fdqLtRzGrupoLote.ParamByName('dt_importacao').AsDateTime:= edtDataGuaisRealizadas.Date;
  DMImportarXML.fdqLtRzGrupoLote.ParamByName('id_tipo_servico').AsInteger:= DMImportarXML.fdqTipoServicoID_TIPO_SERVICO.AsInteger;
  DMImportarXML.fdqLtRzGrupoLote.Open;

  DMImportarXML.fdqLtRzCabecalho.Close;
  DMImportarXML.fdqLtRzCabecalho.Open;

  DMImportarXML.fdqLtRzDetalhe.Close;
  DMImportarXML.fdqLtRzDetalhe.Open;
end;

procedure TfrmImportarXML.SetValoresCamposForm;
begin
  btnImportar.Left := btnAvancar.Left;
  btnImportar.Top := btnAvancar.Top;
  edtDataGuaisRealizadas.Date := Now;
  pgtControl.ActivePageIndex := 0;
end;

procedure TfrmImportarXML.ValidarImportacaoLeiturasRealizadas;
begin
  if not(chkBuscarLeiturasRealizadas.Checked) then
    Exit;

  if DMImportarXML.fdqLtRzGrupoLote.RecordCount <=0 then
    raise Exception.Create('Nenhum registro de Grupo de Lotes encontrado para a importação de leituras realizadas.');

  if DMImportarXML.fdqLtRzCabecalho.RecordCount <=0 then
    raise Exception.Create('Nenhum registro de Grupo de Cabeçalho encontrado para a importação de leituras realizadas.'); 

  if DMImportarXML.fdqLtRzDetalhe.RecordCount <=0 then
    raise Exception.Create('Nenhum registro de Grupo de leitura encontrado para a importação de leituras realizadas.'); 
end;

procedure TfrmImportarXML.VisualizarCamposImportacaoGuiasLidas;
begin
  if pgtControl.ActivePageIndex <> 2 then
    Exit;

  gbxImportarGuiasLidas.Visible := chkBuscarLeiturasRealizadas.Checked;
end;

procedure TfrmImportarXML.SalvarDadosCabecalho;
begin
  try
    DMImportarXML.fdqCabecalho.Close;
    DMImportarXML.fdqCabecalho.Open;
    DMImportarXML.fdqCabecalho.Append;
    IdCabecalho := GetGenerator('GEN_GUIAS_CABECALHO', DM.cdsBusca);
    DMImportarXML.fdqCabecalhoID_GUIAS_CABECALHO.AsInteger := IdCabecalho;
    DMImportarXML.fdqCabecalhoTIPO_TRANSACAO.AsString := DMImportarXML.cdsXMLCabecalhoans_tipoTransacao.AsString;
    DMImportarXML.fdqCabecalhoSEQUENCIAL_TRANSACAO.AsString := DMImportarXML.cdsXMLCabecalhoans_sequencialTransacao.AsString;
    DMImportarXML.fdqCabecalhoDATA_REGISTRO_TRANSACAO.AsDateTime := GetData(DMImportarXML.cdsXMLCabecalhoans_dataRegistroTransacao.AsString);
    DMImportarXML.fdqCabecalhoHORA_REGISTRO_TRANSACAO.AsDateTime := DMImportarXML.cdsXMLCabecalhoans_horaRegistroTransacao.AsDateTime;
    DMImportarXML.fdqCabecalhoREGISTRO_ANS.AsString := DMImportarXML.cdsXMLCabecalhoans_registroANS.AsString;
    DMImportarXML.fdqCabecalhoVERSAO_PADRAO.AsString := DMImportarXML.cdsXMLCabecalhoans_versaoPadrao.AsString;
    DMImportarXML.fdqCabecalhoID_GUIAS_GRUPO_LOTE.AsInteger := IdGrupoLote;
    DMImportarXML.fdqCabecalho.Post;
  except on E:Exception do
    raise Exception.Create('Erro ao gravar dados de cabeçalho do XML. ' + #13 + E.Message);
  end;
end;

procedure TfrmImportarXML.SalvarDadosDetalhe;
begin


  try
    DMImportarXML.fdqDetalhe.Close;
    DMImportarXML.fdqDetalhe.Open;
    DMImportarXML.cdsXMLGuias.First;
    while not (DMImportarXML.cdsXMLGuias.Eof) do
    begin
      DMImportarXML.fdqDetalhe.Append;
      DMImportarXML.fdqDetalhe.FieldByName('ID_GUIAS_DETALHE').AsInteger := GetGenerator('GEN_GUIAS_DETALHE', DM.cdsBusca);
      DMImportarXML.fdqDetalhe.FieldByName('ID_GUIAS_CABECALHO').AsInteger := IdCabecalho;
      DMImportarXML.fdqDetalhe.FieldByName('REGISTRO_ANS').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_registroANS').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('DATA_EMISSAO_GUIA').AsDateTime := GetData(DMImportarXML.cdsXMLGuias.FieldByName('ans_dataEmissaoGuia').AsString);
      DMImportarXML.fdqDetalhe.FieldByName('NUMERO_GUIA_PRESTADOR').AsInteger := DMImportarXML.cdsXMLGuias.FieldByName('ans_numeroGuiaPrestador').AsInteger;
      DMImportarXML.fdqDetalhe.FieldByName('DADOS_AUTORIZACAO').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_dadosAutorizacao').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('NUMERO_CARTEIRA').AsInteger := DMImportarXML.cdsXMLGuias.FieldByName('ans_numeroCarteira').AsInteger;
      DMImportarXML.fdqDetalhe.FieldByName('NOME_BENEFICIARIO').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_nomeBeneficiario').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('NOME_PLANO').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_nomePlano').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('NOME_CONTRATADO1').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_nomeContratado1').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('NOME_PROFISSIONAL').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_nomeProfissional').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('SIGLA_CONSELHO').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_siglaConselho').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('NUMERO_CONSELHO').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_numeroConselho').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('UF_CONSELHO').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_ufConselho').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('NOME_CONTRATADO2').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_nomeContratado2').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('CARATER_ATENDIMENTO').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_caraterAtendimento').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('TIPO_SAIDA').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_tipoSaida').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('TIPO_ATENDIMENTO').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_tipoAtendimento').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('CODIGO').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_codigo').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('TIPO_TABELA').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_tipoTabela').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('DESCRICAO').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_descricao').AsString;
      DMImportarXML.fdqDetalhe.FieldByName('DATA').AsDateTime := GetData(DMImportarXML.cdsXMLGuias.FieldByName('ans_data').AsString);
      DMImportarXML.fdqDetalhe.FieldByName('QUANTIDADE_REALIZADA').AsInteger := DMImportarXML.cdsXMLGuias.FieldByName('ans_quantidadeRealizada').AsInteger;
      DMImportarXML.fdqDetalhe.FieldByName('VALOR').AsCurrency := GetValor(DMImportarXML.cdsXMLGuias.FieldByName('ans_valor').AsString);
      DMImportarXML.fdqDetalhe.FieldByName('VALORTOTAL_1').AsCurrency := GetValor(DMImportarXML.cdsXMLGuias.FieldByName('ans_valorTotal1').AsString);
      DMImportarXML.fdqDetalhe.FieldByName('VALORTOTAL_2').AsCurrency := GetValor(DMImportarXML.cdsXMLGuias.FieldByName('ans_valorTotal2').AsString);
      DMImportarXML.fdqDetalhe.Post;
      DMImportarXML.cdsXMLGuias.Next;
  end;
  except on E:Exception do
    raise Exception.Create('Erro ao gravar dados de detalhe do XML. ' + #13 + E.Message);
  end;
end;


procedure TfrmImportarXML.SalvarDadosGrupoLote;
begin
  try
    DMImportarXML.fdqGrupoLote.Close;
    DMImportarXML.fdqGrupoLote.Open;
    DMImportarXML.fdqGrupoLote.Append;
    IdGrupoLote := GetGenerator('GEN_GUIAS_GRUPO_LOTE', DM.cdsBusca);

    DMImportarXML.fdqGrupoLoteID_GUIAS_GRUPO_LOTE.AsInteger:=IdGrupoLote;
    DMImportarXML.fdqGrupoLoteID_USUARIO.AsInteger:=Dm.GetUsuario;
    DMImportarXML.fdqGrupoLoteDT_IMPORTACAO.AsDateTime:= Now;
    DMImportarXML.fdqGrupoLoteHR_IMPORTACAO.AsDateTime:= Now;
    DMImportarXML.fdqGrupoLoteID_TIPO_SERVICO.AsInteger:= DMImportarXML.fdqTipoServicoID_TIPO_SERVICO.AsInteger;
    DMImportarXML.fdqGrupoLote.Post;
  except on E:Exception do
    raise Exception.Create('Erro ao gravar dados de grupo do lote do XML. ' + #13 + E.Message);
  end;

end;

procedure TfrmImportarXML.ImportarLeiturasRealizadas(NomeArquivo: string);
begin
  if not(chkBuscarLeiturasRealizadas.Checked) then
    Exit;

  DMImportarXML.fdqUpdateLeiturasRealizadas.Close;
  DMImportarXML.fdqUpdateLeiturasRealizadas.ParamByName('ID_USUARIO_LEITURA').AsInteger := Dm.GetUsuario;
  DMImportarXML.fdqUpdateLeiturasRealizadas.ParamByName('id_guias_grupo_lote_ORIGEM').AsInteger :=
    DMImportarXML.fdqLtRzGrupoLote.FieldByName('id_guias_grupo_lote').AsInteger;

  DMImportarXML.fdqUpdateLeiturasRealizadas.ParamByName('ID_GUIAS_CABECALHO').AsInteger := IdCabecalho;
  DMImportarXML.fdqUpdateLeiturasRealizadas.ExecSQL;

  DMImportarXML.fdqUpdateGuiaDesc.Close;
  DMImportarXML.fdqUpdateGuiaDesc.ParamByName('id_guias_grupo_lote_ORIGEM').AsInteger :=
    DMImportarXML.fdqLtRzGrupoLote.FieldByName('id_guias_grupo_lote').AsInteger;

  DMImportarXML.fdqUpdateGuiaDesc.ParamByName('ID_GUIAS_CABECALHO').AsInteger := IdCabecalho;
  DMImportarXML.fdqUpdateGuiaDesc.ExecSQL;

  SetLog('Importação de Leituras realizadas com sucesso.');

  {if DMImportarXML.fdqLtRzCabecalho.Locate('SEQUENCIAL_TRANSACAO',DMImportarXML.fdqCabecalhoSEQUENCIAL_TRANSACAO.AsString) then
  begin
    DMImportarXML.fdqLtRzCabecalho.Edit;
    DMImportarXML.fdqLtRzCabecalho.FieldByName('CANCELADO').AsString := 'TRUE';
    DMImportarXML.fdqLtRzCabecalho.Post;
  end;}
end;

procedure TfrmImportarXML.ImportarArquivo(NomeArquivo: string);
var
  Arquivo: String;
begin

  Arquivo:= DiretorioApp + DiretorioConvertidos + '\' + NomeArquivo;
  OpenXMLTransformProvider(Arquivo);
  OpenCdsXML;

  if DMImportarXML.cdsXMLCabecalho.RecordCount <=0 then
  begin
    Msg('Erro ao abrir XML de Cabeçalho. Nenhum registro encontrado!', mtErro);
    Abort;
  end;

  if not (ArquivoJaImportado(NomeArquivo))Then
  begin
    SalvarDadosCabecalho;
    SalvarDadosDetalhe;
    // Atualizando Pasta de Importados
    MoverArquivo(DiretorioApp + DiretorioConvertidos,DiretorioApp + DiretorioImportados, NomeArquivo);
    SetLog(NomeArquivo + ' importado com sucesso.');
    ImportarLeiturasRealizadas(NomeArquivo);
  end;

end;

procedure TfrmImportarXML.btnImportarClick(Sender: TObject);
var
  i: Integer;
  msgErro:String;
  msgOK: String;
begin
  ValidarImportacaoLeiturasRealizadas;
  
  try
    try
      Wait(self, 'Importando Arquivos');

      if lstbxArquivos.Items.Count <= 0 Then
        Exit;

      pgtControl.ActivePageIndex:=3;
      DMImportarXML.FDTransaction.StartTransaction;

      memoLog.Lines.Clear;
      SalvarDadosGrupoLote;
      for i := 0 to lstbxArquivos.Items.Count - 1 do
      begin
        SetLog('Importando arquivo ' + lstbxArquivos.Items[i]);
        Wait(self, 'Importando arquivo' + lstbxArquivos.Items[i]);
        ImportarArquivo(lstbxArquivos.Items[i]);
        SetLog('');
      end;

      CancelarLoteUtilizado;
      DeleteGrupoLoteNaoUtilizado;
      WaitEnd(self);
      msgOK:='Processo concluído com sucesso!';
      Msg(msgOK, mtInformacao);
      SetLog(msgOK);
      DMImportarXML.FDTransaction.Commit;

    except
      on E: Exception do
      begin
        DMImportarXML.FDTransaction.Rollback;

        msgErro:= 'Erro no processo de importação.' + #13 +
                               'Nenhum arquivo foi importado!' + #13 + #13 + E.Message;

        SetLog(msgErro);
        raise Exception.Create(msgErro);
        SetEnabledBotoesNavegacao;
      end;
    end;
  finally
    WaitEnd(self);
    SetStatusBtnImportar;
    SetEnabledBotoesNavegacao;
  end;
end;

procedure TfrmImportarXML.btnNovoClick(Sender: TObject);
begin
  pgtControl.ActivePageIndex:=0;
  lstbxArquivos.Items.Clear;
  SetEnabledBotoesNavegacao;

  DMImportarXML.fdqLtRzGrupoLote.Close;  
  DMImportarXML.fdqLtRzCabecalho.Close;  
  DMImportarXML.fdqLtRzDetalhe.Close;  

  memoLog.Lines.Clear;
end;

procedure TfrmImportarXML.btnPesquisarGuiasRealizadasClick(Sender: TObject);
begin
  OpenQuerysLeiturasRealizadas;
  SetStatusBtnImportar;
end;

procedure TfrmImportarXML.btnVoltarClick(Sender: TObject);
begin
  if (pgtControl.ActivePageIndex) >  0 Then
    pgtControl.ActivePageIndex := pgtControl.ActivePageIndex - 1;

  SetEnabledBotoesNavegacao;
  VisualizarCamposImportacaoGuiasLidas;
end;

procedure TfrmImportarXML.CancelarLoteUtilizado;
begin
  if not(chkBuscarLeiturasRealizadas.Checked) then
    Exit;

  //Cancelando cabeçalho
  SetLog('');
  DMImportarXML.fdqLtRzCabecalho.First;
  while not(DMImportarXML.fdqLtRzCabecalho.EOF)do
  begin
    DMImportarXML.fdqLtRzCabecalho.Edit;
    DMImportarXML.fdqLtRzCabecalho.FieldByName('CANCELADO').AsString := 'TRUE';
    DMImportarXML.fdqLtRzCabecalho.Post;

    SetLog('Cancelamento do lote ' + DMImportarXML.fdqLtRzCabecalho.FieldByName('SEQUENCIAL_TRANSACAO').AsString +
           ' realizado com sucesso.');
    DMImportarXML.fdqLtRzCabecalho.Next;
  end;
end;

procedure TfrmImportarXML.chkBuscarLeiturasRealizadasClick(Sender: TObject);
begin
  VisualizarCamposImportacaoGuiasLidas;
  SetStatusBtnImportar;
end;

procedure TfrmImportarXML.ConverterArquivo(ArquivoImportado: string);
var
  NomeArquivoImportado: string;
  ArquivoConvertido: string;

  XMLImportado: TextFile;
  XMLConvertido: TextFile;
  buffer: string;
begin

  try
    SetDiretorios;

    // Criando Diretórios
    CriarDiretorio(DiretorioImportando);
    CriarDiretorio(DiretorioImportados);
    CriarDiretorio(DiretorioConvertidos);
    CriarDiretorio(DiretorioErroImportacao);

    NomeArquivoImportado := ExtractFileName(ArquivoImportado);
    Wait(self, 'Convertendo arquivo ' + NomeArquivoImportado);

    DeletarArquivo(NomeArquivoImportado);
    ArquivoConvertido := DiretorioApp + DiretorioImportando + '\' +
      NomeArquivoImportado;

    // Criando o Arquivo Convertido
    try
      AssignFile(XMLImportado, ArquivoImportado);
      Reset(XMLImportado);

      AssignFile(XMLConvertido, ArquivoConvertido);
      Rewrite(XMLConvertido);
      Append(XMLConvertido);

      while not EOF(XMLImportado) do
      begin
        ReadLn(XMLImportado, buffer);
        buffer := StringReplace(buffer, 'ans:', 'ans_', [rfReplaceAll]);
        Writeln(XMLConvertido, buffer);
      end;

    finally
      CloseFile(XMLImportado);
      CloseFile(XMLConvertido);
    end;

    //Atualizando Pasta de Convertidos
    MoverArquivo(DiretorioApp + DiretorioImportando,
      DiretorioApp + DiretorioConvertidos, NomeArquivoImportado);

    lstbxArquivos.Items.Add(NomeArquivoImportado);

  except
    on E: exception do
    begin
      MoverArquivo(DiretorioApp + DiretorioImportando,
        DiretorioApp + DiretorioImportados, NomeArquivoImportado);

      MoverArquivo(DiretorioApp + DiretorioImportando,
        DiretorioApp + DiretorioConvertidos, NomeArquivoImportado);

      MoverArquivo(DiretorioApp + DiretorioImportados,
        DiretorioApp + DiretorioImportados, NomeArquivoImportado);

      raise Exception.Create('Erro na importação do arquivo: ' + NomeArquivoImportado +
        E.Message);
    end;

  end;
end;

procedure TfrmImportarXML.SetDiretorios;
begin
  DiretorioApp := PWideChar(GetCurrentDir);
  DiretorioImportando := '\XML\Importando';
  DiretorioImportados := '\XML\Importados';
  DiretorioConvertidos := '\XML\Convertidos';
  DiretorioErroImportacao := '\XML\Erros Importacao';
  DiretorioXTR := '\XML\xtr';
end;

procedure TfrmImportarXML.SetEnabledBotoesNavegacao;
begin
  btnAvancar.Visible:= (pgtControl.ActivePageIndex < 2);
  btnVoltar.Visible:= (pgtControl.ActivePageIndex <> 3) and ((pgtControl.ActivePageIndex) >  0 );

  btnImportar.Visible:= (pgtControl.ActivePageIndex = 2);

  btnNovo.Visible:= (pgtControl.ActivePageIndex = 3);

  //Aba de selecionar arquivos
  if pgtControl.ActivePageIndex = 0 then
  begin
    btnAvancar.Enabled:= (lstbxArquivos.Items.Count >= 1) ;
  end;

end;

procedure TfrmImportarXML.SetHideAbasPageControl;
begin
  pgtControl.Properties.HideTabs:= True;
end;

procedure TfrmImportarXML.SetLog(str: String);
begin
  memoLog.Lines.Add(str);
end;

function TfrmImportarXML.ArquivoJaImportado(Arquivo: string): Boolean;
begin
  DMImportarXML.fdqVerifInserido.Close;
  DMImportarXML.fdqVerifInserido.ParamByName('sequencial_transacao').AsInteger := DMImportarXML.cdsXMLCabecalhoans_sequencialTransacao.AsInteger;
  DMImportarXML.fdqVerifInserido.Open;
  Result:= (DMImportarXML.fdqVerifInserido.RecordCount >= 1);
  if (DMImportarXML.fdqVerifInserido.RecordCount >= 1) then
  begin
    SetLog('Arquivo: ' + Arquivo + ' já importado anteriormente. ' +
        'Para este arquivo nenhuma informação será alterada.');

  end;
end;

procedure TfrmImportarXML.SetStatusBtnImportar;
begin
  btnImportar.Enabled := (OpenDialog1.Files.Count >= 1);

  if chkBuscarLeiturasRealizadas.Checked then
    btnImportar.Enabled := (DMImportarXML.fdqLtRzGrupoLote.RecordCount >= 1) and
                            (DMImportarXML.fdqLtRzCabecalho.RecordCount >= 1);
end;


procedure TfrmImportarXML.MoverArquivo(Origem, Destino, Arquivo: String);
var
  o, d: PWideChar;
begin
  o := PWideChar(Origem + '\' + Arquivo);
  d := PWideChar(Destino + '\' + Arquivo);
  MoveFile(o, d);
end;

end.
