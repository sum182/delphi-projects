program LockedTask;

uses
  Forms,
  uLockedTask in 'uLockedTask.pas' {svLockedTask};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Task Application';
  Application.CreateForm(TsvLockedTask, svLockedTask);
  Application.Run;
end.
