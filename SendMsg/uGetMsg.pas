unit uGetMsg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,
  Variants, Forms,
  mdMailSlot;

type
  TDmMsg = class(TService)
    mdMailSlot1: TmdMailSlot;
    procedure ServiceDestroy(Sender: TObject);
    procedure mdMailSlot1MessageAvail(Sender: TObject; Msg: string);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  DmMsg: TDmMsg;

implementation

uses
  smMensagens, smGeral;

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  DmMsg.Controller(CtrlCode);
end;

procedure TDmMsg.FormShow(Sender: TObject);

var
  H: HWnd;
begin
  H := FindWindow(nil, 'Mensageiro');
  if H <> 0 then
    ShowWindow(H, SWP_HIDEWINDOW);

  ShowWindow(Application.Handle, sw_hide);
end;

function TDmMsg.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TDmMsg.mdMailSlot1MessageAvail(Sender: TObject; Msg: string);
begin
  Application.Minimize;
  Application.BringToFront;
  Application.Restore;
  Application.ProcessMessages;
  Application.Title:='Mensagem';
  smMensagens.Msg(Msg, mtAviso, ok, 'Aviso');
  ShowWindow(Application.Handle, sw_hide);
end;

procedure TDmMsg.ServiceDestroy(Sender: TObject);
begin
  DmMsg.DoStart;
end;

end.

