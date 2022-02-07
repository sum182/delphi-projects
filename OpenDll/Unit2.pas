unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TfrmMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    DLL1: TMenuItem;
    OpenDLL1: TMenuItem;
    Relatiorios1: TMenuItem;
    Relat11: TMenuItem;
    Relat21: TMenuItem;
    Relat31: TMenuItem;
    Cadastros1: TMenuItem;
    mnCadastros: TMenuItem;
    procedure OpenDLL1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

uses Unit1, smGeral;

{$R *.dfm}

procedure TfrmMainMenu.OpenDLL1Click(Sender: TObject);
begin
  OpenForm(TfrmOpenDLL);
end;

end.
