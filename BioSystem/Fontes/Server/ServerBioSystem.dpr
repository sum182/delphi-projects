program ServerBioSystem;

uses
  Forms,
  UnFoServerBioSystem in 'UnFoServerBioSystem.pas' {FoServerBioSystem},
  ServerBioSystem_TLB in 'ServerBioSystem_TLB.pas',
  UnDaMoServerBioSystem in 'UnDaMoServerBioSystem.pas' {Server_BioSystem: TRemoteDataModule} {Server_BioSystem: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Aplication Server Of BioSystem';
  Application.CreateForm(TFoServerBioSystem, FoServerBioSystem);
  Application.Run;
end.
 