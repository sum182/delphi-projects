unit UnFoCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLabel, cxTextEdit, cxCheckListBox, RzButton,
  ExtCtrls, RzPanel, dxStatusBar, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxRadioGroup, ImgList, cxCheckBox, IBServices;

type
  TFoCadUsuarios = class(TForm)
    IBssSenhas: TIBSecurityService;
    ImageList1: TImageList;
    RaGrServidor: TcxRadioGroup;
    RaGrCriar: TcxRadioGroup;
    StBaHints: TdxStatusBar;
    RzPanel1: TRzPanel;
    BuExcluir: TRzBitBtn;
    BuCriar: TRzBitBtn;
    ChLiBoUsuarios: TcxCheckListBox;
    RaGrUsuarios: TcxRadioGroup;
    EdNome: TcxTextEdit;
    EdSegNome: TcxTextEdit;
    cxRadioGroup1: TcxRadioGroup;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    EdUsuario: TcxTextEdit;
    EdSenha: TcxTextEdit;
    cxLabel3: TcxLabel;
    EdConfSenha: TcxTextEdit;
    EdUltNome: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure RaGrServidorClick(Sender: TObject);
    Procedure HabBotao(Sender: TObject);
    procedure BuCriarClick(Sender: TObject);
    procedure BuExcluirClick(Sender: TObject);
    procedure ChLiBoUsuariosClickCheck(Sender: TObject; AIndex: Integer;
      APrevState, ANewState: TcxCheckBoxState);
  private
    Procedure ShowHints(Sender : TObject);
    Procedure PegaUsers();
    Function SenhaOK():Boolean;

    { Private declarations }
  Protected

  public
    { Public declarations }
  end;

var
  FoCadUsuarios: TFoCadUsuarios;

implementation

{$R *.dfm}

procedure TFoCadUsuarios.FormCreate(Sender: TObject);
begin
   with Application do
     begin
        HintColor := clBtnFace;
        HintPause := 200;
        OnHint    := ShowHints;
     end
   ;

end;

procedure TFoCadUsuarios.ShowHints(Sender: TObject);
begin
  // mostrando os hints da applicação no status bar
  StBaHints.Panels[1].Text := Application.Hint;
end;

procedure TFoCadUsuarios.RaGrServidorClick(Sender: TObject);
begin

   Try

     IBssSenhas.Active := (  RaGrServidor.ItemIndex = 0 );

     BuCriar.Enabled   := (  (IBssSenhas.Active) and (EdUsuario.Text <> '') and (EdSenha.Text <> '') );


     if ( IBssSenhas.Active ) then
       StBaHints.Panels[0].Text := 'Conectado'
     else
       StBaHints.Panels[0].Text := 'Desconectado'
     ;

   Finally
     if (IBssSenhas.Active) then
       Begin
         PegaUsers();
         EdNome.SetFocus;
       end
     else
       ChLiBoUsuarios.Clear
     ;
   end;

end;

procedure TFoCadUsuarios.PegaUsers;
var
i : Integer;
begin
 IBssSenhas.DisplayUsers;
 ChLiBoUsuarios.Clear;

 for i := 0 to IBssSenhas.UserInfoCount -1 do
   ChLiBoUsuarios.AddItem(IBssSenhas.UserInfo[i].UserName );

end;

procedure TFoCadUsuarios.HabBotao(Sender: TObject);
begin
  BuCriar.Enabled := ( (EdUsuario.Text <> '') and (EdSenha.Text <> '') );
end;

procedure TFoCadUsuarios.BuCriarClick(Sender: TObject);
begin

   Try

     IBssSenhas.Active := False;
     IBssSenhas.Active := True;

     BuCriar.Enabled := False;

     with IBssSenhas do
       begin

         MiddleName := EdSegNome.Text;
         LastName   := EdUltNome.Text;
         FirstName  := EdNome.Text;
         UserName   := EdUsuario.Text;
         Password   := EdSenha.Text;

         if ( SenhaOK() ) then
           AddUser()
         else
           begin
             ShowMessage('Senha não confirmada!');
             EdSenha.Clear;
             EdConfSenha.Clear;
             EdSenha.SetFocus;
             exit;
           end
         ;
       end
     ;

     EdUsuario.Clear;
     EdSegNome.Clear;
     EdUltNome.Clear;
     EdNome.Clear;
     EdConfSenha.Clear;
     EdSenha.Clear;

   Finally

     IBssSenhas.Active := False;
     IBssSenhas.Active := True;
     PegaUsers();

   end;



end;

procedure TFoCadUsuarios.BuExcluirClick(Sender: TObject);
begin
  BuExcluir.Enabled := False;

  with IBssSenhas do
    begin
      if ChLiBoUsuarios.Items[ChLiBoUsuarios.ItemIndex].Checked then
        begin
          UserName := ChLiBoUsuarios.Items[ChLiBoUsuarios.ItemIndex].Text;
          if ( MessageDlg('Deseja excluir esse usuário?',mtConfirmation,[MbYes,MbNo],0) = mrYes ) then
            Begin
              DeleteUser;
              ChLiBoUsuarios.DeleteSelected;
            end
          else
            ChLiBoUsuarios.Items[ChLiBoUsuarios.ItemIndex].Checked := False
          ;
        end

      else
        ShowMessage('É necessário escolher um Usuário para excluir')
      ;
    end
  ;
end;

function TFoCadUsuarios.SenhaOK: Boolean;
begin
  Result := ( EdSenha.Text = EdConfSenha.Text );
end;

procedure TFoCadUsuarios.ChLiBoUsuariosClickCheck(Sender: TObject;
  AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
Var
 i,j : Integer;
begin
   j := ChLiBoUsuarios.ItemIndex;
   For i := 0 to ChLiBoUsuarios.Items.Count -1 do
    begin
      if ( j <> i ) then
        ChLiBoUsuarios.Items[i].Checked := False;
    end
   ;

   BuExcluir.Enabled := ChLiBoUsuarios.Items[j].Checked;

end;



Initialization
  RegisterClass(TFoCadUsuarios);

Finalization
  UnRegisterClass(TFoCadUsuarios);

end.
