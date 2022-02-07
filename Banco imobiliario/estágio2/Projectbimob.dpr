program Projectbimob;

uses
  Forms,
  Unit1 in 'Unit1.pas' {form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {imp};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(Tform1, form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Timp, imp);
  Application.Run;
end.
ÿ