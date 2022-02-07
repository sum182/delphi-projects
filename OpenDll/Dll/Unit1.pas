unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Usuarios1: TMenuItem;
    Clientes2: TMenuItem;
    fechar1: TMenuItem;
    procedure Usuarios1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure fechar1Click(Sender: TObject);
    procedure ExibirNomeMenu(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Clientes1Click(Sender: TObject);
begin
  ExibirNomeMenu(sender);
end;



procedure TForm1.ExibirNomeMenu(Sender: TObject);
begin
  if (sender is TMenuItem) then
    ShowMessage('Menu de Cadastro de ' + (Sender as TMenuItem).Caption);
end;

procedure TForm1.fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Fornecedores1Click(Sender: TObject);
begin
  ExibirNomeMenu(sender);

end;

procedure TForm1.Usuarios1Click(Sender: TObject);
begin
  ExibirNomeMenu(sender);

end;

end.
