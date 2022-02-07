unit untImportarXMLTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf,
  Xml.Win.msxmldom, Xml.XMLDoc, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.StdCtrls, Vcl.Buttons, cxGroupBox,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Datasnap.Provider,
  Datasnap.Xmlxform, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC;

type
  TfrmImportarXMLTeste = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    DBGrid2: TDBGrid;
    cxTabSheet4: TcxTabSheet;
    DBGrid3: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    function GetData(DataStr:String):TDateTime;
    function GetValor(ValorStr:String):Currency;
  public
    { Public declarations }
  end;

var
  frmImportarXMLTeste: TfrmImportarXMLTeste;

implementation

{$R *.dfm}

uses untDMImportarXML, smDBFireBird, untDM, smMensagens;

procedure TfrmImportarXMLTeste.BitBtn1Click(Sender: TObject);
begin
  DMImportarXML.cdsXMLCabecalho.Close;
  DMImportarXML.cdsXMLCabecalho.Open;

  DMImportarXML.cdsXMLGuias.Close;
  DMImportarXML.cdsXMLGuias.Open;
end;

procedure TfrmImportarXMLTeste.BitBtn2Click(Sender: TObject);
var
  IdCabecalho:Integer;
begin
  DMImportarXML.cdsXMLCabecalho.Close;
  DMImportarXML.cdsXMLCabecalho.Open;

  DMImportarXML.cdsXMLGuias.Close;
  DMImportarXML.cdsXMLGuias.Open;

  if DMImportarXML.cdsXMLCabecalho.RecordCount <=0 then
  begin
    smMensagens.Msg('Erro ao abrir XML de Cabeçalho. Nenhum registro encontrado!', mtErro);
    Abort;
  end;


  DMImportarXML.fdqCabecalho.Close;
  DMImportarXML.fdqCabecalho.Open;

  DMImportarXML.fdqCabecalho.Append;
  IdCabecalho:= GetGenerator('GEN_GUIAS_CABECALHO', DM.cdsBusca);
  DMImportarXML.fdqCabecalhoID_GUIAS_CABECALHO.AsInteger := IdCabecalho;
  DMImportarXML.fdqCabecalhoTIPO_TRANSACAO.AsString:=  DMImportarXML.cdsXMLCabecalhoans_tipoTransacao.AsString ;
  DMImportarXML.fdqCabecalhoSEQUENCIAL_TRANSACAO.AsString:= DMImportarXML.cdsXMLCabecalhoans_sequencialTransacao.AsString ;

  DMImportarXML.fdqCabecalhoDATA_REGISTRO_TRANSACAO.AsDateTime:= GetData(DMImportarXML.cdsXMLCabecalhoans_dataRegistroTransacao.AsString) ;
  DMImportarXML.fdqCabecalhoHORA_REGISTRO_TRANSACAO.AsDateTime:= DMImportarXML.cdsXMLCabecalhoans_horaRegistroTransacao.AsDateTime ;


  DMImportarXML.fdqCabecalhoREGISTRO_ANS.AsString:= DMImportarXML.cdsXMLCabecalhoans_registroANS.AsString ;
  DMImportarXML.fdqCabecalhoVERSAO_PADRAO.AsString:= DMImportarXML.cdsXMLCabecalhoans_versaoPadrao.AsString ;
  DMImportarXML.fdqCabecalhoDT_HR_IMPORTACAO.AsDateTime:=Now;
  DMImportarXML.fdqCabecalho.Post;


  DMImportarXML.fdqDetalhe.Close;
  DMImportarXML.fdqDetalhe.Open;

  DMImportarXML.cdsXMLGuias.First;
  while not(DMImportarXML.cdsXMLGuias.Eof) do
  begin
    DMImportarXML.fdqDetalhe.Append;



    DMImportarXML.fdqDetalhe.FieldByName('ID_GUIAS_DETALHE').AsInteger:= GetGenerator('GEN_GUIAS_DETALHE', DM.cdsBusca);
    DMImportarXML.fdqDetalhe.FieldByName('ID_GUIAS_CABECALHO').AsInteger:= IdCabecalho;
    DMImportarXML.fdqDetalhe.FieldByName('REGISTRO_ANS').AsString:=DMImportarXML.cdsXMLGuias.FieldByName('ans_registroANS').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('DATA_EMISSAO_GUIA').AsDateTime:= GetData(DMImportarXML.cdsXMLGuias.FieldByName('ans_dataEmissaoGuia').AsString);
    DMImportarXML.fdqDetalhe.FieldByName('NUMERO_GUIA_PRESTADOR').AsInteger:= DMImportarXML.cdsXMLGuias.FieldByName('ans_numeroGuiaPrestador').AsInteger;
    DMImportarXML.fdqDetalhe.FieldByName('DADOS_AUTORIZACAO').AsString := DMImportarXML.cdsXMLGuias.FieldByName('ans_dadosAutorizacao').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('NUMERO_CARTEIRA').AsInteger:= DMImportarXML.cdsXMLGuias.FieldByName('ans_numeroCarteira').AsInteger;
    DMImportarXML.fdqDetalhe.FieldByName('NOME_BENEFICIARIO').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_nomeBeneficiario').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('NOME_PLANO').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_nomePlano').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('NOME_CONTRATADO1').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_nomeContratado1').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('NOME_PROFISSIONAL').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_nomeProfissional').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('SIGLA_CONSELHO').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_siglaConselho').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('NUMERO_CONSELHO').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_numeroConselho').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('UF_CONSELHO').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_ufConselho').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('NOME_CONTRATADO2').AsString:=DMImportarXML.cdsXMLGuias.FieldByName('ans_nomeContratado2').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('CARATER_ATENDIMENTO').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_caraterAtendimento').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('TIPO_SAIDA').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_tipoSaida').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('TIPO_ATENDIMENTO').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_tipoAtendimento').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('CODIGO').AsString:=DMImportarXML.cdsXMLGuias.FieldByName('ans_codigo').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('TIPO_TABELA').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_tipoTabela').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('DESCRICAO').AsString:= DMImportarXML.cdsXMLGuias.FieldByName('ans_descricao').AsString;
    DMImportarXML.fdqDetalhe.FieldByName('DATA').AsDateTime:= GetData(DMImportarXML.cdsXMLGuias.FieldByName('ans_data').AsString);
    DMImportarXML.fdqDetalhe.FieldByName('QUANTIDADE_REALIZADA').AsInteger:= DMImportarXML.cdsXMLGuias.FieldByName('ans_quantidadeRealizada').AsInteger;

    DMImportarXML.fdqDetalhe.FieldByName('VALOR').AsCurrency:= GetValor(DMImportarXML.cdsXMLGuias.FieldByName('ans_valor').AsString);
    DMImportarXML.fdqDetalhe.FieldByName('VALORTOTAL_1').AsCurrency:= GetValor(DMImportarXML.cdsXMLGuias.FieldByName('ans_valorTotal1').AsString);
    DMImportarXML.fdqDetalhe.FieldByName('VALORTOTAL_2').AsCurrency:= GetValor(DMImportarXML.cdsXMLGuias.FieldByName('ans_valorTotal2').AsString);

    DMImportarXML.fdqDetalhe.Post;
    DMImportarXML.cdsXMLGuias.Next;

  end;


end;

procedure TfrmImportarXMLTeste.BitBtn5Click(Sender: TObject);
var
  NodePessoas: IXMLNode;
  i: integer;
begin

end;

procedure TfrmImportarXMLTeste.FormCreate(Sender: TObject);
begin
  DMImportarXML := TDMImportarXML.Create(nil);

end;

procedure TfrmImportarXMLTeste.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DMImportarXML);
end;

function TfrmImportarXMLTeste.GetData(DataStr: String): TDateTime;
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

function TfrmImportarXMLTeste.GetValor(ValorStr: String): Currency;
begin
  ValorStr:= (StringReplace(ValorStr, ',', '', [rfReplaceAll]));
  Result:= StrToFloat(StringReplace(ValorStr, '.', ',', [rfReplaceAll]));
end;

end.
