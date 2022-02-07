unit uLoginDefault;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxGroupBox, cxTextEdit, cxDBEdit,
  DB, IBODataset, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TfrmLoginDefault = class(TForm)
    grbLogin: TcxGroupBox;
    quLogin: TIBOQuery;
    edtNome: TcxTextEdit;
    edtSenha: TcxTextEdit;
    btnAcesso: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnAcessoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  function ValidaUser (usuario : String;Senha : String): boolean;
  end;

var
  frmLoginDefault: TfrmLoginDefault;

implementation

{$R *.dfm}

{ TfrmLoginDefault }

procedure TfrmLoginDefault.btnAcessoClick(Sender: TObject);
var
TempValida : Boolean;
begin
 TempValida := ValidaUser(edtNome.Text,edtSenha.Text);
 if (TempValida = False) then
   //Linha de teste
   ShowMessage('Não cadastrado')
 else
   //Linha de teste
   ShowMessage('cadastrado');
end;

function TfrmLoginDefault.ValidaUser(usuario, Senha: String): boolean;
begin
  with quLogin do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT USUA_NOME,USUA_SENHA FROM USUARIOS');
  SQL.Add('WHERE USUA_NOME =:NOME  AND USUA_SENHA =:SENHA');
  ParamByName('NOME').AsString := edtNome.Text;
  ParamByName('SENHA').AsString := edtSenha.Text;
  Open;
  if quLogin.IsEmpty then
    Result := False
    else
    Result := True;
  end;
end;


initialization
  RegisterClass(TfrmLoginDefault);

finalization
  UnRegisterClass(TfrmLoginDefault);


end.
