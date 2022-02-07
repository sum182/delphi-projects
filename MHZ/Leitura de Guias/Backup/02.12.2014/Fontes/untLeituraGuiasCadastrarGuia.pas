unit untLeituraGuiasCadastrarGuia;

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
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxDBEdit,
  cxSpinEdit, cxMaskEdit, cxCalc, cxTextEdit, Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxButtons,
  cxLabel, cxGroupBox;

type
  TfrmLeituraGuiasCadastrarGuia = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    btnOK: TcxButton;
    btnCancelar: TcxButton;
    dsCad: TDataSource;
    fdqCad: TFDQuery;
    gbxDadosGuia: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label20: TLabel;
    edtNome: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    edtData: TcxDBDateEdit;
    fdqLotes: TFDQuery;
    dsLotes: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
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
    fdqCadCADASTRADA_MANUALMENTE: TStringField;
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
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure fdqCadNewRecord(DataSet: TDataSet);
  private
    procedure ValidarCadastro;
  public
    fNumeroCarteirinha:Integer;
    fData:TDateTime;
  end;

var
  frmLeituraGuiasCadastrarGuia: TfrmLeituraGuiasCadastrarGuia;

implementation

{$R *.dfm}

uses untDM, smDBFireBird, smMensagens, smGeral;

procedure TfrmLeituraGuiasCadastrarGuia.btnCancelarClick(Sender: TObject);
begin
  fdqCad.Cancel;
  Close;
end;

procedure TfrmLeituraGuiasCadastrarGuia.btnOKClick(Sender: TObject);
begin
  TirarFocus(self);
  ValidarCadastro;
  fdqCad.Post;
  Close;
end;

procedure TfrmLeituraGuiasCadastrarGuia.fdqCadNewRecord(DataSet: TDataSet);
begin
  fdqCad.FieldByName('ID_GUIAS_DETALHE').AsInteger := GetGenerator('GEN_GUIAS_DETALHE', DM.cdsBusca);
  fdqCadNUMERO_CARTEIRA.AsInteger:= fNumeroCarteirinha;
  fdqCadCADASTRADA_MANUALMENTE.AsString:='TRUE';
  fdqCadLIDA.AsString := 'TRUE';
  fdqCadDATA_LEITURA.AsDateTime := Now;
  fdqCadHORA_LEITURA.AsDateTime := Now;
  fdqCadID_USUARIO_LEITURA.AsInteger:=DM.GetUsuario;
  fdqCadID_LEITURA_STATUS.AsInteger := 1;
  fdqCadDATA.AsDateTime:= fData;
end;

procedure TfrmLeituraGuiasCadastrarGuia.FormShow(Sender: TObject);
begin
  fdqLotes.Close;
  fdqLotes.Open;

  fdqCad.Close;
  fdqCad.Open;

  fdqCad.Append;
  edtNome.SetFocus;
end;

procedure TfrmLeituraGuiasCadastrarGuia.ValidarCadastro;
begin
  if fdqCadID_GUIAS_CABECALHO.AsInteger <= 0 then
  begin
    Msg('É obrigatório o preenchimento do campo Lote!',mtAviso);
    fdqCadID_GUIAS_CABECALHO.FocusControl;
    Abort;
  end;

  if fdqCadNUMERO_CARTEIRA.AsInteger <= 0 then
  begin
    Msg('É obrigatório o preenchimento do campo Carteirinha!',mtAviso);
    fdqCadNUMERO_CARTEIRA.FocusControl;
    Abort;
  end;


  if edtData.Text = '' then
  begin
    Msg('É obrigatório o preenchimento do campo Data!',mtAviso);
    edtData.SetFocus;
    Abort;
  end;
end;

end.
