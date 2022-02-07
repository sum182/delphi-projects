unit uDmShared;

interface

uses
  SysUtils, Classes, ImgList, Controls, DB, DBClient, MConnect, SConnect,
  ObjBrkr, XPMan, uDmConnection, uModules, FMTBcd, TConnect, Provider, SqlExpr,
  IBODataset, cxLookAndFeels, AppEvnts;

type
  TDmShared = class(TDataModule)
    imgHot: TImageList;
    imgEnabled: TImageList;
    imgDisabled: TImageList;
    imgShortCut: TImageList;
    dsGeral: TDataSource;
    quGeral: TIBOQuery;
    LookAndFeel: TcxLookAndFeelController;
    appEvents: TApplicationEvents;
    procedure appEventsException(Sender: TObject; E: Exception);
  private

  public

  end;

var
  DmShared: TDmShared;

implementation

uses
  Windows, Forms, smMensagens;

{$R *.dfm}



procedure TDmShared.appEventsException(Sender: TObject; E: Exception);
 var
  erro : String;
begin
  erro := E.Message;
   if (Pos(UpperCase('CANNOT FOCUS A DISABLED OR INVISIBLE WINDOW'),
       UpperCase(E.Message)) > 0)Then
     exit;        

   Msg(erro,mtErro,ok,'Erro do Sistema');
end;

initialization
//  Application.CreateForm(TDmShared, DmShared);

finalization
//  DmShared.Free;



end.

