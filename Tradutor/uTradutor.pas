unit uTradutor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, Buttons;

type
  TfrmTradutor = class(TForm)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    WebBrowser1: TWebBrowser;
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTradutor: TfrmTradutor;

implementation

{$R *.dfm}

procedure TfrmTradutor.BitBtn1Click(Sender: TObject);
begin
   webBrowser1.OleObject.document.forms.item(1).elements.item('text').value := edit1.Text;
   webBrowser1.OleObject.document.forms.item(1).submit();
   BitBtn1.Enabled := false;
end;

procedure TfrmTradutor.FormShow(Sender: TObject);
begin
   webBrowser1.Navigate('http://www.google.com.br/language_tools?hl=pt-BR');
end;

procedure TfrmTradutor.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
 if webBrowser1.LocationURL <> 'http://www.google.com.br/language_tools?hl=pt-BR' then
   begin
     edit1.Text := webBrowser1.OleObject.document.all.result_box.innerText;
     webBrowser1.Navigate('http://www.google.com.br/language_tools?hl=pt-BR');
   end
   else
     BitBtn1.Enabled := true;
end;

end.
