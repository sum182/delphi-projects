program ISO;

uses
  Forms,
  uMainMenu in 'uMainMenu.pas' {frmMainMenu},
  uAbout in 'uAbout.pas' {AboutBox},
  uLogin in 'uLogin.pas' {frmLogin},
  uSplah in 'uSplah.pas' {frmSplash},
  uDM in 'uDM.pas' {DM: TDataModule},
  uISODLL in 'uISODLL.pas',
  smCad in '..\..\..\..\Componentes\Sum182\Forms\smCad.pas' {frmCad},
  smCadChild in '..\..\..\..\Componentes\Sum182\Forms\smCadChild.pas' {frmCadChild};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.Run;
end.
