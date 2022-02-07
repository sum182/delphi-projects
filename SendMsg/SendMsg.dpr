program SendMsg;

uses
  Forms,
  uSendMsg in 'uSendMsg.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SendMsg';
  Application.CreateForm(TfrmSendMsg, frmSendMsg);
  Application.Run;
end.
