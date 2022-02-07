unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, DBTables;

type
  TForm1 = class(TForm)
    Database1: TDatabase;
    tbjog: TTable;
    dsalv: TDataSource;
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Btnjogar: TButton;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure BtnjogarClick(Sender: TObject);
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
begin
tbjog.open;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
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

procedure TForm1.RadioButton2Click(Sender: TObject);
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

procedure TForm1.RadioButton3Click(Sender: TObject);
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

procedure TForm1.RadioButton4Click(Sender: TObject);
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

procedure TForm1.RadioButton5Click(Sender: TObject);
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

procedure TForm1.BtnjogarClick(Sender: TObject);
var nome1:string;
begin
 if form2 = nil then;
  application.createform(Tform2,form2);
  form2.showmodal;
  form1.close;
  tbjog.insert;
  nome1:=dbnome1.text;
end;

end.
