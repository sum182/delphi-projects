program RelatoriosDinamicos;

uses
  Forms,
  foMenu in 'foMenu.pas' {Form1},
  DmRelatorios in 'DmRelatorios.pas' {Dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.
