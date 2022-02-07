program Universidade;

uses
  Forms,
  uForm in 'uForm.pas' {Form1},
  uUniversidade in 'uUniversidade.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
