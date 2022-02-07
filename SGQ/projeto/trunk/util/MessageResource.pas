{*****************************************************************************
 *  @Autor: Wagner.Araujo                                                    *
 *  @Data: 21/04/2008                                                        *
 *  @Pacote: Util                                                            *
 *  @Finalidade: Classe criada para buscar todos os textos e mensagens do    *
 *               sistema em um arquivo de configuração para assim podermos   *
 *               internacionalizar (I18N) o projeto.                         *
 *               Essa classe tem 2 construtores:                             *
 *        1) - TMessageResource.create(linguagem: Integer)                   *
 *              Cria um Objeto MessageResource com uma linguagem definida.   *
 *                                                                           *
 *        2) - TMessageResource.create()                                     *
 *              Cria um Objeto MessageResource com a linguagem definida na   *
 *              maquina do usuario.                                          *
 *                                                                           *
 *        Os arquivos de mensagem são buscados no seguinte endereço:         *
 * <diretorio do executavel>\resource\MessageResource_<linguagem>.properties  *
 *                                                                           *
 *  @Exemplos:                                                               *
 *         O arquivo tem que ser configurada da seguinte forma               *
 *                                                                           *
 *         chave=mensagem                                                    *
 *                                                                           *
 *         Uma boa pratica é sempre colocar comentarios nas chaves           *
 *         o comentario é usando assim:                                      *
 *                                                                           *
 *         #comentario da propriedade                                        *
 *         chave=mensagem                                                    *
 *                                                                           *
 *****************************************************************************}

unit MessageResource;

interface

uses Propriedade;

type

  TMessageResource = class(TPropriedade)

  public
    constructor create();overload;
    constructor create(linguagem : Integer);overload;

  private
      locale : String;
end;

implementation
uses SysUtils,Windows,Utils;

{ TMessageResource }

constructor TMessageResource.create();
begin
   self.create(LANG_USER_DEFAULT);
end;

constructor TMessageResource.create(linguagem: Integer);
var pathExe : String;
begin
   pathExe := Util.getEnderecoExe();

   locale := getLocaleStr(linguagem,LOCALE_SABBREVLANGNAME,'PTB');

   self.create(pathExe + '\resource\MessageResource_' + locale + '.properties');
end;


end.
