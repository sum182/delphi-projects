unit untLeituraGuias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCalc, cxDBEdit, cxSpinEdit,
  cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBLabel;

type
  TfrmLeituraGuias = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    gbxDadosGuia: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    edtData: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edtCodigoBarras: TcxTextEdit;
    btnLer: TcxButton;
    cxLabel3: TcxLabel;
    btnRetirarGuiaLote: TcxButton;
    edtStatus: TcxTextEdit;
    lblStatus: TcxLabel;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label7: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label9: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1NUMERO_GUIA_PRESTADOR: TcxGridDBColumn;
    cxGrid2DBTableView1NUMERO_CARTEIRA: TcxGridDBColumn;
    cxGrid2DBTableView1NOME_BENEFICIARIO: TcxGridDBColumn;
    cxGrid2DBTableView1NOME_PLANO: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid2DBTableView1VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1DATA_LEITURA: TcxGridDBColumn;
    cxGrid2DBTableView1HORA_LEITURA: TcxGridDBColumn;
    cxGrid2DBTableView1SEQUENCIAL_TRANSACAO: TcxGridDBColumn;
    cxGrid2DBTableView1TIPO_SERVICO: TcxGridDBColumn;
    btnSair: TcxButton;
    cxGrid2DBTableView1STATUS: TcxGridDBColumn;
    btnGuiaBranco: TcxButton;
    cxGroupBox5: TcxGroupBox;
    lblStatus6: TcxLabel;
    lblStatus4: TcxLabel;
    lblStatus3: TcxLabel;
    lblStatus2: TcxLabel;
    lblStatus1: TcxLabel;
    lblStatus5: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxLabel5: TcxLabel;
    lblTotalRegistros: TcxLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLerClick(Sender: TObject);
    procedure edtCodigoBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataPropertiesChange(Sender: TObject);
    procedure btnRetirarGuiaLoteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGuiaBrancoClick(Sender: TObject);
  private
    IdStatus:Integer;
    DescricaoStatus:String;

    function GetCodigoBarras: String;
    procedure ClearStatus;
    procedure SetFlagStatusOk;
    procedure SetFlagStatusGuiaLidaAnteriormente;
    procedure SetFlagStatusNenhumaGuiaEncontrada;
    procedure SetFlagStatusMaisDeUmaGuia;
    procedure SetFlagStatusRetirarGuia;
    procedure SetFlagStatusGuiaEmBranco;

    procedure GetFlagStatus;

    procedure ValidarLeitura;

    procedure OpenQuerys;
    procedure OpenGuia(Data:TDateTime; NumeroCarteirinha:Integer);
    procedure SetValuesFields;
    procedure SalvarGuiaLida;
    function SelecionarMaisDeUmaGuia:Boolean;
    procedure NenhumaGuiaEncontrada;
    function GuiaLidaAnteriormente: Boolean;
    procedure OpenGuiasLidas;
    procedure SetTotalGuiasLidas;
    procedure LerGuia;
    procedure SetEnabledButtons;
    procedure SetLabelsStatus;
  public

  end;

var
  frmLeituraGuias: TfrmLeituraGuias;

implementation

{$R *.dfm}

uses untDMLeituraGuias, smGeral, smMensagens, smDB,
  untLeituraGuiasSelecionarGuia, untDM, untLeituraGuiasCadastrarGuia;

procedure TfrmLeituraGuias.btnGuiaBrancoClick(Sender: TObject);
begin
  if not Msg('Deseja marcar a guia ' + DMLeituraGuias.fdqGuiasNUMERO_CARTEIRA.AsString + ' como Guia em Branco?' ,
              mtAviso,Sim_Nao_Cancelar ) then
    Exit;

  //SetFlagStatusGuiaEmBranco;

  if (DMLeituraGuias.fdqGuias.State in [dsInactive]) then
    Exit;

  if (DMLeituraGuias.fdqGuias.RecordCount <= 0) then
    Exit;

  DMLeituraGuias.fdqGuias.Edit;
  DMLeituraGuias.fdqGuiasGUIA_EM_BRANCO.AsString := 'TRUE';
  SalvarGuiaLida;
  OpenGuiasLidas;
end;

procedure TfrmLeituraGuias.btnLerClick(Sender: TObject);
begin
  LerGuia;
end;

procedure TfrmLeituraGuias.btnRetirarGuiaLoteClick(Sender: TObject);
begin
  if not Msg('Deseja retirar a guia ' + DMLeituraGuias.fdqGuiasNUMERO_CARTEIRA.AsString +  ' do Lote?' ,
              mtAviso,Sim_Nao_Cancelar ) then
    Exit;

  SetFlagStatusRetirarGuia;

  if (DMLeituraGuias.fdqGuias.State in [dsInactive]) then
    Exit;

  if (DMLeituraGuias.fdqGuias.RecordCount <= 0) then
    Exit;

  DMLeituraGuias.fdqGuias.Edit;
  DMLeituraGuias.fdqGuiasRETIRADA.AsString := 'TRUE';
  SalvarGuiaLida;
  OpenGuiasLidas;
end;

procedure TfrmLeituraGuias.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLeituraGuias.ClearStatus;
begin
  edtStatus.StyleDisabled.Color:= clWindow;
  edtStatus.Visible:=False;

  lblStatus.Caption:= '';
end;

procedure TfrmLeituraGuias.edtCodigoBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin
  If (key = #13) then
    LerGuia;
end;

procedure TfrmLeituraGuias.edtDataPropertiesChange(Sender: TObject);
begin
  OpenGuiasLidas;
end;

procedure TfrmLeituraGuias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLeituraGuias:=nil;
  FreeAndNIl(DMLeituraGuias);
end;

procedure TfrmLeituraGuias.FormCreate(Sender: TObject);
begin
  DMLeituraGuias := TDMLeituraGuias.Create(self);
  CloseDataSets(self);
end;

procedure TfrmLeituraGuias.FormShow(Sender: TObject);
begin
  ClearStatus;
  SetValuesFields;
  SetEnabledButtons;

  edtData.Date:= Now;

  OpenGuiasLidas;
  OpenQuerys;
  SetLabelsStatus;
end;


function TfrmLeituraGuias.GetCodigoBarras: String;
begin
  Result := edtCodigoBarras.Text;
end;

procedure TfrmLeituraGuias.GetFlagStatus;
begin
  if IdStatus <= 0  then
    Exit;

  if (DMLeituraGuias.fdqStatus.FindKey([IdStatus]))Then
    DescricaoStatus:= DMLeituraGuias.fdqStatus.FieldByName('DESCRICAO').AsString;

  lblStatus.Caption:= DescricaoStatus;
end;

function TfrmLeituraGuias.GuiaLidaAnteriormente: Boolean;
begin
  DMLeituraGuias.fdqGuiasLidas.IndexFieldNames := 'NUMERO_CARTEIRA';

  Result:= (DMLeituraGuias.fdqGuiasLidas.FindKey([StrToInt(GetCodigoBarras)]));

  if Result Then
    SetFlagStatusGuiaLidaAnteriormente;

  DMLeituraGuias.fdqGuiasLidas.IndexFieldNames := '';
end;

procedure TfrmLeituraGuias.NenhumaGuiaEncontrada;
begin
  if DMLeituraGuias.fdqGuias.RecordCount <=0 then
  begin
    if not(GuiaLidaAnteriormente) then
      SetFlagStatusNenhumaGuiaEncontrada;
  end;
end;

procedure TfrmLeituraGuias.OpenGuia(Data: TDateTime;
  NumeroCarteirinha: Integer);
begin
  if (edtData.Text = '') or (GetCodigoBarras = '') then
    Exit;

  try
    try
      Wait(self, 'Buscando Guia');
      DMLeituraGuias.fdqGuias.Close;
      DMLeituraGuias.fdqGuias.Params.ParamByName('DATA').AsDate :=  Data;
      DMLeituraGuias.fdqGuias.Params.ParamByName('numero_carteira').AsInteger :=  NumeroCarteirinha;
      DMLeituraGuias.fdqGuias.Open;
    except
      on E: exception do
        Msg('Erro na consulta de dados das guias.' + #13 + E.Message, mtErro);
    end;

  finally
    WaitEnd(self);
  end;

end;


procedure TfrmLeituraGuias.OpenGuiasLidas;
begin
  if edtData.Text = '' then
    Exit;

  DMLeituraGuias.fdqGuiasLidas.Close;
  DMLeituraGuias.fdqGuiasLidas.ParamByName('DATA').AsDateTime:= edtData.Date;
  DMLeituraGuias.fdqGuiasLidas.Open;
  SetTotalGuiasLidas;
end;

procedure TfrmLeituraGuias.OpenQuerys;
begin
  DMLeituraGuias.fdqStatus.Close;
  DMLeituraGuias.fdqStatus.Open;
end;

procedure TfrmLeituraGuias.LerGuia;
begin
  try
    if GetCodigoBarras = '' then
      Exit;

    ClearStatus;
    ValidarLeitura;

    IdStatus:=0;
    DescricaoStatus:='';

    OpenGuia(edtData.Date, StrToInt(GetCodigoBarras));
    NenhumaGuiaEncontrada;

    if DMLeituraGuias.fdqGuias.RecordCount > 1 then
      if not(SelecionarMaisDeUmaGuia)Then
        Exit;

    //Caso não tenha acontecido nenhuma ocorrencia anterior
    if IdStatus = 0 then
      SetFlagStatusOk;

    SalvarGuiaLida;
    OpenGuiasLidas;
    SetEnabledButtons;
  finally
    edtCodigoBarras.Clear;
    edtCodigoBarras.SetFocus;
  end;
end;

procedure TfrmLeituraGuias.SalvarGuiaLida;
begin
  try
    if (DMLeituraGuias.fdqGuias.State in [dsInactive]) then
      Exit;

    if (DMLeituraGuias.fdqGuias.RecordCount <= 0) then
      Exit;

    DMLeituraGuias.fdqGuias.Edit;
    DMLeituraGuias.fdqGuiasLIDA.AsString := 'TRUE';
    DMLeituraGuias.fdqGuiasDATA_LEITURA.AsDateTime := Now;
    DMLeituraGuias.fdqGuiasHORA_LEITURA.AsDateTime := Now;
    DMLeituraGuias.fdqGuiasID_USUARIO_LEITURA.AsInteger:=DM.GetUsuario;
    DMLeituraGuias.fdqGuias.FieldByName('ID_LEITURA_STATUS').AsInteger:= IdStatus;
    DMLeituraGuias.fdqGuias.Post;
  except
    on E: exception do
      Msg('Erro ao salvar guia lida.' + #13 + E.Message, mtErro);
  end;
end;


function TfrmLeituraGuias.SelecionarMaisDeUmaGuia: Boolean;
begin
  try
    SetFlagStatusMaisDeUmaGuia;
    frmLeituraGuiasSelecionarGuia:= TfrmLeituraGuiasSelecionarGuia.Create(self);
    frmLeituraGuiasSelecionarGuia.ShowModal;

    Result:= (frmLeituraGuiasSelecionarGuia.ModalResult = mrOk);
    if frmLeituraGuiasSelecionarGuia.ModalResult = mrOk    Then
      SetFlagStatusOk;

  finally
    FreeAndNil(frmLeituraGuiasSelecionarGuia);
  end;

end;

procedure TfrmLeituraGuias.SetEnabledButtons;
begin
  btnRetirarGuiaLote.Enabled:=False;
  btnGuiaBranco.Enabled:=False;

  if not(DMLeituraGuias.fdqGuias.State in [dsInactive]) then
  begin
    btnRetirarGuiaLote.Enabled:=((DMLeituraGuias.fdqGuias.RecordCount >= 1));
    btnGuiaBranco.Enabled:=((DMLeituraGuias.fdqGuias.RecordCount >= 1));
  end;
end;

procedure TfrmLeituraGuias.SetFlagStatusGuiaEmBranco;
begin
  IdStatus:=7;
  GetFlagStatus;
  edtStatus.Visible:=True;
  edtStatus.StyleDisabled.Color:= clWhite;
end;

procedure TfrmLeituraGuias.SetFlagStatusGuiaLidaAnteriormente;
begin
  IdStatus:=5;
  edtStatus.Visible:=True;
  edtStatus.StyleDisabled.Color:= clYellow;
  GetFlagStatus;
end;

procedure TfrmLeituraGuias.SetFlagStatusMaisDeUmaGuia;
begin
  IdStatus:=3;
  GetFlagStatus;
  edtStatus.Visible:=True;
  edtStatus.StyleDisabled.Color:= clYellow;
end;

procedure TfrmLeituraGuias.SetFlagStatusNenhumaGuiaEncontrada;
begin
  IdStatus:=2;
  GetFlagStatus;
  edtStatus.Visible:=True;
  edtStatus.StyleDisabled.Color:= clRed;

  if Msg('Esta guia não foi localizada no lote!' + #13 +
         'Deseja cadastrar a guia ' + GetCodigoBarras + ' ?',mtAviso,Sim_Nao_Cancelar ) then
  begin
    try
      frmLeituraGuiasCadastrarGuia:= TfrmLeituraGuiasCadastrarGuia.Create(nil);
    finally
      frmLeituraGuiasCadastrarGuia.fNumeroCarteirinha:= StrToInt(GetCodigoBarras);
      frmLeituraGuiasCadastrarGuia.fData:= edtData.Date;
      frmLeituraGuiasCadastrarGuia.ShowModal;
      FreeAndNil(frmLeituraGuiasCadastrarGuia);
    end;
  end;



end;

procedure TfrmLeituraGuias.SetFlagStatusOk;
begin
{
1 - OK - Leitura Realizada com Sucesso
2 - Erro – Guia não localizada no Lote
3 - Nº da carteira em guias diferentes
4 - Guia com mais de um procedimento
5 - Leitura já realizada anteriormente
6 - Retirar Guia do Lote
7 - Guia em Branco
}
  IdStatus:=1;
  edtStatus.Visible:=True;
  edtStatus.StyleDisabled.Color:= clLime;
  GetFlagStatus;
end;

procedure TfrmLeituraGuias.SetFlagStatusRetirarGuia;
begin
  IdStatus:=6;
  GetFlagStatus;
  edtStatus.Visible:=True;
  edtStatus.StyleDisabled.Color:= clYellow;
end;

procedure TfrmLeituraGuias.SetLabelsStatus;
var
  LabelStatus:TcxLabel;
begin
  if (DMLeituraGuias.fdqStatus.State in [dsInactive]) then
    Exit;

  DMLeituraGuias.fdqStatus.First;
  while not(DMLeituraGuias.fdqStatus.Eof) do
  begin
    LabelStatus:=  (FindComponent('lblStatus' + DMLeituraGuias.fdqStatus.FieldByName('id_leitura_status').AsString) as TcxLabel);

    if (LabelStatus <> nil) then
      LabelStatus.Caption:= DMLeituraGuias.fdqStatus.FieldByName('descricao').AsString + ':';

    DMLeituraGuias.fdqStatus.Next;
  end;
end;

procedure TfrmLeituraGuias.SetTotalGuiasLidas;
begin
  if not (DMLeituraGuias.fdqGuiasLidas.State in [dsInactive]) then
    lblTotalRegistros.Caption:= IntToStr(DMLeituraGuias.fdqGuiasLidas.RecordCount);
end;

procedure TfrmLeituraGuias.SetValuesFields;
begin
  edtData.Date := Now;
end;

procedure TfrmLeituraGuias.ValidarLeitura;
begin
  if (edtData.Text = '')Then
    raise Exception.Create('È obrigatório o preenchimento do campo data!');

  if (GetCodigoBarras = '') then
    raise Exception.Create('Número de carteirinha não informado!');

  try
    StrToInt(GetCodigoBarras);
  except
    raise Exception.Create('Número de carteirinha inválido!');
  end;

end;


end.
