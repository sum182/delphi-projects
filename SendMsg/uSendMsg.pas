unit uSendMsg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, mdMailSlot, ExtCtrls, XPMan;

type
  TfrmSendMsg = class(TForm)
    mdMailSlot: TmdMailSlot;
    btnSend: TBitBtn;
    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    btnCancel: TBitBtn;
    Memo1: TMemo;
    XPManifest: TXPManifest;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSendMsg: TfrmSendMsg;

implementation

uses
  smGeral;

{$R *.dfm}

procedure TfrmSendMsg.btnSendClick(Sender: TObject);
begin
  SendToMailSlot('*', 'Mensageiro', Memo1.Lines.Text);
end;

procedure TfrmSendMsg.FormShow(Sender: TObject);
begin
  Memo1.SetFocus;
end;

procedure TfrmSendMsg.btnCancelClick(Sender: TObject);
begin
  Close;
end;

end.
