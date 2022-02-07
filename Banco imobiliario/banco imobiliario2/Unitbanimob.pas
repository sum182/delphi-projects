unit Unitbanimob;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls;

type
  TForm1 = class(TForm)
    dbpropriedades: TDatabase;
    tbpropriedades: TTable;
    dspropriedades: TDataSource;
    eddados: TEdit;
    Label1: TLabel;
    btnjogar: TButton;
    lblpropriedade: TLabel;
    lblvenda: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbldinheiro: TLabel;
    lbljogador: TLabel;
    btnnovojogo: TButton;
    DBEdit1: TDBEdit;
    dsjog1: TDataSource;
    procedure btnjogarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnnovojogoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm1.btnjogarClick(Sender: TObject);
var dados,i,valor,tipo,dinheiro:integer;
    propriedade,jogador:string;
    venda:boolean;

    begin
     lbljogador.caption:='alv';

     dinheiro:=200;

     dados:=1;
     for i:=1 to 4 do
     begin
       eddados.text:=inttostr(dados);
       if tbpropriedades.locate('cod',eddados.text,[])then
         begin
           showmessage('O nome da propriedade é : '+(tbpropriedades.fieldbyname('propriedade').asstring)+#13'seu valor é R$'+(inttostr(tbpropriedades.fieldbyname('valor').asinteger)));
           dados:=dados+1;
           propriedade:=tbpropriedades.fieldbyname('propriedade').asstring;
           valor:=tbpropriedades.fieldbyname('valor').asinteger;
           tipo:=tbpropriedades.fieldbyname('tipo').asinteger;
           venda:=tbpropriedades.fieldbyname('venda').asboolean;
                  lblpropriedade.caption:=propriedade;


                  if venda = true then
                  lblvenda.caption:=('true')
                  else
                  lblvenda.caption:=('falso');
             If (tipo=0)  then
              begin
               dinheiro:=dinheiro+200;
               showmessage('ponto de partida');
              end;


              if tipo=2 then
               begin
                showmessage('Sorte ou Revés');
               end;

               if tipo=3 then
               begin
                showmessage('Prisão');
                end;

              if tipo=4 then
               begin
                showmessage('Lucros');
                end;

              if tipo=5 then
               begin
                showmessage('parada livre');
                end;

               if tipo=6 then
               begin
                showmessage('Imposto de renda');
                dinheiro:=dinheiro-200;
                end;

               if tipo=7 then
               begin
               showmessage('propriedade');
               end;

                if tipo=8 then
               begin
                showmessage('Companhias');
                end;

                if tipo=10 then
               begin
                showmessage('Vá para a prisão');
                end;
               Lbldinheiro.caption:=inttostr(dinheiro);
end;
end;





end;
procedure TForm1.FormCreate(Sender: TObject);


begin
tbpropriedades.open;
end;

procedure TForm1.btnnovojogoClick(Sender: TObject);
begin
form2.showmodal;

end;

end.
