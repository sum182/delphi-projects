program Leitura;

uses
  Vcl.Forms,
  untDM in 'untDM.pas' {DM: TDataModule},
  untImportarXML in 'untImportarXML.pas' {frmImportarXML},
  untMenuPrincipal in 'untMenuPrincipal.pas' {frmMenuPrincipal},
  untDMImportarXML in 'untDMImportarXML.pas' {DMImportarXML: TDataModule},
  smCad in 'C:\Componentes\Sum182\D14\Forms\smCad.pas' {frmCad},
  smCadFD in 'C:\Componentes\Sum182\D14\Forms\smCadFD.pas' {frmCadFD},
  untCadastroUsuarios in 'Cadastros\untCadastroUsuarios.pas' {frmCadastroUsuario},
  untImportarExcel in 'Testes\untImportarExcel.pas' {frmImportarExcel},
  untImportarXMLTeste in 'Testes\untImportarXMLTeste.pas' {frmImportarXMLTeste},
  smGeral in 'C:\Componentes\Sum182\D14\Units\smGeral.pas',
  smDBFireBird in 'C:\Componentes\Sum182\D14\Units\smDBFireBird.pas',
  smMensagens in 'C:\Componentes\Sum182\D14\Units\smMensagens.pas',
  untTesteUsuario in 'Cadastros\untTesteUsuario.pas' {frmTesteUsuario},
  untCadastroServico in 'untCadastroServico.pas' {frmCadastroServico},
  untCadastroStatus in 'untCadastroStatus.pas' {frmCadastroStatus},
  untCadastroClientes in 'untCadastroClientes.pas' {frmCadastroClientes},
  untLogin in 'untLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
