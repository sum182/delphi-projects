{*******************************************************}
{                                                       }
{                 Sum182 Component Library              }
{                                                       }
{  Copyright (c) 2001-2016 Sum182 Software Corporation  }
{                                                       }
{                 Tel.:  55 11 98214-7819               }
{                                                       }
{                 Email: sum182@gmail.com               }
{*******************************************************}

unit smModules;

interface

uses SysUtils;

type
  TModule = class
  private
    FID: integer;
  public
    Name: string;
    procedure Load;virtual;
    procedure Unload;
  end;

implementation

uses
  smMensagens, Forms, smGeral, Classes,smForms;

{ TModule }

procedure TModule.Load;
begin
  //m�todo para carregar uma bpl
  FID := LoadPackage(Name);

  if FID = 0 then
    Msg('Erro ao carregar m�dulo ' + Name, mtErro);

  Application.ProcessMessages;
end;

procedure TModule.Unload;
begin
  //m�todo para descarregar uma bpl
  if FID = 0 then
    Exit;

  UnloadFormsInModule(FID);
  UnRegisterModuleClasses(FID);
  UnloadPackage(FID);
  FID := 0;
end;

end.

