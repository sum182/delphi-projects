unit untMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxBar, cxClasses, dxRibbon, Vcl.ImgList, dxStatusBar,
  dxRibbonStatusBar;

type
  TfrmMenuPrincipal = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    dxBarGroup2: TdxBarGroup;
    dxBarGroup3: TdxBarGroup;
    dxBarManager1Bar3: TdxBar;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    dxBarButton5: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    cxImageList1: TcxImageList;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton8: TdxBarLargeButton;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbon1Tab4: TdxRibbonTab;
    dxRibbon1Tab5: TdxRibbonTab;
    dxBarManager1Bar6: TdxBar;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarManager1Bar7: TdxBar;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarManager1Bar8: TdxBar;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxRibbon1Tab3: TdxRibbonTab;
    dxBarManager1Bar9: TdxBar;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarManager1Bar10: TdxBar;
    dxBarLargeButton17: TdxBarLargeButton;
    dxRibbon1Tab6: TdxRibbonTab;
    dxBarManager1Bar11: TdxBar;
    dxBarLargeButton18: TdxBarLargeButton;
    procedure este1Click(Sender: TObject);
    procedure ImportarArquivosXML1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure USUARIOS1Click(Sender: TObject);
    procedure iposdeservios1Click(Sender: TObject);
    procedure Status1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure dxBarLargeButton18Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

{$R *.dfm}

uses untImportarXMLTeste, untImportarXML,untCadastroUsuarios, untImportarExcel,
  untTesteUsuario, untCadastroServico, untCadastroStatus, untCadastroClientes;

procedure TfrmMenuPrincipal.Clientes1Click(Sender: TObject);
begin
  try
    frmCadastroClientes := TfrmCadastroClientes.Create(self);
    frmCadastroClientes.ShowModal;
  finally
    FreeAndNil(frmCadastroClientes);
  end;
end;

procedure TfrmMenuPrincipal.dxBarButton1Click(Sender: TObject);
begin
SHOWMESSAGE('');
end;

procedure TfrmMenuPrincipal.dxBarButton2Click(Sender: TObject);
begin
     SHOWMESSAGE('');
end;

procedure TfrmMenuPrincipal.dxBarLargeButton11Click(Sender: TObject);
begin
  try
    frmCadastroUsuario := TfrmCadastroUsuario.Create(self);
    frmCadastroUsuario.ShowModal;
  finally
    FreeAndNil(frmCadastroUsuario);
  end;
end;

procedure TfrmMenuPrincipal.dxBarLargeButton12Click(Sender: TObject);
begin
  try
    frmCadastroUsuario := TfrmCadastroUsuario.Create(self);
    frmCadastroUsuario.ShowModal;
  finally
    FreeAndNil(frmCadastroUsuario);
  end;
end;

procedure TfrmMenuPrincipal.dxBarLargeButton18Click(Sender: TObject);
begin
     halt;
end;

procedure TfrmMenuPrincipal.dxBarLargeButton2Click(Sender: TObject);
begin
  try
    frmCadastroClientes := TfrmCadastroClientes.Create(self);
    frmCadastroClientes.ShowModal;
  finally
    FreeAndNil(frmCadastroClientes);
  end;
end;

procedure TfrmMenuPrincipal.dxBarLargeButton3Click(Sender: TObject);
begin
  try
    frmImportarXML := TfrmImportarXML.Create(self);
    frmImportarXML.ShowModal;
  finally
    FreeAndNil(frmImportarXML);
  end;
end;

procedure TfrmMenuPrincipal.dxBarLargeButton4Click(Sender: TObject);
begin
  try
    frmCadastroUsuario := TfrmCadastroUsuario.Create(self);
    frmCadastroUsuario.ShowModal;
  finally
    FreeAndNil(frmCadastroUsuario);
  end;
end;

procedure TfrmMenuPrincipal.dxBarLargeButton5Click(Sender: TObject);
begin
  try
    frmCadastroStatus := TfrmCadastroStatus.Create(self);
    frmCadastroStatus.ShowModal;
  finally
    FreeAndNil(frmCadastroStatus);
  end;
end;

procedure TfrmMenuPrincipal.dxBarLargeButton6Click(Sender: TObject);
begin
  try
    frmCadastroServico := TfrmCadastroServico.Create(self);
    frmCadastroServico.ShowModal;
  finally
    FreeAndNil(frmCadastroServico);
  end;
end;

procedure TfrmMenuPrincipal.este1Click(Sender: TObject);
begin
  try
    frmImportarXMLTeste := TfrmImportarXMLTeste.Create(self);
    frmImportarXMLTeste.ShowModal;
  finally
    FreeAndNil(frmImportarXMLTeste);
  end;
end;

procedure TfrmMenuPrincipal.Excel1Click(Sender: TObject);
begin
  try
    frmImportarExcel := TfrmImportarExcel.Create(self);
    frmImportarExcel.ShowModal;
  finally
    FreeAndNil(frmImportarExcel);
  end;
end;

procedure TfrmMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   halt;
end;

procedure TfrmMenuPrincipal.ImportarArquivosXML1Click(Sender: TObject);
begin
  try
    frmImportarXML := TfrmImportarXML.Create(self);
    frmImportarXML.ShowModal;
  finally
    FreeAndNil(frmImportarXML);
  end;

end;

procedure TfrmMenuPrincipal.iposdeservios1Click(Sender: TObject);
begin
  try
    frmCadastroServico := TfrmCadastroServico.Create(self);
    frmCadastroServico.ShowModal;
  finally
    FreeAndNil(frmCadastroServico);
  end;
end;

procedure TfrmMenuPrincipal.Status1Click(Sender: TObject);
begin
  try
    frmCadastroStatus := TfrmCadastroStatus.Create(self);
    frmCadastroStatus.ShowModal;
  finally
    FreeAndNil(frmCadastroStatus);
  end;
end;

procedure TfrmMenuPrincipal.USUARIOS1Click(Sender: TObject);
begin
  try
    frmTesteUsuario := TfrmTesteUsuario.Create(self);
    frmTesteUsuario.ShowModal;
  finally
    FreeAndNil(frmTesteUsuario);
  end;
end;

procedure TfrmMenuPrincipal.Usurios1Click(Sender: TObject);
begin
  try
    frmCadastroUsuario := TfrmCadastroUsuario.Create(self);
    frmCadastroUsuario.ShowModal;
  finally
    FreeAndNil(frmCadastroUsuario);
  end;
end;

end.
