library Cadastros;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  Unit1 in 'Unit1.pas' {Form1},
  Menus;


procedure Load;stdcall;
begin
  Form1 := TForm1.Create(nil);
  //Form1.Free;
end;


function LoadMenu: Tobject;stdcall;
begin
  Result:= Form1.Cadastros1;
end;


{$R *.res}

exports
  Load,
  Loadmenu;


  begin
end.
