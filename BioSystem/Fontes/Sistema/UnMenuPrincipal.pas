unit UnMenuPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxPC, RzGroupBar, ExtCtrls, RzPanel, RzSplit,
  StdCtrls,DB, DBClient, Menus, Buttons, RzSpnEdt, ComCtrls, RzAnimtr,
  RzStatus, ImgList, RzPrgres, RzLabel, RzBHints, cxNavigator,
  cxDBNavigator,GifImage, XPMan;


Type
     navegar = Type Byte;

Type
    EstadoPage = Type Byte;

type
    TFoMenuPrincipal = class(TForm)
    PaCoPaginas: TcxPageControl;
    ClDaSeMontarGrupo: TClientDataSet;
    ClDaSeMontarItens: TClientDataSet;
    DaSoMontarGrupo: TDataSource;
    PoMeFecharPag: TPopupMenu;
    Fechar: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    BuVoltar: TRzRapidFireButton;
    BuAvancar: TRzRapidFireButton;
    BuFechar: TRzRapidFireButton;
    RzStatusBar1: TRzStatusBar;
    ImLiIcone: TImageList;
    RzAnimator3: TRzAnimator;
    SiPaMenu: TRzSizePanel;
    GrBaMenu: TRzGroupBar;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    StHints: TRzStatusPane;
    RzResourceStatus1: TRzResourceStatus;
    RzFieldStatus1: TRzFieldStatus;
    BalaoHint: TRzBalloonHints;
    LaUsuario: TRzFieldStatus;
    LaLogin: TRzFieldStatus;
    LaServidor: TRzFieldStatus;
    LaAguarde: TRzFieldStatus;
    AnProgress: TAnimate;
    Button1: TButton;

    Procedure CriarPagina (Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure FecharPag(Sender : Tobject);
    procedure BuAvancarClick(Sender: TObject);
    procedure BuVoltarClick(Sender: TObject);
    procedure PaCoPaginasChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);


  private
    vStatePage: EstadoPage;
    procedure SetStatePage(const Value: EstadoPage);

  private
    { Declarações privadas }

    Procedure CriarGrupos( sNomeGrupo, sCaptionGrupo : String  );
    Procedure CriarItens ( sNomeItem, sCaptionItem : String; Grupo : TRzGroup );
    Procedure MontarConsultas ( );
    Procedure ExecConsulta( );

    Function FormExiste(Form : String):boolean;
    Procedure NavPaginas (Onde : Navegar );
    Property  StatePage : EstadoPage read vStatePage write SetStatePage;
    Procedure ShowHints(Sender : TObject);





  public
    { Declarações publicas }
     Procedure MontarMenu();
  protected
    { Declarações protegidas }


  end;



  var
  FoMenuPrincipal: TFoMenuPrincipal;

  Const NextPage  : Navegar = 1; // navega a pagina para frente
  Const PriorPage : Navegar = 2; // navega a pagina para traz

  Const Fim    : EstadoPage = 0; // fim das paginas
  Const Inicio : EstadoPage = 1; // inicio das paginas
  Const Seila  : EstadoPage = 2; // nao é fim e nem inicio seila
  Const Vazio  : EstadoPage = 3; // nao há paginas criadas.
  Const UmaPag : EstadoPage = 4; // há apenas 1 pagina.




implementation

uses UnDaMoBio, UnGeral;

{$R *.dfm}

{ TForm1 }

procedure TFoMenuPrincipal.CriarGrupos(sNomeGrupo, sCaptionGrupo : String);
 Var
  Grupo : TRzGroup; // variavel da classe para criar o grupo
begin

   {***********************************************
    rotina para criar grupos para o menu principal
    ***********************************************}

  // criando o objeto grupo
  Grupo := TRzGroup.Create(Self);

  // tentando montar o grupo se der erro é q o grupo ja existe.
  Try

    // Atribuindo o nome do novo grupo
    Grupo.Name := 'Gr'+sNomeGrupo;

    // Titulo do Grupo
    Grupo.Caption := sCaptionGrupo;

    // Adicionando o grupo no Painel
    GrBaMenu.AddGroup(Grupo);


  Except
    FreeAndNil(Grupo);
  end;

end;

procedure TFoMenuPrincipal.CriarItens(sNomeItem , sCaptionItem: String ; Grupo : TRzGroup);
begin
   {************************************
    rotina para criar os itens do grupo
    ************************************}

   // criando um novo item.
   Grupo.Items.Add;

   //atribuindo um evento para o item.
   Grupo.Items[Grupo.Items.Count-1].OnClick := CriarPagina;

   // adicionando a descrição do item.
   Grupo.Items[Grupo.Items.Count-1].Caption := sCaptionItem;

   // gambiarra de programador ** adicionado o nome do form no hint pois nao há a propriedade 'NAME' para esse objeto.
   Grupo.Items[Grupo.Items.Count-1].Hint := sNomeItem;



end;

Procedure TFoMenuPrincipal.CriarPagina (Sender: TObject);

   Function PagCriada(cNome : String):Boolean;
    var
     nPags : SmallInt;
   begin

     //Verificando se pagina já foi criada atravez do nome do tab sheet
     for nPags := 0 to PaCoPaginas.PageCount-1 do
       begin
         if ( PaCoPaginas.Pages[nPags].Name = 'TaSh'+cNome ) then
           begin
             result := True;
             // se ela ja foi criada ativa a pagina.
             PaCoPaginas.ActivePage := PaCoPaginas.Pages[nPags];
             exit;
           end
         else
           result := False
         ;
       end
     ;
     result := False;
   end; // fim da função

var
 cNome,cCaption : String;
 FormClass  : TFormClass;
 Form       : TForm;
begin

  // pegando o nome do item.
  cNome := 'T'+(SENDER as TRzGroupItem).Hint;

  // pegando o caption do  item.
  cCaption := (SENDER as TRzGroupItem).Caption;

  // verificando se o formulario exite antes de criar
  if ( FormExiste(cNome) ) then
    begin

      // se a pagina nao tiver criada ele cria se nao ele ativa.
      if not( PagCriada(cNome) ) then
        begin
          // pegando a classe do form.
          FormClass := TFormClass(GetClass(cNome));

          // criando o form.
          Form      := FormClass.Create(Application);

          with TcxTabSheet.Create(PaCoPaginas) do
            begin
              PageControl := PaCoPaginas;
              Name        := 'TaSh'+cNome;
              Caption     := cCaption;
              Form.Align  := alClient;
              Form.ManualDock(PageControl.Pages[PaCoPaginas.PageCount-1],nil,alClient);
              PaCoPaginas.ActivePage := PageControl.Pages[PaCoPaginas.PageCount-1];
              Form.Show;
            end // fim do with para criar pagina.

        end // fim da verificação se a pagina foi criada.

      else
        Exit //se pagina tiver criada ativa e sai.
      ;

    end // fim da verificação se o form exite.
  else
  MsgErro('Menu indisponível no momento.') // saindo se o formulario nao exite.
  ;
end;

procedure TFoMenuPrincipal.MontarConsultas;
begin
  // montado as consultas para buscar os dados do menu.

  ClDaSeMontarGrupo.Close;
  ClDaSeMontarGrupo.CommandText := 'SELECT MEGR_ID, MEGR_NOME , MEGR_CAPTION FROM MENU_GRUPO '+
                                   'WHERE MEGR_ID IN (SELECT MENU_BIO.MEGR_ID '+
                                   'FROM MENU_USUARIO '+
                                   'INNER JOIN MENU_BIO ON (MENU_USUARIO.MEBI_ID = MENU_BIO.MEBI_ID) '+
                                   'WHERE MEUS_USERNAME = :USUARIO) ';


  ClDaSeMontarItens.Close;
  ClDaSeMontarItens.CommandText := 'SELECT MEBI_FORMNAME, MEBI_FORMCAPTION, MEGR_ID FROM MENU_BIO '+
                                   'WHERE MEBI_ID IN (SELECT MEBI_ID '+
                                   'FROM MENU_USUARIO WHERE MEUS_USERNAME = :USUARIO) ';



  ClDaSeMontarGrupo.Params.ParamByName('USUARIO').Value := GetUsuario();

  ClDaSeMontarItens.Params.ParamByName('USUARIO').Value := GetUsuario();

  //executando a consulta.
  ExecConsulta();
end;

procedure TFoMenuPrincipal.ExecConsulta;
begin

  ClDaSeMontarGrupo.Open;

  // Montando um Master Detail.
  ClDaSeMontarItens.MasterSource := DaSoMontarGrupo;
  ClDaSeMontarItens.MasterFields := 'MEGR_ID';
  ClDaSeMontarItens.IndexFieldNames := 'MEGR_ID';
  ClDaSeMontarItens.Open;



end;

procedure TFoMenuPrincipal.MontarMenu;
var
 nNumGrupo : Smallint;
begin

  //montando a consulta.
  MontarConsultas();

  // numero do grupo
  nNumGrupo := -1;

  ClDaSeMontarGrupo.First;

  while not ( ClDaSeMontarGrupo.Eof ) do
    begin

      // criando o grupo.
      CriarGrupos(ClDaSeMontarGrupo.FieldValues['MEGR_NOME'],ClDaSeMontarGrupo.FieldValues['MEGR_CAPTION']);

      // incrementado o numero grupo
      Inc(nNumGrupo);

      ClDaSeMontarItens.First;

     // criando os itens.
      while not( ClDaSeMontarItens.Eof ) do
        begin
          CriarItens(ClDaSeMontarItens.FieldValues['MEBI_FORMNAME'],ClDaSeMontarItens.FieldValues['MEBI_FORMCAPTION'], GrBaMenu.Groups[nNumGrupo]);
          ClDaSeMontarItens.Next;
        end
      ;

      ClDaSeMontarGrupo.Next;
    end
  ;

end;

procedure TFoMenuPrincipal.FormShow(Sender: TObject);
begin
  // montando o menu principal.
  MontarMenu();
  LaUsuario.Caption   := GetUsuario();
  LaLogin.Caption     := FormatDateTime('hh:mm dd/mm/yy',Now);
  LaServidor.Caption  := GetServidor();

end;

Function TFoMenuPrincipal.FormExiste(Form : String):boolean;
begin

  // procurando a classe do form para verificar se ele existe.
  Try
    FindClass(Form);
    Result := True;
  Except
    Result := False;
  end;

end;

procedure TFoMenuPrincipal.FecharPag(Sender: Tobject);
var
  nIndice : SmallInt;
  oObject : TComponent;
  cForm   : String;
begin


  // pegando o indice da pagina q será fechada.
  nIndice := PaCoPaginas.ActivePageIndex;

  // pegando o nome do formulario
  cForm := Copy ( PacoPaginas.ActivePage.Name , 6 , Length(PacoPaginas.ActivePage.Name) );

  // procurando o Objeto Formulário
  oObject := FindComponent(cForm);

  //verificando se achou
  if ( oObject <> Nil ) then
    FreeAndNil(oObject)
  ;

  // limpando da memoria.
  PaCoPaginas.ActivePage.Free;

  // se for a primeira pagina ativa a proxima senao ativa a anterior.
  if ( nIndice = 0 ) then
    PaCoPaginas.ActivePageIndex := 0
  else
    PaCoPaginas.ActivePageIndex := nIndice-1
  ;


end;



procedure TFoMenuPrincipal.NavPaginas(Onde: Navegar);
begin
  // avançando a pagina.
  if (Onde = NextPage) then
    PaCoPaginas.ActivePageIndex := PaCoPaginas.ActivePageIndex+1
  ;

  // voltando a pagina.
  if (Onde = PriorPage) then
    PaCoPaginas.ActivePageIndex := PaCoPaginas.ActivePageIndex-1
  ;
end;

procedure TFoMenuPrincipal.BuAvancarClick(Sender: TObject);
begin
   // proxima pagina
   NavPaginas(NextPage);
end;

procedure TFoMenuPrincipal.BuVoltarClick(Sender: TObject);
begin
  // pagina anterior
  NavPaginas(PriorPage);
end;

procedure TFoMenuPrincipal.SetStatePage(const Value: EstadoPage);
begin
  // setando o estado da pagina
  vStatePage := Value;
end;

procedure TFoMenuPrincipal.PaCoPaginasChange(Sender: TObject);
var
  posicao,total : Smallint;
begin

  {********************************************
   função para controlar os estados das paginas
   e controlar a consistencia dos botoes
  *********************************************}


  posicao := PaCoPaginas.ActivePageIndex;
  total   := PaCoPaginas.PageCount;

  // seila onde ele tá
  if (posicao > Total-1) then
    StatePage := seila
  ;

  // seila onde ele tá
  if (posicao < Total-1) then
    StatePage := seila
  ;

  // se for fim
  if (posicao = Total-1) then
    StatePage := Fim
  ;

  // se for inicio
  if (posicao = 0) then
    StatePage := Inicio
  ;

   // se nao tiver paginas criadas
  if (posicao = -1) then
    StatePage := Vazio
  ;

  // se houver apenas 1 pagina
  if (total = 1) then
    StatePage := UmaPag
  ;

  BuAvancar.Enabled := ( StatePage in [Inicio,Seila] );
  BuVoltar.Enabled  := ( StatePage in [Fim,Seila] );
  BuFechar.Enabled  := ( StatePage in [Inicio,Seila,Fim, UmaPag] );

end;

procedure TFoMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFoMenuPrincipal.FormCreate(Sender: TObject);
begin
   with Application do
     begin
        HintColor := clBtnFace;
        HintPause := 200;
        OnHint    := ShowHints;
     end
   ;
end;

procedure TFoMenuPrincipal.ShowHints(Sender : TObject);
begin
  // mostrando os hints da applicação no status bar
  StHints.Caption := Application.Hint;
end;

procedure TFoMenuPrincipal.Button1Click(Sender: TObject);
var i,j:Integer;
begin


  Aguarde('Processando Pacotes');

  for  i:=1  to 9999999 do
  begin

    for  j:=1  to 10  do
    Application.ProcessMessages;
    begin

    end;

  end;

  FimAguarde();


end;




Initialization
  RegisterClass(TFoMenuPrincipal);
Finalization
  UnRegisterClass(TFoMenuPrincipal);

end.
