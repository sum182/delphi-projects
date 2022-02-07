unit uLockedTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, Buttons,Registry;

type
  TsvLockedTask = class(TForm)
    XPManifest1: TXPManifest;
    Locked: TBitBtn;
    Unlockd: TBitBtn;
    Hide: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure HideClick(Sender: TObject);
    procedure UnlockdClick(Sender: TObject);
    procedure LockedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  svLockedTask: TsvLockedTask;

implementation
procedure HabilitaCTRLALTDEL(YesNo : boolean) ;
const
  sRegPolicies = '\Software\Microsoft\Windows\CurrentVersion\Policies';
begin
  with TRegistry.Create do
  try
    RootKey:=HKEY_CURRENT_USER;
    if OpenKey(sRegPolicies+'\System\',True) then
    begin
      case YesNo of
      False:
      begin
        WriteInteger('DisableTaskMgr',1) ;
      end;
      True:
      begin
        WriteInteger('DisableTaskMgr',0) ;
      end;
    end;
  end;
  CloseKey;
  if OpenKey(sRegPolicies + '\Explorer\',True) then
  begin
  case YesNo of
  False:
  begin
    WriteInteger('NoChangeStartMenu',1) ;
    WriteInteger('NoClose',1) ;
    WriteInteger('NoLogOff',1) ;
  end;
  True:
  begin
    WriteInteger('NoChangeStartMenu',0) ;
    WriteInteger('NoClose',0) ;
    WriteInteger('NoLogOff',0) ;
  end;
  end;
  end;
  CloseKey;
  finally
  Free;
  end;
end;

{$R *.dfm}

procedure TsvLockedTask.FormDestroy(Sender: TObject);
begin
   HabilitaCTRLALTDEL(True);
end;

procedure TsvLockedTask.HideClick(Sender: TObject);
begin
  svLockedTask.HideClick(svLockedTask);
  ShowWindow(application.Handle, sw_hide);
end;

procedure TsvLockedTask.LockedClick(Sender: TObject);
begin
  HabilitaCTRLALTDEL(False);
end;

procedure TsvLockedTask.UnlockdClick(Sender: TObject);
begin
  HabilitaCTRLALTDEL(True);
end;

end.
