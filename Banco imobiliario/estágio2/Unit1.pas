unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Mask, DBCtrls, ToolWin, ComCtrls, jpeg, ExtCtrls,
  Grids, DBGrids, Menus;

type
  Tform1 = class(TForm)
    dbpropriedades: TDatabase;
    tbpropriedades: TTable;
    dspropriedades: TDataSource;
    eddados: TEdit;
    Button2: TButton;
    lblpropriedade: TLabel;
    lblnome: TLabel;
    lbldinheiro: TLabel;
    tbjogaux: TTable;
    dsjogaux: TDataSource;
    Label1: TLabel;
    tbfinal: TTable;
    dsfinal: TDataSource;
    Image1: TImage;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    MainMenu1: TMainMenu;
    Jogo1: TMenuItem;
    NovoJogo1: TMenuItem;
    Fechar1: TMenuItem;
    Relatrio1: TMenuItem;
    HistricodasJogadas1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure btnimprimirClick(Sender: TObject);
    procedure NovoJogo1Click(Sender: TObject);
    procedure HistricodasJogadas1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form1: Tform1;

implementation

uses Unit2, Unit3;

{$R *.DFM}

procedure Tform1.Button1Click(Sender: TObject);
begin
form2.showmodal;

end;

procedure Tform1.Button2Click(Sender: TObject);
  var
  jog,dinheirot,JOGADA,aluguel,vl1,vl2,vl3,vl4,vlh,vlconstruir,hipoteca,dados,din,valor,tipo,dinheiro,d,dinheirof,auxdados,tdados,casas:integer;
    nomeaux,final,comeco,nome,propriedade,dono:string;
   venda,construir,fim:boolean;

 begin


        lblnome.caption:=tbjogaux.fieldbyname('nome').asstring;
        lbldinheiro.caption:=inttostr(tbjogaux.fieldbyname('dinheiro').asinteger);
        lblpropriedade.caption:='';
         tbjogaux.refresh;



             //gera numeros aleatórios aos dados//


        d:=13;
        dados:=random(d);
        while dados=0 do
          begin
            dados:=random(d);
           end;

        tdados:=tbjogaux.fieldbyname('dados').asinteger;
        auxdados:=tdados+dados;
        if auxdados>40 then
        begin
        auxdados:=auxdados-40;
        end;
        eddados.text:=inttostr(dados);
        tbjogaux.edit;
        tbjogaux.fieldbyname('dados').asinteger:=auxdados;
        tbjogaux.post;

             //fim dos numeros aleatórios//

             // estas variáveis recebem os valores do jogador da jogada//

       dinheiro:=tbjogaux.fieldbyname('dinheiro').asinteger;
       nome:=tbjogaux.fieldbyname('nome').asstring;
       lbldinheiro.caption:=(inttostr(dinheiro));
       lblnome.caption:=tbjogaux.fieldbyname('nome').asstring;
       showmessage('Jogador :'+ nome);


              //localiza o local onde o jogador está //
              //as variáveis valor,tipo e venda recebem o valores das tabelas//


       if tbpropriedades.locate('cod',auxdados,[])then
         begin
           showmessage('Você esta:  '+(tbpropriedades.fieldbyname('propriedade').asstring));
           propriedade:=tbpropriedades.fieldbyname('propriedade').asstring;
           valor:=tbpropriedades.fieldbyname('valor').asinteger;
           tipo:=tbpropriedades.fieldbyname('tipo').asinteger;
           venda:=tbpropriedades.fieldbyname('venda').asboolean;
           casas:=tbpropriedades.fieldbyname('casas').asinteger;
           aluguel:=tbpropriedades.fieldbyname('aluguel').asinteger;
           vl1:=tbpropriedades.fieldbyname('vl1').asinteger;
           vl2:=tbpropriedades.fieldbyname('vl2').asinteger;
           vl3:=tbpropriedades.fieldbyname('vl3').asinteger;
           vl4:=tbpropriedades.fieldbyname('vl4').asinteger;
           vlh:=tbpropriedades.fieldbyname('vlh').asinteger;
           vlconstruir:=tbpropriedades.fieldbyname('vlconstruir').asinteger;
           hipoteca:=tbpropriedades.fieldbyname('hipoteca').asinteger;
           construir:=tbpropriedades.fieldbyname('construir').asboolean;
                  lblpropriedade.caption:=propriedade;


          //inserir dados na tbfinal//
          tbfinal.insert;
          tbfinal.FieldByName('jogador').asstring:=nome;
          tbfinal.FieldByName('propriedade').asstring:=propriedade;
          tbfinal.FieldByName('vlinicial').asinteger:=dinheiro;
          tbfinal.post;


                //verifica que tipo de propriedade o jogador está//

             If (tipo=0)  then
              begin
               showmessage('ponto de partida');
               tbjogaux.edit;
               dinheiro:=dinheiro+200;
               tbjogaux.fieldbyname('dinheiro').asinteger:=dinheiro;
               showmessage('Você ganhou R$200');
              end;


              if tipo=2 then
                 begin
                    if venda=true then
                      begin
                      showmessage('Sorte' +#13 +'Voce ganhou ' + (inttostr(valor)));
                      tbjogaux.edit;
                      tbjogaux.FieldByName('dinheiro').asinteger:=dinheiro+valor;
                    end

                    else
                      begin
                      showmessage('Revés'+ #13+ 'Voce perdeu ' + (inttostr(valor)));
                      tbjogaux.edit;
                      tbjogaux.FieldByName('dinheiro').asinteger:=dinheiro-valor;
                    end;

              dinheiro:=tbjogaux.fieldbyname('dinheiro').asinteger;
             end;





               if tipo=3 then
               begin
               showmessage('Prisão');
               dinheiro:=dinheiro-200;
               tbjogaux.edit;
               tbjogaux.fieldbyname('dinheiro').asinteger:=dinheiro;
               showmessage('Você perdeu R$200');
                end;


              if tipo=4 then
               begin
                showmessage('Lucros');
                tbjogaux.edit;
               dinheiro:=dinheiro+200;
               tbjogaux.fieldbyname('dinheiro').asinteger:=dinheiro;
               showmessage('Você ganhou R$200');
                end;


              if tipo=5 then
               begin
                showmessage('parada livre');
                end;


               if tipo=6 then
               begin
                showmessage('Imposto de renda');
                dinheiro:=dinheiro-200;
                tbjogaux.edit;
                tbjogaux.fieldbyname('dinheiro').asinteger:=dinheiro;
                showmessage('Você perdeu R$200');
                end;


               if tipo=7 then
               begin


               if venda=false then
                 begin
                    if  messagedlg('Deseja comprar a  propriedade : '+(tbpropriedades.fieldbyname('propriedade').asstring)+#13'seu valor é R$'+(inttostr(tbpropriedades.fieldbyname('valor').asinteger)),
                    mtConfirmation, [mbYes,mbNo], 0) = mrYes then
                      begin
                       tbpropriedades.edit;
                       tbpropriedades.FieldByName('venda').asboolean:=true;
                       tbpropriedades.fieldbyname('dono').asstring:=nome;
                       tbjogaux.edit;
                       tbjogaux.FieldByName('dinheiro').asinteger:=tbjogaux.FieldByName('dinheiro').asinteger-valor;
                       showmessage('comprada');
                       dinheiro:=tbjogaux.fieldbyname('dinheiro').asinteger;
                       end;
                   end

                 else
                     begin
                         dono:=tbpropriedades.fieldbyname('dono').asstring;
                         if dono=nome then
                           begin
                           Showmessage('esta propriedade é sua !');
                           end
                         else
                         begin
                         showmessage('Esta propriedade pertence a: ' +dono+ #13'você pagará um valor de R$'+inttostr(valor));
                         tbjogaux.edit;
                         tbjogaux.FieldByName('dinheiro').asinteger:=dinheiro-valor;
                         if tbjogaux.locate('nome',dono,[]) then
                         begin
                          dinheirot:=tbjogaux.fieldbyname('dinheiro').asinteger;

                          tbjogaux.edit;
                           tbjogaux.FieldByName('dinheiro').asinteger:=dinheirot+valor;
                           tbjogaux.locate('nome',nome,[]);
                           end;

             end;
                    end;

         end;

         if tipo=8 then
         begin

           if venda=false then
             begin
               if  messagedlg('Deseja comprar a  companhia : '+(tbpropriedades.fieldbyname('propriedade').asstring)+#13'seu valor é R$'+(inttostr(tbpropriedades.fieldbyname('valor').asinteger)),
               mtConfirmation, [mbYes,mbNo], 0) = mrYes then
               begin
               tbpropriedades.edit;
               tbpropriedades.FieldByName('venda').asboolean:=true;
               tbpropriedades.fieldbyname('dono').asstring:=nome;
               tbjogaux.edit;
               tbjogaux.FieldByName('dinheiro').asinteger:=tbjogaux.FieldByName('dinheiro').asinteger-valor;
               showmessage('comprada');
               end;
             end
             else
               begin
                dono:=tbpropriedades.fieldbyname('dono').asstring;
                   if dono=nome then
                  begin
                   Showmessage('esta companhia é sua !');
                  end
                       else
                         begin
                         showmessage('Esta companhia pertence a: ' +dono+ #13'você pagará um valor de R$'+inttostr(valor));
                         tbjogaux.edit;
                         tbjogaux.FieldByName('dinheiro').asinteger:=dinheiro-valor;
                         if tbjogaux.locate('nome',dono,[]) then
                         begin
                          dinheirot:=tbjogaux.fieldbyname('dinheiro').asinteger;

                          tbjogaux.edit;
                           tbjogaux.FieldByName('dinheiro').asinteger:=dinheirot+valor;
                           tbjogaux.locate('nome',nome,[]);
                           end;
                      end;
             end;
                    end;

         end;
                if tipo=10 then
               begin
                showmessage('Vá para a prisão');
                tbjogaux.edit;
                dinheiro:=dinheiro-200;
                tbjogaux.fieldbyname('dados').asinteger:=11;
                tbjogaux.fieldbyname('dinheiro').asinteger:=dinheiro;
                showmessage('Você perdeu R$200');
                end;



                Lbldinheiro.caption:=inttostr(tbjogaux.fieldbyname('dinheiro').asinteger);
                tbfinal.edit;
                tbfinal.FieldByName('vlfinal').asinteger:=tbjogaux.fieldbyname('dinheiro').asinteger;
                tbfinal.post;

                // se o jogador tiver com o valor inferior a r$ perde o jogo//

                if tbjogaux.FieldByName('dinheiro').asinteger<0 then
                begin
                tbjogaux.edit;
                showmessage('Jogador: '+ nome +' você perdeu o jogo !!');
                tbjogaux.delete;
                end;

            
                tbpropriedades.edit;
                tbjogaux.edit;

                tbjogaux.post;
                tbpropriedades.post;
                tbjogaux.next;

                tbfinal.edit;


                tbfinal.post;
                tbfinal.Next;






          //se a tabela do jogador estiver no final ela volta para o inicio//
          while  tbjogaux.eof do
          begin
          tbjogaux.first;
          end;
   end;



procedure Tform1.FormCreate(Sender: TObject);
begin

tbpropriedades.open;
tbfinal.open;
tbjogaux.open;
tbjogaux.edit;
tbjogaux.First;
eddados.text:='';



       While not Tbfinal.EOF do
       begin
       tbfinal.edit;
       tbfinal.Delete;
       end;
       tbfinal.edit;
       tbfinal.post;
       end;







procedure Tform1.btnimprimirClick(Sender: TObject);
begin

imp.QuickRep1.Preview;
end;


























procedure Tform1.NovoJogo1Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure Tform1.HistricodasJogadas1Click(Sender: TObject);
begin
imp.QuickRep1.Preview;
end;

procedure Tform1.Fechar1Click(Sender: TObject);
begin
 if  messagedlg('Deseja sair do jogo? ', mtConfirmation, [mbYes,mbNo], 0) =mrYes then
  form1.close;
end;


end.
