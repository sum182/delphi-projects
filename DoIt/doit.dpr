program doit;

{$APPTYPE CONSOLE}

uses
  Windows, SysUtils, Classes, Types, Registry, Forms;

const
  BDS = 'C:\Arquivos de programas\Borland\BDS\4.0';
  DCU = 'C:\OnduTemp';
  Componentes = 'D:\Delphi\Componentes';
  DefOptions = ' -CG -Ebin -B -N0dcu ';

var
  FCmdLine: string = '';

function Execute(App: TFileName; CmdLine: string): Integer;
var
  SI: TStartupInfo;
  PI: TProcessInformation;
begin
  SI.cb := SizeOf(SI);
  GetStartupInfo(SI);

  if CreateProcess(PChar(App), PChar(CmdLine), nil, nil, True, 0, nil, PChar(GetCurrentDir), SI, PI) then
  begin
    CloseHandle(PI.hThread);
    WaitForSingleObject(PI.hProcess, INFINITE);
    GetExitCodeProcess(PI.hProcess, Cardinal(Result));
    CloseHandle(PI.hProcess);
  end
  else
    Result := -1;
end;

procedure AddCmdLine(CmdLine: string);
begin
  FCmdLine := CmdLine + ' ' + FCmdLine;  
end;

function ExpandPath(const S: string): string;
begin
  Result := StringReplace(S, '$(BDS)', BDS, [rfReplaceAll]);
  Result := StringReplace(Result, '$(DCU)', DCU, [rfReplaceAll]);
  Result := StringReplace(Result, '$(COMPONENTES)', Componentes, [rfReplaceAll]);
end;

function ParamList(Prefix, CommaSep: string): string;
var
  i: Integer;
  s: string;
begin
  Result := '';
  s := CommaSep + ';';
  i := Pos(';', s);
  while (i > 0) do
  begin
    Result := Result + Prefix + '"' + ExpandPath(Copy(s, 1, i-1)) + '" ';
    s := Copy(s, i+1, MaxInt);
    i := Pos(';', s);
  end;
end;

procedure Iniciar;
var
  i: Integer;
  OldDir, Target: string;
begin
  if not FileExists(ParamStr(1)) then
  begin
    WriteLN('Arquivo não encontrado: ', Target);
    Halt;
  end;

  OldDir := GetCurrentDir;
  Target := ExtractFileName(ParamStr(1));
  SetCurrentDir(ExtractFilePath(ParamStr(1)));
  AddCmdLine('"' + Target + '" -Q');

  with TRegIniFile.Create do
  try
    OpenKey('Software\Borland\BDS\4.0', False);
    AddCmdLine(ParamList('-U', ReadString('Library', 'Search Path', '')));
    AddCmdLine(ParamList('-I', ReadString('Library', 'Search Path', '')));
    AddCmdLine(ParamList('-R', ReadString('Library', 'Search Path', '')));
  finally
    Free;
  end;

  AddCmdLine('-DDEPLOY -N0dcu');

  for i := 2 to ParamCount do
    AddCmdLine(ParamStr(i));

  WriteLN('---: ' + Target);
  Execute(BDS + '\bin\dcc32.exe', FCmdLine);
  WriteLN;
end;

begin
  Iniciar;
end.
