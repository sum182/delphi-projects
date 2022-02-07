unit uMainMenu;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, smGeral, Grids, DBGrids, smDBGrid, DBCtrls,
  Provider, DB, DBClient, DBXpress, FMTBcd, SqlExpr,uModules;

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
    estes1: TMenuItem;
    ImageList1: TImageList;
    Customer1: TMenuItem;
    Vendors1: TMenuItem;
    procedure Vendors1Click(Sender: TObject);
    procedure Customer1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
  private
    Modules:TModules;
    procedure LoadModules;
    procedure UnloadModules;

  public

  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

uses
  smMensagens,UDmConnection;

{$R *.dfm}

procedure TfrmMainMenu.Customer1Click(Sender: TObject);
begin
  OpenFormClass('TfrmCustomer');
end;

procedure TfrmMainMenu.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMainMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UnloadModules;
end;

procedure TfrmMainMenu.FormCreate(Sender: TObject);
begin
  LoadModules;
  DMConnection.Cnn.Close;
  DMConnection.Cnn.Open;
end;

procedure TfrmMainMenu.LoadModules;
begin
  Modules := TModules.Create;
  Modules.Load;

  Application.ProcessMessages;
  Application.Minimize;
  Application.Restore;
end;

procedure TfrmMainMenu.UnloadModules;
begin
  Modules.Unload;
end;

procedure TfrmMainMenu.Vendors1Click(Sender: TObject);
begin
  OpenFormClass('TfrmVendas');
end;

end.

