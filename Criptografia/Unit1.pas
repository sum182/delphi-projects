unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses CryptIniFiles, RC6Enc, smMensagens;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  if Edit1.Text = '' then
  Begin
    mSG('Preencha o campo Chave de Criptografia!',mtErro);
    edit1.SetFocus;
    Exit;
  end;

  if Edit2.Text = '' then
  Begin
    mSG('Preencha o campo Senha!',mtErro);
    edit1.SetFocus;
    Exit;
  end;

  edit3.Text := Encrypt(Edit2.Text,Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  if Edit1.Text = '' then
  Begin
  //  Mensagem('Preencha o campo Chave de Criptografia!',mtErro);
    edit1.SetFocus;
    Exit;
  end;

  if Edit3.Text = '' then
  Begin
    //Mensagem('Preencha o campo Senha - Criptografada!',mtErro);
    edit1.SetFocus;
    Exit;
  end;

  edit2.Text := Decrypt(Edit3.Text,Edit1.Text);
end;

end.
