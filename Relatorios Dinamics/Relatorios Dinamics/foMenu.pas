unit foMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    RelatriosDinmicos1: TMenuItem;
    RelatriosDinmicos2: TMenuItem;
    procedure RelatriosDinmicos2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DmRelatorios;

{$R *.dfm}

procedure TForm1.RelatriosDinmicos2Click(Sender: TObject);
var msgErro:string;
begin

 with Dm do
   Begin


     ppReport.Template.OnLoadEnd := LoadEndEvent;


     if not(ppReportExplorer.Execute) then
       begin
         msgErro := 'Error: ' + ppReportExplorer.ErrorMessage;
         MessageDlg(msgErro, mtError, [mbOK], 0);
       end;

    end;

end;

end.
