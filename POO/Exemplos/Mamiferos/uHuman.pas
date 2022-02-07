unit uHuman;

interface

uses
  uMamal;

  Type
    THuman = class(TMamal)
    Married:boolean;
    constructor Create;override;
    procedure Speak;override;
  end;


implementation

uses
  Dialogs;

{ THuman }

constructor THuman.Create;
begin
  inherited Create;
  Name:= 'João da Silva';
  Married:= False;
end;

procedure THuman.Speak;
begin
  inherited;
  ShowMessage('Hello!');
end;

end.
