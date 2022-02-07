library ACP;

uses
  SysUtils,
  Classes,
  Forms,
  Menus,
  Windows,
  uDmACP in 'uDmACP.pas' {DmACP: TDataModule},
  uTesteACP in '..\Teste\uTesteACP.pas' {frmTesteACP},
  uISODLL in '..\uISODLL.pas';

{$R *.res}




procedure Create;stdcall;
begin
  DmACP := TDmACP.Create(Application);
  DmACP.SetSocketConnection;
end;

procedure Destroy;stdcall;
begin
  FreeAndNil(DmACP);
end;

function LoadMenu: TObject;stdcall;
begin
  Result:=  DmACP.MainMenu.Items[0];
end;

procedure SetMainChild(ParentApplication: TApplication;
                       ParentForm: TForm); export; stdcall;
var
  DllProc: Pointer;
begin
   DmACP.ParentForm := ParentForm;
   DmACP.ParentApplication := ParentApplication;
end;

procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then  Application:=DllApplication;
end;

exports
  Create,
  Destroy,
  LoadMenu,
  SetMainChild;

begin
   DllApplication:=Application;
   DLLProc := @DLLUnloadProc;
end.
