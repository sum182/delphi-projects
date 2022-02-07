unit untCadastroGrupoLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, smCadFD, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, smCadPadrao, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  smDBGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.ToolWin, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTimeEdit, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCadastroGrupoLote = class(TfrmCadFD)
    fdqCadID_GUIAS_GRUPO_LOTE: TIntegerField;
    fdqCadID_USUARIO: TIntegerField;
    fdqCadDT_IMPORTACAO: TDateField;
    fdqCadHR_IMPORTACAO: TTimeField;
    fdqCadID_TIPO_SERVICO: TIntegerField;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label4: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label5: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label6: TLabel;
    fdqTipoServico: TFDQuery;
    fdqTipoServicoID_TIPO_SERVICO: TIntegerField;
    fdqTipoServicoDESCRICAO: TStringField;
    dsTipoServico: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    fdqCadUSUARIO_IMPORTACAO: TStringField;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure OpenQuerys;
  public
    { Public declarations }
  end;

var
  frmCadastroGrupoLote: TfrmCadastroGrupoLote;

implementation

{$R *.dfm}

uses untDM;

{ TfrmCadastroGrupoLote }

procedure TfrmCadastroGrupoLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadastroGrupoLote:=nil;
end;

procedure TfrmCadastroGrupoLote.FormShow(Sender: TObject);
begin
  inherited;
  OpenQuerys;
end;

procedure TfrmCadastroGrupoLote.OpenQuerys;
begin
  fdqTipoServico.Close;
  fdqTipoServico.Open;
end;

end.
