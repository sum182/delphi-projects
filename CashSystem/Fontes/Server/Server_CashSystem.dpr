program Server_CashSystem;

uses
  Forms,
  UnFoServerCashSystem in 'UnFoServerCashSystem.pas' {FoServerCashSystem},
  Server_CashSystem_TLB in 'Server_CashSystem_TLB.pas',
  UnDaMoServerCashSystem in 'UnDaMoServerCashSystem.pas' {ServerCashSystem: TRemoteDataModule} {ServerCashSystem: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Aplication Server Cash System';
  Application.CreateForm(TFoServerCashSystem, FoServerCashSystem);
  Application.Run;
end.
 