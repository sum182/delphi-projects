{ HelpTopic: A programmer's help authoring tool }

(***************************************************************************
 * The contents of this file are subject to the Netscape Public License    *
 * Version 1.1 (the "License"); you may not use this file except in        *
 * compliance with the License. You may obtain a copy of the License at    *
 * http://www.mozilla.org/NPL/ Software distributed under the License is   *
 * distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either   *
 * express or implied. See the License for the specific language governing *
 * rights and limitations under the License.                               *
 *                                                                         *
 * The Original Code is Help Topic Editor.                                 *
 *                                                                         *
 * The Initial Developer of the Original Code is James John (Jamie)        *
 * Oglethorpe.                                                             *
 *                                                                         *
 * Portions created by Jamie Oglethorpe are Copyright (C) 2001 James John  *
 * Oglethorpe.  All Rights Reserved.                                       *
 *                                                                         *
 * Portions created by Elite Developments are Copyright (C)                *
 * Elite Developments.                                                     *
 *                                                                         *
 * Contributor(s):                                                         *
 * Jamie Oglethorpe <jamieo@users.sourceforge.net>
 *                                                                         *
 ***************************************************************************)
unit Compat;

interface


uses
  Classes, SysUtils, Controls, Forms{$IFDEF DELPHI4UP}, ActnList{$ENDIF},
  Windows;


{$IFNDEF DELPHI5UP}
  procedure FreeAndNil(var Obj);
{$ENDIF}

function GetCommandProgram(const s: string): string;
function HelpCheck(const Ret: BOOL): BOOL;
procedure ShowHelp(Sender: TObject);

{$IFNDEF DELPHI4UP}
type
  TReplaceFlags = set of (rfReplaceAll, rfIgnoreCase);

function StringReplace(const S, OldPattern, NewPattern: string;
  Flags: TReplaceFlags): string;
{$ENDIF}

implementation

// Used to avoid platform specific warning
{$IFNDEF DELPHI5UP}
procedure FreeAndNil(var Obj);
var
  x: TObject;
begin
  x := TObject(Obj);
  TObject(Obj) := nil;
  x.Free;
end;
{$ENDIF}

function GetCommandProgram(const s: string): string;
var
  sl: TStringList;
begin
  sl := TStringList.Create;
  try
  {$IFDEF DELPHI6UP}
    sl.Delimiter := ' ';
    sl.QuoteChar := '"';
    sl.DelimitedText := s;
  {$ENDIF}
  {$IFNDEF DELPHI6UP}
    sl.CommaText := StringReplace(s, '" ', '",', []);
  {$ENDIF}
    Result := sl[0];
  finally
    sl.Free;
  end;
end;

function HelpCheck(const Ret: BOOL): BOOL;
begin
  if not Ret then
{$IFDEF DELPHI6UP}
    RaiseLastOSError;
{$ENDIF}
{$IFNDEF DELPHI6UP}
    RaiseLastWin32Error;
{$ENDIF}
  Result := Ret;
end;

procedure ShowHelp(Sender: TObject);
begin
{$IFDEF DELPHI4UP}
  {$IFDEF DELPHI6UP}
  with TControl(Sender) do
    if Assigned(Action) then
      with TCustomAction(Action) do
        if HelpType = htContext then
          if HelpContext <> 0 then
            Application.HelpContext(HelpContext)
          else
        else
          if HelpKeyword <> '' then
            Application.HelpKeyword(HelpKeyword)
          else
    else
      if HelpType = htContext then
        if HelpContext <> 0 then
          Application.HelpContext(HelpContext)
        else
      else
        if HelpKeyword <> '' then
          Application.HelpKeyword(HelpKeyword);
  {$ENDIF}
  {$IFNDEF DELPHI6UP}
  if Assigned(TControl(Sender).Action) then
    with TCustomAction(TControl(Sender).Action) do
      if HelpContext <> 0 then
        Application.HelpContext(HelpContext)
      else
  else
    if Sender is TWinControl then
      with TWinControl(Sender) do
        if HelpContext <> 0 then
          Application.HelpContext(HelpContext);
  {$ENDIF}
{$ENDIF}
{$IFNDEF DELPHI4UP}
  if Sender is TWinControl then
    with TWinControl(Sender) do
      if HelpContext <> 0 then
        Application.HelpContext(HelpContext);
{$ENDIF}
end;

{$IFNDEF DELPHI4UP}
function StringReplace(const S, OldPattern, NewPattern: string;
  Flags: TReplaceFlags): string;
var
  t, u: string;
  i, j: Integer;
begin
  if rfIgnoreCase in Flags then
  begin
    t := UpperCase(S);
    u := UpperCase(OldPattern);
  end else
  begin
    t := S;
    u := OldPattern;
  end;
  i := 1;
  j := Pos(u, t);
  if j = 0 then
    Result := S
  else
  begin
    Result := Copy(S, i, j - 1) + NewPattern;
    t := Copy(t, j + Length(u), MaxInt);
    i := i + j + Length(u) - 1;
    if rfReplaceAll in Flags then
    begin
      j := Pos(u, t);
      while j <> 0 do
      begin
        Result := Result + Copy(S, i, j - 1) + NewPattern;
        t := Copy(t, j + Length(u), MaxInt);
        i := i + j + Length(u) - 1;
        j := Pos(u, t);
      end;
    end;
     if i <= Length(S) then
       Result := Result + Copy(S, i, MaxInt);
  end;
end;
{$ENDIF}

end.
