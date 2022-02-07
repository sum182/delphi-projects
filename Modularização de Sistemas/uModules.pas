unit uModules;

interface

uses
  smModules;

type
  TCustomer = Class(TModule)
   private
   public
     procedure Load;override;
  end;

  type
  TVendas = class(TModule)
  private
  public
    procedure Load;override;
  end;

  type TModules = class
  private
    Customer:TCustomer;
    Vendas:TVendas;
  public
    constructor Create;
    procedure Load;
    procedure Unload;
  end;

implementation

{ TCustomer }

procedure TCustomer.Load;
begin
   Name:= 'Customer.bpl';
  inherited;
end;

{ TVendas }

procedure TVendas.Load;
begin
  Name:= 'Vendas.bpl';
  inherited;
end;

{ TModules }

constructor TModules.Create;
begin
  inherited;
  Customer := TCustomer.Create;
  Vendas := TVendas.Create;
end;

procedure TModules.Load;
begin
  Customer.Load;
  Vendas.Load;
end;

procedure TModules.Unload;
begin
  Customer.Unload;
  Vendas.Unload;
end;

end.

