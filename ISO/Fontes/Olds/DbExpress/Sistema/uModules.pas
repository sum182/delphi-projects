unit uModules;

interface

uses
  smModules;

type
  TTeste = Class(TModule)
   private
   public
     procedure Load;override;
  end;

type
  TRegistro = class(TModule)
  private
  public
    procedure Load;override;
  end;


  type TModules = class
  private
    Teste:TTeste;
    Registro: TRegistro;
  public
    constructor Create;
    procedure Load;
    procedure Unload;
  end;

implementation

{ TCustomer }

procedure TTeste.Load;
begin
   Name:= 'Teste.bpl';
  inherited;
end;


{ TModules }

constructor TModules.Create;
begin
  inherited;
  Teste := TTeste.Create;
  Registro := TRegistro.Create;
end;

procedure TModules.Load;
begin
  Teste.Load;
  Registro.Load;
end;

procedure TModules.Unload;
begin
  Teste.Unload;
  Registro.Unload;
end;

{ TRegistro }

procedure TRegistro.Load;
begin
  Name := 'Registros.bpl';
  inherited;

end;

end.

