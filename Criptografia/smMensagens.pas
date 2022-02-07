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


unit smMensagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  //TIPOS DOS BOTOESS
  TBotoes = (Ok, Ok_Cancelar, Sim_Nao, Sim_Nao_Cancelar);
  //TIPOS DAS MENSAGENS
  TTipoMensagem = (mtInformacao, mtConfirmacao, mtErro, mtAviso);
  function Msg(Mensagem: string; const TipoMensagem: TTipoMensagem = mtInformacao; const Botoes: TBotoes = Ok; const Titulo: string = ''): Boolean;overload;
  procedure MsgException(Mensagem: string;Title:string = '');

implementation

function Msg(Mensagem: string; const TipoMensagem: TTipoMensagem = mtInformacao; const Botoes: TBotoes = Ok; const Titulo: string = ''): Boolean;
var
  //Configuracao da Mensagem e dos tipos dos bot�es
  nTipoMsg: integer;
  //Titulo Final da Mensagem
  sTitulo: string;

  procedure SetTitulo();
  begin
    //Se n�o for passado o titulo da mensagem ent�o deixa o titulo padr�o
    if Titulo = '' then
      sTitulo := Application.Title
    else
      sTitulo := titulo;
  end;

begin
  SetTitulo;
  nTipoMsg := 0;
  Result := True;
  case TipoMensagem of
    //Mensagem de Informa��o
    mtInformacao:
      begin
        case Botoes of
          Ok: nTipoMsg := 64;
          Ok_Cancelar: nTipoMsg := 65;
          Sim_Nao: nTipoMsg := 68;
          Sim_Nao_Cancelar: nTipoMsg := 67;
        end;
      end;

    //Mensagem de Confirma��o
    mtConfirmacao:
      begin
        case Botoes of
          Ok: nTipoMsg := 32;
          Ok_Cancelar: nTipoMsg := 33;
          Sim_Nao: nTipoMsg := 36;
          Sim_Nao_Cancelar: nTipoMsg := 35;
        end;
      end;

    //Mensagem de Erro
    mtErro:
      begin
        MessageBeep(0);
        case Botoes of
          Ok: nTipoMsg := 16;
          Ok_Cancelar: nTipoMsg := 17;
          Sim_Nao: nTipoMsg := 20;
          Sim_Nao_Cancelar: nTipoMsg := 19;

        end;
      end;

    //Mensagem de Aviso
    mtAviso:
      begin
        case Botoes of
          Ok: nTipoMsg := 48;
          Ok_Cancelar: nTipoMsg := 49;
          Sim_Nao: nTipoMsg := 52;
          Sim_Nao_Cancelar: nTipoMsg := 51;
        end;
      end;
  end;

  Application.BringToFront;


  //Exibindo a mensagem
  case MessageBox(Application.ActiveFormHandle, PWideChar(Mensagem), PWideChar(sTitulo), nTipoMsg) of
    //Retorno -->Bot�o OK
    1: Result := True;

    //Retorno -->Cancelar
    2:
      begin
        Result := False;
        Abort;
      end;

    //Retorno -->Bot�o Sim
    6: Result := True;

    //Retorno -->Bot�o N�o
    7: Result := False;
  end;
  Application.ProcessMessages;
end;

procedure MsgException(Mensagem: string;Title:string = '');overload;
begin
//  raise Exception.Create(Mensagem);
  Msg(Mensagem,mtErro,Ok,Title);
  Abort;
end;

end.

