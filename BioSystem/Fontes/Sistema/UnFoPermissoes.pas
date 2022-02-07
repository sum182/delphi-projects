unit UnFoPermissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxGraphics, cxEdit, cxVGrid, cxControls,
  cxInplaceContainer, Provider, DB, DBClient;

type
  TFoPermissoes = class(TForm)
    ClDaSePemissoes: TClientDataSet;
    DaSePrPermissoes: TDataSetProvider;
    ClDaSeTabelas: TClientDataSet;
    DaSePrTabelas: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoPermissoes: TFoPermissoes;

implementation

uses UnDaMoBio;

{$R *.dfm}

Initialization
  RegisterClass(TFoPermissoes);

Finalization
  UnRegisterClass(TFoPermissoes);

end.
