unit uMainMenu;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList,smGeral, jpeg, uModules, XPMan;

type
  TfrmMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    Window1: TMenuItem;
    Help1: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowTileItem: TMenuItem;
    WindowArrangeItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    WindowMinimizeItem: TMenuItem;
    StatusBar: TStatusBar;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    FileNew1: TAction;
    FileSave1: TAction;
    FileExit1: TAction;
    FileOpen1: TAction;
    FileSaveAs1: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout1: TAction;
    FileClose1: TWindowClose;
    WindowTileVertical1: TWindowTileVertical;
    WindowTileItem2: TMenuItem;
    ToolBar2: TToolBar;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    mnAcp: TMenuItem;
    mnReg: TMenuItem;
    estes1: TMenuItem;
    ACP1: TMenuItem;
    Registros1: TMenuItem;
    Calibrao1: TMenuItem;
    RH1: TMenuItem;
    Cadastro1: TMenuItem;
    abelas1: TMenuItem;
    N1: TMenuItem;
    LocaldeArmazenamento1: TMenuItem;
    FormadeArmazenamento1: TMenuItem;
    Reteno1: TMenuItem;
    ImageList1: TImageList;
    XPManifest1: TXPManifest;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cadastro1Click(Sender: TObject);
    procedure Reteno1Click(Sender: TObject);
    procedure Indexao1Click(Sender: TObject);
    procedure FormadeArmazenamento1Click(Sender: TObject);
    procedure LocaldeArmazenamento1Click(Sender: TObject);
    procedure RH1Click(Sender: TObject);
    procedure Registros1Click(Sender: TObject);
    procedure Calibrao1Click(Sender: TObject);
    procedure ACP1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
  private
    Modules: TModules;
    procedure LoadModules;
    procedure UnloadModules;
  public

  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

{$R *.dfm}



procedure TfrmMainMenu.FormadeArmazenamento1Click(Sender: TObject);
begin
 OpenFormClass('TfrmRegFormArm');
end;

procedure TfrmMainMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UnloadModules;
end;

procedure TfrmMainMenu.FormCreate(Sender: TObject);
begin
  LoadModules;
  //OpenForm(TfrmSplash);
  //OpenForm(TfrmLogin);
end;



procedure TfrmMainMenu.HelpAbout1Execute(Sender: TObject);
begin
  //OpenForm(TAboutBox);
end;



procedure TfrmMainMenu.Indexao1Click(Sender: TObject);
begin
  OpenFormClass('TfrmRegIndexacao');
end;

procedure TfrmMainMenu.LoadModules;
begin
  Modules := TModules.Create;
  Modules.Load;
end;

procedure TfrmMainMenu.LocaldeArmazenamento1Click(Sender: TObject);
begin
  OpenFormClass('TfrmRegLocalArm');
end;

procedure TfrmMainMenu.Registros1Click(Sender: TObject);
begin
  OpenFormClass('TfrmCadTesteReg');
end;

procedure TfrmMainMenu.Reteno1Click(Sender: TObject);
begin
  OpenFormClass('TfrmRegRetencao');
end;

procedure TfrmMainMenu.RH1Click(Sender: TObject);
begin
  OpenFormClass('TfrmCadTesteRH');
end;

procedure TfrmMainMenu.UnloadModules;
begin
 Modules.Unload;
end;

procedure TfrmMainMenu.ACP1Click(Sender: TObject);
begin
  OpenFormClass('TfrmCadTesteACP');
end;

procedure TfrmMainMenu.Cadastro1Click(Sender: TObject);
begin
  OpenFormClass('TfrmRegistros');
end;

procedure TfrmMainMenu.Calibrao1Click(Sender: TObject);
begin
  OpenFormClass('TfrmCadTesteCalib');
end;

procedure TfrmMainMenu.FileExit1Execute(Sender: TObject);
begin
  Close;
end;



end.

