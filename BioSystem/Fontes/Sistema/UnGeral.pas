unit UnGeral;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, StdCtrls, ExtCtrls, UnFoMsgPadrao,DBXpress,DB,DBCLIENT;




Type
  Botao = Type Byte;
  Const BtOk : Botao = 0;
  Const BtSim : Botao = 2;
  Const BtNao : Botao = 3;

  Procedure MsgErro(Msg :String);
  Procedure MsgInfo(Msg :String);
  Function  MsgDuvida(Msg:String):Botao;
  Function  MsgConfirma(Msg:String):Boolean;

  Procedure Aguarde(Const Msg: String = '');
  Procedure FimAguarde();
  Procedure CriarForm(NomeForm:String;Const Show:String = 'MODAL');
  Function VerificarNumero(Expressao:Variant):Boolean;


  Procedure ValidarCampos(DataSet:TDataSet;const sTabela:String ='');
  Function GetUsuario() : String;
  Function GetServidor():String;
  Function GetGenerator(sGenerator:String;nGenId:Integer):Integer;

  Procedure Pausar(mSec: Cardinal);




  implementation



uses UnFoAguarde, StrUtils, UnDaMoBio, UnMenuPrincipal;

//uses UnFoMsgPadrao;




// mensagem com imagem de erro
Procedure MsgErro(Msg :String);
begin

  FoMsgPadrao := TFoMsgPadrao.Create(Application);
  FoMsgPadrao.MontaMsg(Msg,ImgErro,BtOk);
  FoMsgPadrao.ShowModal;
  FreeAndNil(FoMsgPadrao);

end;

// mensagem com imagem de informação
Procedure MsgInfo(Msg :String);
begin

  FoMsgPadrao := TFoMsgPadrao.Create(Application);
  FoMsgPadrao.MontaMsg(Msg,ImgInfo,BtOK);
  FoMsgPadrao.ShowModal;
  FreeAndNil(FoMsgPadrao);

end;

// mensagem com imagem de duvida e retorna o botao precionado.
Function  MsgDuvida(Msg:String):Botao;
Begin

  FoMsgPadrao := TFoMsgPadrao.Create(Application);
  FoMsgPadrao.MontaMsg(Msg,ImgDuvida,BtSimNao);
  FoMsgPadrao.ShowModal;
  Result := FoMsgPadrao.BtFechoMsg;
  FreeAndNil(FoMsgPadrao);

end ;


// mensagem de confirmação retornado true caso o botao sim seja precionado
Function  MsgConfirma(Msg:String):Boolean;
begin

  FoMsgPadrao := TFoMsgPadrao.Create(Application);
  FoMsgPadrao.MontaMsg(Msg,ImgDuvida,BtSimNao);
  FoMsgPadrao.ShowModal;
  Result := ( FoMsgPadrao.BtFechoMsg = BtSim );
  FreeAndNil(FoMsgPadrao);

end;



Procedure Aguarde(Const Msg: String = '');
begin

 //CAMINHO DO ARQUIVO AVI
 FoMenuPrincipal.AnProgress.FileName:= 'C:\Sistemas\BioSystem\Fontes\Imagens\Progress\Progress.avi';

 //VISUSALIZANDO O PROGRESS
 FoMenuPrincipal.AnProgress.Visible := False;
 FoMenuPrincipal.AnProgress.Visible := True;

 //ATIVANDO O PROGRESS
 FoMenuPrincipal.AnProgress.Active  := False;
 FoMenuPrincipal.AnProgress.Active  := True;

 //CURSOR DE ESPERA
 Screen.Cursor := crSQLWait;

 //SETANDO A MENSAGEM DE AGUARDE
 FoMenuPrincipal.LaAguarde.Caption := Msg + '...';

 //PEQUENA PAUSA PARA ATUALIZAR AS LABELS E O PROGRESSS -->1ªGAMBIARRA
 pausar(600);
end;



Procedure FimAguarde();
begin
    Screen.Cursor := crDefault;
    FoMenuPrincipal.AnProgress.Active:=False;
    FoMenuPrincipal.AnProgress.Visible:=False;
    FoMenuPrincipal.LaAguarde.Caption := '';
end;


Procedure CriarForm(NomeForm:String;Const Show:String = 'MODAL');
var
FormClass  : TFormClass;
Form       : TForm;
begin
 // pegando a classe do form.
 FormClass := TFormClass(GetClass(NomeForm));

 // criando o form.
 Form := FormClass.Create(Application);

 // gravando o nome do formulario
 Form.Name := RightStr(NomeForm,Length(NomeForm)-1);

 if (UpperCase(Show) = 'MODAL') then
   Form.ShowModal
 else
   Form.Show
 ;


end;

Function VerificarNumero(Expressao:Variant):Boolean;
Begin
  //esta funcao verifica se o parametro e um numero
  IF StrToIntDef( Expressao, 0 ) = 0 Then
    Result := False
  Else
    Result := True
  ;
end;














Procedure ValidarCampos(DataSet:TDataSet;const sTabela:String ='');
var
    CiDaGeral   :TClientDataSet;
    nCampo      : Integer;
    sSql        :String;
    sCampoDesc  :String;


  Function GetCampoDesc(sNomeCampo:String):String;
  Begin


    Try
      //CRIANDO O CLIENT DATASET
      CiDaGeral := TClientDataSet.Create(NIL);
      CiDaGeral.RemoteServer := DaMoBio.DCOMConnection;
      CiDaGeral.ProviderName := 'DaSePrGeral';



      //SELECIONANDO OS CAMPOS PERTENCENTES A TABELA
      sSql:='';
      sSql:= sSql +  ' SELECT TACA_DESC FROM TABELAS_CAMPOS'               ;
      sSql:= sSql +  ' WHERE TABELAS_CAMPOS.TABE_ID = '                    ;
      sSql:= sSql +  ' ( SELECT TABELAS.TABE_ID FROM TABELAS'              ;
      sSql:= sSql +  '   WHERE UPPER(TABELAS.TABE_TABELA)  = :TABELA )'    ;
      sSql:= sSql +  ' AND UPPER(TABELAS_CAMPOS.TACA_CAMPO)= :TACA_CAMPO'  ;

      CiDaGeral.Close;
      CiDaGeral.CommandText:=sSql;
      CiDaGeral.Params.ParamByName('TABELA'    ).AsString := AnsiUpperCase( sTabela );
      CiDaGeral.Params.ParamByName('TACA_CAMPO').AsString := AnsiUpperCase( sNomeCampo );
      CiDaGeral.Open;
      sCampoDesc := CiDaGeral.FieldByname('TACA_DESC').AsString ;

      IF  (sCampoDesc = '') Then
        sCampoDesc := sNomeCampo
      ;

      Result:= sCampoDesc;

   Finally
     FreeAndNil(CiDaGeral);
   End;



 End;




begin


  //VALIDA OS CAMPOS NOT NULL
  For nCampo := 0 To DataSet.FieldCount-1 Do
    Begin
      IF (DataSet.Fields[nCampo].Required) and ((DataSet.Fields[nCampo].IsNull) or (Trim(DataSet.Fields[nCampo].Value) = '')) Then
        Begin
          MsgInfo( 'É obrigatório o preenchimento do campo: ' + GetCampoDesc(DataSet.Fields[nCampo].DisplayLabel));
          DataSet.Fields[nCampo].FocusControl;
          Abort;
        End
      ;
    End
  ;

End;


Function GetUsuario() : String;
Begin
  Result := DaMoBio.cUsuario;
end;


Function GetGenerator(sGenerator:String;nGenId:Integer):Integer;
var
    CiDaGeral :TClientDataSet;
Begin

  //ESTA FUNCAO RETORNA O PROXIMO GENERATOR DA TABELA

  Try

    //CRIANDO O CLIENT DATASET
    CiDaGeral := TClientDataSet.Create(NIL);
    CiDaGeral.RemoteServer := DaMoBio.DCOMConnection;
    CiDaGeral.ProviderName := 'DaSePrGeral';

    CiDaGeral.Close;
    CiDaGeral.CommandText  := '';
    CiDaGeral.CommandText := 'SELECT GEN_ID( '+ sGenerator + ',' + IntToStr(nGenId) + ') AS NUM_ID FROM RDB$DATABASE';
    CiDaGeral.Open;

    Result:=CiDaGeral.FieldbyName('NUM_ID').AsInteger;

  Finally
   FreeAndNil(CiDaGeral);
  End;


End;



Function GetServidor():String;
Begin

   if DaMoBio.cServidor = '' Then
     Begin
       Result:='Local Host';
       Exit;
     End
  ;

  Result:= DaMoBio.cServidor;
End;




procedure Pausar(mSec: Cardinal);
var
  Inicio: Cardinal;
begin
  //ESTA FUNCAO PAUSA A APLICACAO DE ACORDO COM OS MILISEGUNDOS PASSADOS COMO PARAMETRO E LIBERA OS RECURSOS DO WINDOWS



  Application.ProcessMessages;

  Inicio := GetTickCount;

 repeat
    Application.ProcessMessages;
  until (GetTickCount - Inicio) >= mSec;


  Application.ProcessMessages;

end;


end.

