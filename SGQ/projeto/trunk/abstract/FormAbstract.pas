{*****************************************************************************
 *  @Autor: Wagner.Araujo                                                    *
 *  @Data: 23/04/2008                                                        *
 *  @Pacote: Abstract                                                        *
 *  @Finalidade: Esse form tem a finalidade de varrer todos os componentes   *
 *               e adicionar os caption e hint que estao nos arquivos de     *
 *               resource.                                                   *
 *               Também pode servir de base para suas subimplementações já   *
 *               que o mesmo é abstrato.                                     *
 *                                                                           *
 *  @Exemplos: Um form que herdar o FormAbstrato poderá reescrever o metodo  *
 *             getMessageResource() retornado uma resource com uma liguagem  *
 *              definida, assim não deixando fixo o resource.                *
 *                                                                           *
 *                                                                           *
 *****************************************************************************}



unit FormAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,MessageResource,StdCtrls,Typinfo;

type
  TFrmAbstract = class(TForm)
    procedure FormCreate(Sender: TObject);

  protected
    function getMessageResource():TMessageResource;virtual;
  private
    procedure inicializaFormulario();
    procedure setCaption(c : TComponent; resource : TMessageResource;
                         pInfo : PPropInfo);
    procedure setHint(c : TComponent; resource : TMessageResource;
                      pInfo : PPropInfo);
    procedure verificaProperty(c : TComponent; resource : TMessageResource);

    { Private declarations }
  public
    { Public declarations }
  end;

implementation




{$R *.dfm}

{ TFrmAbstract }

function TFrmAbstract.getMessageResource: TMessageResource;
begin
    result := TMessageResource.create();
end;

procedure TFrmAbstract.inicializaFormulario;
var messageResource : TMessageResource;
    i : Integer;
    c : TComponent;
begin
  messageResource := getMessageResource();

  //verificando os resources do form.
  verificaProperty(self,messageResource);

  for i := 0 to componentCount-1 do
  begin
     c :=  components[i];

     if (c is TControl ) then
     begin
         verificaProperty(c,messageResource);
     end

  end;

end;


procedure TFrmAbstract.FormCreate(Sender: TObject);
begin
  inicializaFormulario();
end;

procedure TFrmAbstract.setCaption(c: TComponent; resource : TMessageResource;
                                  pinfo : PPropInfo);
var chave : String;
    caption : String;
begin
   chave := self.name + '.' + c.name + '.caption';

   caption := resource.getPropriedade(chave);

   if ( caption <> '') then
   begin
     setStrProp(c, pInfo, caption);
   end

end;

procedure TFrmAbstract.setHint(c: TComponent; resource : TMessageResource;
                               pinfo : PPropInfo);
var chave : String;
    hint : String;
begin
   chave := self.name + '.' + c.name + '.hint';

   hint := resource.getPropriedade(chave);

   if ( hint <> '') then
   begin
     setStrProp(c, pInfo, hint);
   end

end;

procedure TFrmAbstract.verificaProperty(c: TComponent;
  resource: TMessageResource);
var  pInfo : PPropInfo;
begin
  pInfo := getPropInfo(c.ClassInfo, 'Caption');

  if ( pInfo <> nil ) then
  begin
    setCaption(c,resource,pInfo);
  end;

  pInfo := getPropInfo(c.ClassInfo, 'Hint');

  if ( pInfo <> nil ) then
  begin
    setHint(c,resource,pInfo);
  end;
end;

end.
