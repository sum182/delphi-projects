program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Compat in 'Compat.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.HelpFile := 'D:\Alvaro\Alvaro - Files\Delphi\Projetos\Outros\Help\bin\HELP.HLP';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
