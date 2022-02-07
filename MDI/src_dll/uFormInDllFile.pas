unit uFormInDllFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfFormInDllFile = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure ShowFormDLL( vApplicaton : Pointer);


var
  fFormInDllFile  : TfFormInDllFile;
  vOldApplication : TApplication;

implementation

{$R *.dfm}

  procedure ShowFormDLL( vApplicaton : Pointer);
  begin
    { Set Application off Dll }
    Application := TApplication(vApplicaton);

    { Make form, and set it visible }
    Application.CreateForm(TfFormInDllFile, fFormInDllFile);
    fFormInDllFile.Show;
  end;   

procedure TfFormInDllFile.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { Clear resources }
  Action := caFree;
  Self   := nil;
end;

Initialization
  { Get Pointer from Application }
  vOldApplication := Application;

Finalization
  { Set old pointer from application }
  Application := vOldApplication;

end.
