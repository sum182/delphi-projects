unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
  TForm1 = class(TForm)
    TrayIcon1: TTrayIcon;
    BitBtn1: TBitBtn;
    edHint: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    edTitulo: TEdit;
    BitBtn2: TBitBtn;
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

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  Flag:TBalloonFlags;
begin
  case RadioGroup1.ItemIndex of
    0: Flag := bfError;
    1: Flag := bfInfo;
    2: Flag := bfNone;
    3: Flag := bfWarning;
  end;
  TrayIcon1.Visible := True;
  TrayIcon1.BalloonHint := edHint.text;
  TrayIcon1.BalloonTitle := edTitulo.text;
  TrayIcon1.BalloonFlags :=Flag;
  TrayIcon1.ShowBalloonHint;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
