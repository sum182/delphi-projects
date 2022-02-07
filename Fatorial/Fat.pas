unit Fat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    EditN: TEdit;
    EditFat: TEdit;
    ButtonDireto: TButton;
    ButtonFunction: TButton;
    ButtonProcedure: TButton;
    ButtonRecursao: TButton;
    ButtonClear: TButton;
    ButtonExit: TButton;
    LabelN: TLabel;
    LabelFat: TLabel;
    procedure ButtonDiretoClick(Sender: TObject);
    procedure ButtonFunctionClick(Sender: TObject);
    procedure ButtonProcedureClick(Sender: TObject);
    procedure ButtonRecursaoClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

function FatorialFunc(N: integer):integer;
var i,Fat: integer;
begin
Fat:= 1;
 for i:= 1 to N do
 begin
 Fat:= Fat*i;
 end;
 FatorialFunc := Fat;
end;


procedure FatorialProc(N: integer; var Fat: integer);
var i: integer;
begin
 Fat:= 1;
 for i:= 1 to N do
 begin
 Fat:= Fat*i;
 end;
end;

function FatorialRec(N:integer):integer;
begin
 if n >1 then
 FatorialRec:= FatorialRec (N-1)*N
 else
 FatorialRec:= 1;
end;

procedure TForm1.ButtonDiretoClick(Sender: TObject);
var N,Fat,i: integer;
begin
 N:= StrToInt(EditN.Text);
 Fat:= 1;
 for i:= 1 to N do
 begin
 Fat:= Fat*i;
 end;
 EditFat.Text:= IntToStr(Fat);
end;

procedure TForm1.ButtonFunctionClick(Sender: TObject);
var N,Fat: integer;
begin
 // Entrada De Dados
 N:= StrToInt(EditN.Text);
 // Computação De Dados
 Fat:= FatorialFunc(N);
 // Saída De Dados
 EditFat.Text:= IntToStr(Fat);
end;

procedure TForm1.ButtonProcedureClick(Sender: TObject);
var N, Fat: integer;
begin
 // Entrada De Dados
 N:= StrToInt(EditN.Text);
 // Computação De Dados
 FatorialProc(N,Fat);
 // Saída de Dados
 EditFat.Text:= IntToStr(Fat);
end;

procedure TForm1.ButtonRecursaoClick(Sender: TObject);
var N,Fat : integer;
begin
 // Entrada De Dados
 N:= StrToInt(EditN.Text);
 // Computação De Dados
 Fat:= FatorialRec(N);
 // Saída de Dados
 EditFat.Text:= IntToStr(Fat);
end;

procedure TForm1.ButtonClearClick(Sender: TObject);
begin
 sleep(100);
 EditN.clear;
 EditFat.clear;
 EditN.SetFocus; 
end;

procedure TForm1.ButtonExitClick(Sender: TObject);
begin
close;
end;

end.
