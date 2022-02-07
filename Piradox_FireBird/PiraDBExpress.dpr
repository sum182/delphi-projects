program PiraDBExpress;

uses
  Forms,
  UnPiraDBExpress in 'UnPiraDBExpress.pas' {FrmMain};

{$R *.RES}

begin
  Application.Title := 'Kattapump for Interbase';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
