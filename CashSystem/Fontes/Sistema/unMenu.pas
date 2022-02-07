unit unMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, Grids, DBGrids, smGrid, DB, DBClient, DBXpress, FMTBcd, SqlExpr, DBTables;

type
  TFoMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Pontos1: TMenuItem;
    Cobradores1: TMenuItem;
    Scios1: TMenuItem;
    Mquina1: TMenuItem;
    CadastrodeMquinas1: TMenuItem;
    UnidadesdeCalculo1: TMenuItem;
    iposdeMquinas1: TMenuItem;
    Despesas1: TMenuItem;
    LanamentodeDespesas1: TMenuItem;
    ipodeDespesas1: TMenuItem;
    RelatriodeDespesas1: TMenuItem;
    Desenvolvimento1: TMenuItem;
    abelas1: TMenuItem;
    Leituras1: TMenuItem;
    Lanamento1: TMenuItem;
    Relatrio1: TMenuItem;
    AnProgress: TAnimate;
    procedure Pontos1Click(Sender: TObject);
    procedure Cobradores1Click(Sender: TObject);
    procedure Scios1Click(Sender: TObject);
    procedure CadastrodeMquinas1Click(Sender: TObject);
    procedure UnidadesdeCalculo1Click(Sender: TObject);
    procedure iposdeMquinas1Click(Sender: TObject);
    procedure LanamentodeDespesas1Click(Sender: TObject);
    procedure ipodeDespesas1Click(Sender: TObject);
    procedure RelatriodeDespesas1Click(Sender: TObject);
    procedure abelas1Click(Sender: TObject);
    procedure Lanamento1Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoMenu: TFoMenu;

implementation

uses unDm,


  unCadLeituras, unReDespesas, unReLeituras, unGeral, unLogin
  , unCadDespesasTipo,unCadDespesas, unCadMaquinasTipo,unCadTabelas,
  unCadUnidCalc,unCadMaquinas,unCadPontos,unCadSocios, unCadCobradores;

{$R *.dfm}

procedure TFoMenu.Pontos1Click(Sender: TObject);
begin

  Try
    FoCadPontos := TFoCadPontos.Create(self);
    FoCadPontos.ShowModal;
  finally
    FreeAndNil(FoCadPontos);
  End;



end;

procedure TFoMenu.Cobradores1Click(Sender: TObject);
begin
  Try
    FoCadCobradores := TFoCadCobradores.Create(self);
    FoCadCobradores.ShowModal;
  finally
    FreeAndNil(FoCadCobradores);
  End;

end;

procedure TFoMenu.Scios1Click(Sender: TObject);
begin
  Try
    FoCadSocios := TFoCadSocios.Create(self);
    FoCadSocios.ShowModal;
  finally
    FreeAndNil(FoCadSocios);
  End;
end;

procedure TFoMenu.CadastrodeMquinas1Click(Sender: TObject);
begin
  Try
    FoCadMaquinas := TFoCadMaquinas.Create(self);
    FoCadMaquinas.ShowModal;
  finally
    FreeAndNil(FoCadMaquinas);
  End;
end;

procedure TFoMenu.UnidadesdeCalculo1Click(Sender: TObject);
begin
  Try
    FoCadUnidCalc := TFoCadUnidCalc.Create(self);
    FoCadUnidCalc.ShowModal;
  finally
    FreeAndNil(FoCadUnidCalc);
  End;
end;

procedure TFoMenu.iposdeMquinas1Click(Sender: TObject);
begin
  Try
    FoCadMaquinasTipo := TFoCadMaquinasTipo.Create(self);
    FoCadMaquinasTipo.ShowModal;
  finally
    FreeAndNil(FoCadMaquinasTipo);
  End;
end;

procedure TFoMenu.LanamentodeDespesas1Click(Sender: TObject);
begin
  Try
    FoCadDespesas := TFoCadDespesas.Create(self);
    FoCadDespesas.ShowModal;
  finally
    FreeAndNil(FoCadDespesas);
  End;
end;

procedure TFoMenu.ipodeDespesas1Click(Sender: TObject);
begin
  Try
    FoCadDespesasTipo := TFoCadDespesasTipo.Create(self);
    FoCadDespesasTipo.ShowModal;
  finally
    FreeAndNil(FoCadDespesasTipo);
  End;
end;

procedure TFoMenu.RelatriodeDespesas1Click(Sender: TObject);
begin
  Try
    FoReDespesas := TFoReDespesas.Create(self);
    FoReDespesas.ShowModal;
  finally
    FreeAndNil(FoReDespesas);
  End;
end;

procedure TFoMenu.abelas1Click(Sender: TObject);
begin
  Try
    FoCadTabelas := TFoCadTabelas.Create(self);
    FoCadTabelas.ShowModal;
  finally
    FreeAndNil(FoCadTabelas);
  End;
end;
procedure TFoMenu.Lanamento1Click(Sender: TObject);
begin
  Try
    FoCadLeituras := TFoCadLeituras.Create(self);
    FoCadLeituras.ShowModal;
  finally
    FreeAndNil(FoCadLeituras);
  End;
end;

procedure TFoMenu.Relatrio1Click(Sender: TObject);
begin
  Try
    FoReLeituras := TFoReLeituras.Create(self);
    FoReLeituras.ShowModal;
  finally
    FreeAndNil(FoReLeituras);
  End;
end;

end.
