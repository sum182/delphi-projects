unit unReLeituras;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppCache, ppClass, ppDB, DB, DBClient, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport,  StdCtrls, ppStrtch, ppMemo, ppCtrls,
  ppVar, ppPrnabl, ppSubRpt, Grids,
  DBGrids, Buttons, ComCtrls, unFormPadrao, smButton;


type
  TFoReLeituras = class(TFoPadrao)
    ReLeituras: TppReport;
    PiPeLeituras: TppDBPipeline;
    DaSoLeituras: TDataSource;
    ClDaLeituras: TClientDataSet;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLine2: TppLine;
    LaPeriodo: TppLabel;
    LaUsuario: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText57: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppLabel37: TppLabel;
    ppLabel68: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel48: TppLabel;
    ppLabel51: TppLabel;
    ppLabel75: TppLabel;
    ppLabel53: TppLabel;
    ppLabel56: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    PiPeSocios: TppDBPipeline;
    DaSoSocios: TDataSource;
    ClDaSocios: TClientDataSet;
    SuReSocios: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel16: TppLabel;
    ppLine9: TppLine;
    ppDBText1: TppDBText;
    ppLabel18: TppLabel;
    DbTeSocioValor: TppDBText;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel19: TppLabel;
    ppLine12: TppLine;
    ppLabel17: TppLabel;
    LaTotalSocio: TppLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdDtInicial: TDateTimePicker;
    EdDtFinal: TDateTimePicker;
    BuImprimir: TsmButton;
    smButton1: TsmButton;
    procedure BuImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nSocio_Valor:Real;
  end;

var
  FoReLeituras: TFoReLeituras;

implementation

uses unDm, UnGeral;

{$R *.dfm}

procedure TFoReLeituras.BuImprimirClick(Sender: TObject);
begin
  Aguarde('Gerando Relatório');

  //CONSITENCIAS DAS DATAS
{  IF (EdDtInicial.Date = '') or (EdDtFinal.Date = '') Then
    Begin
      MsgErro('Preencha corretamente os campos do perído da data!');
      Exit;
    End
  ;
 }
  ClDaleituras.Close;

  //LIMPANDO OS PARAMETROS
  ClDaleituras.Params.ParamByName('DTINI').Value := Null;
  ClDaleituras.Params.ParamByName('DTFIM').Value := Null;

  //ALIMENTANDO OS PARAMETROS
  ClDaleituras.Params.ParamByName('DTINI').Value := EdDtInicial.Date;
  ClDaleituras.Params.ParamByName('DTFIM').Value := EdDtFinal.Date;

  //FORMATANDO A LABEL DO FILTRO DO RELATORIO
  LaPeriodo.Caption:= 'Período do Relatório de ' + DateToStr(EdDtInicial.Date) + ' á ' + DateToStr(EdDtFinal.Date);

  //FORMATANDO A LABEL DO USUARIO
  LaUsuario.Caption:= 'Impressor por: ' + GetUsuario();

  ClDaleituras.Open;

  IF ClDaleituras.IsEmpty Then
    Begin
      MsgInfo('Não existem foram encontrados dados neste período!');
      FimAguarde();
      Exit;
    End
  ;
  
  Releituras.Print;
  
  ClDaLeituras.Close;
  ClDaSocios.Close;

  FimAguarde();
end;

procedure TFoReLeituras.FormShow(Sender: TObject);
begin
  //EdDtInicial.Text := GetFirstDay;
  //EdDtFinal.Text   := GetLastDay;
end;

procedure TFoReLeituras.ppDetailBand2BeforePrint(Sender: TObject);
begin

nSocio_Valor := nSocio_Valor + ClDaSocios.FieldByName('VALOR').AsFloat;

end;


procedure TFoReLeituras.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  LaTotalSocio.Caption := FormatFloat('R$#,0.00;(R$#,0.00)',nSocio_Valor);
end;


Initialization
  RegisterClass(TFoReLeituras);

Finalization
  UnRegisterClass(TFoReLeituras);
end.
