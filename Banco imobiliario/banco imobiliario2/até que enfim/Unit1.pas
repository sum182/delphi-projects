unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls;

type
  TForm1 = class(TForm)
    dbpropriedades: TDatabase;
    tbpropriedades: TTable;
    dspropriedades: TDataSource;
    btnjogar: TButton;
    lblpropriedade: TLabel;
    lblvenda: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbldinheiro: TLabel;
    lbljogador: TLabel;
    Label1: TLabel;
    eddados: TEdit;
    btnnovojogo: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    lblnome1: TLabel;
    tbjog: TTable;
    lblvl1: TLabel;
    lblvl2: TLabel;
    lblvl3: TLabel;
    lblvl4: TLabel;
    lblvl5: TLabel;
    lblvl6: TLabel;
    lblnome2: TLabel;
    lblnome3: TLabel;
    lblnome4: TLabel;
    lblnome5: TLabel;
    lblnome6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnjogarClick(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
var vl1,vl2,vl3,vl4,vl5,vl6:integer;
  begin
      vl1:=1000;
      vl2:=1000;
      vl3:=1000;
      vl4:=1000;
      vl5:=1000;
      vl6:=1000;
      tbpropriedades.open;
      
      tbjog.open;
      lblnome1.caption:=tbjog.fieldbyname('nome1').asstring;
      lblnome2.caption:=tbjog.fieldbyname('nome2').asstring;
      lblnome3.caption:=tbjog.fieldbyname('nome3').asstring;
      lblnome4.caption:=tbjog.fieldbyname('nome4').asstring;
      lblnome5.caption:=tbjog.fieldbyname('nome5').asstring;
      lblnome6.caption:=tbjog.fieldbyname('nome6').asstring;
      lblvl1.caption:=inttostr(vl1);
      lblvl2.caption:=inttostr(vl2);
      lblvl3.caption:=inttostr(vl3);
      lblvl4.caption:=inttostr(vl4);
      lblvl5.caption:=inttostr(vl5);
      lblvl6.caption:=inttostr(vl6);



end;

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



procedure TForm1.btnnovojogoClick(Sender: TObject);
begin
form2.showmodal;
end;


end.
