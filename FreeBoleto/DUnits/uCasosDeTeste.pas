(*******************************************************************)
(* FreeBOLETO                                                      *)
(*******************************************************************)
(* Autor original: Carlos H. Cantu                                 *)
(*                                                                 *)
(* LICENÇA                                                         *)
(*                                                                 *)
(*    1. O FreeBoleto pode ser distribuído e utilizado livremente  *)
(*       com qualquer tipo de projeto, comercial ou não.           *)
(*    2. Componentes derivados do código do FreeBoleto não podem   *)
(*       ser vendidos e devem manter os créditos originais, e devem*)
(*       estar compatíveis com essa licença.                       *)
(*    3. Qualquer alteração ou melhoria no código do FreeBoleto    *)
(*       deve ser enviada ao autor para ser avaliada e, se         *)
(*       possível, incorporada ao código oficial do componente.    *)
(*    4. A inclusão do suporte de novos bancos ao FreeBoleto deve  *)
(*       ser notificada ao autor, enviando juntamente o código da  *)
(*       unit do banco em questão. A criação de uma nova unit de   *)
(*       suporte a um novo banco deverá ser feita em conjunto com  *)
(*       a criação dos testes unitários (DUNITs) necessários para  *)
(*       garantir o correto funcionamento das rotinas.             *)
(*    5. O autor não se responsabiliza por qualquer dano ou        *)
(*       qualquer outro tipo de problema originado pela utilização *)
(*       desse componente, se isentando de qualquer                *)
(*       responsabilidade sobre a utilização do mesmo.             *)
(*                                                                 *)
(* Mais informações sobre a licença e utilização estão no arquivo  *)
(* Leiame.html, que deve ser distribuído com todas as versões      *)
(* componente.                                                     *)
(*                                                                 *)
(*******************************************************************)
unit uCasosDeTeste;

interface

uses
  SysUtils,
  TestFrameWork;

type

  TTest_033_BANESPA = class(TTestCase)
  private
    procedure InicializaBoletoTeste;
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CodigoDeBarras;
    procedure LinhaDigitavel;
    procedure NumeroBancario;
    procedure NomeDoBanco;
    procedure AgenciaCodigoCedente;
  end;

  TTest_151_NCNB = class(TTestCase)
  private
    procedure InicializaBoletoTeste;
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CodigoDeBarras;
    procedure LinhaDigitavel;
    procedure NumeroBancario;
    procedure NomeDoBanco;
    procedure AgenciaCodigoCedente;
  end;

  TTest_104_CAIXA = class(TTestCase)
  private
    procedure InicializaBoletoTeste;
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CodigoDeBarras;
    procedure LinhaDigitavel;
    procedure NumeroBancario;
    procedure NomeDoBanco;
    procedure AgenciaCodigoCedente;
  end;

  TTest_341_ITAU = class(TTestCase)
  private
    procedure InicializaBoletoTeste;
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CodigoDeBarras;
    procedure LinhaDigitavel;
    procedure NumeroBancario;
    procedure NomeDoBanco;
    procedure AgenciaCodigoCedente;
  end;

  TTest_356_REAL = class(TTestCase)
  private
    procedure InicializaBoletoTeste;
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CodigoDeBarras;
    procedure LinhaDigitavel;
    procedure NumeroBancario;
    procedure NomeDoBanco;
    procedure AgenciaCodigoCedente;
  end;


implementation

uses uFreeBoleto;

{ TTest_033_BANESPA }

var B: TFreeBoleto;

procedure TTest_033_BANESPA.SetUp;
begin
  inherited;
  B := TFreeBoleto.create(nil);
  InicializaBoletoTeste;
end;

procedure TTest_033_BANESPA.TearDown;
begin
  inherited;
  B.free;
end;

procedure TTest_033_BANESPA.CodigoDeBarras;
begin
  B.Preparar;
  Check(B.DadosGerados.CodigoBarras = '03398139400000103581481302647800049520003306', 'BANESPA: Código de Barras inválido!');
end;

procedure TTest_033_BANESPA.LinhaDigitavel;
begin
  B.Preparar;
  Check(B.DadosGerados.LinhaDigitavel = '03391.48132 02647.800040 95200.033066 8 13940000010358', 'BANESPA: Linha digitável inválida!');
end;

procedure TTest_033_BANESPA.InicializaBoletoTeste;
begin
  with B do
  begin
    Cedente.CodigoCedente := '14813026478';
    Cedente.CodigoBanco := '033';
    Cedente.Agencia := '148';
    Valor := 103.58;
    NossoNumero := '4952';
    Vencimento := EncodeDate(2001, 8, 1);
  end;
end;

procedure TTest_033_BANESPA.NumeroBancario;
begin
  B.preparar;
  Check(B.DadosGerados.NumeroBancario = '148 0004952-7', 'Número bancário inválido! ('+B.DadosGerados.NumeroBancario+')');
end;

procedure TTest_033_BANESPA.NomeDoBanco;
begin
  B.preparar;
  Check(SameText(B.DadosGerados.NomeDoBanco, 'BANESPA'), 'Nome do banco inválido! (' + B.DadosGerados.NomeDoBanco + ')');
end;

procedure TTest_033_BANESPA.AgenciaCodigoCedente;
begin
  b.preparar;
  Check(B.DadosGerados.AgencCodigoCedente = '148.13.02647.8', 'Agencia/Codigo do cedente inválido! (' + B.DadosGerados.AgencCodigoCedente + ')');
end;

{ TTest_151_NCNB }

procedure TTest_151_NCNB.AgenciaCodigoCedente;
begin
  b.preparar;
  Check(B.DadosGerados.AgencCodigoCedente = '0001 04 0002818 4', 'Agencia/Codigo do cedente inválido! (' + B.DadosGerados.AgencCodigoCedente + ')');
end;

procedure TTest_151_NCNB.CodigoDeBarras;
begin
  B.Preparar;
  Check(B.DadosGerados.CodigoBarras = '15197101200000350009900000010001400281815130', 'NCNB: Código de Barras inválido!');
end;

procedure TTest_151_NCNB.InicializaBoletoTeste;
begin
  with B do
  begin
    Cedente.CodigoBanco := '151';
    Cedente.Agencia := '0001';
    Cedente.contacorrente:='002818';
    Cedente.DigitoContaCorrente:='4';
    Cedente.Banco151.ModalidadeConta:='04';
    Valor := 350.00;
    NossoNumero := '0000001';
    Vencimento := EncodeDate(2000, 7, 15);
  end;
end;

procedure TTest_151_NCNB.LinhaDigitavel;
begin
  B.Preparar;
  Check(B.DadosGerados.LinhaDigitavel = '15199.90004 00010.001402 02818.151306 7 10120000035000', 'NCNB: Linha digitável inválida!');
end;

procedure TTest_151_NCNB.NomeDoBanco;
begin
  B.preparar;
  Check(SameText(B.DadosGerados.NomeDoBanco, 'NossaCaixa'), 'Nome do banco inválido! (' + B.DadosGerados.NomeDoBanco + ')');
end;

procedure TTest_151_NCNB.NumeroBancario;
begin
  B.preparar;
  Check(B.DadosGerados.NumeroBancario = '990000001-1', 'Número bancário inválido! ('+B.DadosGerados.NumeroBancario+')');
end;

procedure TTest_151_NCNB.SetUp;
begin
  inherited;
  B := TFreeBoleto.create(nil);
  InicializaBoletoTeste;
end;

procedure TTest_151_NCNB.TearDown;
begin
  inherited;
  B.Free;
end;

{ TTest_104_CAIXA }

procedure TTest_104_CAIXA.AgenciaCodigoCedente;
begin
  b.preparar;
  Check(B.DadosGerados.AgencCodigoCedente = '0012.870.00000011-3', 'Agencia/Codigo do cedente inválido! (' + B.DadosGerados.AgencCodigoCedente + ')');
end;

procedure TTest_104_CAIXA.CodigoDeBarras;
begin
  B.Preparar;
  Check(B.DadosGerados.CodigoBarras = '10491107400000160000001100128701000901200200', 'CAIXA: Código de Barras inválido!');
end;

procedure TTest_104_CAIXA.InicializaBoletoTeste;
begin
  with B do
  begin
    Cedente.CodigoBanco := '104';
    Cedente.Agencia := '0012';
    Cedente.CodigoCedente:='00011';
    Carteira:='8';
    Valor := 160.00;
    NossoNumero := '01000901200200';
    Vencimento := EncodeDate(2000, 9, 15);
  end;
end;

procedure TTest_104_CAIXA.LinhaDigitavel;
begin
  B.Preparar;
  Check(B.DadosGerados.LinhaDigitavel = '10490.00118 00128.701000 09012.002003 1 10740000016000', 'CAIXA: Linha digitável inválida!');
end;

procedure TTest_104_CAIXA.NomeDoBanco;
begin
  B.preparar;
  Check(SameText(B.DadosGerados.NomeDoBanco, 'Caixa'), 'Nome do banco inválido! (' + B.DadosGerados.NomeDoBanco + ')');
end;

procedure TTest_104_CAIXA.NumeroBancario;
begin
  B.preparar;
  Check(B.DadosGerados.NumeroBancario = '801000901200200-3', 'Número bancário inválido! ('+B.DadosGerados.NumeroBancario+')');
end;

procedure TTest_104_CAIXA.SetUp;
begin
  inherited;
  B := TFreeBoleto.create(nil);
  InicializaBoletoTeste;
end;

procedure TTest_104_CAIXA.TearDown;
begin
  inherited;
  B.free;
end;

{ TTest_341_ITAU }

procedure TTest_341_ITAU.AgenciaCodigoCedente;
begin
  b.preparar;
  Check(B.DadosGerados.AgencCodigoCedente = '0057/12345-7', 'Agencia/Codigo do cedente inválido! (' + B.DadosGerados.AgencCodigoCedente + ')');
end;

procedure TTest_341_ITAU.CodigoDeBarras;
begin
  B.Preparar;
  Check(B.DadosGerados.CodigoBarras = '34196166700000123451101234567880057123457000', 'Código de Barras inválido!');
end;

procedure TTest_341_ITAU.InicializaBoletoTeste;
begin
  with B do
  begin
    Cedente.CodigoBanco := '341';
    Cedente.Agencia := '0057';
    Cedente.ContaCorrente:='12345';
    Cedente.DigitoContaCorrente:='7';
    Carteira:='110';
    Valor :=123.45;
    NossoNumero := '12345678';
    Vencimento := EncodeDate(2002, 5, 1);
  end;
end;

procedure TTest_341_ITAU.LinhaDigitavel;
begin
  B.Preparar;
  Check(B.DadosGerados.LinhaDigitavel = '34191.10121 34567.880058 71234.570001 6 16670000012345', 'Linha digitável inválida!');
end;

procedure TTest_341_ITAU.NomeDoBanco;
begin
  B.preparar;
  Check(SameText(B.DadosGerados.NomeDoBanco, 'Itau'), 'Nome do banco inválido! (' + B.DadosGerados.NomeDoBanco + ')');
end;

procedure TTest_341_ITAU.NumeroBancario;
begin
  B.preparar;
  Check(B.DadosGerados.NumeroBancario = '110/12345678-8', 'Número bancário inválido! ('+B.DadosGerados.NumeroBancario+')');
end;

procedure TTest_341_ITAU.SetUp;
begin
  inherited;
  B := TFreeBoleto.create(nil);
  InicializaBoletoTeste;
end;

procedure TTest_341_ITAU.TearDown;
begin
  inherited;
  B.Free;
end;

{ TTest_356_REAL }

procedure TTest_356_REAL.AgenciaCodigoCedente;
begin
  b.preparar;
  Check(B.DadosGerados.AgencCodigoCedente = '0501/6703255/1', 'Agencia/Codigo do cedente inválido! (' + B.DadosGerados.AgencCodigoCedente + ')');
end;

procedure TTest_356_REAL.CodigoDeBarras;
begin
  B.Preparar;
  Check(B.DadosGerados.CodigoBarras = '35699145600000035000501670325510000000003020', 'Código de Barras inválido!');
end;

procedure TTest_356_REAL.InicializaBoletoTeste;
begin
  with B do
  begin
    Cedente.CodigoBanco := '356';
    Cedente.Agencia := '0501';
    Cedente.ContaCorrente:='6703255';
    Valor :=35.00;
    NossoNumero := '3020';
    Vencimento := EncodeDate(2001, 10, 2);
  end;
end;

procedure TTest_356_REAL.LinhaDigitavel;
begin
  B.Preparar;
  Check(B.DadosGerados.LinhaDigitavel = '35690.50168 70325.510009 00000.030205 9 14560000003500', 'Linha digitável inválida!');
end;

procedure TTest_356_REAL.NomeDoBanco;
begin
  B.preparar;
  Check(SameText(B.DadosGerados.NomeDoBanco, 'Real'), 'Nome do banco inválido! (' + B.DadosGerados.NomeDoBanco + ')');
end;

procedure TTest_356_REAL.NumeroBancario;
begin
  B.preparar;
  Check(B.DadosGerados.NumeroBancario = '0000000003020', 'Número bancário inválido! ('+B.DadosGerados.NumeroBancario+')');
end;

procedure TTest_356_REAL.SetUp;
begin
  inherited;
  B := TFreeBoleto.create(nil);
  InicializaBoletoTeste;
end;

procedure TTest_356_REAL.TearDown;
begin
  inherited;
  B.Free;
end;

initialization
  TestFramework.RegisterTest(TTest_033_BANESPA.Suite);
  TestFramework.RegisterTest(TTest_151_NCNB.Suite);
  TestFramework.RegisterTest(TTest_104_Caixa.Suite);
  TestFramework.RegisterTest(TTest_341_ITAU.Suite);
  TestFramework.RegisterTest(TTest_356_REAL.Suite);

end.

