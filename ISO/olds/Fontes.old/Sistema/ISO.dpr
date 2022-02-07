program ISO;

uses
  Forms,
  uMainMenu in 'uMainMenu.pas' {frmMainMenu};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.Run;
end.
