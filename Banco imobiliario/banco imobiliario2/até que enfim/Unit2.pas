unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, DBTables;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbnome1: TDBEdit;
    dbnome2: TDBEdit;
    dbnome3: TDBEdit;
    dbnome4: TDBEdit;
    dbnome5: TDBEdit;
    dbnome6: TDBEdit;
    dbsenha1: TDBEdit;
    dbsenha2: TDBEdit;
    dbsenha3: TDBEdit;
    dbsenha4: TDBEdit;
    dbsenha5: TDBEdit;
    dbsenha6: TDBEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    GroupBox1: TGroupBox;
    tbjog: TTable;
    dsjogador: TDataSource;
    btnjogar: TButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnjogarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.DFM}

procedure TForm2.RadioButton1Click(Sender: TObject);
begin
with dbnome1 do
        begin
           enabled:=true;
            color:=clWindow;
        end;
      with dbsenha1 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

     with dbnome2 do
        begin
         enabled:=true;
         color:=clWindow;
        end;
     with dbsenha2 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

     with dbnome3 do
        begin
         enabled:=false;
         color:=clmenu;
        end;
       with dbsenha3 do
         begin
          enabled:=false;
          color:=clmenu;
         end;


          with dbnome4 do
        begin
          enabled:=false;
          color:=clmenu;
        end;
       with dbsenha4 do
         begin
        enabled:=false;
          color:=clmenu;
         end;


          with dbnome5  do
        begin
        enabled:=false;
          color:=clmenu;
        end;
       with dbsenha5 do
         begin
         enabled:=false;
          color:=clmenu;
         end;


          with dbnome6 do
        begin
         enabled:=false;
          color:=clmenu;
        end;
       with dbsenha6 do
         begin
          enabled:=false;
          color:=clmenu;
         end;
end;


procedure TForm2.RadioButton2Click(Sender: TObject);
begin
with dbnome1 do
        begin
           enabled:=true;
            color:=clWindow;
        end;
      with dbsenha1 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

     with dbnome2 do
        begin
         enabled:=true;
         color:=clWindow;
        end;
     with dbsenha2 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

     with dbnome3 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with dbsenha3 do
         begin
          enabled:=true;
          color:=clWindow;
         end;


          with dbnome4 do
        begin
          enabled:=false;
          color:=clmenu;
        end;
       with dbsenha4 do
         begin
        enabled:=false;
          color:=clmenu;
         end;


          with dbnome5  do
        begin
        enabled:=false;
          color:=clmenu;
        end;
       with dbsenha5 do
         begin
         enabled:=false;
          color:=clmenu;
         end;


          with dbnome6 do
        begin
         enabled:=false;
          color:=clmenu;
        end;
       with dbsenha6 do
         begin
          enabled:=false;
          color:=clmenu;
         end;
end;


procedure TForm2.RadioButton3Click(Sender: TObject);
begin
with dbnome1 do
        begin
           enabled:=true;
            color:=clWindow;
        end;
      with dbsenha1 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

     with dbnome2 do
        begin
         enabled:=true;
         color:=clWindow;
        end;
     with dbsenha2 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

     with dbnome3 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with dbsenha3 do
         begin
          enabled:=true;
          color:=clWindow;
         end;


        with dbnome4 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with dbsenha4 do
         begin
          enabled:=true;
          color:=clWindow;
         end;


          with dbnome5  do
        begin
        enabled:=false;
          color:=clmenu;
        end;
       with dbsenha5 do
         begin
         enabled:=false;
          color:=clmenu;
         end;


          with dbnome6 do
        begin
         enabled:=false;
          color:=clmenu;
        end;
       with dbsenha6 do
         begin
          enabled:=false;
          color:=clmenu;
         end;
end;


procedure TForm2.RadioButton4Click(Sender: TObject);
begin
with dbnome1 do
        begin
           enabled:=true;
            color:=clWindow;
        end;
      with dbsenha1 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

     with dbnome2 do
        begin
         enabled:=true;
         color:=clWindow;
        end;
     with dbsenha2 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

     with dbnome3 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with dbsenha3 do
         begin
          enabled:=true;
          color:=clWindow;
         end;


        with dbnome4 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with dbsenha4 do
         begin
          enabled:=true;
          color:=clWindow;
         end;


          with dbnome5  do
        begin
       enabled:=true;
          color:=clWindow;
        end;
       with dbsenha5 do
         begin
        enabled:=true;
          color:=clWindow;
         end;


          with dbnome6 do
        begin
         enabled:=false;
          color:=clmenu;
        end;
       with dbsenha6 do
         begin
          enabled:=false;
          color:=clmenu;
         end;
end;


procedure TForm2.RadioButton5Click(Sender: TObject);
begin
with dbnome1 do
        begin
           enabled:=true;
            color:=clWindow;
        end;
      with dbsenha1 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

     with dbnome2 do
        begin
         enabled:=true;
         color:=clWindow;
        end;
     with dbsenha2 do
         begin
          enabled:=true;
          color:=clWindow;
         end;

     with dbnome3 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with dbsenha3 do
         begin
          enabled:=true;
          color:=clWindow;
         end;


        with dbnome4 do
        begin
         enabled:=true;
          color:=clWindow;
        end;
       with dbsenha4 do
         begin
          enabled:=true;
          color:=clWindow;
         end;


          with dbnome5  do
        begin
       enabled:=true;
          color:=clWindow;
        end;
       with dbsenha5 do
         begin
        enabled:=true;
          color:=clWindow;
         end;


          with dbnome6 do
        begin
        enabled:=true;
          color:=clWindow;
        end;
       with dbsenha6 do
         begin
          enabled:=true;
          color:=clWindow;
         end;
end;


procedure TForm2.FormCreate(Sender: TObject);
begin
tbjog.open;
tbjog.edit;
with dbnome1 do
        begin
           enabled:=false;
            color:=clmenu;
        end;
      with dbsenha1 do
         begin
          enabled:=false;
          color:=clmenu;
         end;

     with dbnome2 do
        begin
         enabled:=false;
         color:=clmenu;
        end;
     with dbsenha2 do
         begin
          enabled:=false;
          color:=clmenu;
         end;

     with dbnome3 do
        begin
         enabled:=false;
         color:=clmenu;
        end;
       with dbsenha3 do
         begin
          enabled:=false;
          color:=clmenu;
         end;


          with dbnome4 do
        begin
          enabled:=false;
          color:=clmenu;
        end;
       with dbsenha4 do
         begin
        enabled:=false;
          color:=clmenu;
         end;


          with dbnome5  do
        begin
        enabled:=false;
          color:=clmenu;
        end;
       with dbsenha5 do
         begin
         enabled:=false;
          color:=clmenu;
         end;


          with dbnome6 do
        begin
         enabled:=false;
          color:=clmenu;
        end;
       with dbsenha6 do
         begin
          enabled:=false;
          color:=clmenu;
         end;
end;



procedure TForm2.btnjogarClick(Sender: TObject);
 
begin
form1.show;
if tbjog.state in[dsedit,dsinsert]then
tbjog.post;
form2.close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
tbjog.First;
tbjog.Append;
end;

end.
