program XmlIni;

uses
  Forms,
  UnXml in 'UnXml.pas' {FoXml};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFoXml, FoXml);
  Application.Run;
end.
 