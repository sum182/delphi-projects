program Braspress;

uses
  Forms,
  uTesteGrid in 'uTesteGrid.pas' {frmTeste},
  uDM in 'uDM.pas' {DM: TDataModule},
  uMain in 'uMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
