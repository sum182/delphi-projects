unit unCadLeituras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, Grids, DBGrids, DBClient, Buttons, ExtCtrls,
  StdCtrls,ComCtrls, ToolWin, DBActns, ActnList, Mask, smGrid, unCadPadrao, smCadPadrao;

type
  TFoCadLeituras = class(TFoCadPadrao)
    Label15: TLabel;
    cxDBLookupComboBox2: TDBLookupComboBox;
    Label29: TLabel;
    cxDBLookupComboBox3: TDBLookupComboBox;
    Label28: TLabel;
    cxDBLookupComboBox1: TDBLookupComboBox;
    Label30: TLabel;
    Label31: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DaSoPontos: TDataSource;
    ClDaPontos: TClientDataSet;
    ClDaCobradores: TClientDataSet;
    ClDaMaquinas: TClientDataSet;
    DaSoCobradores: TDataSource;
    DaSoMaquinas: TDataSource;
    cxGroupBox2: TGroupBox;
    cxDBTextEdit30: TDBEdit;
    cxDBTextEdit29: TDBEdit;
    cxDBTextEdit28: TDBEdit;
    cxDBTextEdit31: TDBEdit;
    cxDBTextEdit27: TDBEdit;
    cxDBTextEdit32: TDBEdit;
    cxDBTextEdit35: TDBEdit;
    cxDBTextEdit37: TDBEdit;
    Label20: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    cxGroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DbTeAnt_Entradas_M: TDBEdit;
    cxDBTextEdit3: TDBEdit;
    cxDBTextEdit4: TDBEdit;
    DbTeAnt_Saidas_M: TDBEdit;
    cxDBTextEdit6: TDBEdit;
    cxDBTextEdit7: TDBEdit;
    cxDBTextEdit10: TDBEdit;
    cxDBTextEdit20: TDBEdit;
    cxGroupBox4: TGroupBox;
    Label27: TLabel;
    Label32: TLabel;
    cxDBTextEdit13: TDBEdit;
    cxDBTextEdit14: TDBEdit;
    cxDBTextEdit17: TDBEdit;
    cxDBTextEdit22: TDBEdit;
    cxDBTextEdit11: TDBEdit;
    DaSoLeituraAnt: TDataSource;
    DaSoComisSocios: TDataSource;
    DaSoSocios: TDataSource;
    ClDaSocios: TClientDataSet;
    DaSoSociosMaq: TDataSource;
    ClDaSociosMaq: TClientDataSet;
    cxGroupBox9: TGroupBox;
    BuCalcular: TBitBtn;
    PaCoInfo: TPageControl;
    cxTabSheet1: TTabSheet;
    cxTabSheet2: TTabSheet;
    cxGroupBox11: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    cxDBCurrencyEdit2: TDBEdit;
    cxDBCurrencyEdit6: TDBEdit;
    cxDBCurrencyEdit7: TDBEdit;
    cxGroupBox10: TGroupBox;
    Label33: TLabel;
    Label36: TLabel;
    cxDBCurrencyEdit9: TDBEdit;
    cxDBCurrencyEdit10: TDBEdit;
    cxTabSheet3: TTabSheet;
    cxDBMemo1: TDBMemo;
    Label16: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBTextEdit23: TDBEdit;
    cxDBTextEdit21: TDBEdit;
    cxDBTextEdit18: TDBEdit;
    Label8: TLabel;
    cxDBCurrencyEdit5: TDBEdit;
    cxDBCurrencyEdit4: TDBEdit;
    cxDBCurrencyEdit3: TDBEdit;
    Label9: TLabel;
    Label4: TLabel;
    EdUnidadeMedida: TEdit;
    Label17: TLabel;
    cxDBCurrencyEdit1: TDBEdit;
    cxGroupBox1: TGroupBox;
    RaBuManual: TRadioButton;
    RaBuEletronico: TRadioButton;
    cdsLeiturasComissSocios: TClientDataSet;
    ClDaLeituraAnt: TClientDataSet;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure DaSoMaquinasDataChange(Sender: TObject; Field: TField);
    procedure BuCalcularClick(Sender: TObject);
    procedure BuProcessarClick(Sender: TObject);
    procedure LoCoBoCobradoresKeyPress(Sender: TObject; var Key: Char);
    procedure LoCoBoCobradoresPropertiesChange(Sender: TObject);
    procedure LoCoBoMaquinasPropertiesChange(Sender: TObject);
    procedure LoCoBoPontosPropertiesChange(Sender: TObject);
    procedure LoCoBoMaquinasKeyPress(Sender: TObject; var Key: Char);
    procedure LoCoBoPontosKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuNovoClick(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure cdsCadastroAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure GetComissPonto();
    Procedure GetComissCobrador();
    Procedure GetLeituraAnterior();
    Procedure GetResultados();
    Procedure GetSaldos();
    Function  GetUnidadeCalculo():Real;
    Procedure TratarCamposPesquisa(Sender: TObject);
    Procedure AbrirQuerys();
    Procedure GetComisSocios();
    Procedure GetSaldoRestante();
  end;

var
  FoCadLeituras: TFoCadLeituras;

implementation

uses unDm, UnGeral;

{$R *.dfm}

procedure TFoCadLeituras.FormShow(Sender: TObject);
begin

  inherited;

  AbrirQuerys();
end;

procedure TFoCadLeituras.GetComissCobrador;
var
    CiDaGeral :TClientDataSet;
begin

  //ESTA FUNCAO BUSCA A COMISSAO DO COBRADOR


  Try

   CiDaGeral := TClientDataSet.Create(NIL);
   CiDaGeral.RemoteServer := Dm.DCOMConnection;
   CiDaGeral.ProviderName := 'dspGeral';
   CiDaGeral.Close;
   CiDaGeral.CommandText  := '';
   CiDaGeral.CommandText  := 'SELECT COBRADORES.COBR_PERCENTUAL  FROM   COBRADORES WHERE  COBRADORES.COBR_ID = :COBR_ID';
   CiDaGeral.Params.ParamByName('COBR_ID').AsInteger := cdsCadastro.FieldByName('COBR_ID').AsInteger;
   CiDaGeral.Open;

    if  Not (cdsCadastro.State  In [DsInsert,DsEdit]) Then
      cdsCadastro.Edit
    ;

    //CALCULANDO O PERCENTUAL
    cdsCadastro.FieldByName('LEIT_PERCENTUAL_COBRADOR').AsFloat :=   CiDaGeral.FieldByName('COBR_PERCENTUAL').AsFloat;

    //CALCULANDO OS CREDITOS
    cdsCadastro.FieldByName('LEIT_COMIS_COBR_QTDE'    ).AsFloat  :=  cdsCadastro.FieldByName('LEIT_RESULT_SALDO_QTDE').AsFloat *  (cdsCadastro.FieldByName('LEIT_PERCENTUAL_COBRADOR').AsFloat / 100);

    //CALCULANDO OS REAIS
    cdsCadastro.FieldByName('LEIT_COMIS_COBR_VALOR'  ).AsFloat  :=   cdsCadastro.FieldByName('LEIT_COMIS_COBR_QTDE').AsFloat  *  GetUnidadeCalculo();

    CiDaGeral.Close;


  Finally
   FreeAndNil(CiDaGeral);
  End;

End;







procedure TFoCadLeituras.GetComissPonto;
var
    CiDaGeral :TClientDataSet;
begin

  //ESTA FUNCAO BUSCA A COMISSAO DO PONTO


  Try

   CiDaGeral := TClientDataSet.Create(NIL);
   CiDaGeral.RemoteServer := Dm.DCOMConnection;
   CiDaGeral.ProviderName := 'dspGeral';
   CiDaGeral.Close;
   CiDaGeral.CommandText  := '';
   CiDaGeral.CommandText  := 'SELECT POMA_PERCENTUAL FROM PONTOS_MAQUINAS WHERE PONTOS_MAQUINAS.MAQU_ID = :MAQU_ID';
   CiDaGeral.Params.ParamByName('MAQU_ID').AsString := cdsCadastro.FieldByName('MAQU_ID').AsString;
   CiDaGeral.Open;

    if  Not (cdsCadastro.State  In [DsInsert,DsEdit]) Then
      cdsCadastro.Edit
    ;

    cdsCadastro.FieldByName('LEIT_PERCENTUAL_PONTO').AsFloat := CiDaGeral.FieldByName('POMA_PERCENTUAL').AsFloat;
    CiDaGeral.Close;


  Finally
   FreeAndNil(CiDaGeral);
  End;




end;

procedure TFoCadLeituras.DaSoMaquinasDataChange(Sender: TObject;  Field: TField);
var
    CiDaGeral :TClientDataSet;
    nPonto    :Integer;
begin

  inherited;
  //ESTA FUNCAO ATUALIZA AUTOMATICAMENTE O PONTO DE ACORDO COM  A MAQUINA SELECIONADA


  if  Not (cdsCadastro.State  In [DsInsert,DsEdit]) Then
    exit;
  ;



  //SO FARA A PESQUISA NA GUIA DO CADASTRO
  if (PaCoPadrao.ActivePageIndex <> 1) Then
    Exit
  ;



  Try

    //CRIANDO O CLIENT DATASET
    nPonto    := 0;
    CiDaGeral := TClientDataSet.Create(NIL);

    CiDaGeral.RemoteServer := Dm.DCOMConnection;
    CiDaGeral.ProviderName := 'dspGeral';

    CiDaGeral.Close;
    CiDaGeral.CommandText  := '';
    CiDaGeral.CommandText  := 'SELECT PONT_ID FROM PONTOS_MAQUINAS WHERE PONTOS_MAQUINAS.MAQU_ID = :MAQU_ID';
    CiDaGeral.Params.ParamByName('MAQU_ID').AsString := ClDaMaquinas.FieldByName('MAQU_ID').AsString;
    CiDaGeral.Open;

    nPonto := CiDaGeral.FieldbyName('PONT_ID').AsInteger;
    CiDaGeral.Close;



    cdsCadastro.FieldByName('PONT_ID').AsInteger := nPonto;
    ClDaPontos.Locate('PONT_ID',nPonto,[]);

  Finally
   FreeAndNil(CiDaGeral);
  End;



end;









procedure TFoCadLeituras.BuCalcularClick(Sender: TObject);
begin
  inherited;

  Aguarde('Calculando Leitura');
  GetComissPonto();
  GetLeituraAnterior();
  GetResultados();
  GetSaldos();
  GetComissCobrador();
  GetComisSocios();
  GetSaldoRestante();
  FimAguarde();
end;

procedure TFoCadLeituras.GetLeituraAnterior;
var sSql:String;
begin

   (***************************************************************************
   *    Rotina para buscar a leitura anterior                                 *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   ****************************************************************************)

  if cdsCadastro.IsEmpty Then
    Exit
  ;
  ///ARRUMAR ESTA PORRA
  ClDaLeituraAnt.Close;
  ClDaLeituraAnt.Params.ParamByName('MAQU_ID'  ).AsString     := cdsCadastro.FieldByName('MAQU_ID'   ).AsString;
  ClDaLeituraAnt.Params.ParamByName('LEIT_ID'  ).AsInteger     := cdsCadastro.FieldByName('LEIT_ID'  ).AsInteger;
  ClDaLeituraAnt.Params.ParamByName('LETI_DATA').AsDate        := cdsCadastro.FieldByName('LETI_DATA').AsDateTime;
  ClDaLeituraAnt.Open;


  ClDaLeituraAnt.Close;


//  ClDaLeituraAnt.FetchParams;
  ClDaLeituraAnt.Params.ParamByName('MAQU_ID'  ).AsString     := cdsCadastro.FieldByName('MAQU_ID'   ).AsString;
  ClDaLeituraAnt.Params.ParamByName('LEIT_ID'  ).AsInteger     := cdsCadastro.FieldByName('LEIT_ID'  ).AsInteger;
  ClDaLeituraAnt.Params.ParamByName('LETI_DATA').AsDate        := cdsCadastro.FieldByName('LETI_DATA').AsDateTime;
  ClDaLeituraAnt.Open


end;


procedure TFoCadLeituras.GetResultados;
begin



   (***************************************************************************
   *    Rotina para calcular os contadores eletronicos eletronicos e manuais  *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   ****************************************************************************)


   
   //VERIFICANDO SE EXISTE A LEITURA ANTERIOR
   IF (ClDaLeituraAnt.RecordCount <=0 )Then
     Begin
       Msgerro('Não foi encontrado nenhuma leitura anterior para efetuar o cálculo!');
       Exit;
     End
   ;


  //SE OS CALCULOS FOREM PELOS CONTADORES MANUAIS
  IF (RaBuManual.Checked)Then
    Begin
      cdsCadastro.FieldByName('LEIT_RESULT_ENTRADAS').AsInteger  :=  cdsCadastro.FieldByName('LEIT_ENTRADAS_MAN').AsInteger - ClDaLeituraAnt.FieldByName('LEIT_ENTRADAS_MAN').AsInteger;
      cdsCadastro.FieldByName('LEIT_RESULT_SAIDAS'  ).AsInteger  :=  cdsCadastro.FieldByName('LEIT_SAIDAS_MAN'  ).AsInteger - ClDaLeituraAnt.FieldByName('LEIT_SAIDAS_MAN'  ).AsInteger;
      cdsCadastro.FieldByName('LEIT_RESULT_MANUAL'  ).AsInteger  :=  cdsCadastro.FieldByName('LEIT_MANUAL_MAN'  ).AsInteger - ClDaLeituraAnt.FieldByName('LEIT_MANUAL_MAN'  ).AsInteger;
    End
  ;



  //SE OS CALCULOS FOREM PELOS CONTADORES ELETRONICOS
  IF (RaBuEletronico.Checked)Then
    Begin
      cdsCadastro.FieldByName('LEIT_RESULT_ENTRADAS').AsInteger  :=  cdsCadastro.FieldByName('LEIT_ENTRADAS_ELE').AsInteger - ClDaLeituraAnt.FieldByName('LEIT_ENTRADAS_ELE').AsInteger;
      cdsCadastro.FieldByName('LEIT_RESULT_SAIDAS'  ).AsInteger  :=  cdsCadastro.FieldByName('LEIT_SAIDAS_ELE'  ).AsInteger - ClDaLeituraAnt.FieldByName('LEIT_SAIDAS_ELE'  ).AsInteger;
      cdsCadastro.FieldByName('LEIT_RESULT_MANUAL'  ).AsInteger  :=  cdsCadastro.FieldByName('LEIT_MANUAL_ELE'  ).AsInteger - ClDaLeituraAnt.FieldByName('LEIT_MANUAL_ELE'  ).AsInteger;
     End
  ;


  //CALCULANDO ELETRONICOS
  cdsCadastro.FieldByName('LEIT_RESULT_3').AsInteger  :=  cdsCadastro.FieldByName('LEIT_ELETRONICO_3').AsInteger - ClDaLeituraAnt.FieldByName('LEIT_ELETRONICO_3').AsInteger;
  cdsCadastro.FieldByName('LEIT_RESULT_H').AsInteger  :=  cdsCadastro.FieldByName('LEIT_ELETRONICO_H').AsInteger - ClDaLeituraAnt.FieldByName('LEIT_ELETRONICO_H').AsInteger;


end;

procedure TFoCadLeituras.GetSaldos;
var nUnidCalc:Real;
    nResultManual:Integer;
begin


   (***************************************************************************
   *    Rotina para calcular os saldos e valores em reais                     *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   ****************************************************************************)


      //PEGANDO A UNIDADE DE CALCULO
      nUnidCalc := GetUnidadeCalculo();

      nResultManual := cdsCadastro.FieldByName('LEIT_RESULT_MANUAL').AsInteger;
      //DEIXANDO O MANUAL POSTIVO PARA CALCULO
      IF (nResultManual < 0) Then
          nResultManual := nResultManual * -1;
      ;

      //CALCULANDO O SALDO TOTAL
      cdsCadastro.FieldByName('LEIT_RESULT_SALDO_QTDE'  ).AsFloat  :=  cdsCadastro.FieldByName('LEIT_RESULT_ENTRADAS'  ).AsInteger - (cdsCadastro.FieldByName('LEIT_RESULT_SAIDAS').AsInteger + nResultManual) ;

      //CALCULANDO O SALDO DO CLIENTE
      cdsCadastro.FieldByName('LEIT_RESULT_CLIENTE_QTDE').AsFloat  :=  cdsCadastro.FieldByName('LEIT_RESULT_SALDO_QTDE').AsFloat *  (cdsCadastro.FieldByName('LEIT_PERCENTUAL_PONTO').AsFloat / 100);

      //CALCULANDO 0 SALDO DA FIRMA
      cdsCadastro.FieldByName('LEIT_RESULT_FIRMA_QTDE'  ).AsFloat  :=  cdsCadastro.FieldByName('LEIT_RESULT_SALDO_QTDE'  ).AsFloat - cdsCadastro.FieldByName('LEIT_RESULT_CLIENTE_QTDE').AsFloat;

      //CALCULANDO O SALDO EM REAIS
      cdsCadastro.FieldByName('LEIT_RESULT_SALDO_REAIS'   ).AsFloat  :=  cdsCadastro.FieldByName('LEIT_RESULT_SALDO_QTDE'    ).AsFloat  * nUnidCalc;
      cdsCadastro.FieldByName('LEIT_RESULT_CLIENTE_REAIS' ).AsFloat  :=  cdsCadastro.FieldByName('LEIT_RESULT_CLIENTE_QTDE'  ).AsFloat  * nUnidCalc;
      cdsCadastro.FieldByName('LEIT_RESULT_FIRMA_REAIS'   ).AsFloat  :=  cdsCadastro.FieldByName('LEIT_RESULT_FIRMA_QTDE'    ).AsFloat  * nUnidCalc;


end;



function TFoCadLeituras.GetUnidadeCalculo: Real;
var
    ClDaGeral :TClientDataSet;
    sSql:String;
Begin

   (***************************************************************************
   *    Rotina para pegar a unidade de calculo da maquina                     *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   *                                                                          *
   ****************************************************************************)


  sSql := '';
  sSql := sSql + 'SELECT MAQUINAS_UNIDADE_CALCULO.MAUN_UNIDADE';
  sSql := sSql + ' FROM MAQUINAS_UNIDADE_CALCULO';
  sSql := sSql + ' WHERE MAQUINAS_UNIDADE_CALCULO.MAUN_ID =';
  sSql := sSql + '  (SELECT MAQUINAS_TIPO.MAUN_ID FROM MAQUINAS_TIPO WHERE MAQUINAS_TIPO.MATI_ID = ';
  sSql := sSql + '      (SELECT MAQUINAS.MATI_ID FROM MAQUINAS WHERE MAQUINAS.MAQU_ID = :MAQU_ID))';


  Try
    ClDaGeral := TClientDataSet.Create(NIL);
    ClDaGeral.RemoteServer := Dm.DCOMConnection;
    ClDaGeral.ProviderName := 'dspGeral';

    ClDaGeral.Close;
    ClDaGeral.CommandText  := sSql;;
    ClDaGeral.FetchParams;
    ClDaGeral.Params.Items[0].AsString := cdsCadastro.FieldByName('MAQU_ID').AsString;
    ClDaGeral.Open;

    Result:=ClDaGeral.FieldbyName('MAUN_UNIDADE').AsFloat;
    EdUnidadeMedida.Text := ClDaGeral.FieldbyName('MAUN_UNIDADE').AsString;


  Finally
   FreeAndNil(ClDaGeral);
  End;


end;

procedure TFoCadLeituras.TratarCamposPesquisa(Sender: TObject);
begin

end;

procedure TFoCadLeituras.BuProcessarClick(Sender: TObject);
begin

  //SE A PESQUISA FOR POR DATA UTILIZA A HERANCA
  IF (CoBoCampos.ItemIndex = 1) Then
    Exit
  ;




  //BUSCA POR MAQUINA
  IF (CoBoCampos.ItemIndex = 0)Then
   EdConteudoTexto.Text := ClDaMaquinas.FieldByName('MAQU_ID').AsString;
  ;



  //BUSCA POR PONTOS
  IF (CoBoCampos.ItemIndex = 2)Then
      EdConteudoNum.Text := ClDaPontos.FieldByName('PONT_ID').AsString;
  ;


  //BUSCA POR COBRADORES
  IF (CoBoCampos.ItemIndex = 3)Then
     EdConteudoNum.Text := ClDaCobradores.FieldByName('COBR_ID').AsString;
  ;



  inherited;

end;

procedure TFoCadLeituras.LoCoBoCobradoresKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   IF (Key = #13)and (BuProcessar.Enabled)Then
     BuProcessarClick(self)
   ;
end;



procedure TFoCadLeituras.LoCoBoCobradoresPropertiesChange(Sender: TObject);
begin
  inherited;
//  BuProcessar.Enabled := (LoCoBoCobradores.Text <> '');
end;

procedure TFoCadLeituras.LoCoBoMaquinasPropertiesChange(Sender: TObject);
begin
  inherited;
//   BuProcessar.Enabled := (LoCoBoMaquinas.Text <> '');
end;

procedure TFoCadLeituras.LoCoBoPontosPropertiesChange(Sender: TObject);
begin
  inherited;
 // BuProcessar.Enabled := (LoCoBoPontos.Text <> '');
end;

procedure TFoCadLeituras.LoCoBoMaquinasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   IF (Key = #13)and (BuProcessar.Enabled)Then
     BuProcessarClick(self)
   ;
end;

procedure TFoCadLeituras.LoCoBoPontosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   IF (Key = #13)and (BuProcessar.Enabled)Then
     BuProcessarClick(self)
   ;
end;

procedure TFoCadLeituras.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Case Key of
    #13: Perform( WM_NEXTDLGCTL, 0, 0 );
  End;
end;

procedure TFoCadLeituras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Case Key Of
    VK_RETURN: Perform( WM_NEXTDLGCTL, 0, 0 );
  End;
end;

procedure TFoCadLeituras.AbrirQuerys;
begin


  ClDaCobradores.Close;
  ClDaCobradores.Open;

  ClDaMaquinas.Close;
  ClDaMaquinas.Open;


  ClDaPontos.Close;
  ClDaPontos.Open;

  ClDaSocios.Close;
  ClDaSocios.Open;


  ClDaSociosMaq.Close;
  ClDaSociosMaq.Open;
end;

procedure TFoCadLeituras.GetComisSocios;
begin

 //BUSCANDO TODOS OS SOCIOS DAQUELA MAQUINA
 ClDaSociosMaq.Close;
 ClDaSociosMaq.Open;


 //DELETANDO TODOS OS REGISTROS
 cdsLeiturasComissSocios.EmptyDataSet;
 
 While Not(ClDaSociosMaq.Eof)Do
   Begin
     cdsLeiturasComissSocios.Append;

     //DADOS DOS SOCIOS
     cdsLeiturasComissSocios.FieldByName('SOCI_ID'              ).AsInteger     := ClDaSociosMaq.FieldByName('SOCI_ID').AsInteger ;
     cdsLeiturasComissSocios.FieldByName('LECO_PERCENTUAL_SOCIO').AsFloat       := ClDaSociosMaq.FieldByName('SOMA_PERCENTUAL').AsFloat  ;

     //DADOS DA LEITURA
     cdsLeiturasComissSocios.FieldByName('LECO_QUANTIDADE'      ).AsFloat       := cdsCadastro.FieldByName('LEIT_RESULT_FIRMA_QTDE').AsFloat   *  (ClDaSociosMaq.FieldByName('SOMA_PERCENTUAL').AsInteger /100);
     cdsLeiturasComissSocios.FieldByName('LECO_VALOR'           ).AsFloat       := cdsCadastro.FieldByName('LEIT_RESULT_FIRMA_REAIS').AsFloat  *  (ClDaSociosMaq.FieldByName('SOMA_PERCENTUAL').AsInteger /100);


     cdsLeiturasComissSocios.Post;
     ClDaSociosMaq.Next;
   End
 ;


end;

procedure TFoCadLeituras.GetSaldoRestante;
var
    CiDaGeral     :TClientDataSet;
    nSocio_Qtde   :Real;
    nQtdeTotal    :Real;


begin

   nSocio_Qtde  := 0;

  //BUSCANDO OS TOTAIS DOS SOCIOS
  Try
   CiDaGeral := TClientDataSet.Create(NIL);
   CiDaGeral.RemoteServer := Dm.DCOMConnection;
   CiDaGeral.ProviderName := 'dspGeral';
   CiDaGeral.Close;
   CiDaGeral.CommandText  := '';
   CiDaGeral.CommandText  := 'SELECT SUM(COALESCE(LEITURAS_COMIS_SOCIOS.LECO_QUANTIDADE,0))AS QTDE FROM LEITURAS_COMIS_SOCIOS WHERE LEITURAS_COMIS_SOCIOS.LEIT_ID = :LEIT_ID';
   CiDaGeral.Params.ParamByName('LEIT_ID').AsInteger := cdsCadastro.FieldByName('LEIT_ID').AsInteger;
   CiDaGeral.Open;

   nSocio_Qtde  := CiDaGeral.FieldByName('QTDE' ).AsFloat;
   nQtdeTotal   := nQtdeTotal  + nSocio_Qtde;


  Finally
   FreeAndNil(CiDaGeral);
  End;



  //SOMANDO OS TOTAIS DO COBRADOR
  nQtdeTotal   := nQtdeTotal  + cdsCadastro.FieldByName('LEIT_COMIS_COBR_QTDE'  ).AsFloat;

  //SOMANDO OS TOTAIS DO PONTO
  nQtdeTotal   := nQtdeTotal  + cdsCadastro.FieldByName('LEIT_RESULT_CLIENTE_QTDE'  ).AsFloat;

  //CALCULANDO O SALDO RESTANTE
  cdsCadastro.FieldByName('LEIT_RESTANTE_QTDE').AsFloat  :=   cdsCadastro.FieldByName('LEIT_RESULT_SALDO_QTDE' ).AsFloat  -  nQtdeTotal;
  cdsCadastro.FieldByName('LEIT_RESTANTE_VALOR').AsFloat :=   cdsCadastro.FieldByName('LEIT_RESTANTE_QTDE').AsFloat * GetUnidadeCalculo;

end;

procedure TFoCadLeituras.BuNovoClick(Sender: TObject);
begin
  inherited;
  ClDaLeituraAnt.Close;

end;

procedure TFoCadLeituras.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  DaTaSet.FieldValues['LEIT_ID']:=GetGenerator('GEN_LEITURAS',1);

end;

procedure TFoCadLeituras.cdsCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  GetLeituraAnterior();
end;

Initialization
  RegisterClass(TFoCadLeituras);
Finalization
  UnRegisterClass(TFoCadLeituras);

end.
