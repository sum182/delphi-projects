unit Unit1;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,HelpIntfs,

  //Utitlizar esta Unit
  WinHelpViewer, AppEvnts;

  Function HtmlHelp(hwndCaller: THandle; pszFile: PChar; uCommand: cardinal; dwData: longint): THandle; stdcall;
  external 'hhctrl.ocx' name 'HtmlHelpA' ;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    SpeedButton1: TSpeedButton;
    BitBtn9: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    procedure BitBtn8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    function ApplicationEvents1Help(Command: Word; Data: Integer;
      var CallHelp: Boolean): Boolean;
    procedure BitBtn1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseLeave(Sender: TObject);
    procedure FormMouseEnter(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
  private
  fcOnChange: TNotifyEvent;
  protected
  fiHelpContext: THelpContext;

    procedure wmNCLButtonDown(var Msg: TWMNCLButtonDown); message WM_NCLBUTTONDOWN;
    procedure wmNCLButtonUp(var Msg: TWMNCLButtonUp); message WM_NCLBUTTONUP;
  public
    FileHelp:string;
    procedure ShowHelp(Control:TControl;Id:integer);
    procedure ChamaHelp(var Msg: TMsg; var Handled: Boolean);
    procedure CursorSetHelp;
    procedure WndProc(var Message : TMessage); override; 
  end;

var
  Form1: TForm1;

implementation

uses
  ShellAPI, Compat, smMensagens;

{$R *.dfm}

function TForm1.ApplicationEvents1Help(Command: Word; Data: Integer;
  var CallHelp: Boolean): Boolean;
begin
  msg('onhelp');
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
//  ShowHelp(self,20);
end;

procedure TForm1.BitBtn1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ShowHelp(BitBtn1,20);  

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  ShowHelp(self,30);
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  ShowHelp(self,50);
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  ShowHelp(self,60);
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
Application.HelpCommand(HELP_FINDER,0); 
  
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  ShowHelp(self,100);
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
{$IFDEF WIN32}
var
  Info: THelpInfo;
{$ENDIF}
begin
HelpContext:=20;
{$IFDEF WIN32}
    with Info do begin
      cbSize := SizeOf(THelpInfo);
      iContextType := HELPINFO_WINDOW;
      iCtrlId := 0;
      hItemHandle := Handle;
      dwContextId := HelpContext;
      GetCursorPos(MousePos);
//      Application.HintMouseMessage(BitBtn1,TWMHelp);

    end;
    Perform(WM_HELP, 0, Longint(@Info));
      Application.HelpContext(HelpContext);
{$ELSE}
    Application.HelpContext(HelpContext);
{$ENDIF}

end;

procedure TForm1.BitBtn8Click(Sender: TObject);
var
HelpInfo: HELPWININFO;
begin
HelpInfo.wStructSize := SizeOf(HELPWININFO);
HelpInfo.x := Left;
HelpInfo.y := Top;
HelpInfo.dx := Width;
HelpInfo.dy := Height;
WinHelp(Application.ActiveFormHandle, Pchar(Application.HelpFile), HELP_CONTEXTPOPUP, BitBtn1.HelpContext);
end;

procedure TForm1.BitBtn8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Application.HelpSystem.ShowContextHelp(20,Application.HelpFile);
end;

procedure TForm1.ChamaHelp(var Msg: TMsg; var Handled: Boolean);
begin
 if (Screen.ActiveForm.ClassName = 'TMessageForm') = false then
 if Msg.message = WM_KEYDOWN then
 if Msg.wParam = VK_F1 then
  HtmlHelp(Screen.ActiveForm.Handle,
           PChar(FileHelp), $F,
           Screen.ActiveForm.HelpContext ) ;
end;

procedure TForm1.CursorSetHelp;
begin

  if SpeedButton1.Down  then
  BEGIN
    Screen.Cursor := crHelp
  end
  else
    Screen.Cursor := crDefault;  
  
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.HelpFile := 'HELP.HLP';
  FileHelp := Application.HelpFile;
  Application.OnMessage := ChamaHelp ;
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
{$IFDEF WIN32}
var
  Info: THelpInfo;
{$ENDIF}
begin
  if (Key = VK_F1) and (HelpContext <> 0) then begin
{$IFDEF WIN32}
    with Info do begin
      cbSize := SizeOf(THelpInfo);
      iContextType := HELPINFO_WINDOW;
      iCtrlId := 0;
      hItemHandle := Handle;
      dwContextId := HelpContext;
      GetCursorPos(MousePos);
    end;
    Perform(WM_HELP, 0, Longint(@Info));
{$ELSE}
    Application.HelpContext(HelpContext);
{$ENDIF}
  end;
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  Msg('donw');
end;

procedure TForm1.FormMouseEnter(Sender: TObject);
begin
//  Msg('enter');
end;

procedure TForm1.FormMouseLeave(Sender: TObject);
begin
//  Msg('leave');
end;

procedure TForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Msg(sender.ClassName);
//  Form1.wmNCLButtonUp();
  if (sender is TWinControl)  then
    ShowHelp((self as TWinControl),(self as TWinControl).HelpContext);

end;

procedure TForm1.ShowHelp(Control:TControl;Id:integer);
begin
  if Screen.Cursor <> crHelp then Exit;

  WinHelp(Application.ActiveFormHandle,
        Pchar(Application.HelpFile),
        HELP_CONTEXTPOPUP,
        Control.HelpContext);
   SpeedButton1.Down := False;
   CursorSetHelp;     
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  CursorSetHelp;  
end;

procedure TForm1.wmNCLButtonDown(var Msg: TWMNCLButtonDown);
begin
  if Msg.HitTest = HTHELP then
  begin
    Msg.Result := 0; // swallow mouse down on biHelp border icon
  end
  else
    inherited;
end;

procedure TForm1.wmNCLButtonUp(var Msg: TWMNCLButtonUp);
begin
  if Msg.HitTest = HTHELP then
  begin
    Msg.Result := 0;
   // ShowMessage('Hi!'); // Show your help here
  end
  else
    inherited;

end;

procedure TForm1.WndProc(var Message: TMessage);
begin
  if Message.LParam = Longint(BitBtn1) then
  begin
   // if (Message.Msg = CM_MOUSELEAVE) then
      // Código para CM_MOUSELEAVE
    if (Message.Msg = CM_MOUSEENTER) then
     ShowHelp(BitBtn1,20);
  end;
  inherited WndProc(Message);

end;

end.
