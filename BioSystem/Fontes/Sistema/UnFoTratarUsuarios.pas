unit UnFoTratarUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, DB, SqlExpr, Inifiles, FMTBcd, ExtCtrls, DBCtrls,
  StdCtrls, Mask, DBClient, Provider, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, RzButton, RzPanel, RzTabs, ImgList;

type
  TFoTratarUsuarios = class(TForm)
    SQLCoUsuarios: TSQLConnection;
    SqlQuUsuarios: TSQLQuery;
    DaSePrUsuarios: TDataSetProvider;
    ClDaSeUsuarios: TClientDataSet;
    ClDaSeUsuariosUSER_NAME: TStringField;
    ClDaSeUsuariosSYS_USER_NAME: TStringField;
    ClDaSeUsuariosGROUP_NAME: TStringField;
    ClDaSeUsuariosUID: TIntegerField;
    ClDaSeUsuariosGID: TIntegerField;
    ClDaSeUsuariosPASSWD: TStringField;
    ClDaSeUsuariosPRIVILEGE: TIntegerField;
    ClDaSeUsuariosCOMMENT: TMemoField;
    ClDaSeUsuariosFIRST_NAME: TStringField;
    ClDaSeUsuariosMIDDLE_NAME: TStringField;
    ClDaSeUsuariosLAST_NAME: TStringField;
    ClDaSeUsuariosFULL_NAME: TStringField;
    DaSoUsuarios: TDataSource;
    RzPageControl1: TRzPageControl;
    TaShUsuarios: TRzTabSheet;
    TaShAcessosMenu: TRzTabSheet;
    TaShDireitos: TRzTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EdPrimeiroNome: TcxDBTextEdit;
    EdNomeMeio: TcxDBTextEdit;
    EdUltimoNome: TcxDBTextEdit;
    EdNomeCompleto: TcxDBTextEdit;
    RzToolbar1: TRzToolbar;
    BuNovo: TRzToolButton;
    BuSalvar: TRzToolButton;
    BuCancelar: TRzToolButton;
    BuAlterar: TRzToolButton;
    BuExcluir: TRzToolButton;
    BuInicio: TRzToolButton;
    BuVoltar: TRzToolButton;
    BuProximo: TRzToolButton;
    BuUltimo: TRzToolButton;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TcxDBTextEdit;
    Label6: TLabel;
    EdSenha1: TcxTextEdit;
    Label2: TLabel;
    EdSenha2: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    Procedure FuncBotoes(Sender: TObject);
    procedure DaSoUsuariosStateChange(Sender: TObject);
    procedure DaSoUsuariosDataChange(Sender: TObject; Field: TField);
    Procedure CopiarNome(Sender: TObject);
    procedure ClDaSeUsuariosBeforePost(DataSet: TDataSet);
    procedure EdSenha2Exit(Sender: TObject);
    procedure EdSenha1PropertiesChange(Sender: TObject);
  private
    cServidor : String;
    function LerIni: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoTratarUsuarios: TFoTratarUsuarios;
  ConfSenha : Boolean = True;

implementation

uses UnDaMoBio, UnGeral;

{$R *.dfm}



// lendo o arquivo ini para pegar o servidor
function TFoTratarUsuarios.LerIni: Boolean;
Var
  ArqIni      : TIniFile;
  nSecao      : Integer;
  sPropSecoes : TStringList;
begin

  LerIni := True;

  // Criando Lista de Propriedades da Sessao Sistemas
  sPropSecoes := TStringList.Create;

  Try
    // Lendo o Arquivo INI
    ArqIni      := TIniFile.Create( ExtractFilePath( Application.ExeName )+'conexao.ini');
  Except
    Lerini := False; // caso nao encontre o arquivo retona false;
    MsgErro('Arquivo de conexão não encontrado!');
    exit;
  end;

  // Lendo os Valores da Sessao Sistema do arquivo INI
  ArqIni.ReadSectionValues( 'Sistema', sPropSecoes );

  // Colocando os dados da Sessao nas variáveis
  cServidor := '';
  cServidor := (Trim(sPropSecoes.Values['Servidor' ]));

  FreeAndNil( ArqIni );
  FreeAndNil( sPropSecoes );

end;



// setando a conexao no on show do form
procedure TFoTratarUsuarios.FormShow(Sender: TObject);
  begin

    SQLCoUsuarios.Connected := False;
    SQLCoUsuarios.Params.Values['Database'] := cServidor+'C:\Arquivos de programas\Firebird\Firebird_1_5\security.fdb';
//    SQLCoUsuarios.Params.Values['SQLDialect'] := DaMoBio.SQLConexao.Params.Values['SQLDialect'];
 //   SQLCoUsuarios.Params.Values['User_Name'] := DaMoBio.SQLConexao.Params.Values['User_Name'];
  //  SQLCoUsuarios.Params.Values['PassWord'] := DaMoBio.SQLConexao.Params.Values['PassWord'];
    SQLCoUsuarios.Connected := True;

  end;





// funçoes dos botões
procedure TFoTratarUsuarios.FuncBotoes(Sender: TObject);
  begin

    Case (Sender as TRzToolButton).Tag of
      0 : ClDaSeUsuarios.Insert;
      1 : begin
            ClDaSeUsuarios.Post;
            ClDaSeUsuarios.ApplyUpdates(-1);
          end;
      2 : ClDaSeUsuarios.Cancel;
      3 : ClDaSeUsuarios.Edit;
      4 : ClDaSeUsuarios.Delete;
      5 : ClDaSeUsuarios.First;
      6 : ClDaSeUsuarios.Prior;
      7 : ClDaSeUsuarios.Next;
      8 : ClDaSeUsuarios.Last;
    end;

  end;




// tratando os botoes
procedure TFoTratarUsuarios.DaSoUsuariosStateChange(Sender: TObject);
  begin
    BuNovo.Enabled     := DaSoUsuarios.State in [dsBrowse];
    BuSalvar.Enabled   := DaSoUsuarios.State in [dsInsert,dsEdit];
    BuCancelar.Enabled := DaSoUsuarios.State in [dsInsert,dsEdit];
    BuAlterar.Enabled  := DaSoUsuarios.State in [dsBrowse];
    BuExcluir.Enabled  := DaSoUsuarios.State in [dsBrowse];


  end;

procedure TFoTratarUsuarios.DaSoUsuariosDataChange(Sender: TObject;
  Field: TField);
begin
    BuInicio.Enabled   := ( ClDaSeUsuarios.RecNo <> 1 );
    BuVoltar.Enabled   := ( ClDaSeUsuarios.RecNo <> 1 );
    BuProximo.Enabled  := ( ClDaSeUsuarios.RecNo <> ClDaSeUsuarios.RecordCount );
    BuUltimo.Enabled   := ( ClDaSeUsuarios.RecNo <> ClDaSeUsuarios.RecordCount );

end;

procedure TFoTratarUsuarios.CopiarNome(Sender: TObject);
  begin

    EdNomeCompleto.Text := Trim(EdPrimeiroNome.text + ' ' +
                           EdNomeMeio.Text + ' '+
                           EdUltimoNome.Text);

  end;

procedure TFoTratarUsuarios.ClDaSeUsuariosBeforePost(DataSet: TDataSet);
begin
   if not( ConfSenha ) then
     begin
       MsgErro('Senha não confirmada!');
       edSenha1.SetFocus;
       Abort;

     end;


   if ( EdSenha1.Text <> '' ) then
     begin
//       DataSet.FieldByName('PASSWD').Value := EncryptIBPass(EdSenha1.Text);
     end
end;

procedure TFoTratarUsuarios.EdSenha2Exit(Sender: TObject);
begin
  if (EdSenha1.Text <> edSenha2.Text ) then
    begin
      MsgErro('Senha não confirmada!');
      edSenha1.SetFocus;
      ConfSenha := False;
    end
  Else
    ConfSenha := True;
end;

procedure TFoTratarUsuarios.EdSenha1PropertiesChange(Sender: TObject);
begin
  ConfSenha := False;
end;

Initialization
  RegisterClass(TFoTratarUsuarios);

Finalization
  UnRegisterClass(TFoTratarUsuarios);



end.
