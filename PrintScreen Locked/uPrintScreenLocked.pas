unit uPrintScreenLocked;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,registry;
type
  TSrvScreen = class(TService)
    procedure ServiceDestroy(Sender: TObject);
    procedure ServiceCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  SrvScreen: TSrvScreen;

implementation

uses
  Forms;

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  SrvScreen.Controller(CtrlCode);
end;
function TSrvScreen.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;
procedure TSrvScreen.ServiceCreate(Sender: TObject);
 var
  i : Byte;
  Reg: Tregistry;
begin
  For I := 0 to 7 Do
    RegisterHotKey(Application.ActiveFormHandle,i+1,i,VK_SNAPSHOT );
end;
procedure TSrvScreen.ServiceDestroy(Sender: TObject);
begin
   SrvScreen.DoStart;
end;
end.
