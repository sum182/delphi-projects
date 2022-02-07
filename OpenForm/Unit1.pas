unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure OpenForm(FrmClass:TFormClass);
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

{ TForm1 }


{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  OpenForm(TForm2);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  OpenForm(TForm3);
end;

procedure TForm1.OpenForm(FrmClass:TFormClass);
begin
  with FrmClass.Create(Application) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

end.
