unit uPendriveLocked;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, registry, Menus, StdCtrls, smGeral, XPMan, Buttons;

type
  TfrmuPendriveLocked = class(TForm)
    GroupBox1: TGroupBox;
    XPManifest1: TXPManifest;
    btnLocked: TBitBtn;
    btnUnLocked: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnUnLockedClick(Sender: TObject);
    procedure btnLockedClick(Sender: TObject);
  private
  public
  end;

var
  frmuPendriveLocked: TfrmuPendriveLocked;

implementation

uses
  smMensagens;

{$R *.dfm}

{ TForm2 }

procedure TfrmuPendriveLocked.btnLockedClick(Sender: TObject);
begin
  try
    Wait(200);
    LockedPenDriver;
  finally
    //Msg('Dispositivos de Disco Removíveis Bloqueados!');
    WaitEnd;
  end;
end;

procedure TfrmuPendriveLocked.btnUnLockedClick(Sender: TObject);
begin
  try
    Wait(200);
    UnlockedPenDriver;
  finally
    //Msg('Dispositivos de Disco Removíveis Desbloqueados!');
    WaitEnd;
  end;
end;

procedure TfrmuPendriveLocked.FormCreate(Sender: TObject);
begin
  btnLocked.Click;     
  Application.Terminate;
end;

end.

