library ProjectDll;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  UnitDll in 'UnitDll.pas' {Form1};



procedure ProvaChild(ParentApplication: TApplication; ParentForm: TForm); export; stdcall;
var
  Form1: TForm1;  
  DllProc: Pointer;             { Called whenever DLL entry point is called }

begin
   Application:=ParentApplication;

   Form1:=TForm1.Create(ParentForm);
   Form1.MyParentForm:=ParentForm;
   Form1.MyParentApplication:=ParentApplication;
//   windows.SetParent(Form1.Handle,ParentForm.Handle);
//   Form1.FormStyle:=fsMDIChild;
   Form1.Show;
end;

procedure DLLUnloadProc(Reason: Integer); register;
begin
  if Reason = DLL_PROCESS_DETACH then  Application:=DllApplication;
end;

exports
   ProvaChild;

begin
   DllApplication:=Application;
   DLLProc := @DLLUnloadProc;
end.
