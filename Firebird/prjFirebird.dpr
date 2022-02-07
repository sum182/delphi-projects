program prjFirebird;

uses
  Forms,
  uIniFirebird in 'uIniFirebird.pas' {frmFirebird};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Start/Stop Firebird';
  Application.CreateForm(TfrmFirebird, frmFirebird);
  Application.Run;
end.
