unit unReDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppCache, ppClass, ppDB, DB, DBClient, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport,  StdCtrls, ppStrtch, ppMemo, ppCtrls,
  ppVar, ppPrnabl, ppSubRpt, Grids,
  DBGrids, Buttons, ComCtrls, smButton, unFormPadrao;

type
  TFoReDespesas = class(TFoPadrao)
    ReDespesas: TppReport;
    PiPeDespesas: TppDBPipeline;
    dsDespesas: TDataSource;
    cdsDespesas: TClientDataSet;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBMemo1: TppDBMemo;
    LaPeriodo: TppLabel;
    LaUsuario: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdDtInicial: TDateTimePicker;
    EdDtFinal: TDateTimePicker;
    BuImprimir: TsmButton;
    smButton1: TsmButton;
    procedure BuImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoReDespesas: TFoReDespesas;

implementation

uses unDm, UnGeral;

{$R *.dfm}

procedure TFoReDespesas.BuImprimirClick(Sender: TObject);
begin
  Aguarde('Gerando Relatório');

  //CONSITENCIAS DAS DATAS
  {IF (EdDtInicial.Text = '') or (EdDtFinal.Text = '') Then
    Begin
      MsgErro('Preencha corretamente os campos do perído da data!');
      Exit;
    End
  ;}

  cdsDespesas.Close;

  //LIMPANDO OS PARAMETROS
  cdsDespesas.Params.ParamByName('DTINI').Value := Null;
  cdsDespesas.Params.ParamByName('DTFIM').Value := Null;

  //ALIMENTANDO OS PARAMETROS
  cdsDespesas.Params.ParamByName('DTINI').Value := EdDtInicial.Date;
  cdsDespesas.Params.ParamByName('DTFIM').Value := EdDtFinal.Date;

  //FORMATANDO A LABEL DO FILTRO DO RELATORIO
  LaPeriodo.Caption:= 'Período do Relatório de ' + DateToStr(EdDtInicial.Date) + ' á ' + DateToStr(EdDtFinal.Date);

  //FORMATANDO A LABEL DO USUARIO
  LaUsuario.Caption:= 'Impressor por: ' + GetUsuario();

  cdsDespesas.Open;

  IF cdsDespesas.IsEmpty Then
    Begin
      MsgInfo('Não existem foram encontrados dados neste período!');
      FimAguarde();
      Exit;
    End
  ;
  
  ReDespesas.Print;
  FimAguarde();
end;

procedure TFoReDespesas.FormShow(Sender: TObject);
begin
  //EdDtInicial.Text := GetFirstDay;
  //EdDtFinal.Text   := GetLastDay;
end;



Initialization
  RegisterClass(TFoReDespesas);

Finalization
  UnRegisterClass(TFoReDespesas);


end.
