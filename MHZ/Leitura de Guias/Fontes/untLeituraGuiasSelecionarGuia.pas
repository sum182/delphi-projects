unit untLeituraGuiasSelecionarGuia;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  Vcl.Menus, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxLabel, cxGroupBox;

type
  TfrmLeituraGuiasSelecionarGuia = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox3: TcxGroupBox;
    btnOK: TcxButton;
    btnCancelar: TcxButton;
    cxGrid1DBTableView1NUMERO_GUIA_PRESTADOR: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO_CARTEIRA: TcxGridDBColumn;
    cxGrid1DBTableView1NOME_BENEFICIARIO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1Lote: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo_Servico: TcxGridDBColumn;
  private
  public
  end;

var
  frmLeituraGuiasSelecionarGuia: TfrmLeituraGuiasSelecionarGuia;

implementation

{$R *.dfm}

uses untDMLeituraGuias, untCadastroUsuarios, untLeituraGuias;


end.
