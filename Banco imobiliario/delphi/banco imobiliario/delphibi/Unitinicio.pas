unit Unitinicio3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, DBTables, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Database1: TDatabase;
    tbjog: TTable;
    dsalv: TDataSource;
    dbnome1: TDBEdit;
    btnjogar: TButton;
    dbnome2: TDBEdit;
    dbnome3: TDBEdit;
    dbnome4: TDBEdit;
    dbnome5: TDBEdit;
    dbnome6: TDBEdit;
    dbsenha1: TDBEdit;
    dbsenha2: TDBEdit;
    dbsenha3: TDBEdit;
    dbsenha5: TDBEdit;
    dbsenha6: TDBEdit;
    dbsenha4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    rb2jog: TRadioButton;
    rb3jog: TRadioButton;
    rb4jog: TRadioButton;
    rb5jog: TRadioButton;
    rb6jog: TRadioButton;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    dbvalor1: TDBEdit;
    dbvalor2: TDBEdit;
    dbvlor3: TDBEdit;
    dbvalor4: TDBEdit;
    dbvalor5: TDBEdit;
    dbvalor6: TDBEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnjogarClick(Sender: TObject);
    procedure rb2jogClick(Sender: TObject);
    procedure rb3jogClick(Sender: TObject);
    procedure rb4jogClick(Sender: TObject);
    procedure rb5jogClick(Sender: TObject);
    procedure rb6jogClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses

{$R *.DFM}



procedure TForm1.btnjogarClick(Sender: TObject);
begin
tbjog.insert;
tbjog.open;
tbjog.refresh;

end;

procedure TForm1.rb2jogClick(Sender: TObject);
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

procedure TForm1.rb3jogClick(Sender: TObject);
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


procedure TForm1.rb4jogClick(Sender: TObject);
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


procedure TForm1.rb5jogClick(Sender: TObject);
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

procedure TForm1.rb6jogClick(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  if form2 = nil then;
  application.createform(Tform2,form2);
  form2.showmodal;
  form1.close;
end;

end.
