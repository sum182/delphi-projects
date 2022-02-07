unit UnFoCadastroPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, dxBar, dxBarExtItems, cxPC, cxControls, RzBckgnd,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxTextEdit, cxMaskEdit,
  Buttons, StdCtrls, cxContainer, cxGroupBox, Provider,
  DBClient, Mask, DBCtrls, cxNavigator, cxDBNavigator, cxDBEdit, Grids,
  DBGrids, ExtCtrls, RzPanel, RzRadGrp, RzButton,DBXpress, FMTBcd, SqlExpr;

type
  TFoCadastroPadrao = class(TForm)
    PaCoPadrao: TcxPageControl;
    TaShConsulta: TcxTabSheet;
    GrBoFiltroPadrao: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdConteudoTexto: TcxMaskEdit;
    CoBoCampos: TcxComboBox;
    EdConteudoNum: TcxCurrencyEdit;
    EdConteudoData: TcxDateEdit;
    TaShCadastro: TcxTabSheet;
    TaShRelatorio: TcxTabSheet;
    DBGrConsulta: TcxGrid;
    DBGrConsultaDBTaVi: TcxGridDBTableView;
    DBGrConsultaLe: TcxGridLevel;
    ClDaConsulta: TClientDataSet;
    DaSoConsulta: TDataSource;
    BuProcessar: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    SpBuFinal: TSpeedButton;
    SpBuMeio: TSpeedButton;
    SpBuInicio: TSpeedButton;
    SpBuExato: TSpeedButton;
    RzToolbar1: TRzToolbar;
    BuLocalizar: TRzToolButton;
    BuPrimeiro: TRzToolButton;
    BuVoltar: TRzToolButton;
    BuUltimo: TRzToolButton;
    BuProximo: TRzToolButton;
    BuNovo: TRzToolButton;
    BuSalvar: TRzToolButton;
    BuCancelar: TRzToolButton;
    BuExcluir: TRzToolButton;
    BuImprimir: TRzToolButton;
    BuAlterar: TRzToolButton;
    RzBitBtn2: TRzBitBtn;
    CiDaCadastro: TClientDataSet;
    DaSoCadastro: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BuSalvarClick(Sender: TObject);
    procedure BuCancelarClick(Sender: TObject);
    procedure BuPrimeiroClick(Sender: TObject);
    procedure BuNovoClick(Sender: TObject);
    procedure BuAlterarClick(Sender: TObject);
    procedure BuExcluirClick(Sender: TObject);
    procedure DaSoCadastroDataChange(Sender: TObject; Field: TField);
    procedure BuProcessarClick(Sender: TObject);
    procedure CoBoCamposPropertiesChange(Sender: TObject);
    procedure EdConteudoNumPropertiesChange(Sender: TObject);
    procedure EdConteudoDataPropertiesChange(Sender: TObject);
    procedure EdConteudoTextoPropertiesChange(Sender: TObject);
    procedure DBGrConsultaDBTaViDblClick(Sender: TObject);
    procedure BuSairClick(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure BuVoltarClick(Sender: TObject);
    procedure BuProximoClick(Sender: TObject);
    procedure BuUltimoClick(Sender: TObject);
    procedure CiDaCadastroAfterPost(DataSet: TDataSet);
    procedure TaShCadastroEnter(Sender: TObject);
    procedure CiDaCadastroBeforePost(DataSet: TDataSet);
    procedure BuLocalizarClick(Sender: TObject);
    procedure PaCoPadraoChange(Sender: TObject);
    procedure EdConteudoDataKeyPress(Sender: TObject; var Key: Char);
    procedure EdConteudoNumKeyPress(Sender: TObject; var Key: Char);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure EdConteudoTextoKeyPress(Sender: TObject; var Key: Char);

 private
    { Private declarations }
    CiDaCampos      : TClientDataSet;


    sTabela         : String;   // --> Variável para receber o nome da tabela
    sCamposSelect   : String;   // --> Variável para receber os campos para o Select
    sCampoPesquisa  : String;   // --> Variável para receber o campo para fazer o Select e abrir o Cadastro
    sConteudoPesquisa:String;
    sOrdem          : String;   // --> Variável para receber os campos para ordenar a Consulta
    sFiltroPadrao   : String;   // --> Variável para receber um filtro padrão
    sSql            : String;   // --> Variavel para consultas gerais
    sCondicaoPesquisa  :String; // -->var




    Procedure MontaCamposPesquisa();   // --> Procedure para Montar os campos no ComBoBox
    Procedure MontaCamposSelect();    //  --> Procedure para Montar os campos do Select

    Procedure AbrirCadastro();
    Procedure AbrirConsulta();


    //Pesquisa
    Procedure PrepararPesquisa();     //  -->Procedure para Preparar a Pesquisa
    Procedure AbrirPesquisa();        //  -->Procedure para Preparar a Pesquisa
    Procedure PrepararCondicaoPesquisa();


    Procedure MensagemSalvar();
    Procedure ApplyUpdatesCadastro();

  public

    { Public declarations }
  published
    property Tabela           : String  read sTabela            write sTabela;
    property CamposSelect     : String  read sCamposSelect      write sCamposSelect;
    property CampoPesquisa    : String  read sCampoPesquisa     write sCampoPesquisa;
    property ConteudoPesquisa : String  read sConteudoPesquisa  write sConteudoPesquisa;
    property Ordem            : String  read sOrdem             write sOrdem;
    property FiltroPadrao     : String  read sFiltroPadrao      write sFiltroPadrao;
    property CondicaoPesquisa : String  read sCondicaoPesquisa  write sCondicaoPesquisa;

  end;

var
  FoCadastroPadrao: TFoCadastroPadrao;

implementation

uses UnDaMoBio, UnGeral, UnFoMsgPadrao, StrUtils;

{$R *.dfm}

procedure TFoCadastroPadrao.FormShow(Sender: TObject);
begin

  Aguarde('Carregando Formulário');
  Tabela := Trim(Tabela);
  TaShCadastro.TabVisible  := False;
  TaShConsulta.TabVisible  := False;
  TaShRelatorio.TabVisible := False;


  MontaCamposPesquisa();
  MontaCamposSelect();

  AbrirConsulta();
  FimAguarde();
end;

procedure TFoCadastroPadrao.MontaCamposPesquisa;
begin

  //CRIANDO UM CLIENTE DATASET
   IF CiDaCampos = Nil Then
    CiDaCampos := TClientDataSet.Create(Self)
  ;

  //CONFIGURANDO O CLIENT DATASET
  CiDaCampos.RemoteServer := DaMoBio.DCOMConnection;
  CiDaCampos.ProviderName := 'DaSePrGeral';


  //SELECIONANDO OS CAMPOS PERTENCENTES A TABELA
  sSql:='';
  sSql:= sSql +  ' SELECT * FROM TABELAS_CAMPOS'                                        ;
  sSql:= sSql +  ' WHERE TABELAS_CAMPOS.TABE_ID = '                                     ;
  sSql:= sSql +  ' ( SELECT TABELAS.TABE_ID FROM TABELAS'                               ;
  sSql:= sSql +  '    WHERE UPPER(TABELAS.TABE_TABELA) = :TABELA )'                     ;
  sSql:= sSql +  '   AND TABELAS_CAMPOS.TACA_EXIBIR_PESQUISA = :TACA_EXIBIR_PESQUISA'   ;

  CiDaCampos.Close;
  CiDaCampos.CommandText:=sSql;
  CiDaCampos.Params.ParamByName('TABELA'              ).AsString := AnsiUpperCase( sTabela );
  CiDaCampos.Params.ParamByName('TACA_EXIBIR_PESQUISA').AsString := 'S';
  CiDaCampos.Open;
  CiDaCampos.First;


  //ADICIONANDO OS CAMPOS DA TABELA NO COMBO BOX
  While Not CiDaCampos.Eof Do
    Begin
      CoBoCampos.Properties.Items.Add(Trim(CiDaCampos.FieldByName('TACA_DESC').AsString));
      CiDaCampos.Next;
    End
  ;
 
end;

procedure TFoCadastroPadrao.BuSalvarClick(Sender: TObject);
begin

  Aguarde('Salvando Dados');
  FimAguarde();
  CiDaCadastro.Post;
  ApplyUpdatesCadastro;
  AbrirConsulta();

end;

procedure TFoCadastroPadrao.BuCancelarClick(Sender: TObject);
begin
  CiDaCadastro.Close;
  CiDaCadastro.Open;
  AbrirConsulta();
end;

procedure TFoCadastroPadrao.BuPrimeiroClick(Sender: TObject);
begin
  // Primeiro Registro
  IF DaSoConsulta.DataSet <> Nil Then
    Begin
      DaSoConsulta.DataSet.First;
      IF PaCoPadrao.ActivePageIndex = 1 Then
        AbrirCadastro
      ;
    End
  ;
end;

procedure TFoCadastroPadrao.BuNovoClick(Sender: TObject);
Var nColuna,nParam:Integer;
begin
  PaCoPadrao.ActivePageIndex := 1;

  //LIMPANDO OS PARAMETROS
  For nParam := 0 To CiDaCadastro.Params.Count-1 Do
    Begin
         CiDaCadastro.Params[nParam].Clear;
          Case CiDaCadastro.Params[nParam].DataType Of
            ftString, ftFixedChar, ftWideString:        CiDaCadastro.Params[nParam].Value := '';
            ftSmallint, ftInteger, ftWord, ftLargeint:  CiDaCadastro.Params[nParam].Value := -1;
            ftBoolean:                                  CiDaCadastro.Params[nParam].Value := False;
            ftFloat, ftCurrency, ftBCD, ftFMTBcd:       CiDaCadastro.Params[nParam].Value := -1;
            ftDate, ftTime, ftDateTime,  ftTimeStamp:   CiDaCadastro.Params[nParam].Value := StrToDate( '01/01/1800' );
           End;
    End
  ;


  CiDaCadastro.Close;
  CiDaCadastro.Open;
  CiDaCadastro.Append;
end;

procedure TFoCadastroPadrao.BuAlterarClick(Sender: TObject);
begin
CiDaCadastro.Edit;
end;

procedure TFoCadastroPadrao.BuExcluirClick(Sender: TObject);
begin

 IF Not(MsgConfirma('Deseja Realmente excluir este registro?'))Then
   Exit
 ;

 Aguarde('Excluindo Registro');
 CiDaCadastro.Delete;
 ApplyUpdatesCadastro;
  

 ClDaConsulta.Close;
 ClDaConsulta.Open;

 AbrirConsulta();
 FimAguarde();

 MsgInfo('Registro Excluído com sucesso!');
end;

procedure TFoCadastroPadrao.DaSoCadastroDataChange(Sender: TObject;  Field: TField);
begin

    IF   PaCoPadrao.ActivePageIndex in [1] Then
      Begin
        BuNovo.Enabled     := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuSalvar.Enabled   := DaSoCadastro.DataSet.State in [ dsEdit, dsInsert ];
        BuCancelar.Enabled := DaSoCadastro.DataSet.State in [ dsEdit, dsInsert ];
        BuExcluir.Enabled  := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuAlterar.Enabled  := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuPrimeiro.Enabled := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuVoltar.Enabled   := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuProximo.Enabled  := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuUltimo.Enabled   := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuLocalizar.Enabled := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
      End
    ;


  IF   PaCoPadrao.ActivePageIndex in [0] Then
    Begin
      BuNovo.Enabled     := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
      BuSalvar.Enabled   := False;
      BuCancelar.Enabled := False;
      BuExcluir.Enabled  := False;
      BuAlterar.Enabled  := False;
      BuPrimeiro.Enabled := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
      BuVoltar.Enabled   := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
      BuProximo.Enabled  := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
      BuUltimo.Enabled   := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];

    End
  ;


end;

procedure TFoCadastroPadrao.MontaCamposSelect;
var
    CiDaGeral :TClientDataSet;
Begin


  Try


    //CRIANDO O CLIENT DATASET
    CiDaGeral := TClientDataSet.Create(NIL);
    CiDaGeral.RemoteServer := DaMoBio.DCOMConnection;
    CiDaGeral.ProviderName := 'DaSePrGeral';



    //SELECIONANDO OS CAMPOS PERTENCENTES A TABELA
    sSql:='';
    sSql:= sSql +  ' SELECT * FROM TABELAS_CAMPOS'                                      ;
    sSql:= sSql +  ' WHERE TABELAS_CAMPOS.TABE_ID = '                                   ;
    sSql:= sSql +  ' ( SELECT TABELAS.TABE_ID FROM TABELAS'                             ;
    sSql:= sSql +  '    WHERE UPPER(TABELAS.TABE_TABELA) = :TABELA )'                   ;
    sSql:= sSql +  '   AND TABELAS_CAMPOS.TACA_EXIBIR_SELECT = :TACA_EXIBIR_SELECT'     ;

    CiDaGeral.Close;
    CiDaGeral.CommandText:=sSql;
    CiDaGeral.Params.ParamByName('TABELA'             ).AsString := AnsiUpperCase( sTabela );
    CiDaGeral.Params.ParamByName('TACA_EXIBIR_SELECT'  ).AsString := 'S';
    CiDaGeral.Open;
    CiDaGeral.First;

    CamposSelect := '';
    CamposSelect :=  CiDaGeral.FieldByname('TACA_CAMPO').AsString + ' ';
    CiDaGeral.Next;

    //ADICIONANDO OS CAMPOS DA TABELA NO COMBO BOX
    While Not CiDaGeral.Eof Do
      Begin
        CamposSelect :=  CamposSelect + ',';
        CamposSelect :=  CamposSelect + CiDaGeral.FieldByname('TACA_CAMPO').AsString + ' ';
        CiDaGeral.Next;
      End
    ;

     CiDaGeral.Close;

  Finally
   FreeAndNil(CiDaGeral);
  End;

end;

procedure TFoCadastroPadrao.AbrirPesquisa;
begin
  ClDaConsulta.Close;
  ClDaConsulta.CommandText := sSql;
  ClDaConsulta.Open;

  IF ClDaConsulta.IsEmpty Then
    ShowMessage('Não foram encontrados dados para esta pesquisa!')
  ;


end;

procedure TFoCadastroPadrao.PrepararPesquisa;

begin



   sSql := '';
   sSql :=  sSql + ' SELECT '   +  CamposSelect ;
   sSql :=  sSql + ' FROM '     +  Tabela ;
   sSql :=  sSql + ' WHERE '    +  CondicaoPesquisa;
   sSql :=  sSql +  FiltroPadrao;
   sSql :=  sSql +  Ordem;


end;

procedure TFoCadastroPadrao.BuProcessarClick(Sender: TObject);
begin

  Aguarde('Filtrando Dados');
  PrepararCondicaoPesquisa();
  PrepararPesquisa();
  AbrirPesquisa();
  FimAguarde();
end;

procedure TFoCadastroPadrao.CoBoCamposPropertiesChange(Sender: TObject);
var
  sTipoCampo:String;
begin
  CiDaCampos.First;
  CiDaCampos.RecNo := CoBoCampos.ItemIndex + 1 ;
  sTipoCampo := CiDaCampos.FieldByName('TACA_TIPO').AsString;

  EdConteudoData.Visible  := (Trim(sTipoCampo) = 'D');
  EdConteudoNum.Visible   := (Trim(sTipoCampo) = 'I');
  EdConteudoTexto.Visible := (Trim(sTipoCampo) = 'S');
end;

procedure TFoCadastroPadrao.EdConteudoNumPropertiesChange(Sender: TObject);
begin
  BuProcessar.Enabled := (VerificarNumero(EdConteudoNum.Text));
end;

procedure TFoCadastroPadrao.EdConteudoDataPropertiesChange(
  Sender: TObject);
begin
BuProcessar.Enabled := (EdConteudoData.Text <> '');
end;

procedure TFoCadastroPadrao.EdConteudoTextoPropertiesChange(
  Sender: TObject);
begin
BuProcessar.Enabled := (EdConteudoTexto.Text <> '');
end;

procedure TFoCadastroPadrao.PrepararCondicaoPesquisa;
var
  sTipoCampo:String;
  nModoPesquisa:Integer;
begin


  { ITEM INDEX DO TIPO DA PESQUISA
  0 --> Exata
  1 --> Meio
  2 --> inicio
  3 --> Final  }

  nModoPesquisa := 999;

  IF SpBuExato.Down Then
   nModoPesquisa :=0
  ;

  IF SpBuMeio.Down Then
   nModoPesquisa :=1
  ;

  IF SpBuInicio.Down Then
   nModoPesquisa :=2
  ;

  IF SpBuFinal.Down Then
   nModoPesquisa :=3
  ;


  //POSICIONANDO O CLIENT DATASET DOS CAMPOS E ALIMENTANDO AS VARIAVEIS DA PESQUISA
  CiDaCampos.First;
  CiDaCampos.RecNo :=  CoBoCampos.ItemIndex + 1 ;
  sTipoCampo       :=  CiDaCampos.FieldByName('TACA_TIPO' ).AsString;
  CampoPesquisa    :=  CiDaCampos.FieldByName('TACA_CAMPO').AsString;
  sTipoCampo       := Trim(sTipoCampo);


   //TIPO DE PESQUISA EM DATA
   IF sTipoCampo = 'D' Then
     Begin
        ConteudoPesquisa  :=  FormatDateTime( 'mm/dd/yyyy', EdConteudoData.EditValue )  ;
        CASE nModoPesquisa OF
          0: CondicaoPesquisa    := CampoPesquisa + ' =  ' +  QuotedStr( ConteudoPesquisa ) ;
          1: CondicaoPesquisa    := CampoPesquisa + ' =  ' +  QuotedStr( ConteudoPesquisa ) ;
          2: CondicaoPesquisa    := CampoPesquisa + ' >= ' +  QuotedStr( ConteudoPesquisa ) ;
          3: CondicaoPesquisa    := CampoPesquisa + ' <= ' +  QuotedStr( ConteudoPesquisa ) ;
        End;
      End
   ;


   //TIPO DE PESQUISA EM TEXTO
   IF sTipoCampo = 'S' Then
     Begin
       sConteudoPesquisa :=  EdConteudoTexto.EditValue;
       CASE nModoPesquisa OF
         0: CondicaoPesquisa    := 'UPPER (' + CampoPesquisa + ' ) = '     + QuotedStr(       ConteudoPesquisa );
         1: CondicaoPesquisa    := 'UPPER (' + CampoPesquisa + ' ) LIKE  ' + QuotedStr( '%' + ConteudoPesquisa + '%'  );
         2: CondicaoPesquisa    := 'UPPER (' + CampoPesquisa + ' ) LIKE  ' + QuotedStr(       ConteudoPesquisa + '%'  );
         3: CondicaoPesquisa    := 'UPPER (' + CampoPesquisa + ' ) LIKE  ' + QuotedStr( '%' + ConteudoPesquisa        );
       End;
     End
   ;


   //TIPO DE PESQUISA EM NUMERO
   IF sTipoCampo = 'I' Then
     Begin
       sConteudoPesquisa :=  EdConteudoNum.EditValue;
       CASE nModoPesquisa OF
         0: CondicaoPesquisa    := CampoPesquisa + ' =  '  + ConteudoPesquisa;
         1: CondicaoPesquisa    := CampoPesquisa + ' =  '  + ConteudoPesquisa;
         2: CondicaoPesquisa    := CampoPesquisa + ' >= '  + ConteudoPesquisa;
         3: CondicaoPesquisa    := CampoPesquisa + ' <= '  + ConteudoPesquisa;
       End;
     End
   ;


end;

procedure TFoCadastroPadrao.DBGrConsultaDBTaViDblClick(Sender: TObject);
begin
   AbrirCadastro();
end;

procedure TFoCadastroPadrao.AbrirCadastro;
Var nColuna,nParam:Integer;
begin

  PaCoPadrao.ActivePageIndex := 1;
  For nParam := 0 To CiDaCadastro.Params.Count-1 Do
    Begin
      For nColuna := 0 To DBGrConsultaDBTaVi.ItemCount-1 Do
        Begin
          // Passando os Parametros
          IF UpperCase(DBGrConsultaDBTaVi.Columns[nColuna].DataBinding.FieldName) = UpperCase(CiDaCadastro.Params[nParam].Name)  Then
            CiDaCadastro.Params[nParam].Value := DBGrConsultaDBTaVi.Columns[nColuna].EditValue
          ;
        End
      ;
  End;
  CiDaCadastro.Close;
  CiDaCadastro.Open;
  PaCoPadrao.ActivePageIndex := 1;
end;

procedure TFoCadastroPadrao.BuSairClick(Sender: TObject);
begin
Self.Close;
end;

procedure TFoCadastroPadrao.dxBarButton4Click(Sender: TObject);
begin


  ClDaConsulta.Close;
  ClDaConsulta.Open;

  CoBoCampos.Clear;
  CoBoCampos.ClearSelection;


  // Limpando o Conteúdo
  EdConteudoTexto.Clear;
  EdConteudoNum.Clear;
  EdConteudoData.Clear;

  AbrirConsulta();
end;

procedure TFoCadastroPadrao.BuVoltarClick(Sender: TObject);
begin
  // Registro Anterior
  IF DaSoConsulta.DataSet <> Nil Then
    Begin
      DaSoConsulta.DataSet.Prior;
      IF PaCoPadrao.ActivePageIndex = 1 Then
        AbrirCadastro
      ;
    End
  ;
end;

procedure TFoCadastroPadrao.BuProximoClick(Sender: TObject);
begin
  // Próximo Registro
  IF DaSoConsulta.DataSet <> Nil Then
    Begin
      DaSoConsulta.DataSet.Next;
      IF PaCoPadrao.ActivePageIndex = 1 Then
        AbrirCadastro
      ;
    End
  ;
end;

procedure TFoCadastroPadrao.BuUltimoClick(Sender: TObject);
var nReg: Integer;
begin
  // ultimo Registro
  IF DaSoConsulta.DataSet <> Nil Then
    Begin
      DaSoConsulta.DataSet.last;
      IF PaCoPadrao.ActivePageIndex = 1 Then
        AbrirCadastro
      ;
    End
  ;
end;




procedure TFoCadastroPadrao.CiDaCadastroAfterPost(DataSet: TDataSet);

Begin
  MensagemSalvar();
end;

procedure TFoCadastroPadrao.TaShCadastroEnter(Sender: TObject);
begin
    IF   PaCoPadrao.ActivePageIndex in [1] Then
      Begin
        BuNovo.Enabled     := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuSalvar.Enabled   := DaSoCadastro.DataSet.State in [ dsEdit, dsInsert ];
        BuCancelar.Enabled := DaSoCadastro.DataSet.State in [ dsEdit, dsInsert ];
        BuExcluir.Enabled  := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuAlterar.Enabled  := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuPrimeiro.Enabled := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuVoltar.Enabled   := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuProximo.Enabled  := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
        BuUltimo.Enabled   := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
      End
    ;



end;




procedure TFoCadastroPadrao.AbrirConsulta;
begin
      IF ClDaConsulta.CommandText <> '' Then
        Begin
          ClDaConsulta.Close;
          ClDaConsulta.Open;
        End
      ;

      PaCoPadrao.ActivePageIndex := 0;

      BuNovo.Enabled     := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
      BuSalvar.Enabled   := False;
      BuCancelar.Enabled := False;
      BuExcluir.Enabled  := False;
      BuAlterar.Enabled  := False;
      BuPrimeiro.Enabled := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
      BuVoltar.Enabled   := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
      BuProximo.Enabled  := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
      BuUltimo.Enabled   := DaSoCadastro.DataSet.State in [ dsBrowse, dsInactive ];
end;










procedure TFoCadastroPadrao.MensagemSalvar;
var sTipo:String;
    sSilaba:String;
    sPreposicao:String;
    sNomeTabela:String;
begin


  sSilaba:= LowerCase(RightStr(Tabela,1));
  sNomeTabela := UpperCase(LeftStr(Tabela,1)) +  LowerCase(RightStr(tabela,Length(tabela) - 1));



  IF  (sSilaba = 's') Then
    Begin
       sSilaba :=  LowerCase(RightStr(Tabela,2));
       sSilaba :=  LowerCase(LeftStr(sSilaba,1));
       sNomeTabela := (LeftStr(sNomeTabela,Length(sNomeTabela) - 1));
    End
  ;


  IF (sSilaba = 'a')  Then
    sTipo:= 'a'
  ;


   IF (sSilaba = 'o')  or (sSilaba = 'e') or (sSilaba = 'u')Then
    sTipo:= 'o'
  ;

  IF (sSilaba = 'a') Then
   sPreposicao := ' desta '
  Else
   sPreposicao := ' deste '

  ;

  MsgInfo('As informações' + sPreposicao + sNomeTabela + ' foram salv' + sSilaba +'s ' + 'com sucesso!' );
end;


procedure TFoCadastroPadrao.CiDaCadastroBeforePost(DataSet: TDataSet);
begin
  ValidarCampos(CiDaCadastro,Tabela);
  
end;




procedure TFoCadastroPadrao.BuLocalizarClick(Sender: TObject);
begin

  ClDaConsulta.Close;
  ClDaConsulta.Open;

  CoBoCampos.Clear;
  CoBoCampos.ClearSelection;


  // Limpando o Conteúdo
  EdConteudoTexto.Clear;
  EdConteudoNum.Clear;
  EdConteudoData.Clear;

  AbrirConsulta();
end;






procedure TFoCadastroPadrao.PaCoPadraoChange(Sender: TObject);
begin
    BuLocalizar.Enabled := (PacoPadrao.ActivePageIndex <> 0);
end;




procedure TFoCadastroPadrao.EdConteudoDataKeyPress(Sender: TObject;  var Key: Char);
begin
   IF (Key = #13)and (BuProcessar.Enabled)Then
     BuProcessarClick(self)
   ;
end;

procedure TFoCadastroPadrao.EdConteudoNumKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF (Key = #13)and (BuProcessar.Enabled)Then
     BuProcessarClick(self)
   ;
end;

procedure TFoCadastroPadrao.RzBitBtn2Click(Sender: TObject);
begin

  Aguarde('Filtrando Dados');
  sSql := '';
  sSql :=  sSql + ' SELECT '   +  CamposSelect ;
  sSql :=  sSql + ' FROM '     +  Tabela + ' ';
  sSql :=  sSql +  Ordem;

  AbrirPesquisa();
  FimAguarde();
end;

procedure TFoCadastroPadrao.EdConteudoTextoKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF (Key = #13)and (BuProcessar.Enabled)Then
     BuProcessarClick(self)
   ;
end;


procedure TFoCadastroPadrao.ApplyUpdatesCadastro;
begin

 //ESTA PROCEDURE EXECUTA O APLY UPDATES DO CLIENT DATASET CADASTRO

 Try
    CiDaCadastro.ApplyUpdates(0);
 Except
    MsgErro('Erro no processo de atualização da tabela: ' + Tabela);
 end;


end;

end.
