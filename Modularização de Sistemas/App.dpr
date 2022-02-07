program App;

uses
  Forms,
  uMainMenu in 'uMainMenu.pas' {frmMainMenu},
  uModules in 'uModules.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.Run;
end.
