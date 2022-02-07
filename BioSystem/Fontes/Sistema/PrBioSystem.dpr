program PrBioSystem;

uses
  Forms,
  UnDaMoBio in 'UnDaMoBio.pas' {DaMoBio: TDataModule},
  UnFoAguarde in '..\Componentes\UnFoAguarde.pas' {FoAguarde},
  UnFoMsgPadrao in '..\Componentes\UnFoMsgPadrao.pas' {FoMsgPadrao},
  UnGeral in 'UnGeral.pas',
  UnFoCadUsuarios in 'UnFoCadUsuarios.pas' {FoCadUsuarios},
  UnFoPermissoes in 'UnFoPermissoes.pas' {FoPermissoes},
  UnLogin in 'UnLogin.pas' {FoLogin},
  UnMenuPrincipal in 'UnMenuPrincipal.pas' {FoMenuPrincipal},
  UnFoCadastroMenus in 'UnFoCadastroMenus.pas' {FoCadastroMenus},
  UnFoCadastroPadrao in '..\Componentes\UnFoCadastroPadrao.pas' {FoCadastroPadrao},
  UnFoCadFunc in 'UnFoCadFunc.pas' {FoCadFunc},
  UnFoCadMenuUsuario in 'UnFoCadMenuUsuario.pas' {FoCadMenuUsuario},
  UnBuscaPadrao in '..\Componentes\UnBuscaPadrao.pas',
  UnFoBuscaPadrao in '..\Componentes\UnFoBuscaPadrao.pas' {FoBuscaPadrao},
  UnFoCadastroTabelas in 'UnFoCadastroTabelas.pas' {FoCadastroTabelas},
  UnFoTratarUsuarios in 'UnFoTratarUsuarios.pas' {FoTratarUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'BioSystem';
  Application.CreateForm(TDaMoBio, DaMoBio);
  Application.CreateForm(TFoMenuPrincipal, FoMenuPrincipal);
  Application.Run;
end.
