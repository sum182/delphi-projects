program Data;

uses
  Forms,
  uForm in 'uForm.pas' {Form1},
  uClasses in 'uClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
