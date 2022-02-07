unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  PostMessage(FindWindow(nil, 'Calculadora'), WM_CLOSE,0,0);
end;

procedure TForm1.Button2Click(Sender: TObject);
Var
  hWindow: THandle;
begin



  hWindow := FindWindow(nil,'doPDF 8 - Save PDF file');
  if  (hWindow > 0) Then
  begin
    //SetActiveWindow(hWindow);
    SetForegroundWindow(hWindow);
    keybd_event(VK_RETURN, 0,0,0); // Simula o pressionamento da tecla "Enter".
  end;

  {
  SetActiveWindow(hWindow);
  SetFocus(ButtonHandle);
  Sleep(2000);  // o Sleep fez toda a diferença
  SendMessage(ButtonHandle, BM_CLICK, 0, 0);



  //PostMessage(FindWindow(nil, 'doPDF 8 - Save PDF file'), BM_CLICK,0,0);




  if H > 0 then // se existir tenta fechá-lo
  Begin
  SetForegroundWindow(H); // Coloca o programa a ser fechado em primeiro plano
   PostMessage(H, WM_CLOSE,0,0); // Comando para fechar
  keybd_event(VK_RETURN, 0,0,0); // Simula o pressionamento da tecla "Enter".
  End;
End;

   }

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Button2.Click;
end;

end.
