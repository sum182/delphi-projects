{*****************************************************************************
 *  @Autor: Wagner.Araujo                                                    *
 *  @Data: 13/04/2008                                                        *
 *  @Pacote: Util                                                            *
 *  @Finalidade: Classe criada para manipular arquivos de configuração.      *
 *  @Exemplos:                                                               *
 *         O arquivo tem que ser configurada da seguinte forma               *
 *                                                                           *
 *         chave=valor da chave                                              *
 *                                                                           *
 *         Uma boa pratica é sempre colocar comentarios nas chaves           *
 *         o comentario é usando assim:                                      *
 *                                                                           *
 *         #comentario da propriedade                                        *
 *         chave=valor da chave                                              *
 *                                                                           *
 *****************************************************************************}



unit Propriedade;

interface

type
   TChaveEValor = Array of String;
   TPropriedade = class(TObject)

   public
      constructor create(endereco: String);
      function getPropriedade(chave : String):String;

   private
      procedure criaMapa();
      function getChaveEValor(prop : String): TChaveEValor;

   private
      endereco : String;
      mapa : array of String;
      arquivo: TextFile; {handle do arquivo texto}

end;

implementation

uses SysUtils,Dialogs;

{ TPropriedade }

constructor TPropriedade.create(endereco: String);
begin
  try
     self.endereco := endereco;

     //Associa o arquivo a uma variável do tipo TextFile
     assignFile(self.arquivo,self.endereco);

     criaMapa();
   except
      on e: EInOutError do
      begin
        MessageDlg('O arquivo de Propriedade não foi encontrado no endereço: ' +
        #13 + self.endereco + #13 + e.message, mtError,[mbOK],0);
      end;
      on e: Exception do
      begin
        MessageDlg('Erro na criação do objeto propriedade.' + #13 + e.message,
                   mtError,[mbOK],0);
      end;
   end;

end;


{**
 * Cria o mapa das chaves e seus valores.
 *}
procedure TPropriedade.criaMapa();
 var
   tamanho : Integer;
   linha : String;
   chaveEValor : TChaveEValor;
begin
    //Abre o arquivo texto}
    reset(arquivo);
    tamanho := 0;
    while not eof(self.arquivo) do
    begin
      readln(arquivo,linha);

      //verificando se nao é uma linha em branco.
      if ( (linha <> '') and (linha <> #13) ) then
      begin

        // verificando se não é comentario.
        if ( copy(linha,1,1) <> '#' ) then
        begin
          //somando a quantidade de chaves encontradas.
          tamanho := tamanho + 2;
          //definindo o tamanho do vetor
          setLength(mapa,tamanho);
          chaveEValor := self.getChaveEValor(linha);
          self.mapa[tamanho-2] := chaveEValor[0];
          self.mapa[tamanho-1] := chaveEValor[1];
        end;

      end;
    end;

    //Fecha o arquivo texto
    closeFile(arquivo);

end;


{**
 * Cria um array separando a chave e o valor.
 *}
function TPropriedade.getChaveEValor(prop: String): TChaveEValor;
 var index : Integer;
 chave,valor : String;
begin
   setLength(result,2);

   index := pos('=',prop);

   chave := copy(prop,0,index-1);
   valor := copy(prop,index+1,length(prop));

   result[0] := chave;
   result[1] := valor;

end;


{**
 * Retorna o valor da chave procurada.
 *}
function TPropriedade.getPropriedade(chave: String): String;
var i : integer;
begin
    for i := 0 to high(mapa) do
     begin

       if ( (i mod 2) = 0 ) then
       begin
          if ( upperCase(mapa[i]) = upperCase(chave) ) then
          begin
            result := mapa[i+1];
            exit;
          end;
       end;

     end;
end;

end.
