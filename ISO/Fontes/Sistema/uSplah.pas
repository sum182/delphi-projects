unit uSplah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Gauges, StdCtrls;

type
  TfrmSplash = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    Gauge1: TGauge;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Panel2: TPanel;
    lblCarregando: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure SetCarregando(Modulo:string);
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation



{$R *.dfm}

procedure TfrmSplash.FormActivate(Sender: TObject);
begin
  enabled := False;
  Timer1.Enabled := True;
end;

procedure TfrmSplash.FormCreate(Sender: TObject);
begin
  SetCarregando('Sistema');
end;

procedure TfrmSplash.SetCarregando(Modulo: string);
begin
  with lblCarregando do
  begin
   // Sleep(3);
    lblCarregando.Caption := 'Carregando ' + Modulo;
    Application.ProcessMessages;
  end;
end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  Panel1.Visible := True;
  Gauge1.Progress := Gauge1.Progress + 1;
  //if Gauge1.Progress = 100 then
  if Gauge1.Progress = 30 then
  begin
    Enabled := True;
    Timer1.Enabled := False;
    Close;   
  end;
end;

initialization
  RegisterClass(TfrmSplash);

finalization
  UnRegisterClass(TfrmSplash);


end.

