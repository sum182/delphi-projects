program Leitura;

uses
  Controls,
  SysUtils,
  Vcl.Forms,
  untDM in 'untDM.pas' {DM: TDataModule},
  untImportarXML in 'untImportarXML.pas' {frmImportarXML},
  untMenuPrincipal in 'untMenuPrincipal.pas' {frmMenuPrincipal},
  untDMImportarXML in 'untDMImportarXML.pas' {DMImportarXML: TDataModule},
  smCad in 'C:\Componentes\Sum182\D15\Forms\smCad.pas' {frmCad},
  smCadFD in 'C:\Componentes\Sum182\D15\Forms\smCadFD.pas' {frmCadFD},
  smGeral in 'C:\Componentes\Sum182\D15\Units\smGeral.pas',
  smDBFireBird in 'C:\Componentes\Sum182\D15\Units\smDBFireBird.pas',
  smMensagens in 'C:\Componentes\Sum182\D15\Units\smMensagens.pas',
  untLeituraGuias in 'untLeituraGuias.pas' {frmLeituraGuias},
  untDMLeituraGuias in 'untDMLeituraGuias.pas' {DMLeituraGuias: TDataModule},
  smDB in 'C:\Componentes\Sum182\D15\Units\smDB.pas',
  untLeituraGuiasSelecionarGuia in 'untLeituraGuiasSelecionarGuia.pas' {frmLeituraGuiasSelecionarGuia},
  untAnaliseGeralGuias in 'untAnaliseGeralGuias.pas' {frmAnaliseGeralGuias},
  untLeituraGuiasCadastrarGuia in 'untLeituraGuiasCadastrarGuia.pas' {frmLeituraGuiasCadastrarGuia},
  untCadastroClientes in 'Cadastros\untCadastroClientes.pas' {frmCadastroClientes},
  untCadastroGrupoLote in 'Cadastros\untCadastroGrupoLote.pas' {frmCadastroGrupoLote},
  untCadastroLote in 'Cadastros\untCadastroLote.pas' {frmCadastroLote},
  untCadastroServico in 'Cadastros\untCadastroServico.pas' {frmCadastroServico},
  untCadastroStatus in 'Cadastros\untCadastroStatus.pas' {frmCadastroStatus},
  untCadastroUsuarios in 'Cadastros\untCadastroUsuarios.pas' {frmCadastroUsuario},
  untLogin in 'untLogin.pas' {frmLogin},
  untSobre in 'untSobre.pas' {FrmSobre},
  untEmail in 'untEmail.pas' {FrmEmail},
  Vcl.Themes,
  Vcl.Styles,
  tissV2_02_01 in 'tissV2_02_01.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema de Escanamento de Guias';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmLogin, frmLogin);
  if frmLogin.ShowModal = mrOk then
  begin
    FreeAndNil(frmLogin); // Libera o form de Login da memória
    Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
    Application.Run;
  end
  else
  begin
    FreeAndNil(frmLogin);
    Application.Terminate;
  end;

  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.Run;

end.

