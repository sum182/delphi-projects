program Pira2;

uses
  Forms,
  UnPrincipal in 'UnPrincipal.pas' {FrmMain};

{$R *.RES}

begin
  Application.Title := 'Kattapump for Interbase';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
