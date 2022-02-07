unit UnitDll;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TForm1 = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MyParentForm: TForm;
    MyParentApplication: TApplication;
  end;

var
   DllApplication: TApplication;

implementation

{$R *.DFM}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=caFree;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
//   Application:=DllApplication;
end;

end.
