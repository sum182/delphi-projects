program FreeBoletoTest;

uses
  Forms,
  TestFrameWork,
  GUITestRunner,
  uCasosDeTeste in 'uCasosDeTeste.pas';

{$R *.res}

begin
 Application.Initialize;
 GUITestRunner.RunRegisteredTests;
end.
