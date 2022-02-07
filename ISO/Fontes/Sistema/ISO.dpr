program ISO;

uses
  Forms,
  uAbout in 'uAbout.pas' {AboutBox},
  uLogin in 'uLogin.pas' {frmLogin},
  uMainMenu in 'uMainMenu.pas' {frmMainMenu},
  uModules in 'uModules.pas',
  uSplah in 'uSplah.pas' {frmSplash},
  uDmConnection in 'Connection\uDmConnection.pas' {DMConnection: TDataModule},
  uCadISO in 'Shared\uCadISO.pas' {frmCadISO},
  uDmShared in 'Shared\uDmShared.pas' {DmShared: TDataModule},
  uLibrary in 'Shared\uLibrary.pas',
  uRegRetencao in 'Registros\uRegRetencao.pas',
  uRegLocalArm in 'Registros\uRegLocalArm.pas',
  uRegistros in 'Registros\uRegistros.pas',
  uRegFormArm in 'Registros\uRegFormArm.pas',
  uDmReg in 'Registros\uDmReg.pas' {DmReg: TDataModule},
  uCadTesteACP in 'Teste\uCadTesteACP.pas' {frmCadTesteACP},
  uCadTesteReg in 'Teste\uCadTesteReg.pas' {frmCadTesteReg},
  uCadTesteRH in 'Teste\uCadTesteRH.pas' {frmCadTesteRH},
  uCadtTesteCalib in 'Teste\uCadtTesteCalib.pas' {frmCadTesteCalib},
  uDmTeste in 'Teste\uDmTeste.pas' {DmTeste: TDataModule},
  smForms in '..\..\..\..\Componentes\Sum182\forms\smForms.pas',
  smDBGrid in '..\..\..\..\Componentes\Sum182\smDBGrid.pas',
  smCadPadrao in '..\..\..\..\Componentes\Sum182\smCadPadrao.pas',
  smForm in '..\..\..\..\Componentes\Sum182\Forms\smForm.pas' {frmForm},
  uRegProcedimentos in 'Registros\uRegProcedimentos.pas' {frmProcedimento},
  uLoginDefault in 'uLoginDefault.pas' {frmLoginDefault},
  uTreinamentos in 'Treinamentos\uTreinamentos.pas' {frmTreinamentos},
  uDmTreinamentos in 'Treinamentos\uDmTreinamentos.pas' {DmTreinamentos: TDataModule},
  uTreinamentosTipos in 'Treinamentos\uTreinamentosTipos.pas' {frmTreinamentosTipos},
  uInstrutores in 'Treinamentos\uInstrutores.pas' {frmInstrutores},
  uInstituicoes in 'Treinamentos\uInstituicoes.pas' {frmInstituicoes},
  uUsuarios in 'Usuarios\uUsuarios.pas' {frmUsuarios},
  uFuncionarios in 'Funcionarios\uFuncionarios.pas' {frmFuncionarios},
  uFichaIndiv in 'Treinamentos\uFichaIndiv.pas' {frmFichaIndividual},
  uDepartamentos in 'Departamento\uDepartamentos.pas' {frmDepartamentos},
  uLocalizaParticipantes in 'Treinamentos\uLocalizaParticipantes.pas' {frmLocalizaParticip},
  smCheckListBox in '..\..\..\..\Componentes\Sum182\smCheckListBox.pas',
  uFornecedores in 'Fornecedores\uFornecedores.pas' {frmFornecedores},
  uTelefones in 'Fornecedores\Telefones\uTelefones.pas' {frmTelefones},
  uFuncSearchOfTreinamentos in 'Treinamentos\uFuncSearchOfTreinamentos.pas' {frmFuncSearchOfTreinamentos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDMConnection, DMConnection);
  Application.CreateForm(TDmShared, DmShared);
  Application.CreateForm(TDmTeste, DmTeste);
  Application.CreateForm(TDmTreinamentos, DmTreinamentos);
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.CreateForm(TfrmFuncSearchOfTreinamentos, frmFuncSearchOfTreinamentos);
  Application.Run;
end.
