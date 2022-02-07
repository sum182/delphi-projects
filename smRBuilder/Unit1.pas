unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  smRBuilder, ppPrnabl, ppCtrls, ppBands, ppCache;

type
  TForm1 = class(TForm)
    smRbuilder: TsmRbuilder;
    ppReport1: TppReport;
    BitBtn1: TBitBtn;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure smRbuilderBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  smGeral;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Aguarde(Self,'Gerando Relatório',1200);
  FimAguarde(self);
  smRbuilder.Print;
end;

procedure TForm1.smRbuilderBeforePrint(Sender: TObject);
begin
  with smRBuilder do
  begin
    Cabecalho.Clear;
    Cabecalho.Add('Laboratorio - Teste');
    Cabecalho.Add('Período do Relatório de ' + FormatDateTime('dd/mm/yy',date -1 )
                  + ' à ' + FormatDateTime('dd/mm/yy',date)  );
    Rodape.Clear;
    Rodape.Add('Impresso por Alvaro Esteves Alves')
  end;


end;

end.
