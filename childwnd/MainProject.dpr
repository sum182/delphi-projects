program MainProject;

uses
  Forms,
  MainUnit1 in 'MainUnit1.pas' {MainForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
