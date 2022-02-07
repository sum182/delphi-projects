unit uMainMenu;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList;

type
  Tmodule = class
    FHandle: THandle;
    FFileName: string;
  public
    procedure CopyMenuItem(Src, Dest: TMenuItem);
    procedure LoadModule(dll: string; Menu: TMenuItem);
    procedure UnLoadModule;
  end;

type
  TAcp = class(Tmodule)
  end;

type
  TReg = class(TModule)
  end;

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
    ToolButton9: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ISO1: TMenuItem;
    mnAcp: TMenuItem;
    mnReg: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
  private
  public
    Acp: TAcp;
    Reg: TReg;
    procedure LoadModules;
    procedure UnLoadModules;
  end;
  DLL_SetMainChild = procedure(ParentApplication: TApplication;
    ParentForm: TForm); stdcall;

var
  frmMainMenu: TfrmMainMenu;

implementation

{$R *.dfm}

uses uAbout, uDM, smGeral, uLogin, uSplah, SConnect;

procedure TfrmMainMenu.FormCreate(Sender: TObject);
begin
  OpenForm(TfrmSplash);
  OpenForm(TfrmLogin);
  LoadModules;
end;

procedure TfrmMainMenu.FormDestroy(Sender: TObject);
begin
  UnLoadModules;
end;

procedure TfrmMainMenu.HelpAbout1Execute(Sender: TObject);
begin
  OpenForm(TAboutBox);
end;

procedure TfrmMainMenu.LoadModules;
begin
 // Acp := TAcp.Create;
//  Acp.LoadModule('ACP.dll', mnAcp);

 // Reg := TReg.Create;
//  Reg.LoadModule('Registros.dll',mnReg);
end;

procedure TfrmMainMenu.UnLoadModules;
begin
 // Acp.UnLoadModule;
//  Reg.UnLoadModule;
end;

procedure TfrmMainMenu.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

{ Tmodule }

procedure Tmodule.CopyMenuItem(Src, Dest: TMenuItem);
var
  i: Integer;
  Item: TMenuItem;
begin
  Dest.Caption := Src.Caption;
  Dest.Enabled := Src.Enabled;
  Dest.Visible := Src.Visible;
  Dest.Tag := Src.Tag;
  Dest.Hint := Src.Hint;
  Dest.OnClick := Src.OnClick;

  for i := 0 to Src.Count - 1 do
  begin
    Item := TMenuItem.Create(Dest);
    Dest.Add(Item);
    CopyMenuItem(Src.Items[i], Item);
  end;

end;

procedure Tmodule.LoadModule(dll: string; Menu: TMenuItem);
var
  Create: procedure; stdcall;
  LoadMenu: function: TObject; stdcall;
  SetMainChild: DLL_SetMainChild;
  ProcAddr: FarProc;
  i: integer;
begin
  FHandle := 0;
  FFileName := dll;

  if (FHandle = 0) then
    FHandle := LoadLibrary(PChar(FFileName));

  if (FHandle = 0) then
    raise Exception.Create('Não foi possível localizar o módulo ' + FFileName);

  @Create := GetProcAddress(FHandle, 'Create');
  @LoadMenu := GetProcAddress(FHandle, 'LoadMenu');
  ProcAddr := GetProcAddress(FHandle, 'SetMainChild');

  if (@Create = nil) or (@LoadMenu = nil) or (ProcAddr = nil) then
  begin
    raise Exception.Create('Erro ao carregar o módulo ' + FFileName);
  end;
  Create;

  SetMainChild := ProcAddr;
  SetMainChild(Application, frmMainMenu);

  CopyMenuItem(TmenuItem(LoadMenu), Menu);
end;

procedure Tmodule.UnLoadModule;
var
  Destroy: procedure; stdcall;
begin
  if (FHandle = 0) then
    FHandle := LoadLibrary(PChar(FFileName));

  if (FHandle = 0) then
    raise Exception.Create('Não foi possível localizar o módulo ' + FFileName);

  @Destroy := GetProcAddress(FHandle, 'Destroy');

  if (@Destroy = nil) then
  begin
    raise Exception.Create('Erro ao descarregar o módulo ' + FFileName);
  end;
  Destroy;
  //Analisar - Dadndo erro de access violation
  //FreeLibrary(FHandle);
end;

end.

