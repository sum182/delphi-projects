unit uPendriveLocked;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, registry, Menus, StdCtrls, smGeral, XPMan, Buttons;

type
  TfrmuPendriveLocked = class(TForm)
    GroupBox1: TGroupBox;
    XPManifest1: TXPManifest;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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

procedure TfrmuPendriveLocked.BitBtn1Click(Sender: TObject);
begin
  try
    Wait(200);
    LockedPenDriver;                      
  finally
    Msg('Dispositivos de Disco Removíveis Bloqueados!');
    WaitEnd;
  end;
end;

procedure TfrmuPendriveLocked.BitBtn2Click(Sender: TObject);
begin
  try
    Wait(200);
    UnlockedPenDriver;
  finally
    Msg('Dispositivos de Disco Removíveis Desbloqueados!');
    WaitEnd;
  end;
end;

end.

