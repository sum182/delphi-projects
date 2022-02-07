unit uFormInExeFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type

  TfFormInExeFile = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFormInExeFile: TfFormInExeFile;

implementation

{$R *.dfm}

procedure TfFormInExeFile.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { Clear references }
  Action := caFree;
  Self   := nil;
end;

end.
