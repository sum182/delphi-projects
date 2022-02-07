unit untCadastroStatus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, smCadFD, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ImgList, Vcl.DBActns,
  System.Actions, Vcl.ActnList, smCadPadrao, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, smDBGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.ToolWin, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit;

type
  TfrmCadastroStatus = class(TfrmCadFD)
    fdqBuscaID_STATUS: TIntegerField;
    fdqBuscaDESCRICAO: TStringField;
    fdqCadID_STATUS: TIntegerField;
    fdqCadDESCRICAO: TStringField;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure fdqCadNewRecord(DataSet: TDataSet);
    procedure grPesquisaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroStatus: TfrmCadastroStatus;

implementation

{$R *.dfm}

uses untDM, smDBFireBird;

procedure TfrmCadastroStatus.fdqCadNewRecord(DataSet: TDataSet);
begin
  inherited;
  fdqCadID_STATUS.AsInteger:= GetGenerator('GEN_STATUS',DM.cdsBusca);
end;

procedure TfrmCadastroStatus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadastroStatus:=nil;
end;

procedure TfrmCadastroStatus.FormCreate(Sender: TObject);
begin
  inherited;
     btnExcluir.visible := false;
end;

procedure TfrmCadastroStatus.grPesquisaDblClick(Sender: TObject);
begin
  inherited;
     btnExcluir.enabled := false;
end;

end.
