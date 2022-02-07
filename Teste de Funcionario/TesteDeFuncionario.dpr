program TesteDeFuncionario;

uses
  Forms,
  uDM in 'uDM.pas' {DM: TDataModule},
  smCad in '..\..\..\Componentes\Sum182\Forms\smCad.pas' {frmCad},
  uTestes in 'uTestes.pas' {frmTestes},
  uMainMenu in 'uMainMenu.pas' {frmMainMenu},
  uQuestoes in 'uQuestoes.pas' {frmQuestoes},
  uCandidatos in 'uCandidatos.pas' {frmCandidatos},
  uTesteFunc in 'uTesteFunc.pas' {frmTesteFunc};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Teste de Funcionário';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.Run;
end.
