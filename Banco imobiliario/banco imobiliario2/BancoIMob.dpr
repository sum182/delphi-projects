program BancoIMob;

uses
  Forms,
  Unitbanimob in 'Unitbanimob.pas' {Form1},
  Unitjogadores in 'Unitjogadores.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
 