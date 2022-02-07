library Registros;

uses
  SysUtils,
  Classes,
  Forms,
  Menus,
  Windows,
  uDmReg in 'uDmReg.pas' {DmReg: TDataModule},
  uISODLL in '..\uISODLL.pas',
  uTesteReg in '..\Teste\uTesteReg.pas' {frmTesteReg},
  smCad in '..\..\..\..\..\Componentes\Sum182\Forms\smCad.pas' {frmCad},
  smCadChild in '..\..\..\..\..\Componentes\Sum182\Forms\smCadChild.pas' {frmCadChild};

{$R *.res}




procedure Create;stdcall;
begin
  DmReg := TDmReg.Create(Application);
  DmReg.SetSocketConnection;
end;

procedure Destroy;stdcall;
begin
  FreeAndNil(DmReg);
end;

function LoadMenu: TObject;stdcall;
begin
  Result:=  DmReg.MainMenu.Items[0];
end;

procedure SetMainChild(ParentApplication: TApplication;
                       ParentForm: TForm); export; stdcall;
var
  DllProc: Pointer;
begin
   DmReg.ParentForm := ParentForm;
   DmReg.ParentApplication := ParentApplication;
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
