unit UnGeral;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, DateUtils,StdCtrls, ExtCtrls, DBXpress,DB,DBCLIENT,smMensagens;




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
  Function VerificarFloat(Expressao:Variant):Boolean;


  Procedure ValidarCampos(DataSet:TDataSet;const sTabela:String ='');
  Function GetUsuario() : String;
  Function GetServidor():String;
  Function GetGenerator(sGenerator:String;nGenId:Integer):Integer;

  Procedure Pausar(mSec: Cardinal);
  Function ApplyUpdates(cds:TClientDataSet; Tipo:String = ''):Boolean;
  Function GetFirstDay():String;
  Function GetLastDay():String;
  Procedure FecharDatasets(Form : TForm = Nil; DataModulo :TDataModule = Nil);
  Procedure AbrirDatasets (Form : TForm = Nil; DataModulo :TDataModule = Nil);

  Procedure ClearParams(cds:TClientDataSet);



  implementation



uses  StrUtils, unDm;






// mensagem com imagem de erro
Procedure MsgErro(Msg :String);
begin

  Mensagem(msg,mtErro);

end;

// mensagem com imagem de informação
Procedure MsgInfo(Msg :String);
begin
  Mensagem(msg,mtInformacao);

end;

// mensagem com imagem de duvida e retorna o botao precionado.
Function  MsgDuvida(Msg:String):Botao;
Begin
  Mensagem(msg,mtConfirmacao);

end ;


// mensagem de confirmação retornado true caso o botao sim seja precionado
Function  MsgConfirma(Msg:String):Boolean;
begin

  if  Mensagem(msg,mtConfirmacao,Sim_Nao_Cancelar)Then
    Result := True
  else
    Result := False
  ;


end;



Procedure Aguarde(Const Msg: String = '');
begin

 exit;
 //CAMINHO DO ARQUIVO AVI
 {FoMenuPrincipal.AnProgress.FileName:= 'C:\Sistemas\CashSystem\Fontes\Imagens\Progress\Progress.avi';

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
 pausar(90);}
end;



Procedure FimAguarde();
begin
    exit;
    //falta implementar o naimation
    Screen.Cursor := crDefault;
    {FoMenuPrincipal.AnProgress.Active:=False;
    FoMenuPrincipal.AnProgress.Visible:=False;
    FoMenuPrincipal.LaAguarde.Caption := '';}
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




Function VerificarFloat(Expressao:Variant):Boolean;
Begin
  //esta funcao verifica se o parametro e um numero
  IF StrToFloatDef( Expressao, 0 ) = 0 Then
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
      CiDaGeral.RemoteServer := Dm.DCOMConnection;
      CiDaGeral.ProviderName := 'dspGeral';



      //SELECIONANDO OS CAMPOS PERTENCENTES A TABELA
      sSql:='';
      sSql:= sSql +  ' SELECT TACA_DISPLAYNAME FROM TABELAS_CAMPOS'               ;
      sSql:= sSql +  ' WHERE TABELAS_CAMPOS.TABE_ID = '                    ;
      sSql:= sSql +  ' ( SELECT TABELAS.TABE_ID FROM TABELAS'              ;
      sSql:= sSql +  '   WHERE UPPER(TABELAS.TABE_TABELA)  = :TABELA )'    ;
      sSql:= sSql +  ' AND UPPER(TABELAS_CAMPOS.TACA_FIELDNAME)= :TACA_FIELDNAME'  ;

      CiDaGeral.Close;
      CiDaGeral.CommandText:=sSql;
      CiDaGeral.Params.ParamByName('TABELA'    ).AsString := AnsiUpperCase( sTabela );
      CiDaGeral.Params.ParamByName('TACA_FIELDNAME').AsString := AnsiUpperCase( sNomeCampo );
      CiDaGeral.Open;
      sCampoDesc := CiDaGeral.FieldByname('TACA_DISPLAYNAME').AsString ;

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
  Result := Dm.cUsuario;
end;


Function GetGenerator(sGenerator:String;nGenId:Integer):Integer;
var
    CiDaGeral :TClientDataSet;
Begin

  //ESTA FUNCAO RETORNA O PROXIMO GENERATOR DA TABELA

  Try

    //CRIANDO O CLIENT DATASET
    CiDaGeral := TClientDataSet.Create(NIL);
    CiDaGeral.RemoteServer := Dm.DCOMConnection;
    CiDaGeral.ProviderName := 'dspGeral';

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

   if Dm.cServidor = '' Then
     Begin
       Result:='Local Host';
       Exit;
     End
  ;

  Result:= Dm.cServidor;
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


Function ApplyUpdates(cds:TClientDataSet; Tipo:String = ''):Boolean;
var sMsgSalvar,sMsgDeletar,sMensagem:String;
Begin

   Result      := False;
   sMsgSalvar  := '';
   sMsgDeletar := '';
   sMensagem   := '';

   sMsgSalvar  := 'Suas informações não foram salvas!' + #13 + '' + #13 + 'Comunique imediatamente o setor de TI.'                           + #13 + '' + #13 + 'Erro no processo de ApplyUpdates' + #13 + 'ClientDataSet:' + cds.Name + #13;
   sMsgDeletar := 'Suas informações não foram deletadas!' + #13 + '' + #13 + 'Verifique se não existem informações vinculadas a este registro.' + #13 + '' + #13 +'Comunique imediatamente o setor de TI.'  + #13 + 'Erro no processo de ApplyUpdates' + #13 + 'ClientDataSet:' + cds.Name + #13;

   //VERIFICANDO O TIPO DO APPLY UPDATE
   if (Tipo = 'S')or (Tipo = '') Then
     sMensagem := sMsgSalvar
   else if (Tipo = 'D')Then
     sMensagem := sMsgDeletar
   ;

   If (cds.ApplyUpdates(0) >= 1 ) Then
     Begin
       MsgErro(sMensagem);
       Exit;
     End
   ;

   Result := True;
End;



Function GetFirstDay():String;
var Mes:Variant;
    Ano:Variant;
Begin
//esta funcao retorna o 1º dia do mes e ano atual
  Mes       := MonthOf  (now);
  Ano       := YearOf   (Now);
  Result    :='01/' + VarToStr(mes) + '/' + VarToStr(ano);

End;



Function GetLastDay():String;
var DataAux:TDateTime;
    Mes:Variant;
    Ano:Variant;

Begin
   //ESTA FUNCAO RETORNA O ULTIMO DO DIA DO MES ATUAL

   Mes       := MonthOf  (Date);
   Ano       := YearOf   (Date);

    //TENTANDO JOGAR O DIA 31
    Try
      DataAux := StrtoDateTime('31/' + VarToStr(mes) + '/' + VarToStr(ano));
    Except

          //TENTANDO JOGAR O DIA 30
          Try
            DataAux := StrtoDateTime('30/' + VarToStr(mes) + '/' + VarToStr(ano));
          Except

              //TENTANDO JOGAR O DIA 29
              Try
                DataAux := StrtoDateTime('29/' + VarToStr(mes) + '/' + VarToStr(ano));
              Except
                  DataAux := StrtoDateTime('28/' + VarToStr(mes) + '/' + VarToStr(ano));
              End
             ;

          End
          ;
    End
    ;


Result:= DateTimeToStr (DataAux);



End;

Procedure FecharDatasets(Form : TForm = Nil; DataModulo :TDataModule = Nil);
var i:integer;
Begin


{*******************************************************************************
*   METODO PARA FECHAR TODOS OS DATASETS DO FORM OU DATAMODULO                 *
*                                                                              *
*                                                                              *
*                                                                              *
*                                                                              *
*******************************************************************************}


  //FECHANDO TODOS OS DATASETS DO FORMULARIO
  If Not(Form = Nil )Then
    Begin

      For i:= 0 To form.ComponentCount - 1 do
        Begin

          //FECHANDO O DATASET
          if (Form.Components[i]is Tdataset) Then
            (Form.Components[i]as TDataSet).Close
          ;

        End
      ;

    End
  ;




  //FECHANDO TODOS OS DATASETS DO DATAMODULO
  If Not(DataModulo = Nil )Then
    Begin

      For i:= 0 To DataModulo.ComponentCount - 1 do
        Begin

          //FECHANDO O DATASET
          if (DataModulo.Components[i]is Tdataset) Then
            (DataModulo.Components[i]as TDataSet).Close
          ;

        End
      ;

    End
  ;


End;


Procedure ClearParams(cds:TClientDataSet);
var i:Integer;
begin
{*******************************************************************************
*   METODO PARA LIMPAR TODOS OS PARAMETROS DE UM CLIENT DATASET                *
*                                                                              *
*                                                                              *
*                                                                              *
*                                                                              *
*******************************************************************************}
   Try

      For i := 0 To cds.Params.Count-1 Do
        Begin
              cds.Params[i].Clear;
              Case cds.Params[i].DataType Of
                ftString, ftFixedChar, ftWideString:        cds.Params[i].Value := '';
                ftSmallint, ftInteger, ftWord, ftLargeint:  cds.Params[i].Value := -1;
                ftBoolean:                                  cds.Params[i].Value := False;
                ftFloat, ftCurrency, ftBCD, ftFMTBcd:       cds.Params[i].Value := -1;
                ftDate, ftTime, ftDateTime,  ftTimeStamp:   cds.Params[i].Value := StrToDate( '01/01/1800' );
               End;
        End
      ;
   Except
     MsgErro('Erro na limpeza dos paramêtros');
     cds.Close;
   End
end;


Procedure AbrirDatasets (Form : TForm = Nil; DataModulo :TDataModule = Nil);
var i:integer;
Begin


{*******************************************************************************
*   METODO PARA ABRIR TODOS OS DATASETS DO FORM OU DATAMODULO                 *
*                                                                              *
*                                                                              *
*                                                                              *
*                                                                              *
*******************************************************************************}



  If Not(Form = Nil )Then
    Begin

      For i:= 0 To form.ComponentCount - 1 do
        Begin

          if (Form.Components[i]is Tdataset)Then
              IF (Form.Components[i]as TDataSet).Tag = 1 Then
                Begin
                  (Form.Components[i]as TDataSet).Close;
                  (Form.Components[i]as TDataSet).Open;
                End
              ;
          ;


        End
      ;

    End
  ;




  //FECHANDO TODOS OS DATASETS DO DATAMODULO

  If Not(DataModulo = Nil )Then
    Begin

      For i:= 0 To DataModulo.ComponentCount - 1 do
        Begin

          if (DataModulo.Components[i]is Tdataset) Then
              IF (DataModulo.Components[i]as TDataSet).Tag = 1 Then
                Begin
                  (DataModulo.Components[i]as TDataSet).Close;
                  (DataModulo.Components[i]as TDataSet).Open;
                End
              ;
          ;


        End
      ;

    End
  ;



End;



end.



