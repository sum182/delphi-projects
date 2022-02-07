unit uClasses;

interface

uses
  Sysutils;

type
  TData = class(Tobject)
  private
    Dia: integer;
    Mes: integer;
    Ano: integer;
    function DiasNoMes: integer;
  public
    constructor Init(d, m, a: integer);
    procedure DefVal(d, m, a: integer);
    function AnoBis: boolean;
    procedure Incrementa;
    procedure Decrementa;
    procedure Adiciona(NumDeDias: integer);
    procedure Subtrai(NumDeDias: integer);
    function GetText: string;
  end;

implementation

{ TData }

procedure TData.Adiciona(NumDeDias: integer);
var
  n: integer;
begin
  for n := 1 to NumDeDias do
    Incrementa;
end;

function TData.AnoBis: boolean;
begin
  if (ano mod 4 <> 0) then
    AnoBis := false
  else if (ano mod 100 <> 0) then
    AnoBis := true
  else if (ano mod 400 <> 0) then
    AnoBis := False
  else
    AnoBis := True;
end;

procedure TData.Decrementa;
begin
  if (dia > 1) then
    Dec(dia) {se não for o primeiro dia do mês}

  else if (Mes > 1) {se não for o primeiro dia do ano} then
  begin
    Dec(Mes);
    dia := DiasNoMes;
  end
  else
  begin
    Dec(ano);
    Mes := 12;
    dia := DiasNoMes;
  end;
end;

procedure TData.DefVal(d, m, a: integer);
begin
  dia := d;
  Mes := m;
  ano := a;
end;

function TData.DiasNoMes: integer;
begin
  case Mes of
    1, 3, 5, 7, 8, 10, 12: DiasNoMes := 31;
    4, 6, 9, 11: DiasNoMes := 30;
    2: if (AnoBis) then
        DiasNoMes := 29
      else
        DiasNoMes := 28;
  end;
end;

function TData.GetText: string;
var
  d, m, a: string;
begin
  d := IntToStr(dia);
  case Mes of
    1: m := 'Janeiro';
    2: m := 'Fevereiro';
    3: m := 'Março';
    4: m := 'Abril';
    5: m := 'Maio';
    6: m := 'Junho';
    7: m := 'Julho';
    8: m := 'Agosto';
    9: m := 'Setembro';
    10: m := 'Outubro';
    11: m := 'Novembro';
    12: m := 'Dezembro';
  end;
  a := IntToStr(ano);
  GetText := d + ', ' + m + ' de ' + a;
end;

procedure TData.Incrementa;
begin
  if (dia < DiasNoMes) {se não for o último dia do Mes} then
    inc(dia)
  else if (Mes < 12) {se não for dezembro} then
  begin
    inc(Mes);
    dia := 1;
  end
  else {se for o dia de ano novo}
  begin
    inc(ano);
    Mes := 1;
    dia := 1;
  end;
end;

constructor TData.Init(d, m, a: integer);
begin
  Dia := d;
  Mes := m;
  Ano := a;
end;

procedure TData.Subtrai(NumDeDias: integer);
var
  n: integer;
begin
  for n := 1 to NumDeDias do
    Decrementa;
end;

end.

