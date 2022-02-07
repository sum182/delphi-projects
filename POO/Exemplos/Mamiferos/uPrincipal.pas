unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDog, uHuman, uMamal, StdCtrls;

type
  TForm1 = class(TForm)
    grpbxHumanProperties: TGroupBox;
    lblHumanName: TLabel;
    lblHumanEyeColor: TLabel;
    lblHumanAge: TLabel;
    edtHumanName: TEdit;
    edtHumanEyeColor: TEdit;
    edtHumanAge: TEdit;
    chkbxMarried: TCheckBox;
    btnCreateHuman: TButton;
    btnDestroyHuman: TButton;
    btnDestroyDog: TButton;
    grpbxDogProperties: TGroupBox;
    lblName: TLabel;
    lblEyeColor: TLabel;
    lblAge: TLabel;
    edtDogName: TEdit;
    edtDogEyeColor: TEdit;
    edtDogAge: TEdit;
    chkbxDogHasTail: TCheckBox;
    btnCreateDog: TButton;
    btnCreateDefDog: TButton;
    grpbxDefDogProp: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtDefDogName: TEdit;
    edtDefDogEye: TEdit;
    edtDefDogAge: TEdit;
    chckbxDefDogTail: TCheckBox;
    btnAllSpeak: TButton;
    btnSpeakHuman: TButton;
    btnDogSpeak: TButton;
    procedure btnDogSpeakClick(Sender: TObject);
    procedure btnSpeakHumanClick(Sender: TObject);
    procedure btnAllSpeakClick(Sender: TObject);
    procedure btnDestroyDogClick(Sender: TObject);
    procedure btnCreateDogClick(Sender: TObject);
    procedure btnCreateDefDogClick(Sender: TObject);
    procedure chkbxMarriedClick(Sender: TObject);
    procedure edtHumanAgeChange(Sender: TObject);
    procedure edtHumanEyeColorChange(Sender: TObject);
    procedure edtHumanNameChange(Sender: TObject);
    procedure btnDestroyHumanClick(Sender: TObject);
    procedure btnCreateHumanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ADog: TDog;
  AHuman: THuman;
  MamalList: array[1..2] of Tmamal;

implementation

{$R *.dfm}

procedure TForm1.btnAllSpeakClick(Sender: TObject);
var
  i: integer;
begin
  for i := 1 to 2 do
    if Assigned(MamalList[i]) then
      MamalList[i].Speak;
end;

procedure TForm1.btnCreateDefDogClick(Sender: TObject);
begin
  if not Assigned(ADog) then
    ADog := TDog.Create(edtDefDogName.Text, edtDefDogEye.Text,
      StrToInt(edtDefDogAge.Text), chckbxDefDogTail.Checked);

  with ADog do
  begin
    edtDogName.Text := Name;
    edtDogEyeColor.Text := EyeColor;
    edtDogAge.Text := IntToStr(Age);
    chkbxDogHasTail.Checked := HasTail;
  end;

  MamalList[1] := ADog;
  grpbxDogProperties.Enabled := True;
  grpbxDefDogProp.Enabled := False;
  btnCreateDefDog.Enabled := False;
  btnCreateDog.Enabled := False;

end;

procedure TForm1.btnCreateDogClick(Sender: TObject);
begin
  if not Assigned(ADog) then
    ADog := TDog.Create;

  with ADog do
  begin
    edtDogName.Text := Name;
    edtDogEyeColor.Text := EyeColor;
    edtDogAge.Text := IntToStr(Age);
    chkbxDogHasTail.Checked := HasTail;
  end;

  MamalList[1] := ADog;

  grpbxDogProperties.Enabled := True;
  grpbxDefDogProp.Enabled := False;
  btnCreateDefDog.Enabled := False;
  btnCreateDog.Enabled := False;
end;

procedure TForm1.btnCreateHumanClick(Sender: TObject);
begin
  if not Assigned(AHuman) then
    AHuman := THuman.Create;

  with AHuman do
  begin
    edtHumanName.Text := Name;
    edtHumanEyeColor.Text := EyeColor;
    edtHumanAge.Text := IntToStr(Age);
    chkbxMarried.Checked := Married;
  end;

  grpbxHumanProperties.Enabled := True;
  MamalList[2] := AHuman;

end;

procedure TForm1.btnDestroyDogClick(Sender: TObject);
begin
  ADog.Free;
  ADog := nil;
  MamalList[1] := nil;

  grpbxDogProperties.Enabled := False;
  grpbxDefDogProp.Enabled := True;
  btnCreateDefDog.Enabled := True;
  btnCreateDog.Enabled := True;
end;

procedure TForm1.btnDestroyHumanClick(Sender: TObject);
begin
  grpbxHumanProperties.Enabled := False;
  AHuman.Free;
  AHuman := nil;
  MamalList[2] := nil;
end;

procedure TForm1.btnDogSpeakClick(Sender: TObject);
begin
  if not Assigned(ADog) then
    Exit;

  ADog.Speak;
end;

procedure TForm1.btnSpeakHumanClick(Sender: TObject);
begin
  if not Assigned(AHuman) then
    Exit;

  AHuman.Speak;
end;

procedure TForm1.chkbxMarriedClick(Sender: TObject);
begin
  AHuman.Married := chkbxMarried.Checked;
end;

procedure TForm1.edtHumanAgeChange(Sender: TObject);
begin
  AHuman.Age := StrToInt(edtHumanAge.Text);
end;

procedure TForm1.edtHumanEyeColorChange(Sender: TObject);
begin
  AHuman.EyeColor := edtHumanEyeColor.Text;
end;

procedure TForm1.edtHumanNameChange(Sender: TObject);
begin
  AHuman.Name := edtHumanName.Text;
end;

end.

