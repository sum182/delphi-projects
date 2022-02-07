unit UnXml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, XPMan, StdCtrls, ComCtrls, DBClient, Mask, DBCtrls,MidasLib,Midas,
  ExtCtrls;

type
  TFoXml = class(TForm)
    CdsXml: TClientDataSet;
    XPManifest1: TXPManifest;
    dsXml: TDataSource;
    CdsXmlServidor: TStringField;
    CdsXmlDiretorio: TStringField;
    CdsXmlBanco: TStringField;
    CdsXmlDrive: TStringField;
    GrBoConexao: TGroupBox;
    GrBoLogin: TGroupBox;
    edLogin: TEdit;
    edSenha: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    BuLoginOk: TButton;
    BuLoginCancel: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    dbEdServer: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BuLoginOkClick(Sender: TObject);
    procedure BuLoginCancelClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function Login(sUsuario,sSenha:String):Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoXml: TFoXml;

implementation

{$R *.dfm}

procedure TFoXml.BuLoginCancelClick(Sender: TObject);
begin
Close;
end;

procedure TFoXml.BuLoginOkClick(Sender: TObject);
begin

  //VERIFICANDO O LOGIN DO USUARIO
  if Not(Login(edLogin.Text,edSenha.Text)) then
    Begin
      MessageDlg('Nome de usuário e senha não correspondem!', mtWarning, [mbOK], 0);
      edLogin.SetFocus;
      Exit;
    end;


  //ABRINDO E EDITANDO O XML ATRAVES DO CLIENT DATASET
  Try
    CdsXml.FileName := 'ConexaoXml.xml';
    CdsXml.Open;
    CdsXml.First;
    CdsXml.Edit;
  Except
    MessageDlg('Erro na abertura do arquivo ConexaoXml.xml!' +#13 +  'O arquivo será criado automaticamente!', mtWarning, [mbOK], 0);
    CdsXml.CreateDataSet;
    CdsXml.Open;
    CdsXml.Append;
  end;

  GrBoLogin.Visible   := False;
  GrBoConexao.Visible := True;
  self.Width :=278 ;
  self.Height:=310 ;
  dbEdServer.SetFocus;

end;

procedure TFoXml.Button1Click(Sender: TObject);
begin
  CdsXml.Post;
  MessageDlg('Arquivo de configuração atualizado com êxito!', mtWarning, [mbOK], 0);
  Close;
end;

procedure TFoXml.Button2Click(Sender: TObject);
begin
  CdsXml.Cancel;
  Close;

end;

procedure TFoXml.FormCreate(Sender: TObject);
begin
  GrBoLogin.Visible:=True;
    self.Width :=226;
    self.Height:=229;
end;

procedure TFoXml.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = VK_RETURN then
        Perform( WM_NEXTDLGCTL,0,0)
      ;
end;

function TFoXml.Login(sUsuario, sSenha: String): Boolean;
begin

   Result := False;

   //DEIXANDO EM MAISCULO
   sUsuario := UpperCase(sUsuario);
   sSenha   := UpperCase(sSenha);

   //VERIFICANDO O NOME DE USUARIO
   if (sUsuario <> 'ALVARO')  and (sUsuario <> 'WAGNER')and (sUsuario <> 'SYSDBA') then
     Exit
   ;

   //VERIFICANDO A SENHA
   if (sSenha <> 'MASTERKEY')then
     Exit
   ;

   Result := True;
end;

end.
