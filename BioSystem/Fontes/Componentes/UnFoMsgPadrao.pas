unit UnFoMsgPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMemo, RzButton, RzPanel, RzLabel, RzEdit;

Type
  Botao = Type Byte;

Type
  Img   = Type Byte;

type
  TFoMsgPadrao = class(TForm)
    RzPanel1: TRzPanel;
    BuSim: TRzBitBtn;
    BuNao: TRzBitBtn;
    LaInfo: TRzLabel;
    ImInfo: TImage;
    ImDuvida: TImage;
    ImErro: TImage;
    BuOk: TRzBitBtn;
    MeMsg: TcxMemo;
    Procedure FecharMsg(Sender : Tobject);
  private
    FBtFechoMsg: Botao;
    { Private declarations }
    Procedure MontaImg(Imagem: Img);
    Procedure MontaBotoes(Botoes : Botao);
    procedure SetBtFechoMsg(const Value: Botao);


  public
    Procedure MontaMsg(Msg: String; Imagem: Img;Botoes :Botao);
    Property  BtFechoMsg :Botao read FBtFechoMsg write SetBtFechoMsg;

    { Public declarations }
  protected
  end;

var
  FoMsgPadrao: TFoMsgPadrao;

  Const BtOK     : Botao = 0;
  Const BtSimNao : Botao = 1;
  Const BtSim    : Botao = 2;
  Const BtNao    : Botao = 3;


  Const ImgInfo   : Img = 0;
  Const ImgErro   : Img = 1;
  Const ImgDuvida : Img = 2;



implementation

{$R *.dfm}


procedure TFoMsgPadrao.MontaBotoes(Botoes: Botao);
begin
  if ( Botoes = BtOK ) then
    begin
      BuOk.Visible := True;
      BuOk.Left    := 98;
      BuOk.Top     := 161;
      BuOk.Default := True;
    end
  ;

  if ( Botoes = BtSimNao ) then
    begin
      BuSim.Visible := True;
      BuNao.Visible := True;
      BuSim.Top     := 161;
      BuNao.Top     := 161;
      BuSim.Left    := 21;
      BuNao.Left    := 176;
      BuNao.Default := True;
    end
  ;


end;

procedure TFoMsgPadrao.MontaImg(Imagem: Img);
begin

  if ( Imagem = ImgInfo ) then
    begin
      ImInfo.Visible := True;
      ImInfo.Left := 8;
      ImInfo.Left := 7;
      LaInfo.Caption := 'INFORMAÇÃO!';
      Caption := 'Informação do Sistema';
    end
  ;

  if ( Imagem = ImgErro ) then
    begin
      ImErro.Visible := True;
      ImErro.Left := 8;
      ImErro.Left := 7;
      LaInfo.Caption := 'ERRO!';
      LaInfo.Blinking := True;
      Caption := 'Erro do Sistema';
    end
  ;

  if ( Imagem = ImgDuvida ) then
    begin
      ImDuvida.Visible := True;
      ImDuvida.Left := 8;
      ImDuvida.Left := 7;
      LaInfo.Caption := 'DUVIDA!';
      Caption := 'Duvida do Sistema';
    end
  ;

end;

procedure TFoMsgPadrao.MontaMsg(Msg: String; Imagem: Img; Botoes: Botao);
begin

  MontaImg(Imagem);

  MontaBotoes(Botoes);

  MeMsg.Clear;

  MeMsg.Text := Msg;


end;

procedure TFoMsgPadrao.FecharMsg(Sender: Tobject);
begin

   // pegando a tag do botao para verificar qual botao que vai fechar a msg.
   Case ( ( Sender as TRzBitBtn ).Tag )of

     0 : BtFechoMsg := BtOK;

     2 : BtFechoMsg := BtSim;

     3 : BtFechoMsg := BtNao;

   end;

   Close;
end;

procedure TFoMsgPadrao.SetBtFechoMsg(const Value: Botao);
begin
  FBtFechoMsg := Value;
end;

end.
