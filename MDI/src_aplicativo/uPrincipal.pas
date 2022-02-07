unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type

  { DLL procedure }
  TOpenFormDLL = procedure( Application : Pointer);

  TfMainForm = class(TForm)
    MainMenu: TMainMenu;
    mnuFormInExe: TMenuItem;
    mnuForms: TMenuItem;
    mnuFormInDll: TMenuItem;
    procedure mnuFormInExeClick(Sender: TObject);
    procedure mnuFormInDllClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

    vDll : THandle;
  end;

var
  fMainForm: TfMainForm;

implementation

uses uFormInExeFile;

{$R *.dfm}
procedure TfMainForm.mnuFormInExeClick(Sender: TObject);
begin
  { Open form }
  Application.CreateForm(TfFormInExeFile, fFormInExeFile);
  fFormInExeFile.Show;
end;

procedure TfMainForm.mnuFormInDllClick(Sender: TObject);
var
  vProc : TOpenFormDLL;
begin
  { try to load a  DLL file }
  vDll := LoadLibrary('FormDll.dll');

  { }
  if vDLL <> 0 then begin

    @vProc := GetProcAddress(vDll, 'ShowFormDLL');

    if @vProc <> nil then begin

       { Call a dll procedure }
       vProc( Pointer(Application));
    end;
  end;
end;

procedure TfMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { Free library }
  if vDll <> 0 then
    FreeLibrary( vDll);
end;

end.
