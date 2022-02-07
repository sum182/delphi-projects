unit UnFoCadMenuUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  ComCtrls, RzTreeVw, DB, DBClient, SqlExpr, Provider,
  cxListBox, RzButton, ExtCtrls, IBServices;

type
  TFoCadMenuUsuario = class(TForm)
    ChTrMenu: TRzCheckTree;
    ClDaSeMenuUser: TClientDataSet;
    ClDaSeMenu: TClientDataSet;
    ClDaSeGrupos: TClientDataSet;
    DaSoGrupos: TDataSource;
    DaSoMenu: TDataSource;
    IBssSenhas: TIBSecurityService;
    DaSePrConsulta: TDataSetProvider;
    LiBoUsuarios: TcxListBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure Salvar(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniciarMontagem(Sender: TObject);

  private
    { Private declarations }

    function GetIdMenu(cDescricao : String): Integer;

    procedure LimparArvore();
    procedure MontarArvore(cUsuario : String);
    procedure ConsultaMenu(cUsuario : String);
    Procedure MontarNo(cNomeNo: String);
    procedure ExecConsMenu();
    procedure MontarItenNo(nIndicePai,nIndiceFilho: SmallInt; cNomeItemNo: String);
    procedure GravarDireitos();
    procedure DeletarDireitos();
    procedure ExpandirNos();


  public
    { Public declarations }
  end;

var
  FoCadMenuUsuario: TFoCadMenuUsuario;

implementation

uses UnDaMoBio, UnGeral;

{$R *.dfm}



    procedure TFoCadMenuUsuario.LimparArvore;
      var
        x : SmallInt;
      begin

        // codigo para limpar a arvore está faltando.

        ChTrMenu.Items.Clear;

      //  for x := 0 to ChTrMenu.Items.Count -1 do

      end;




    procedure TFoCadMenuUsuario.MontarArvore(cUsuario : String);
      var
      nIndicePai,nIndiceFilho,nIndiceCheck   : SmallInt;

        begin

          // chamando a consulta
          ConsultaMenu(cUsuario);

          // indice do pai  "grupo"
          nIndicePai := -1;

          // indice do filho "itens do grupo"
          nIndiceFilho := 0;

          // indice para alimentar os check box
          nIndiceCheck := 0;

          //posicionando no primeiro registro.
          ClDaSeGrupos.First;
          ClDaSeMenuUser.First;

          // loop nos grupos
          while not ( ClDaSeGrupos.Eof ) do
            begin

              // montando o nó onde será o grupo
              MontarNo( ClDaSeGrupos.FieldValues['MEGR_CAPTION'] );

              // incrementando um pai.
              Inc( nIndicePai );

              // o pai recebe ele mais o total de filhos para saber qual é o indice do proximo pai
              nIndicePai := nIndicePai + nIndiceFilho;

              // recebendo o valor do pai para depois fazer a contagem dos filhos
              nIndiceCheck := nIndicePai;

              // zerando os filhos.
              nIndiceFilho := 0;

              // loop nos itens do menu
              while not ( ClDaSeMenu.Eof ) do
                begin
                  // fazendo a contagem dos filhos
                  nIndiceCheck := nIndiceCheck + 1;

                  //montando os itens do nó
                  MontarItenNo(nIndicePai,nIndiceCheck, ClDaSeMenu.FieldValues['MEBI_FORMCAPTION'] );

                  // incrementando um filho
                  inc( nIndiceFilho );

                  ClDaSeMenu.Next;

                end
              ;// fim do while dos itens

              ClDaSeGrupos.Next;

            end
          ;// fim do while do grupo.



      end;



   procedure TFoCadMenuUsuario.ConsultaMenu(cUsuario : String);
      begin

         // montando os selects.

         ClDaSeMenu.Close;

         ClDaSeMenuUser.Close;

         ClDaSeGrupos.Close;

         ClDaSeGrupos.CommandText := 'SELECT MEGR_ID, MEGR_CAPTION FROM MENU_GRUPO';

         ClDaSeMenu.CommandText := 'SELECT MEBI_ID, MEGR_ID, MEBI_FORMCAPTION FROM MENU_BIO ';

         ClDaSeMenuUser.CommandText := 'SELECT MEBI_ID, MEUS_USERNAME FROM MENU_USUARIO '+
                                       ' WHERE MEUS_USERNAME = :USUARIO ';
         ClDaSeMenuUser.FetchParams;
         ClDaSeMenuUser.Params.ParamByName('USUARIO').Value := cUsuario;


         // executando a consulta.
         ExecConsMenu();

      end;



   procedure TFoCadMenuUsuario.ExecConsMenu;
      begin

         // executando as consultas e criando masters details.

         ClDaSeGrupos.Open;

         ClDaSeMenu.MasterSource := DaSoGrupos;
         ClDaSeMenu.MasterFields := 'MEGR_ID';
         ClDaSeMenu.IndexFieldNames := 'MEGR_ID';
         ClDaSeMenu.Open;

         ClDaSeMenuUser.MasterSource := DaSoMenu;
         ClDaSeMenuUser.MasterFields := 'MEBI_ID';
         ClDaSeMenuUser.IndexFieldNames := 'MEBI_ID';
         ClDaSeMenuUser.Open;

      end;


    // montando o nó onde será um grupo.
    Procedure TFoCadMenuUsuario.MontarNo(cNomeNo: String);
      begin

        // adicionado um nó
        ChTrMenu.Items.Add(ChTrMenu.Items.GetFirstNode,cNomeNo);

      end;




      // criando os itens do nó.
    procedure TFoCadMenuUsuario.MontarItenNo(nIndicePai,nIndiceFilho: SmallInt; cNomeItemNo: String);
      begin

         // adicionado um item de um nó
         ChTrMenu.Items.AddChild(ChTrMenu.Items.Item[nIndicePai],cNomeItemNo);

         // verificando se o usuario tem acesso ou não ao menu.
         if not ( ClDaSeMenuUser.IsEmpty ) then
           ChTrMenu.ItemState[nIndiceFilho] := csChecked
         else
           ChTrMenu.ItemState[nIndiceFilho] := csUnchecked
         ;

      end;



       //deletando todos os direitos antes de incluir
     procedure TFoCadMenuUsuario.Salvar(Sender: TObject);
      begin

        DeletarDireitos();

        GravarDireitos();

        MsgInfo('Acessos liberados com sucesso!'+#13+'É necessário sair e entrar no sistema para que as alterações entrem em rigor.');

      end;



     // deletando todos os direitos
    procedure TFoCadMenuUsuario.DeletarDireitos;
      begin

//        verificar
        { DaMoBio.SQLDaSeGeral.CommandText := 'DELETE FROM MENU_USUARIO WHERE MEUS_USERNAME = :USUARIO';
         DaMoBio.SQLDaSeGeral.ParamByName('USUARIO').Value := LiBoUsuarios.Items.Strings[LiBoUsuarios.Itemindex];
         DaMoBio.SQLDaSeGeral.ExecSQL();
         }
      end;



     //Gravando os direitos
    procedure TFoCadMenuUsuario.GravarDireitos;
       var
        x : SmallInt;
      begin

          for x := 0 to ChTrMenu.Items.Count -1 do
            if (ChTrMenu.Items[x].HasChildren ) then
              Continue
            else if ( ChTrMenu.ItemState[x] = csChecked ) then
              begin
             {
                DaMoBio.SQLDaSeGeral.CommandText := 'INSERT INTO MENU_USUARIO VALUES (:MEUS_USERNAME,:MEBI_ID)';
                DaMoBio.SQLDaSeGeral.ParamByName('MEUS_USERNAME').Value := LiBoUsuarios.Items.Strings[LiBoUsuarios.Itemindex];
                DaMoBio.SQLDaSeGeral.ParamByName('MEBI_ID').Value       := GetIdMenu(ChTrMenu.Items[x].Text);

                DaMoBio.SQLDaSeGeral.ExecSQL();}
              end

      end;



       //pegando o id do menu atraves da descricao
    function TFoCadMenuUsuario.GetIdMenu(cDescricao : String): Integer;
        var
          SqlGeral : TSQLDataSet;
      begin

         Try

           sqlGeral := TSQLDataSet.Create(Self);
          // SqlGeral.SQLConnection := DaMoBio.SQLConexao;
           SqlGeral.CommandText := 'SELECT MEBI_ID FROM MENU_BIO WHERE UPPER(MEBI_FORMCAPTION) = UPPER(:DESCRICAO)';
           SqlGeral.ParamByName('DESCRICAO').Value := cDescricao;
           SqlGeral.Open;

           Result := SqlGeral.FieldValues['MEBI_ID'];


         Finally
           SqlGeral.Close;
           FreeAndNil(SqlGeral);
         end;




      end;




    procedure TFoCadMenuUsuario.FormShow(Sender: TObject);
       var
        i : Integer;
      begin

        IBssSenhas.Active := True;
        IBssSenhas.DisplayUsers;

        for i := 0 to IBssSenhas.UserInfoCount -1 do
          LiBoUsuarios.Items.Add(IBssSenhas.UserInfo[i].UserName );
        ;

        IBssSenhas.Active := False;

      end;

    procedure TFoCadMenuUsuario.IniciarMontagem(Sender: TObject);
      begin

        LimparArvore();

        MontarArvore(LiBoUsuarios.Items.Strings[LiBoUsuarios.Itemindex]);

        ExpandirNos();

      end;



    //expandido os nós
    procedure TFoCadMenuUsuario.ExpandirNos;
        var
        x: Smallint;
      begin

         for x := 0 to ChTrMenu.Items.Count -1 do
            ChTrMenu.Items.Item[x].Expand(True)
         ;

      end;

Initialization
  RegisterClass(TFoCadMenuUsuario);

Finalization
  UnRegisterClass(TFoCadMenuUsuario);


end.
