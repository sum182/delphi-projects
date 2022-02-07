unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls;

type
  TForm2 = class(TForm)
    dbjog: TDatabase;
    tbjog: TTable;
    dsjog: TDataSource;
    ednome1: TEdit;
    ednome2: TEdit;
    ednome3: TEdit;
    ednome4: TEdit;
    ednome5: TEdit;
    ednome6: TEdit;
    edsenha1: TEdit;
    edsenha2: TEdit;
    edsenha3: TEdit;
    edsenha4: TEdit;
    edsenha5: TEdit;
    edsenha6: TEdit;
    GroupBox1: TGroupBox;
    rb2jog: TRadioButton;
    rb3jog: TRadioButton;
    rb4jog: TRadioButton;
    rb5jog: TRadioButton;
    rb6jog: TRadioButton;
    btnsalvar: TButton;
    tbjogaux: TTable;
    dsjogaux: TDataSource;
    btnproc1: TButton;
    btnproc2: TButton;
    btnproc5: TButton;
    btnproc4: TButton;
    btnproc3: TButton;
    btnproc6: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure rb2jogClick(Sender: TObject);
    procedure rb3jogClick(Sender: TObject);
    procedure rb4jogClick(Sender: TObject);
    procedure rb5jogClick(Sender: TObject);
    procedure rb6jogClick(Sender: TObject);
    procedure btnproc1Click(Sender: TObject);
    procedure btnproc2Click(Sender: TObject);
    procedure btnproc3Click(Sender: TObject);
    procedure btnproc4Click(Sender: TObject);
    procedure btnproc5Click(Sender: TObject);
    procedure btnproc6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

procedure TForm2.FormCreate(Sender: TObject);
begin
tbjog.open;
tbjogaux.open;
tbjogaux.insert;
ednome1.text:='';
ednome2.text:='';
ednome3.text:='';
ednome4.text:='';
ednome5.text:='';
ednome6.text:='';
edsenha1.text:='';
edsenha2.text:='';
edsenha3.text:='';
edsenha4.text:='';
edsenha5.text:='';
edsenha6.text:='';

end;

procedure TForm2.btnsalvarClick(Sender: TObject);
begin
      tbjogaux.close;
      tbjogaux.Open;
      While not Tbjogaux.EOF do
      begin
     tbjogaux.edit;
     tbjogaux.Delete;

     end;
    tbjog.insert;
      tbjog.FieldByName('nome').asstring:=ednome1.text;
      tbjog.FieldByName('senha').asstring:=edsenha1.text;
    tbjog.append;
      tbjog.FieldByName('nome').asstring:=ednome2.text;
      tbjog.FieldByName('senha').asstring:=edsenha2.text;
    tbjog.append;
      tbjog.FieldByName('nome').asstring:=ednome3.text;
      tbjog.FieldByName('senha').asstring:=edsenha3.text;
    tbjog.append;
      tbjog.FieldByName('nome').asstring:=ednome4.text;
      tbjog.FieldByName('senha').asstring:=edsenha4.text;
    tbjog.append;
      tbjog.FieldByName('nome').asstring:=ednome5.text;
      tbjog.FieldByName('senha').asstring:=edsenha5.text;
    tbjog.append;
      tbjog.FieldByName('nome').asstring:=ednome6.text;
      tbjog.FieldByName('senha').asstring:=edsenha6.text;
    tbjog.append;
       tbjogaux.insert;
     if rb2jog.checked then
     begin
     tbjogaux.First;
     tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome1.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
     tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome2.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
     tbjogaux.post;
     form2.close;
     tbjogaux.close;
     end;


     if rb3jog.checked then
     begin

       tbjogaux.fieldbyname('nome').asstring:=ednome1.text;
       tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
        tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome2.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
        tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome3.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
     tbjogaux.post;
     form2.close;
      tbjogaux.close;
     end;

     if rb4jog.checked then
     begin

     tbjogaux.fieldbyname('nome').asstring:=ednome1.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
        tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome2.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
        tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome3.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
        tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome4.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
        tbjogaux.post;
        form2.close;
         tbjogaux.close;
      end;

     if rb5jog.checked then
     begin

     tbjogaux.fieldbyname('nome').asstring:=ednome1.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
       tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome2.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
       tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome3.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
       tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome4.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
       tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome5.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
       tbjogaux.post;
       form2.close;
        tbjogaux.close;
     end;



      if rb6jog.checked then
     begin
      
     tbjogaux.fieldbyname('nome').asstring:=ednome1.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
        tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome2.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
        tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome3.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
        tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome4.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;

        tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome5.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
        tbjogaux.append;
     tbjogaux.fieldbyname('nome').asstring:=ednome6.text;
     tbjogaux.fieldbyname('dinheiro').asinteger:=1700;
        tbjogaux.post;
     form2.close;
      tbjogaux.close;
     end;


end;

procedure TForm2.rb2jogClick(Sender: TObject);
begin
 with ednome1 do
        begin
           enabled:=true;
            color:=clWindow;
        end;
      with edsenha1 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

        with btnproc1 do
         begin
          enabled:=true;

         end;


     with ednome2 do
        begin
         enabled:=true;
         color:=clWindow;
        end;
     with edsenha2 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
          with btnproc2 do
         begin
          enabled:=true;

         end;

     with ednome3 do
        begin
         enabled:=false;
         color:=clmenu;
        end;
       with edsenha3 do
         begin
          enabled:=false;
          color:=clmenu;
         end;

        with btnproc3 do
         begin
          enabled:=false;
         end;

          with ednome4 do
        begin
          enabled:=false;
          color:=clmenu;
        end;
       with edsenha4 do
         begin
        enabled:=false;
          color:=clmenu;
         end;

          with btnproc4 do
         begin
          enabled:=false;
         end;

          with ednome5  do
        begin
        enabled:=false;
          color:=clmenu;
        end;
       with edsenha5 do
         begin
         enabled:=false;
          color:=clmenu;
         end;
           with btnproc5 do
         begin
          enabled:=false;
         end;

          with ednome6 do
        begin
         enabled:=false;
          color:=clmenu;
        end;
       with edsenha6 do
         begin
          enabled:=false;
          color:=clmenu;
         end;
          with btnproc6 do
         begin
          enabled:=false;
         end;

end;




procedure TForm2.rb3jogClick(Sender: TObject);
begin
with ednome1 do
        begin
           enabled:=true;
            color:=clWindow;
        end;
      with edsenha1 do
         begin
          enabled:=true;
          color:=clWindow;
         end;


         with btnproc1 do
         begin
          enabled:=true;
         end;

     with ednome2 do
        begin
         enabled:=true;
         color:=clWindow;
        end;
     with edsenha2 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

         with btnproc2 do
         begin
          enabled:=true;
         end;

     with ednome3 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with edsenha3 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

           with btnproc3 do
         begin
          enabled:=true;
         end;
          with ednome4 do
        begin
          enabled:=false;
          color:=clmenu;
        end;
       with edsenha4 do
         begin
        enabled:=false;
          color:=clmenu;
         end;
        with btnproc4 do
         begin
          enabled:=false;
         end;

          with ednome5  do
        begin
        enabled:=false;
          color:=clmenu;
        end;
       with edsenha5 do
         begin
         enabled:=false;
          color:=clmenu;
         end;
          with btnproc5 do
         begin
          enabled:=false;
         end;

          with ednome6 do
        begin
         enabled:=false;
          color:=clmenu;
        end;
       with edsenha6 do
         begin
          enabled:=false;
          color:=clmenu;
         end;
          with btnproc6 do
         begin
          enabled:=false;
         end;
end;

procedure TForm2.rb4jogClick(Sender: TObject);
begin
with ednome1 do
        begin
           enabled:=true;
            color:=clWindow;
        end;
      with edsenha1 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
          with btnproc1 do
         begin
          enabled:=true;
         end;
     with ednome2 do
        begin
         enabled:=true;
         color:=clWindow;
        end;
     with edsenha2 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

          with btnproc2 do
         begin
          enabled:=true;
         end;

     with ednome3 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with edsenha3 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
             with btnproc3 do
         begin
          enabled:=true;
          end;

        with ednome4 do
        begin
         enabled:=true;
          color:=clWindow;
        end;

       with edsenha4 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

         with btnproc4 do
         begin
          enabled:=true;
          end;

          with ednome5  do
        begin
        enabled:=false;
          color:=clmenu;
        end;
       with edsenha5 do
         begin
         enabled:=false;
          color:=clmenu;
         end;
          with btnproc5 do
         begin
          enabled:=false;
         end;

          with ednome6 do
        begin
         enabled:=false;
          color:=clmenu;
        end;
       with edsenha6 do
         begin
          enabled:=false;
          color:=clmenu;
         end;
         with btnproc6 do
         begin
          enabled:=false;
         end;
end;

procedure TForm2.rb5jogClick(Sender: TObject);
begin
with ednome1 do
        begin
           enabled:=true;
            color:=clWindow;
        end;
      with edsenha1 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
          with btnproc1 do
         begin
          enabled:=true;
         end;

     with ednome2 do
        begin
         enabled:=true;
         color:=clWindow;
        end;

      with btnproc2 do
         begin
          enabled:=true;
         end;
     with edsenha2 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
          with btnproc2 do
         begin
          enabled:=true;
         end;

     with ednome3 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with edsenha3 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
          with btnproc3 do
         begin
          enabled:=true;
         end;

        with ednome4 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with edsenha4 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

          with btnproc4 do
         begin
          enabled:=true;
         end;


          with ednome5  do
        begin
       enabled:=true;
          color:=clWindow;
        end;
       with edsenha5 do
         begin
        enabled:=true;
          color:=clWindow;
         end;
          with btnproc5 do
         begin
          enabled:=true;
         end;

          with ednome6 do
        begin
         enabled:=false;
          color:=clmenu;
        end;
       with edsenha6 do
         begin
          enabled:=false;
          color:=clmenu;
         end;
end;

procedure TForm2.rb6jogClick(Sender: TObject);
begin
with ednome1 do
        begin
           enabled:=true;
            color:=clWindow;
        end;
      with edsenha1 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
          with btnproc1 do
         begin
          enabled:=true;
         end;


     with ednome2 do
        begin
         enabled:=true;
         color:=clWindow;
        end;
     with edsenha2 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
          with btnproc2 do
         begin
          enabled:=true;
         end;


     with ednome3 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with edsenha3 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
          with btnproc3 do
         begin
          enabled:=true;
         end;


        with ednome4 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with edsenha4 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
          with btnproc4 do
         begin
          enabled:=true;
         end;

          with ednome5  do
        begin
       enabled:=true;
          color:=clWindow;
        end;
       with edsenha5 do
         begin
        enabled:=true;
          color:=clWindow;
         end;
          with btnproc5 do
         begin
          enabled:=true;
         end;

          with ednome6 do
        begin
        enabled:=true;
          color:=clWindow;
        end;
       with edsenha6 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
          with btnproc6 do
         begin
          enabled:=true;
         end;
         end;


procedure TForm2.btnproc1Click(Sender: TObject);
begin
 if tbjog.locate('nome',ednome1.text,[])then
 begin

    if edsenha1.text=tbjog.fieldbyname('senha').asstring then
     begin
      ednome1.text:=tbjog.fieldbyname('nome').asstring;
      edsenha1.text:=tbjog.fieldbyname('senha').asstring;
      showmessage('Jogador e senha ok!!');
       end
       else
       begin
       Showmessage('Jogador:'+ ednome1.text+' ou senha incorreta !');
       ednome1.text:='';
       edsenha1.text:='';
       end;

  end
  else
  begin
     Showmessage('Jogador '+ednome1.text+' ou senha incorreta !');
     ednome1.text:='';
     edsenha1.text:='';
  end;
 end;



procedure TForm2.btnproc2Click(Sender: TObject);
begin
 if tbjog.locate('nome',ednome2.text,[])then
 begin

    if edsenha2.text=tbjog.fieldbyname('senha').asstring then
    begin
      ednome2.text:=tbjog.fieldbyname('nome').asstring;
      edsenha2.text:=tbjog.fieldbyname('senha').asstring;
      showmessage('Jogador e senha ok!!');
      end
       else
       begin
       Showmessage('Jogador:'+ ednome2.text+' ou senha incorreta !');
     ednome2.text:='';
     edsenha2.text:='';
      end;
  end
  else
  begin
     Showmessage('Jogador '+ednome2.text+' ou senha incorreta !');
      ednome2.text:='';
     edsenha2.text:='';
  end;
end;

procedure TForm2.btnproc3Click(Sender: TObject);
begin
 if tbjog.locate('nome',ednome3.text,[])then
 begin

    if edsenha3.text=tbjog.fieldbyname('senha').asstring then
    begin
      ednome3.text:=tbjog.fieldbyname('nome').asstring;
      edsenha3.text:=tbjog.fieldbyname('senha').asstring;
      showmessage('Jogador e senha ok!!');
      end
       else
       begin
       Showmessage('Jogador:'+ ednome3.text+' ou senha incorreta !');
        ednome3.text:='';
     edsenha3.text:='';
  end;
  end
  else
  begin
     Showmessage('Jogador '+ednome3.text+' ou senha incorreta !');
      ednome3.text:='';
     edsenha3.text:='';
  end;
end;

procedure TForm2.btnproc4Click(Sender: TObject);
begin
 if tbjog.locate('nome',ednome4.text,[])then
 begin

    if edsenha4.text=tbjog.fieldbyname('senha').asstring then
    begin
      ednome4.text:=tbjog.fieldbyname('nome').asstring;
      edsenha4.text:=tbjog.fieldbyname('senha').asstring;
      showmessage('Jogador e senha ok!!');
      end
       else
       begin
       Showmessage('Jogador:'+ ednome4.text+' ou senha incorreta !');
        ednome4.text:='';
     edsenha4.text:='';
  end;
  end
  else
  begin
     Showmessage('Jogador '+ednome4.text+' ou senha incorreta !');
      ednome4.text:='';
     edsenha4.text:='';
  end;
end;

procedure TForm2.btnproc5Click(Sender: TObject);
begin
 if tbjog.locate('nome',ednome5.text,[])then
 begin

    if edsenha5.text=tbjog.fieldbyname('senha').asstring then
    begin
      ednome5.text:=tbjog.fieldbyname('nome').asstring;
      edsenha5.text:=tbjog.fieldbyname('senha').asstring;
      showmessage('Jogador e senha ok!!');
      end
       else
       begin
       Showmessage('Jogador:'+ ednome5.text+' ou senha incorreta !');
        ednome5.text:='';
     edsenha5.text:='';
  end;
  end
  else
  begin
     Showmessage('Jogador '+ednome5.text+' ou senha incorreta !');
      ednome5.text:='';
     edsenha5.text:='';
  end;
end;

procedure TForm2.btnproc6Click(Sender: TObject);
begin
if tbjog.locate('nome',ednome6.text,[])then
 begin

    if edsenha6.text=tbjog.fieldbyname('senha').asstring then
    begin
      ednome6.text:=tbjog.fieldbyname('nome').asstring;
      edsenha6.text:=tbjog.fieldbyname('senha').asstring;
      showmessage('Jogador e senha ok!!');
      end
       else
       begin
       Showmessage('Jogador:'+ ednome6.text+' ou senha incorreta !');
        ednome6.text:='';
     edsenha6.text:='';
  end;
  end
  else
  begin
     Showmessage('Jogador '+ednome6.text+' ou senha incorreta !');
      ednome6.text:='';
     edsenha6.text:='';
  end;
end;

end.
