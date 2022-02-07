program Leitura;

uses
  Vcl.Forms,
  untDM in 'untDM.pas' {DM: TDataModule},
  untImportarXML in 'untImportarXML.pas' {frmImportarXML},
  untMenuPrincipal in 'untMenuPrincipal.pas' {frmMenuPrincipal},
  untDMImportarXML in 'untDMImportarXML.pas' {DMImportarXML: TDataModule},
  smCad in 'C:\Componentes\Sum182\D14\Forms\smCad.pas' {frmCad},
  smCadFD in 'C:\Componentes\Sum182\D14\Forms\smCadFD.pas' {frmCadFD},
  smGeral in 'C:\Componentes\Sum182\D14\Units\smGeral.pas',
  smDBFireBird in 'C:\Componentes\Sum182\D14\Units\smDBFireBird.pas',
  smMensagens in 'C:\Componentes\Sum182\D14\Units\smMensagens.pas',
  untLeituraGuias in 'untLeituraGuias.pas' {frmLeituraGuias},
  untDMLeituraGuias in 'untDMLeituraGuias.pas' {DMLeituraGuias: TDataModule},
  smDB in 'C:\Componentes\Sum182\D14\Units\smDB.pas',
  untLeituraGuiasSelecionarGuia in 'untLeituraGuiasSelecionarGuia.pas' {frmLeituraGuiasSelecionarGuia},
  untAnaliseGeralGuias in 'untAnaliseGeralGuias.pas' {frmAnaliseGeralGuias},
  untLeituraGuiasCadastrarGuia in 'untLeituraGuiasCadastrarGuia.pas' {frmLeituraGuiasCadastrarGuia},
  untFechamento in 'untFechamento.pas' {frmFechamento},
  untCadastroClientes in 'Cadastros\untCadastroClientes.pas' {frmCadastroClientes},
  untCadastroGrupoLote in 'Cadastros\untCadastroGrupoLote.pas' {frmCadastroGrupoLote},
  untCadastroLote in 'Cadastros\untCadastroLote.pas' {frmCadastroLote},
  untCadastroServico in 'Cadastros\untCadastroServico.pas' {frmCadastroServico},
  untCadastroStatus in 'Cadastros\untCadastroStatus.pas' {frmCadastroStatus},
  untCadastroUsuarios in 'Cadastros\untCadastroUsuarios.pas' {frmCadastroUsuario},
  untLogin in 'untLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.Run;
end.
