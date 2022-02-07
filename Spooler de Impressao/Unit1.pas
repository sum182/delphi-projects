unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  ShellAPI;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
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

uses
  ShellCtrls, smGeral;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  SpoolerImpressaoStart;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  SpoolerImpressaoStop;
end;

end.
