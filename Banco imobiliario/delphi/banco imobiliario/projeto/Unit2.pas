unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls, DBCtrls, Db, DBTables;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    btnjogar: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnjogarClick(Sender: TObject);
    

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

procedure TForm2.Button1Click(Sender: TObject);
var teste:integer;

begin


end;





procedure TForm2.btnjogarClick(Sender: TObject);
 var rodada:integer;
begin
   rodada:=(strtoint(edit1.text));
end;

end.
