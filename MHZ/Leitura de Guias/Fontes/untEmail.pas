unit UntEmail;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.StdCtrls, Vcl.Buttons, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  cxGroupBox, IdAttachmentFile,
  Vcl.ExtCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxCore, cxDateUtils,
  Vcl.Menus, cxButtons, cxLabel, cxCalendar, cxMemo, cxRichEdit, IniFiles;

type
  TFrmEmail = class(TForm)
    cxGroupBox2: TcxGroupBox;
    IdSMTP: TIdSMTP;
    IdMessage: TIdMessage;
    opdlgArquivo: TOpenDialog;
    PgCrtlEmail: TPageControl;
    tbshtEnvio: TTabSheet;
    tbshtConfiguracao: TTabSheet;
    lbledtUsuario: TLabeledEdit;
    lbledtHost: TLabeledEdit;
    lbledtPorta: TLabeledEdit;
    lbledtSenha: TLabeledEdit;
    Label6: TLabel;
    LstBxAnexos: TListBox;
    BtbtnAnexos: TBitBtn;
    btnEnviar: TButton;
    btnFechar: TButton;
    lbledtDe: TLabeledEdit;
    lbledtAssunto: TLabeledEdit;
    Label5: TLabel;
    dsBusca: TDataSource;
    fdqBusca: TFDQuery;
    fdqBuscaID_CLIENTE: TIntegerField;
    fdqBuscaCLIENTE: TStringField;
    fdqBuscaEMAIL: TStringField;
    Label1: TLabel;
    fdqBuscaGuias: TFDQuery;
    DataSource1: TDataSource;
    edtDataGuaisRealizadas: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnPesquisarGuiasRealizadas: TcxButton;
    fdqBuscaGuiasNUMERO_GUIA_PRESTADOR: TIntegerField;
    fdqBuscaGuiasID_GUIAS_GRUPO_LOTE: TIntegerField;
    lbledtCopia: TLabeledEdit;
    cxLxpPara: TcxLookupComboBox;
    cxRichEdit1: TcxRichEdit;
    procedure BtbtnAnexosClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarGuiasRealizadasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmail: TFrmEmail;

implementation

{$R *.dfm}

uses untDMImportarXML;

var
  msg: string;
  de, para, copia, base, mensagem, rodape: string;

procedure TFrmEmail.BtbtnAnexosClick(Sender: TObject);
var
  I: Integer;
begin
  if opdlgArquivo.Execute then
    for I := 0 to opdlgArquivo.Files.Count - 1 do
      LstBxAnexos.Items.Add(opdlgArquivo.Files.Strings[I]);
end;

procedure TFrmEmail.btnEnviarClick(Sender: TObject);
var
  I: Integer;
  NewAttach: TIdAttachmentFile;
begin
  // Configura o Servidor
  IdSMTP.UserName := lbledtUsuario.Text;
  IdSMTP.Password := lbledtSenha.Text;
  IdSMTP.Host := lbledtHost.Text;
  IdSMTP.Port := StrToInt(lbledtPorta.Text);

  // Configura o Remetente da Mensagem
  IdMessage.Clear;
  IdMessage.Subject := lbledtAssunto.Text;
  IdMessage.From.Address := lbledtDe.Text;
  // IdMessage.From.Name:= Nome que irá exibir no lugar do endereço email;

  // configura os destinatários (TO)
  IdMessage.Recipients.Clear;
  IdMessage.Recipients.Add;
  IdMessage.Recipients.Items[IdMessage.Recipients.Count - 1].Address :=
    cxLxpPara.Text;
  IdMessage.Recipients.Items[IdMessage.Recipients.Count - 1].Name :=
    Copy(cxLxpPara.Text, 1, Pos('@', cxLxpPara.Text) - 1);

  // configura os destinatários (CC)
  if lbledtCopia.Text <> '' then
  begin
    IdMessage.Recipients.Add;
    IdMessage.Recipients.Items[IdMessage.Recipients.Count - 1].Address :=
      lbledtCopia.Text;
    IdMessage.Recipients.Items[IdMessage.Recipients.Count - 1].Name :=
      Copy(lbledtCopia.Text, 1, Pos('@', lbledtCopia.Text) - 1);
  end;
  // Adiciona o HTML ao corpo da mensagem
  IdMessage.Body.Clear;
  IdMessage.Body.AddStrings(cxRichEdit1.Lines);
  // Anexa os Arquivos / Imagens
  for I := 0 to LstBxAnexos.Items.Count - 1 do
    NewAttach := TIdAttachmentFile.Create(IdMessage.MessageParts,
      LstBxAnexos.Items.Strings[I]);
  // Envia
  try
    try
      IdSMTP.Connect;
      if IdSMTP.Connected then
        IdSMTP.Send(IdMessage);
    except
      on E: exception do
        ShowMessage('Problemas ao conectar/enviar mensagem... Tente mais tarde!'
          + #13 + E.Message);
    end;
  finally
    IdSMTP.Disconnect;
  end;
end;

procedure TFrmEmail.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEmail.btnPesquisarGuiasRealizadasClick(Sender: TObject);
begin
  cxRichEdit1.Text := '';
  msg := '';

  fdqBuscaGuias.Close;
  fdqBuscaGuias.ParamByName('dt_importacao').AsDateTime :=
    edtDataGuaisRealizadas.Date;
  fdqBuscaGuias.Open;

  if fdqBuscaGuias.recordcount > 0 then
    msg := mensagem + #13 + #13;

  while not fdqBuscaGuias.Eof do
  begin
    msg := msg + 'Grupo: ' + fdqBuscaGuiasID_GUIAS_GRUPO_LOTE.asstring + ' - ' +
      'Guia: ' + fdqBuscaGuiasNUMERO_GUIA_PRESTADOR.asstring + #13;
    fdqBuscaGuias.Next;
  end;

  if fdqBuscaGuias.recordcount > 0 then
    cxRichEdit1.Text := msg + rodape;
end;

procedure TFrmEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmEmail := nil;
end;

procedure TFrmEmail.FormShow(Sender: TObject);
var
  INI: TIniFile;
  Dir: ShortString;
begin
  Dir := ExtractFilePath(Application.Exename);
  INI := TIniFile.Create(Dir + 'Leitura.INI');
  de := INI.ReadString('emails', 'de', EmptyStr);
  para := INI.ReadString('emails', 'para', EmptyStr);
  copia := INI.ReadString('emails', 'copia', EmptyStr);
  mensagem := INI.ReadString('emails', 'mensagem', EmptyStr);
  rodape := INI.ReadString('emails', 'rodape', EmptyStr);

  lbledtDe.Text := de;
  lbledtCopia.Text := copia;
  fdqBusca.Active := true;

end;

end.
