program OpenDLL;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmOpenDLL},
  Unit2 in 'Unit2.pas' {frmMainMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.Run;
end.
