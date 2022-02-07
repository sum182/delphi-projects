unit Figura;

interface

type
  TFigura = class(TObject)
  private
    FCor: string;
    function GetCor: string;
    procedure SetCor(const Value: string);
  protected
  public
    procedure Desenhe; virtual; abstract;
    property Cor: string read GetCor write SetCor;
  end;

  TQuadrado = class(TFigura)
  private
    FX: real;
    function GetX: real;
    procedure SetX(const Value: real);
  public
    procedure Desenhe; override;
    property X: real read GetX write SetX;
  end;

  TRetangulo = class(TFigura)
  private
    FY: real;
    function GetY: real;
    procedure SetY(const Value: real);
  protected
  public
    procedure Desenhe; override;
    property Y: real read GetY write SetY;
  end;

  TCirculo = class(TFigura)
  private
    FRaio: real;
  protected
    function GetRaio: real;
    procedure SetRaio(const Value: real);
  public
    procedure Desenhe; override;
    property Raio: real read GetRaio write SetRaio;
  end;

implementation

uses dialogs, Sysutils;


{ TFigura }

function TFigura.GetCor: string;
begin
  Result := Self.FCor;
end;

procedure TFigura.SetCor(const Value: string);
begin
  Self.FCor := Value;
end;

{ TQuadrado }

procedure TQuadrado.Desenhe;
begin
  showMessage('Quadrado' + FloatToStr(Self.X));
end;

function TQuadrado.GetX: real;
begin
  Result := Self.FX;
end;

procedure TQuadrado.SetX(const Value: real);
begin
  Self.FX := Value;
end;

{ TRetangulo }

procedure TRetangulo.Desenhe;
begin
  showMessage('Retangulo' + FloatToStr(Self.Y) + FloatToStr(Self.Y));
end;

function TRetangulo.GetY: real;
begin
  Result := Self.FY;
end;

procedure TRetangulo.SetY(const Value: real);
begin
  Self.FY := Value;
end;

{ TCirculo }

procedure TCirculo.Desenhe;
begin
 showMessage('Circulo' + FloatToStr(Self.Raio));
end;

function TCirculo.GetRaio: real;
begin
  Result := Self.FRaio;
end;

procedure TCirculo.SetRaio(const Value: real);
begin
  Self.FRaio := Value;
end;

end.

