unit UnFoAguarde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, cxLookAndFeelPainters, StdCtrls, RzLabel,
  cxButtons, RzBckgnd;

type
  TFoAguarde = class(TForm)

  private
    FMsg: String;
    procedure SetMsg(const Value: String);

  published
    Bevel1: TBevel;
    LaMsg: TRzLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    Property Msg : String read FMsg write SetMsg;

  published
    RzPanel1: TRzPanel;
    RzBackground1: TRzBackground;
    RzLabel1: TRzLabel;



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoAguarde: TFoAguarde;

implementation

{$R *.dfm}




procedure TFoAguarde.FormShow(Sender: TObject);
begin

  Screen.Cursor := crSQLWait;

  //configurando a posicao do form dependendo do estado do btn.
  if ( Msg = '' ) then
    FoAguarde.Height := 59
  else
    FoAguarde.Height := 110
  ;

  LaMsg.Caption := Msg;

end;

procedure TFoAguarde.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crDefault;
end;

procedure TFoAguarde.SetMsg(const Value: String);
begin
  FMsg := Value;
end;

end.
