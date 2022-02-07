unit uMamal;

interface

type
  TMamal =class
    Name:string;
    EyeColor:string;
    Age:byte;
    constructor create;virtual;
    procedure Speak;virtual;abstract;
  end;

implementation

{ TMamal }

constructor TMamal.create;
begin
  Age := 1;
  Name := 'Nome';
  EyeColor := 'Blue';
end;

end.
