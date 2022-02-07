unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure Edit3Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  smCrypt;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Edit2.Text := Encrypt(Edit1.Text);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Edit4.Text := Decrypt(Edit3.Text)
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  BitBtn2.Click;
end;

end.
