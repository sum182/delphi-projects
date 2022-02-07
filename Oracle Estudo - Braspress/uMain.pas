unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    abeladeTeste1: TMenuItem;
    procedure abeladeTeste1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uTesteGrid;

{$R *.dfm}

procedure TfrmMain.abeladeTeste1Click(Sender: TObject);
begin
  try
    frmTeste := TfrmTeste.Create(Application);
    frmTeste.ShowModal;
  finally
    FreeAndNil(frmTeste);
  end;
end;

end.
