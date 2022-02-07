program Figuras;

uses
  Forms,
  uForm in 'uForm.pas' {Form1},
  Figura in 'Figura.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
