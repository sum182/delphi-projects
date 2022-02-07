program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  smCrypt in '..\..\..\Componentes\Sum182\Units\smCrypt.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
