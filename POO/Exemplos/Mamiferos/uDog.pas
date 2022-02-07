unit uDog;

interface

uses
  uMamal;
  Type TDog = class (TMamal)
    HasTail:boolean;
    constructor Create;overload;override;
    constructor Create(DefName, DefEyeColor:String;
      DefAge:Byte; DefHasTail:Boolean);reintroduce;overload;virtual;
      procedure Speak;override;
  end;




implementation

uses
  Dialogs;

{ TDog }

constructor TDog.Create;
begin
  inherited Create;
  HasTail:=True;
end;

constructor TDog.Create(DefName, DefEyeColor: String; DefAge: Byte;
  DefHasTail: Boolean);
begin
  inherited Create;
  Name := DefName;
  EyeColor := DefEyeColor;
  Age := DefAge;
  HasTail := DefHasTail;
end;

procedure TDog.Speak;
begin
  inherited;
  ShowMessage('woof, woof, woof');
end;

end.
