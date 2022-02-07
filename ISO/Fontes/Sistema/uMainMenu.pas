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
    Procedimentos1: TMenuItem;
    esteLogin1: TMenuItem;
    reinamentos1: TMenuItem;
    Cadastro2: TMenuItem;
    abelas2: TMenuItem;
    iposdeTreinamentos1: TMenuItem;
    Instituioes1: TMenuItem;
    Instrutores1: TMenuItem;
    Usurios1: TMenuItem;
    Departamentos1: TMenuItem;
    Funcionarios1: TMenuItem;
    Cadastro3: TMenuItem;
    Cadastro4: TMenuItem;
    Cadastro5: TMenuItem;
    FichaIndividual1: TMenuItem;
    Fornecedores1: TMenuItem;
    Cadastro6: TMenuItem;
    elefones1: TMenuItem;
    procedure elefones1Click(Sender: TObject);
    procedure Cadastro6Click(Sender: TObject);
    procedure FichaIndividual1Click(Sender: TObject);
    procedure Cadastro5Click(Sender: TObject);
    procedure Cadastro4Click(Sender: TObject);
    procedure Cadastro3Click(Sender: TObject);
    procedure Instrutores1Click(Sender: TObject);
    procedure Instituioes1Click(Sender: TObject);
    procedure iposdeTreinamentos1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure esteLogin1Click(Sender: TObject);
    procedure Procedimentos1Click(Sender: TObject);
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

uses
  smForms,uLoginDefault;

{$R *.dfm}



procedure TfrmMainMenu.FormadeArmazenamento1Click(Sender: TObject);
begin
 OpenFormMDIClass('TfrmRegFormArm');
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
  OpenFormMDIClass('TfrmRegIndexacao');
end;

procedure TfrmMainMenu.Instituioes1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmInstituicoes');
end;

procedure TfrmMainMenu.Instrutores1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmInstrutores');
end;

procedure TfrmMainMenu.iposdeTreinamentos1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmTreinamentosTipos');
end;

procedure TfrmMainMenu.LoadModules;
begin
  Modules := TModules.Create;
//  Modules.Load;
end;

procedure TfrmMainMenu.LocaldeArmazenamento1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmRegLocalArm');
end;

procedure TfrmMainMenu.Procedimentos1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmProcedimento');
end;

procedure TfrmMainMenu.Registros1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmCadTesteReg');
end;

procedure TfrmMainMenu.Reteno1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmRegRetencao');
end;

procedure TfrmMainMenu.RH1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmCadTesteRH');
end;

procedure TfrmMainMenu.UnloadModules;
begin
 Modules.Unload;
end;

procedure TfrmMainMenu.ACP1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmCadTesteACP');
end;

procedure TfrmMainMenu.Cadastro1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmRegistros');
end;

procedure TfrmMainMenu.Cadastro2Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmTreinamentos');
end;

procedure TfrmMainMenu.Cadastro3Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmUsuarios');
end;

procedure TfrmMainMenu.Cadastro4Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmDepartamentos');
end;

procedure TfrmMainMenu.Cadastro5Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmFuncionarios');
end;

procedure TfrmMainMenu.Cadastro6Click(Sender: TObject);
begin
   OpenFormMDIClass('TfrmFornecedores');
end;

procedure TfrmMainMenu.Calibrao1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmCadTesteCalib');
end;

procedure TfrmMainMenu.elefones1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmTelefones')
end;

procedure TfrmMainMenu.esteLogin1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmLoginDefault')
end;

procedure TfrmMainMenu.FichaIndividual1Click(Sender: TObject);
begin
  OpenFormMDIClass('TfrmFichaIndiv')
end;

procedure TfrmMainMenu.FileExit1Execute(Sender: TObject);
begin
  Close;
end;



end.

