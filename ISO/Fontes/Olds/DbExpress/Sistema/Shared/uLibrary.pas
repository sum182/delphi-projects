{*******************************************************}
{                                                       }
{                 Sum182 Component Library              }
{                                                       }
{  Copyright (c) 2001-2007 Sum182 Software Corporation  }
{                                                       }
{                 Tel.:  55 11 8214-7819                }
{                                                       }
{                 Email: sum182@gmail.com               }
{******************************************************}

unit uLibrary;

interface

uses
  Classes,
  Dialogs, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, DB,
  Windows, Messages, SysUtils, Variants, Graphics, Controls, Forms,
  DateUtils, ExtCtrls, DBCLIENT, smMensagens, FileCtrl,uDMShared;

  function GetKey(Table,Field: string): integer;

implementation


function GetKey(Table,Field: string): integer;
begin
  with DMShared.cdsGeral do
  begin
    Close;
    CommandText := '';
    CommandText := 'select max(' + Field + ')+1 as MaxKey from ' + Table;
    Open;
    Result := FieldByName('MaxKey').AsInteger;
    Close;
  end;

end;




end.

