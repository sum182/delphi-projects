unit untCadastroLote;

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
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, cxCheckBox;

type
  TfrmCadastroLote = class(TfrmCadFD)
    fdqCadID_GUIAS_CABECALHO: TIntegerField;
    fdqCadID_GUIAS_GRUPO_LOTE: TIntegerField;
    fdqCadTIPO_TRANSACAO: TStringField;
    fdqCadSEQUENCIAL_TRANSACAO: TIntegerField;
    fdqCadDATA_REGISTRO_TRANSACAO: TDateField;
    fdqCadHORA_REGISTRO_TRANSACAO: TTimeField;
    fdqCadREGISTRO_ANS: TStringField;
    fdqCadVERSAO_PADRAO: TStringField;
    fdqCadFINALIZADO: TStringField;
    fdqCadCANCELADO: TStringField;
    Label3: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label5: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label7: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label8: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroLote: TfrmCadastroLote;

implementation

{$R *.dfm}

uses untDM;

procedure TfrmCadastroLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadastroLote:=nil;
end;

end.
