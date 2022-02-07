program CashSystem;

uses
  Forms,
  unDM in 'unDM.pas' {Dm: TDataModule},
  unGeral in 'unGeral.pas',
  unLogin in 'unLogin.pas' {FoLogin},
  unCadTabelas in 'unCadTabelas.pas' {FoCadTabelas},
  unCadDespesasTipo in 'unCadDespesasTipo.pas' {FoCadDespesasTipo},
  unCadDespesas in 'unCadDespesas.pas' {FoCadDespesas},
  unCadSocios in 'unCadSocios.pas' {FoCadSocios},
  unCadUnidCalc in 'unCadUnidCalc.pas' {FoCadUnidCalc},
  unCadMaquinasTipo in 'unCadMaquinasTipo.pas' {FoCadMaquinasTipo},
  unCadMaquinas in 'unCadMaquinas.pas' {FoCadMaquinas},
  unCadPontos in 'unCadPontos.pas' {FoCadPontos},
  unCadLeituras in 'unCadLeituras.pas' {FoCadLeituras},
  unReLeituras in 'unReLeituras.pas' {FoReLeituras},
  unMenu in 'unMenu.pas' {FoMenu},
  unCadCobradores in 'unCadCobradores.pas' {FoCadCobradores},
  unReDespesas in 'unReDespesas.pas' {FoReDespesas},
  unFormPadrao in '..\..\..\..\..\Sum182\Forms\unFormPadrao.pas' {FoPadrao},
  unCadPadrao in '..\..\..\..\..\Sum182\Forms\unCadPadrao.pas' {FoCadPadrao};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'CashSystem';
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFoMenu, FoMenu);
  Application.CreateForm(TFoReDespesas, FoReDespesas);
  Application.CreateForm(TFoPadrao, FoPadrao);
  Application.CreateForm(TFoPadrao, FoPadrao);
  Application.CreateForm(TFoCadPadrao, FoCadPadrao);
  Application.Run;
end.
