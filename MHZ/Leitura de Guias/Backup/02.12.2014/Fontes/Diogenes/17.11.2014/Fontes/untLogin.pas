unit untLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxGroupBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmLogin = class(TForm)
    cxGroupBox1: TcxGroupBox;
    btnOk: TcxButton;
    btnSair: TcxButton;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    lbEmpresa: TLabel;
    lbData: TLabel;
    edUsuario: TEdit;
    edSenha: TEdit;
    fdqUsuario: TFDQuery;
    fdqUsuarioID_USUARIO: TIntegerField;
    fdqUsuarioLOGIN: TStringField;
    fdqUsuarioNOME: TStringField;
    fdqUsuarioSENHA: TStringField;
    fdqUsuarioATIVO: TStringField;
    fdqUsuarioADMINISTRADOR: TStringField;
    procedure btnOkClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses untMenuPrincipal;

procedure TfrmLogin.btnOkClick(Sender: TObject);
begin
  fdqUsuario.Close;
    fdqUsuario.ParamByName('LOGIN').AsString := edUsuario.Text;
  fdqUsuario.ParamByName('SENHA').AsString   := edSenha.Text;
  fdqUsuario.Open;

  if (edSenha.Text <> fdqUsuarioSENHA.AsString) or
     (edUsuario.Text <> fdqUsuarioLOGIN.AsString)
   then
  begin
    ShowMessage('Usuário inválido.');
    btnOk.ModalResult := mrNone;
  end
  else
  begin
      lbEmpresa.Caption := 'TRASMONTANO';
      lbData.Caption    := DateToStr(Date);
      try
        frmMenuPrincipal := TfrmMenuPrincipal.Create(self);
        frmMenuPrincipal.ShowModal;
      finally
        FreeAndNil(frmMenuPrincipal);
      end;
  end;
end;

procedure TfrmLogin.btnSairClick(Sender: TObject);
begin

   Close;

end;
procedure TfrmLogin.edSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      If Key = 13 Then
      begin
        btnOk.SetFocus;
        lbEmpresa.Caption := 'Trasmontano';
        lbData.Caption    := datetostr(date);
      end;

end;

procedure TfrmLogin.edUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      If Key = 13 Then
        edSenha.SetFocus;

end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
      edUsuario.SetFocus;
end;

end.
