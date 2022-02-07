unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,BuscaCep, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    edCep: TEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edEndereco: TEdit;
    Label3: TLabel;
    edBairro: TEdit;
    Label7: TLabel;
    edCidade: TEdit;
    Label6: TLabel;
    edUF: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses smBuscaCep;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var Cep:TsmBuscaCEP;
begin
  edEndereco.Clear;
  edBairro.Clear;
  edCidade.Clear;
  edUf.Clear;

  try
    Cep := TsmBuscaCEP.Create;
    with Cep do
    begin
      if not(Busca(edcEP.Text))Then
        raise Exception.Create('Cep não encontrado!');

      edEndereco.Text := Logradouro + ' ' + Nome;
      edBairro.Text := Bairro;
      edCidade.Text := Cidade;
      edUf.Text := UF;
    end;
   finally
  end;
end;

end.
