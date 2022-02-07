program ISOServer;

uses
  Forms,
  uServer in 'uServer.pas' {frmServer},
  ISOServer_TLB in 'ISOServer_TLB.pas',
  uDmMain in 'uDmMain.pas' {ClassMain: TRemoteDataModule},
  uDmACP in 'uDmACP.pas' {ClassACP: TRemoteDataModule},
  uDmRH in 'uDmRH.pas' {ClassRH: TRemoteDataModule},
  uDmReg in 'uDmReg.pas' {ClassReg: TRemoteDataModule},
  uDmCalib in 'uDmCalib.pas' {ClassCalib: TRemoteDataModule};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ISO - Server Aplication';
  Application.CreateForm(TfrmServer, frmServer);
  Application.Run;
end.
