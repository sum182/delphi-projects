unit uMainMenu;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList,smGeral;

type
  TfrmMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    HelpAboutItem: TMenuItem;
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
    ImageList1: TImageList;
    Cadastros1: TMenuItem;
    estes1: TMenuItem;
    Questes1: TMenuItem;
    Candidatos1: TMenuItem;
    este1: TMenuItem;
    IniciarTeste1: TMenuItem;
    procedure IniciarTeste1Click(Sender: TObject);
    procedure Candidatos1Click(Sender: TObject);
    procedure Questes1Click(Sender: TObject);
    procedure estes1Click(Sender: TObject);
  private
  public

  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

uses uTestes, uQuestoes, uCandidatos, uTesteFunc;

{$R *.dfm}


procedure TfrmMainMenu.Candidatos1Click(Sender: TObject);
begin
  OpenForm(TfrmCandidatos);
end;

procedure TfrmMainMenu.estes1Click(Sender: TObject);
begin
  OpenForm(TfrmTestes);
end;

procedure TfrmMainMenu.IniciarTeste1Click(Sender: TObject);
begin
  OpenForm(TfrmTesteFunc);
end;

procedure TfrmMainMenu.Questes1Click(Sender: TObject);
begin
  OpenForm(TfrmQuestoes);
end;

end.

