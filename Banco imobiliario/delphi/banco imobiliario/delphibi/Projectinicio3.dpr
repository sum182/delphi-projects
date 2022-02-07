program Projectinicio3;

uses
  Forms,
  Unitinicio in '..\..\..\..\delphi\banco imobiliario\delphibi\Unitinicio.pas' {Form1},
  Unit2 in '..\delphi\teste\Unit2.pas' {Form2},
  Unit3 in '..\delphi\teste\Unit3.pas' {Form3};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
ÿ