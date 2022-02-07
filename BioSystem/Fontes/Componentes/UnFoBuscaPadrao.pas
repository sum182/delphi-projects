unit UnFoBuscaPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, cxTextEdit, cxContainer,
  cxMaskEdit, cxDropDownEdit, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, RzButton, cxCalendar, cxCurrencyEdit,
  Provider, DBClient, FMTBcd, SqlExpr, ImgList, RzPanel ;

type
  TFoBuscaPadrao = class(TForm)
    GrTaViBusca: TcxGridDBTableView;
    GrLeBusca: TcxGridLevel;
    GrBusca: TcxGrid;
    Panel1: TPanel;
    CoBoCampos: TcxComboBox;
    Label1: TLabel;
    Label2: TLabel;
    BuProcurar: TRzBitBtn;
    EdText: TcxTextEdit;
    EdData: TcxDateEdit;
    ClDaSeConsulta: TClientDataSet;
    DaSePrConsulta: TDataSetProvider;
    DaSoConsulta: TDataSource;
    ClDaSeCampos: TClientDataSet;
    DaSePrCampos: TDataSetProvider;
    SQLGeral: TSQLQuery;
    EdNum: TcxTextEdit;
    ImageList1: TImageList;
    RzToolbar1: TRzToolbar;
    BuOk: TRzToolButton;
    BuCancelar: TRzToolButton;
    RzSpacer1: TRzSpacer;
    procedure CoBoCamposPropertiesChange(Sender: TObject);
    procedure GrTaViBuscaSelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure BuProcurarClick(Sender: TObject);
    Procedure SetResultado(Sender: TObject);
    procedure GrTaViBuscaCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BuCancelarClick(Sender: TObject);
    Procedure ExecConsulta(Sender : TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    vResultado : Variant;
    nPosicao : Byte;
    nQtdePacotes : SmallInt;
    cSelect : String;
    bCancelou : Boolean;
    cTitulo : String;
    Function GetWhere():String;
    Function GetParametro():Variant;
    Procedure SetNameColunas();


  public



    { Public declarations }
    Procedure SetCampos(cTabela : String);
    Procedure SetSelect(cSelect : String);
    Procedure SetConexao(cConection : TSQLConnection);
    Procedure SetPacotes(nQtde : SmallInt);
    Procedure SetPosicao(nPosicao : Byte);
    Procedure SetRemoteServer(cRemoteServer : TCustomRemoteServer);
    Procedure SetProvider(cProvider : String);

    property Resultado : Variant
             read vResultado
             write vResultado;

    property Posicao : Byte
             read nPosicao
             write nPosicao;

    property QtdePacotes : SmallInt
             read nQtdePacotes
             write nQtdePacotes;

    property Select : String
             read cSelect
             write cSelect;

    Property Cancelou : Boolean
             read bCancelou
             write bCancelou
             default False;

    Property Titulo : String
             read cTitulo
             write cTitulo;


  Protected


  end;

var
  FoBuscaPadrao: TFoBuscaPadrao;

implementation


{$R *.dfm}


    // setando o valor dos campos.
    procedure TFoBuscaPadrao.CoBoCamposPropertiesChange(Sender: TObject);
      var
       sTipoCampo : String;
      begin

        ClDaSeCampos.First;
        ClDaSeCampos.RecNo := CoBoCampos.ItemIndex + 1 ;
        sTipoCampo := ClDaSeCampos.FieldByName('TACA_TIPO').AsString;

        EdData.Visible  := (Trim(sTipoCampo) = 'D');
        EdNum.Visible   := (Trim(sTipoCampo) = 'I');
        EdText.Visible := (Trim(sTipoCampo) = 'S');

      end;




    // pegando os campos na tabela e jogando no combo box
    procedure TFoBuscaPadrao.SetCampos(cTabela: String);
      begin
        ClDaSeCampos.Close;
        ClDaSeCampos.CommandText:= 'SELECT * FROM TABELAS'+
                                   ' INNER JOIN TABELAS_CAMPOS ON(TABELAS_CAMPOS.TABE_ID = TABELAS.TABE_ID) '+
                                   ' WHERE UPPER(TABELAS.TABE_TABELA) = UPPER(:TABELA) ';
        ClDaSeCampos.Params.ParamByName('TABELA').Value := cTabela;
        ClDaSeCampos.Open;

        While not( ClDaSeCampos.Eof ) do
          Begin
            CoBoCampos.Properties.Items.Add(ClDaSeCampos.FieldValues['TACA_DESC']);
            ClDaSeCampos.Next;
          end;

      end;



    // setando a conexao com o banco de dados. DBXPress
    procedure TFoBuscaPadrao.SetConexao(cConection: TSQlConnection);
      begin

         SqlGeral.SQLConnection := cConection;

      end;



    // setando o select
    procedure TFoBuscaPadrao.SetSelect(cSelect: String);
      begin

        Select := cSelect;

      end;



    // abrindo a consulta e criando os campos da grid.
    procedure TFoBuscaPadrao.BuProcurarClick(Sender: TObject);
        var
          cWhere : String;
      begin
         cWhere := GetWhere;
         ClDaSeConsulta.Close;

         ClDaSeConsulta.CommandText := Select + cWhere;
         if (cWhere <> '') then
           ClDaSeConsulta.Params.ParamByName('PARAMETRO').Value := GetParametro()
         ;

         ClDaSeConsulta.Open;

         GrTaViBusca.DataController.DataSource := DaSoConsulta;

         IF GrTaViBusca.ItemCount = 0 Then
           GrTaViBusca.DataController.CreateAllItems
         ;

         // setando o nome das colulas.
         SetNameColunas();


      end;




    //setando o resultado.
    procedure TFoBuscaPadrao.SetResultado(Sender: TObject);
      begin

         Resultado := ClDaSeConsulta.Fields[Posicao].Value;
         Close;

      end;



    //setando o resultado no duplo clique da grid.
    procedure TFoBuscaPadrao.GrTaViBuscaCellDblClick(

      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    begin
      SetResultado(Self);
    end;



    function TFoBuscaPadrao.GetWhere: String;
      begin

          if ( CoBoCampos.ItemIndex = -1 ) then
            Result := ''
          else
            begin
              ClDaSeCampos.First;
              ClDaSeCampos.RecNo := CoBoCampos.ItemIndex + 1;

              if (Trim( ClDaSeCampos.FieldValues['TACA_TIPO'] ) = 'S') then
                Result := ' WHERE '+ClDaSeCampos.FieldValues['TACA_CAMPO']+ ' LIKE :PARAMETRO || '+ QuotedStr('%')
              else
                Result := ' WHERE '+ClDaSeCampos.FieldValues['TACA_CAMPO']+ ' = :PARAMETRO'
              ;
            end
          ;



      end;

procedure TFoBuscaPadrao.GrTaViBuscaSelectionChanged(
  Sender: TcxCustomGridTableView);
begin

end;



    // pegando o valor do parametro.
    function TFoBuscaPadrao.GetParametro: Variant;
      begin

        if ( EdData.Visible ) then
          Result := EdData.Date
        else if ( EdNum.Visible ) then
          Result := EdNum.Text
        else if ( EdText.Visible ) then
          Result := EdText.Text
        ;

      end;



    // setando a quantidade de pacotes.
    procedure TFoBuscaPadrao.SetPacotes(nQtde: SmallInt);
      begin

         ClDaSeConsulta.PacketRecords := nQtde;

      end;



    // setando a posicao do campo.
    procedure TFoBuscaPadrao.SetPosicao(nPosicao: Byte);
      begin

        Posicao := nPosicao;

      end;



    // cancelando a pesquisa
    procedure TFoBuscaPadrao.BuCancelarClick(Sender: TObject);
        begin

          Resultado := '';
          Cancelou := True;
          Close;

        end;



    // executando a busca.
    procedure TFoBuscaPadrao.ExecConsulta(Sender: TObject ; var Key: Char);
      begin

        if ( Key = #13 ) then
          BuProcurar.Click
        ;

      end;



    // setando o nome das colunas
    procedure TFoBuscaPadrao.SetNameColunas;
        var
          x : Byte;
      begin
        ClDaSeCampos.First;
        While not(ClDaSeCampos.Eof) do
          begin
            For x := 0 to GrTaViBusca.ColumnCount -1 do
              if ( GrTaViBusca.Columns[x].DataBinding.fieldName = ClDaSeCampos.FieldValues['TACA_CAMPO'] ) then
                 GrTaViBusca.Columns[x].Caption := ClDaSeCampos.FieldValues['TACA_DESC']
              ;
            ClDaSeCampos.Next;
          end

      end;



    // show do formulário.
    procedure TFoBuscaPadrao.FormShow(Sender: TObject);
    begin

      if ( Titulo <> '' ) then
        Caption := Titulo
      else
        Caption := 'Tela de Busca'
      ;

    end;

    procedure TFoBuscaPadrao.FormClose(Sender: TObject;
      var Action: TCloseAction);
      begin

        if ( Resultado = '' ) then
          Cancelou := True
        ;

        ClDaSeConsulta.Close;
        ClDaSeCampos.Close;

      end;



   // setando o servidor remoto.
   procedure TFoBuscaPadrao.SetRemoteServer(
      cRemoteServer: TCustomRemoteServer);
      begin
         ClDaSeCampos.RemoteServer := cRemoteServer;
         ClDaSeConsulta.RemoteServer := cRemoteServer;
      end;


  // setando o provider.
  procedure TFoBuscaPadrao.SetProvider(cProvider: String);
    begin
      ClDaSeCampos.ProviderName := cProvider;
      ClDaSeConsulta.ProviderName := cProvider;
    end;

end.
