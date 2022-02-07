unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus;

type
  TfrmOpenDLL = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    OpenDialog: TOpenDialog;
    BitBtn3: TBitBtn;
    MainMenu1: TMainMenu;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    FFileName: TFileName;
    FHandle : THandle;
    procedure CopyMenuItem(Src, Dest: TMenuItem);
  public
    { Public declarations }
  end;

var
  frmOpenDLL: TfrmOpenDLL;

implementation

uses Unit2;

{$R *.dfm}

procedure TfrmOpenDLL.BitBtn1Click(Sender: TObject);
var
  Load: procedure ;stdcall;
  LoadMenu: function:Tobject;stdcall;
begin
  if (FHandle = 0) then
    FHandle := LoadLibrary(PChar(FFileName));

  if (FHandle = 0) then
    raise Exception.Create('Não foi possível localizar o módulo ' + FFileName);

  @Load := GetProcAddress(FHandle, 'Load');
  @LoadMenu := GetProcAddress(FHandle,'LoadMenu');

   if (@Load = nil) or (@LoadMenu = nil)Then
   begin
     raise Exception.Create('Erro ao carregar o módulo ' + FFileName);
   end;
  Load;
  CopyMenuItem(TMenuItem(LoadMenu), frmMainMenu.mnCadastros);
end;

procedure TfrmOpenDLL.BitBtn2Click(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    Edit1.Text := OpenDialog.FileName;
    FFileName := Edit1.Text;
    BitBtn1.Enabled := True;
  end;
end;

procedure TfrmOpenDLL.BitBtn3Click(Sender: TObject);
begin
  try
   FreeLibrary(FHandle);
  except
   raise Exception.Create('Não foi possível fechar a DLL');
  end;
end;

procedure TfrmOpenDLL.FormCreate(Sender: TObject);
begin
  OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);
end;


procedure TfrmOpenDLL.CopyMenuItem(Src, Dest: TMenuItem);
var
  i: Integer;
  Item: TMenuItem;
begin
  Dest.Caption := Src.Caption;
  Dest.Enabled := Src.Enabled;
  //Dest.Visible := Src.Visible;
  Dest.Tag := Src.Tag;
  Dest.Hint := Src.Hint;
  Dest.OnClick := Src.OnClick;

  for i := 0 to Src.Count-1 do
  begin
    Item := TMenuItem.Create(Dest);
    Dest.Add(Item);
    CopyMenuItem(Src.Items[i], Item);
  end;
end;
end.
