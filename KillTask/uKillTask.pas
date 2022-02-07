unit uKillTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
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
  smGeral;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  WinExec('Calc.exe',0);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  KillTask('Calc.Exe');
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

end.
