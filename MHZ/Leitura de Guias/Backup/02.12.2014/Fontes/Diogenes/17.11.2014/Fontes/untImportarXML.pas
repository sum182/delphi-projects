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
  cxGroupBox, Data.DB, Datasnap.DBClient;

type
  TfrmImportarXML = class(TForm)
    cxGroupBox1: TcxGroupBox;
    OpenDialog1: TOpenDialog;
    btnAbrirArquivos: TBitBtn;
    cxGroupBox2: TcxGroupBox;
    lstbxArquivos: TListBox;
    btnImportar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure btnAbrirArquivosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);

  private
    DiretorioApp: string;
    DiretorioImportando: string;
    DiretorioImportados: string;
    DiretorioConvertidos: string;
    DiretorioErroImportacao: string;

    procedure CriarDiretorio(Diretorio: string);
    procedure MoverArquivo(Origem, Destino, Arquivo: String);
    procedure ConverterArquivo(ArquivoImportado: string);
    procedure ImportarArquivo(NomeArquivo: string);
    procedure SetDiretorios;

    function GetData(DataStr:String):TDateTime;
    function GetValor(ValorStr:String):Currency;

  public
    { Public declarations }
  end;

var
  frmImportarXML: TfrmImportarXML;

implementation

{$R *.dfm}

uses smGeral, untDMImportarXML, smMensagens, smDBFireBird, untDM;

procedure TfrmImportarXML.btnAbrirArquivosClick(Sender: TObject);
var
  i: integer;
begin
  try
    if OpenDialog1.Execute then
    begin
      Wait(self, 'Abrindo Arquivos');
      lstbxArquivos.Items.Clear;

      for i := 0 to OpenDialog1.Files.Count - 1 do
      begin
        ConverterArquivo(OpenDialog1.Files[i]);
      end;
    end;

  finally
    WaitEnd(self);
  end;

end;

procedure TfrmImportarXML.CriarDiretorio(Diretorio: string);
var
  DiretorioNovo: String;
begin
  DiretorioNovo := GetCurrentDir + '' + Diretorio + '';

  if not DirectoryExists(DiretorioNovo) then
    ForceDirectories(DiretorioNovo)
end;

procedure TfrmImportarXML.FormCreate(Sender: TObject);
begin
  SetDiretorios;
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

procedure TfrmImportarXML.ImportarArquivo(NomeArquivo: string);
var
  IdCabecalho:Integer;
  Arquivo: String;
begin

  try
    Arquivo:= DiretorioApp + DiretorioConvertidos + '\' + NomeArquivo;
    DMImportarXML.XMLTransformProviderCabecalho.XMLDataFile:= Arquivo;
    DMImportarXML.cdsXMLCabecalho.Close;
    DMImportarXML.cdsXMLCabecalho.Open;

    DMImportarXML.XMLTransformProviderGuias.XMLDataFile:= Arquivo;
    DMImportarXML.cdsXMLGuias.Close;
    DMImportarXML.cdsXMLGuias.Open;

  except on E:Exception do
    begin
      Msg('Erro na abertura dos arquivos XML. ' + #13 + E.Message,mtErro);
      Abort;
    end;
  end;

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


   // Atualizando Pasta de Importados
    MoverArquivo(DiretorioApp + DiretorioConvertidos,
      DiretorioApp + DiretorioImportados, NomeArquivo);


end;

procedure TfrmImportarXML.btnImportarClick(Sender: TObject);
var
  i:Integer;
begin
  try
    Wait(self, 'Importando Arquivos');

    for i := 0 to lstbxArquivos.Items.Count -1 do
    begin
      Wait(self, 'Importando arquivo' + lstbxArquivos.Items[i]);
      ImportarArquivo(lstbxArquivos.Items[i]);
    end;

  finally
    WaitEnd(self);
  end;
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

      ShowMessage('Erro na importação do arquivo: ' + NomeArquivoImportado +
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
