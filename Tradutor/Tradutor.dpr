program Tradutor;

uses
  Forms,
  uTradutor in 'uTradutor.pas' {frmTradutor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTradutor, frmTradutor);
  Application.Run;
end.
