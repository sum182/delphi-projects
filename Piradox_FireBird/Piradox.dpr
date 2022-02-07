program Piradox;

uses
  Forms,
  Main in 'MAIN.PAS' {FrmMain};

{$R *.RES}

begin
  Application.Title := 'Kattapump for Interbase';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
