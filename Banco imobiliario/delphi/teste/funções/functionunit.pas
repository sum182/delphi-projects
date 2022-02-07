unit functionunit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Soma(X, Y: String);
    procedure subtracao(X, Y: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Soma(X, Y: String);
begin
Label1.Caption := FloatToStr(StrToFloat(X)+StrToFloat(Y));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Soma(Edit1.Text, Edit2.Text);
end;

procedure TForm1.subtracao(X, Y: String);
begin
Label1.Caption := FloatToStr(StrToFloat(X)-StrToFloat(Y));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
subtracao(edit1.text,edit2.text);
end;

end.
