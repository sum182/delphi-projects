program ApplicationDLL;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {fMainForm},
  uFormInExeFile in 'uFormInExeFile.pas' {fFormInExeFile};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfMainForm, fMainForm);
  Application.Run;
end.
