program CDS_Main;

uses
  Forms,
  fMainDemo in 'fMainDemo.pas' {TfrmMainDemo},
  fProperties in 'fProperties.pas' {frmProperties},
  fMainBase in '..\..\..\fMainBase.pas' {frmMainBase};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMainDemo, frmMainDemo);
  Application.CreateForm(TfrmMainBase, frmMainBase);
  Application.Run;
end.
