unit MainUnit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ToolWin, ComCtrls, Menus;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    Start: TMenuItem;
    procedure StartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

   T_ProvaChild = procedure (ParentApplication: TApplication; ParentForm: TForm); stdcall;

var
  MainForm: TMainForm;

implementation

{$R *.DFM}

procedure TMainForm.StartClick(Sender: TObject);
var
   DllHandle: THandle;
   ProcAddr: FarProc;
   ProvaChild: T_ProvaChild;
begin   
   DllHandle := LoadLibrary('ProjectDll');
   ProcAddr := GetProcAddress(DllHandle, 'ProvaChild');
   if ProcAddr <> nil then
   begin
      ProvaChild := ProcAddr;
      ProvaChild(Application,Self);
   end;
end;

end.
