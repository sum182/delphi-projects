program PenDriverLocked;

uses
  Forms,
  uPendriveLocked in 'uPendriveLocked.pas' {frmuPendriveLocked};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Pen Drive Locked';
  Application.CreateForm(TfrmuPendriveLocked, frmuPendriveLocked);
  Application.Run;
end.
