unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxLabel, cxControls, cxContainer, cxEdit,
  cxTextEdit, RzButton, ExtCtrls, RzPanel, smForm;

type
  TForm1 = class(TForm)
    PaCopiar: TRzPanel;
    EdControle: TcxTextEdit;
    BitBtn1: TBitBtn;
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
var
  i: Integer;
begin
  Try
    Wait(self,'Processando Teste de Aguarde');

    for I := 0 to 5000 - 1 do
    begin
      EdControle.Text := IntToStr(i);
      Application.ProcessMessages;
    end;
  finally
    WaitEnd(self);
  end;
end;

end.
