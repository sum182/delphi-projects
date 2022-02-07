program Mamiferos;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uMamal in 'uMamal.pas',
  uHuman in 'uHuman.pas',
  uDog in 'uDog.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
