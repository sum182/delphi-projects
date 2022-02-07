{*******************************************************}
{                                                       }
{                 Sum182 Component Library              }
{                                                       }
{  Copyright (c) 2001-2007 Sum182 Software Corporation  }
{                                                       }
{                 Tel.:  55 11 8214-7819                }
{                                                       }
{                 Email: sum182@gmail.com               }
{*******************************************************}

unit uCadISO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, smCadPadrao, DBActns, ActnList, DB, DBClient,
  Grids, DBGrids, ComCtrls, StdCtrls, Buttons, ToolWin, smMensagens,
  smGeral, ADoDB, ExtCtrls, SqlExpr, FMTBcd, ImgList, smDBGrid, smDB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, IBODataset, smForm, cxPC,
  cxContainer, cxGroupBox;
type
  TfrmCadISO = class(TForm)
    ToBaCadastro: TToolBar;
    btnLocalizar: TToolButton;
    btnNovo: TToolButton;
    btnSalvar: TToolButton;
    btnCancelar: TToolButton;
    btnAlterar: TToolButton;
    btnExcluir: TToolButton;
    btnImprimir: TToolButton;
    btnLocalizarTodosRegistros: TToolButton;
    smCadPadrao: TsmCadPadrao;
    AcLi: TActionList;
    AcLocalizar: TAction;
    AcFirst: TDataSetFirst;
    AcPrior: TDataSetPrior;
    AcNext: TDataSetNext;
    AcLast: TDataSetLast;
    AcApplyUpdate: TAction;
    AcDelete: TAction;
    AcImprimir: TAction;
    AcTodosRegistros: TAction;
    AcNovo: TAction;
    AcEdit: TAction;
    AcCancelar: TAction;
    ToolButton1: TToolButton;
    edFocus: TEdit;
    dsCad: TDataSource;
    imgDisabled: TImageList;
    imgEnabled: TImageList;
    dsConsulta: TDataSource;
    quConsulta: TIBOQuery;
    quCad: TIBOQuery;
    PaCoPadrao: TcxPageControl;
    TaShCadastro: TcxTabSheet;
    TaShConsulta: TcxTabSheet;
    grGrid: TcxGrid;
    grPesquisa: TcxGridDBTableView;
    grGridLevel1: TcxGridLevel;
    TaShRelatorio: TcxTabSheet;
    stbrConsulta: TStatusBar;
    grbxPesquisa: TcxGroupBox;
    LaConteudo: TLabel;
    Label1: TLabel;
    LaModoPesquisa: TLabel;
    LaDataFinal: TLabel;
    LaDataInicial: TLabel;
    EdConteudoReal: TEdit;
    EdConteudoDataInicial: TDateTimePicker;
    EdConteudoDataFinal: TDateTimePicker;
    CoBoCampos: TComboBox;
    EdConteudoNum: TEdit;
    BuProcessar: TBitBtn;
    EdConteudoTexto: TEdit;
    CoBoModoPesquisa: TComboBox;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure quCadAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuImprimirClick(Sender: TObject);
    procedure CoBoModoPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure grPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure grPesquisaDblClick(Sender: TObject);
    procedure AcNextExecute(Sender: TObject);
    procedure AcLastExecute(Sender: TObject);
    procedure AcPriorExecute(Sender: TObject);
    procedure AcFirstExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AcTodosRegistrosExecute(Sender: TObject);
    procedure EdConteudoTextoChange(Sender: TObject);
    procedure EdConteudoRealChange(Sender: TObject);
    procedure EdConteudoDataInicialChange(Sender: TObject);
    procedure EdConteudoNumChange(Sender: TObject);
    procedure EdConteudoTextoKeyPress(Sender: TObject; var Key: Char);
    procedure EdConteudoRealKeyPress(Sender: TObject; var Key: Char);
    procedure EdConteudoDataInicialKeyPress(Sender: TObject; var Key: Char);
    procedure EdConteudoNumKeyPress(Sender: TObject; var Key: Char);
    procedure BuProcessarClick(Sender: TObject);
    procedure CoBoCamposChange(Sender: TObject);
    procedure AcCancelarExecute(Sender: TObject);
    procedure AcEditExecute(Sender: TObject);
    procedure AcNovoExecute(Sender: TObject);
    procedure AcDeleteExecute(Sender: TObject);
    procedure AcApplyUpdateExecute(Sender: TObject);
    procedure AcLocalizarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure GetTable;
    procedure GetcdsCadastro;
    procedure GetDsCadastro;
    procedure SetToolBarDataSource;
    procedure OnEnterPesquisa(Key: Char);
    procedure OnChangeCamposPesquisa(PesquisaInicio: string; const PesquisaFim: string = '');
    procedure SetComponents;
    procedure VerificarClassesDataSet(DataSet: TDataSet);
    function BuscaGetOrderBy:string;
    function BuscaGetCondicoes: string;
    function BuscaGetSql: string;
  public
    function GetForm: TForm;
  protected
    tbCadastro: TDataSet;
    dsCadastro: TDataSource;
    tbTabela: TClientDataSet; //armazena as informacões da tabela
    Tabela: string;
    Joins: string;
    TipoCampoBusca: string;
    CondicaoBusca: string;
    CamposBusca: string;
    ConteudoBusca: string;
//    procedure OpenGeralSql(sql: string);
    procedure ShowTabCadastro; virtual;
    procedure ShowTabRelatorio;
    procedure ShowTabBusca;
    procedure SetBotoes;
    procedure SetToolBarButtonsState(Sender: TObject);
    procedure OpenBuscaSql(sql: string;Condicoes:string = '');
  end;

  //Classe dos Fields da Busca
  TFieldsBusca = class(TObject)
  private
    FForm: TfrmCadISO;
    FieldsGrid: integer;
    procedure ClearObjects;
    procedure SetCombo(Item: Integer);
    procedure SetsqlFields(Item: Integer);
    procedure SetGrid(Item: Integer);

  public
    property Form: TfrmCadISO read FForm;
    procedure SetForm(AForm: TfrmCadISO);
    procedure SetFields();
    function GetField(DisplayName: string): TFieldsBuscaItem;

  end;
var
  frmCadISO: TfrmCadISO;
  FieldsBusca: TFieldsBusca;
  Field: TFieldsBuscaItem;

implementation

uses  uDmConnection, uDmShared;





{$R *.dfm}

{ TfrmCadISO }

procedure TfrmCadISO.AcApplyUpdateExecute(Sender: TObject);
begin
  inherited;
  try
    Wait(self, 'Salvando Informações');
    sleep(520);
    edFocus.SetFocus;
    ValidarCampos(tbCadastro);
    tbCadastro.Post;
    if (smCadPadrao.DataSourceCadastro.DataSet is TClientDataSet) then
      ApplyUpdates((smCadPadrao.DataSourceCadastro.DataSet as TClientDataSet));
    AcLocalizarExecute(self);
  finally
    WaitEnd(self);
  end;
end;

procedure TfrmCadISO.AcCancelarExecute(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crSQLWait;
    tbCadastro.Cancel;
    OpenDataSet(tbCadastro);
    AcLocalizarExecute(self);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmCadISO.AcDeleteExecute(Sender: TObject);
begin
  inherited;
  try
    if not (Msg('Deseja Realmente excluir este registro?', mtAviso, Sim_Nao_Cancelar)) then
      Exit;
    Wait(self, 'Deletando Informações');
    sleep(320);
    tbCadastro.Delete;

    if (smCadPadrao.DataSourceCadastro.DataSet is TClientDataSet) then
      ApplyUpdates((smCadPadrao.DataSourceCadastro.DataSet as TClientDataSet));

    AcLocalizarExecute(self);
  finally
    WaitEnd(self);
  end;
end;

procedure TfrmCadISO.AcEditExecute(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crSQLWait;
    tbCadastro.Edit;
    TaShCadastro.Enabled := True;
    tbCadastro.Fields[0].FocusControl;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmCadISO.AcFirstExecute(Sender: TObject);
begin
  inherited;
  smCadPadrao.DataSourceBusca.DataSet.First;
end;

procedure TfrmCadISO.AcLastExecute(Sender: TObject);
begin
  inherited;
  smCadPadrao.DataSourceBusca.DataSet.Last;
end;

procedure TfrmCadISO.AcLocalizarExecute(Sender: TObject);
begin
  inherited;
  ShowTabBusca;
end;

procedure TfrmCadISO.AcNextExecute(Sender: TObject);
begin
  inherited;
  smCadPadrao.DataSourceBusca.DataSet.Next;
end;

procedure TfrmCadISO.AcNovoExecute(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crSQLWait;
    try
      PaCoPadrao.ActivePageIndex := 1;
      with tbCadastro do
      begin
        OpenDataSet(tbCadastro);
        Append;
        TaShCadastro.Enabled := True;
        tbCadastro.Fields[0].FocusControl;
      end;
    except on E: Exception do
      begin
        Msg('Não foi possível criar um novo registro' + #13 + E.Message, mtErro);
        OpenDataSet(tbCadastro);
        AcLocalizarExecute(self);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmCadISO.AcPriorExecute(Sender: TObject);
begin
  inherited;
  smCadPadrao.DataSourceBusca.DataSet.Prior;
end;

procedure TfrmCadISO.AcTodosRegistrosExecute(Sender: TObject);
begin
  inherited;
  try
    if not (btnLocalizarTodosRegistros.Enabled) or not (TaShConsulta.Visible) then
      Exit;

    if smCadPadrao.BuscaGetAllMsg then
      if not (Msg('Deseja trazer todos os registros desta tabela?' + #13 +
        'Este processo pode ser demorado!', mtAviso, Sim_Nao_Cancelar)) then
        Exit;

    Wait(Self, 'Carregando Informações');
    OpenBuscaSql('SELECT ' + CamposBusca + ' FROM ' + Tabela + Joins + ' ' + ' WHERE 1=1 ')

  finally
    WaitEnd(self);
    grGrid.SetFocus;
  end;
end;

procedure TfrmCadISO.BuImprimirClick(Sender: TObject);
begin
  inherited;
  ShowTabRelatorio;
end;

procedure TfrmCadISO.BuProcessarClick(Sender: TObject);
var
  Field: TFieldsBuscaItem;
  procedure PrepararCondicaoBusca();
  var
    ModoBusca: Integer;
  begin
    { ITEM INDEX DO TIPO DA PESQUISA
    0 --> Exata
    1 --> Meio
    2 --> Inicio
    3 --> Final  }

    Field := (FieldsBusca.GetField(CoBoCampos.Text));

    //Campo da Condicao da Busca
    ModoBusca := CoBoModoPesquisa.ItemIndex;

    //Busca em Campo Data
    if (Field.FieldType in [ftdate, ftDateTime]) then
    begin
      case ModoBusca of
        0: CondicaoBusca := Tabela + '.' + Field.FieldName + ' BETWEEN ' + FormatDateTime('mm/dd/yyyy', EdConteudoDataInicial.Date) + ' AND ' + FormatDateTime('mm/dd/yyyy', EdConteudoDataFinal.Date);
      end;
    end;

    //Busca em campo Texto
    if (Field.FieldType in [ftstring]) then
    begin
      ConteudoBusca := UpperCase(EdConteudoTexto.Text);
      case ModoBusca of
        0: CondicaoBusca := 'UPPER (' + Tabela + '.' + Field.FieldName + ' ) = ' + QuotedStr(ConteudoBusca);
        1: CondicaoBusca := 'UPPER (' + Tabela + '.' + Field.FieldName + ' ) LIKE  ' + QuotedStr('%' + ConteudoBusca + '%');
        2: CondicaoBusca := 'UPPER (' + Tabela + '.' + Field.FieldName + ' ) LIKE  ' + QuotedStr(ConteudoBusca + '%');
        3: CondicaoBusca := 'UPPER (' + Tabela + '.' + Field.FieldName + ' ) LIKE  ' + QuotedStr('%' + ConteudoBusca);
      end;
    end;

    //Busca em Campo Inteiro
    if (Field.FieldType in [ftInteger, ftSmallint]) then
    begin
      ConteudoBusca := EdConteudoNum.Text;
      case ModoBusca of
        0: CondicaoBusca := Tabela + '.' + Field.FieldName + ' =  ' + ConteudoBusca;
        1: CondicaoBusca := Tabela + '.' + Field.FieldName + ' >= ' + ConteudoBusca;
        2: CondicaoBusca := Tabela + '.' + Field.FieldName + ' <= ' + ConteudoBusca;
      end;
    end;

    //Busca em Campo Float
    if (Field.FieldType in [ftFloat]) then
    begin
      ConteudoBusca := (EdConteudoReal.Text);
      case ModoBusca of
        0: CondicaoBusca := Tabela + '.' + Field.FieldName + ' =  ' + ConteudoBusca;
        1: CondicaoBusca := Tabela + '.' + Field.FieldName + ' >= ' + ConteudoBusca;
        2: CondicaoBusca := Tabela + '.' + Field.FieldName + ' <= ' + ConteudoBusca;
      end;
    end;
  end;
begin
  inherited;
  PrepararCondicaoBusca;
  OpenBuscaSql(' SELECT ' + CamposBusca +
    ' FROM ' + Tabela + Joins +
    ' WHERE 1 = 1 ' ,
    ' AND ' + CondicaoBusca);
  if smCadPadrao.DataSourceBusca.DataSet.IsEmpty then
    Msg('Não foram encontrados dados para esta pesquisa!');
end;

function TfrmCadISO.BuscaGetCondicoes: string;
var
  i: Integer;
begin
  for i := 0 to smCadPadrao.BuscaCondicoes.Count - 1 do
    Result := ' ' + Result + ' ' + smCadPadrao.BuscaCondicoes.Strings[i];
end;

function TfrmCadISO.BuscaGetOrderBy: string;
var
  i: Integer;
begin
  for i := 0 to smCadPadrao.BuscaOrderBy.Count - 1 do
    Result := ' ' + Result + ' ' + smCadPadrao.BuscaOrderBy.Strings[i];
end;

function TfrmCadISO.BuscaGetSql: string;
var
  i: Integer;
begin
  for i := 0 to smCadPadrao.BuscaSql.Count - 1 do
    Result := Result + ' ' + smCadPadrao.BuscaSql.Strings[i];
end;

procedure TfrmCadISO.CoBoCamposChange(Sender: TObject);
begin
  inherited;
  if CoBoCampos.Text = '' then
    Exit;

  with smCadPadrao.FieldsBusca do
  begin
    EdConteudoNum.Clear;
    EdConteudoTexto.Clear;
    EdConteudoReal.Clear;
    CoBoModoPesquisa.Items.Clear;
    Field := (FieldsBusca.GetField(CoBoCampos.Text));

    LaConteudo.Visible := not (Field.FieldType in [ftDate, ftDateTime]);
    LaDataInicial.Visible := (Field.FieldType in [ftDate, ftDateTime]);
    LaDataFinal.Visible := (Field.FieldType in [ftDate, ftDateTime]);
    EdConteudoDataInicial.Visible := (Field.FieldType in [ftDate, ftDateTime]);
    EdConteudoDataFinal.Visible := (Field.FieldType in [ftDate, ftDateTime]);

    EdConteudoNum.Visible := (Field.FieldType in [ftInteger, ftSmallint]);
    EdConteudoTexto.Visible := (Field.FieldType in [ftString]);
    EdConteudoReal.Visible := (Field.FieldType in [ftFloat]);

    //ALIMENTANDO O COMBOBOX DO MODO DA PESQUISA --> STRING
    if (Field.FieldType in [ftString]) then
    begin
      CoBoModoPesquisa.Items.Add('Conteúdo exato');
      CoBoModoPesquisa.Items.Add('Contém o conteúdo');
      CoBoModoPesquisa.Items.Add('Início do conteúdo');
      CoBoModoPesquisa.Items.Add('Término do conteúdo');
      EdConteudoTextoChange(self);
    end;

    //ALIMENTANDO O COMBOBOX DO MODO DA PESQUISA --> DATA
    if (Field.FieldType in [ftDate, ftDateTime]) then
    begin
      CoBoModoPesquisa.Items.Add('Conteúdo exato');
      EdConteudoDataInicialChange(self);
    end;

    //ALIMENTANDO O COMBOBOX DO MODO DA PESQUISA --> VALOR  INTEIRO
    if (Field.FieldType in [ftInteger, ftSmallint]) then
    begin
      CoBoModoPesquisa.Items.Add('Valor exato');
      CoBoModoPesquisa.Items.Add('Maior Igual a este valor');
      CoBoModoPesquisa.Items.Add('Menor Igual a este valor');
      EdConteudoNumChange(self);
    end;

    //ALIMENTANDO O COMBOBOX DO MODO DA PESQUISA --> VALOR  REAL
    if (Field.FieldType in [ftFloat]) then
    begin
      CoBoModoPesquisa.Items.Add('Valor exato');
      CoBoModoPesquisa.Items.Add('Maior Igual a este valor');
      CoBoModoPesquisa.Items.Add('Menor Igual a este valor');
      EdConteudoRealChange(self);
    end;
    CoBoModoPesquisa.ItemIndex := 0;
  end;
end;

procedure TfrmCadISO.CoBoModoPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  OnEnterPesquisa(key);
end;

procedure TfrmCadISO.EdConteudoDataInicialChange(Sender: TObject);
begin
  inherited;
  OnChangeCamposPesquisa(DateToStr(EdConteudoDataInicial.Date), DateToStr(EdConteudoDataFinal.Date));
end;

procedure TfrmCadISO.EdConteudoDataInicialKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  OnEnterPesquisa(key);
end;

procedure TfrmCadISO.EdConteudoNumChange(Sender: TObject);
begin
  inherited;
  OnChangeCamposPesquisa(EdConteudoNum.Text);
end;

procedure TfrmCadISO.EdConteudoNumKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  OnEnterPesquisa(key);
  if (not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']) and (Key <> #13) and (Key <> #8)) then
    Abort;
end;

procedure TfrmCadISO.EdConteudoRealChange(Sender: TObject);
begin
  inherited;
  OnChangeCamposPesquisa(EdConteudoReal.Text);
end;

procedure TfrmCadISO.EdConteudoRealKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  OnEnterPesquisa(key);
  if (not (key in [',', '.', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0']) and (Key <> #13) and (Key <> #8)) then
    Abort;
end;

procedure TfrmCadISO.EdConteudoTextoChange(Sender: TObject);
begin
  inherited;
  OnChangeCamposPesquisa(EdConteudoTexto.Text);
end;

procedure TfrmCadISO.EdConteudoTextoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  OnEnterPesquisa(key);
end;

procedure TfrmCadISO.FormActivate(Sender: TObject);
begin
  if smCadPadrao.BuscaGetAll then
    AcTodosRegistrosExecute(self);
end;

procedure TfrmCadISO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  self:=nil;
  Action := caFree;
end;

procedure TfrmCadISO.FormCreate(Sender: TObject);
  procedure PosicionComponents();
  begin
    TaShCadastro.TabVisible := False;
    TaShConsulta.TabVisible := False;
    TaShRelatorio.TabVisible := False;
    LaConteudo.Left := LaDataInicial.Left;
    LaDataInicial.Visible := False;
    LaDataFinal.Visible := False;
    PaCoPadrao.ActivePageIndex := 0;
    TipoCampoBusca := '';

    //Setando o ClientDataset do tbCadastro
    smCadPadrao.DataSourceBusca.DataSet.Close;

    GetTable;
    GetcdsCadastro;
    GetDsCadastro;

    //Setando o DataSource da ToolBar
    SetToolBarDataSource;

    //Limpando os campos de Busca
    EdConteudoTexto.Clear;
    EdConteudoNum.Clear;
    EdConteudoReal.Clear;
    CoBoModoPesquisa.Items.Clear;
    EdConteudoDataInicial.Date := Now;
    EdConteudoDataFinal.Date := Now;

    //Setando os compoentes para a busca de dados
    CoBoCamposChange(self);
    CoBoModoPesquisa.Items.Clear;
  end;

  procedure ValidarTabela();
  begin
    if (smCadPadrao.Tabela = '') then
    begin
      Msg('Tabela principal não definida!', mtErro);
      ToBaCadastro.Enabled := False;
      PaCoPadrao.Enabled := False;
      Abort;
    end;
  end;

  procedure ValidarDataSourceCadastro();
  begin
    if not (Assigned(smCadPadrao.DataSourceCadastro)) then
    begin
      Msg('DataSource Cadastro não definido!', mtErro);
      ToBaCadastro.Enabled := False;
      PaCoPadrao.Enabled := False;
      Abort;
    end;
    VerificarClassesDataSet(smCadPadrao.DataSourceCadastro.DataSet);
  end;

  procedure ValidarDataSourceBusca();
  begin
    if not (Assigned(smCadPadrao.DataSourceBusca)) then
    begin
      Msg('DataSource Busca não definido!', mtErro);
      ToBaCadastro.Enabled := False;
      PaCoPadrao.Enabled := False;
      Abort;
    end;
    VerificarClassesDataSet(smCadPadrao.DataSourceBusca.DataSet);
  end;

begin
  inherited;
  try
    ValidarTabela;
    ValidarDataSourceCadastro;
    ValidarDataSourceBusca;
    PosicionComponents;
    FieldsBusca := TFieldsBusca.Create;
    FieldsBusca.SetForm(Self);
    FieldsBusca.SetFields();
    SetComponents;
  finally
  end;

end;

procedure TfrmCadISO.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(tbTabela);
  smCadPadrao.DataSourceBusca.DataSet.Close;
  smCadPadrao.DataSourceCadastro.DataSet.Close;
  CloseDataSets(self);

  if Assigned(FieldsBusca) then
    FreeAndNil(FieldsBusca);
end;

procedure TfrmCadISO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadISO.FormShow(Sender: TObject);
begin
  SetBotoes;
  ShowTabBusca;
  grbxPesquisa.Visible := smCadPadrao.BuscaVisible;
end;

procedure TfrmCadISO.grPesquisaDblClick(Sender: TObject);
begin
  inherited;
  ShowTabCadastro;
end;

procedure TfrmCadISO.grPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    ShowTabCadastro;
end;

procedure TfrmCadISO.OnChangeCamposPesquisa(PesquisaInicio: string; const PesquisaFim: string = '');
begin
  {*******************************************************************************
  *   METODO PARA ATIVAR O BOTAO DE BUSCA                                        *
  *                                                                              *
  *                                                                              *
  *                                                                              *
  *                                                                              *
  *******************************************************************************}
  if TipoCampoBusca = 'D' then
    BuProcessar.Enabled := (PesquisaInicio <> '') and (PesquisaFim <> '')
  else
    BuProcessar.Enabled := (PesquisaInicio <> '');
end;

procedure TfrmCadISO.OnEnterPesquisa(Key: Char);
begin
  {*******************************************************************************
  *   METODO PARA EXECUTAR  O BOTAO DE BUSCA                                     *
  *                                                                              *
  *                                                                              *
  *                                                                              *
  *                                                                              *
  *******************************************************************************}
  if (Key = #13) and (BuProcessar.Enabled) then
    BuProcessarClick(Self);
end;

procedure TfrmCadISO.OpenBuscaSql(sql: string;Condicoes:string = '');
begin
  //Sql default
  if Trim(BuscaGetSql) <> '' then
  begin
    sql := '';
    sql := BuscaGetSql;
  end;


  //Concatenando as Condicoes alocadas no BuscaCondicoes
  sql := sql + BuscaGetCondicoes + Condicoes + BuscaGetOrderBy;



  try
    with smCadPadrao.DataSourceBusca do
    begin
      dataset.Close;
      //ClienteDataSet
      if (Dataset is TClientDataSet) then
        (Dataset as TClientDataSet).CommandText := sql;

      //ADO dataset
      if (Dataset is TADODataSet) then
        (Dataset as TADODataSet).CommandText := sql;

      //ADOQuery
      if (Dataset is TADOQuery) then
        (Dataset as TADOQuery).SQL.Text := sql;

      //SqlDataSet
      if (Dataset is TSQLDataSet) then
        (Dataset as TSQLDataSet).CommandText := sql;

      //SQLQuery
      if (Dataset is TSQLQuery) then
        (Dataset as TSQLQuery).SQL.Text := sql;

      //IBOQuery
      if (Dataset is TIBOQuery) then
        (Dataset as TIBOQuery).SQL.Text := sql;

      Dataset.Open;
      stbrConsulta.Panels[0].Text := ' Total de Registros:' + IntToStr(DataSet.RecordCount);
    end;
  except
    on E: Exception do
      Msg('Erro no processo de busca dos dados! ' +
        #13 + #13 + E.Message, mtErro);
  end;
end;

procedure TfrmCadISO.quCadAfterPost(DataSet: TDataSet);
begin
  if smCadPadrao.KeyField = ''  then Exit;
  if smCadPadrao.Tabela = ''  then Exit;
end;

procedure TfrmCadISO.SetBotoes;
begin
  with smCadPadrao do
  begin
    btnLocalizar.Visible := (Localizar in Botoes);
    btnNovo.Visible := (Novo in Botoes);
    btnSalvar.Visible := (Salvar in Botoes);
    btnCancelar.Visible := (Cancelar in Botoes);
    btnAlterar.Visible := (Alterar in Botoes);
    btnExcluir.Visible := (Deletar in Botoes);
    btnImprimir.Visible := (Imprimir in Botoes);
    btnLocalizarTodosRegistros.Visible := (LocalizarTudo in Botoes);
  end;
end;

procedure TfrmCadISO.SetComponents;
begin
  GrPesquisa.DataController.DataSource := smCadPadrao.DataSourceBusca;
end;

procedure TfrmCadISO.SetToolBarButtonsState(Sender: TObject);
begin

  //DESABILITANDO TODOS OS BOTOES
  AcLocalizar.Enabled := False;
  AcNovo.Enabled := False;
  AcApplyUpdate.Enabled := False;
  AcCancelar.Enabled := False;
  AcEdit.Enabled := False;
  AcDelete.Enabled := False;
  AcImprimir.Enabled := False;
  btnLocalizarTodosRegistros.Enabled := False;

  //TABSHET DE tbCadastro
  if PaCoPadrao.ActivePageIndex in [1] then
  begin
    AcLocalizar.Enabled := tbCadastro.State in [dsBrowse, dsInactive, dsEdit, dsInsert];
    AcNovo.Enabled := tbCadastro.State in [dsBrowse, dsInactive, dsEdit];
    AcApplyUpdate.Enabled := tbCadastro.State in [dsEdit, dsInsert];
    AcCancelar.Enabled := tbCadastro.State in [dsEdit, dsInsert];
    AcEdit.Enabled := tbCadastro.State in [dsBrowse, dsInactive];
    AcDelete.Enabled := tbCadastro.State in [dsEdit, dsBrowse, dsInactive];
    AcImprimir.Enabled := True;
  end;

  //TABSHET DE BUSCA
  if PaCoPadrao.ActivePageIndex in [0] then
  begin
    AcNovo.Enabled := tbCadastro.State in [dsBrowse, dsInactive];
    btnLocalizarTodosRegistros.Enabled := True;
  end;

  //Botões de Navegacao
  AcFirst.Enabled := True;
  AcPrior.Enabled := True;
  AcNext.Enabled := True;
  AcLast.Enabled := True;

  { AcFirst.Enabled := not (smCadPadrao.DataSourceBusca.DataSet.IsEmpty) and ((smCadPadrao.DataSourceBusca.DataSet.RecNo >= 2));
    AcPrior.Enabled := not (smCadPadrao.DataSourceBusca.DataSet.IsEmpty) and ((smCadPadrao.DataSourceBusca.DataSet.RecNo >= 2));
    AcNext.Enabled := not (smCadPadrao.DataSourceBusca.DataSet.IsEmpty) and ((smCadPadrao.DataSourceBusca.DataSet.RecNo < smCadPadrao.DataSourceBusca.DataSet.RecordCount));
    AcLast.Enabled := not (smCadPadrao.DataSourceBusca.DataSet.IsEmpty) and ((smCadPadrao.DataSourceBusca.DataSet.RecNo < smCadPadrao.DataSourceBusca.DataSet.RecordCount));}
end;

procedure TfrmCadISO.GetcdsCadastro;
begin

  with smCadPadrao.DataSourceCadastro do
  begin
    if (DataSet is TClientDataSet) then
      tbCadastro := (DataSet) as TClientDataSet

    else if (DataSet is TADODataSet) then
      tbCadastro := (DataSet) as TADODataSet

    else if (DataSet is TADOQuery) then
      tbCadastro := (DataSet) as TADOQuery

    else if (DataSet is TSQLDataSet) then
      tbCadastro := (DataSet) as TSQLDataSet

    else if (DataSet is TSQLQuery) then
      tbCadastro := (DataSet) as TSQLQuery

    else if (DataSet is TIboQuery) then
      tbCadastro := (DataSet) as TIboQuery
  end;
end;

procedure TfrmCadISO.GetDsCadastro;
begin
  dsCadastro := smCadPadrao.DataSourceCadastro;
  dsCadastro.OnStateChange := SetToolBarButtonsState;
end;

function TfrmCadISO.GetForm: TForm;
begin
  Result := self;
end;

procedure TfrmCadISO.GetTable;
begin
  Tabela := UpperCase(smCadPadrao.Tabela);

  if smCadPadrao.Tabela = '' then
  begin
    Msg('Tabela principal não informada', mtErro);
    ToBaCadastro.Enabled := False;
  end;

end;

procedure TfrmCadISO.SetToolBarDataSource;
begin
  AcFirst.DataSource := smCadPadrao.DataSourceBusca;
  AcPrior.DataSource := smCadPadrao.DataSourceBusca;
  AcNext.DataSource := smCadPadrao.DataSourceBusca;
  AcLast.DataSource := smCadPadrao.DataSourceBusca;
end;

procedure TfrmCadISO.ShowTabBusca;
begin
  try
    Wait(self, 'Carregando Informações');
    if tbCadastro.state in [DsInsert, DsEdit] then
      {if Msg('Deseja salvar as informações deste registro?', mtAviso, Sim_Nao_Cancelar) then
        AcApplyUpdateExecute(self)
      else}
      tbCadastro.Cancel;

    if not (smCadPadrao.DataSourceBusca.DataSet.IsEmpty) then
      OpenDataSet(smCadPadrao.DataSourceBusca.DataSet);

    PaCoPadrao.ActivePageIndex := 0;
    TaShCadastro.Enabled := False;
    SetToolBarButtonsState(self);

    if PaCoPadrao.ActivePageIndex = 0 then
      grGrid.SetFocus;
  finally
    WaitEnd(self);
  end;
end;

procedure TfrmCadISO.ShowTabCadastro;
var
  ParamCount: Integer;

  procedure GetParamsADO;
  var
    nParam, nColuna, ParamCount: Integer;
  begin
    tbCadastro.Close;
    ParamCount := (tbCadastro as TADODataSet).Parameters.Count;
    for nParam := 0 to ParamCount - 1 do
      for nColuna := 0 to smCadPadrao.DataSourceBusca.DataSet.FieldCount - 1 do
        if (UpperCase(smCadPadrao.DataSourceBusca.DataSet.Fields[nColuna].FieldName) = UpperCase((tbCadastro as TADODataSet).Parameters[nParam].Name)) then
          (tbCadastro as TADODataSet).Parameters[nParam].Value := smCadPadrao.DataSourceBusca.DataSet.Fields[nColuna].Value;
    PaCoPadrao.ActivePageIndex := 1;
    tbCadastro.Open;
  end;

  procedure GetParams;
  var
    nParam, nColuna: Integer;
  begin
    tbCadastro.Close;

    if (tbCadastro is TClientDataSet) then
    begin
      ParamCount := (tbCadastro as TClientDataSet).Params.Count;
      for nParam := 0 to ParamCount - 1 do
        for nColuna := 0 to smCadPadrao.DataSourceBusca.DataSet.FieldCount - 1 do
          if (UpperCase(smCadPadrao.DataSourceBusca.DataSet.Fields[nColuna].FieldName) = UpperCase((tbCadastro as TClientDataSet).Params[nParam].Name)) then
            (tbCadastro as TClientDataSet).Params[nParam].Value := smCadPadrao.DataSourceBusca.DataSet.Fields[nColuna].Value;
      PaCoPadrao.ActivePageIndex := 1;
      tbCadastro.Open;
    end
    else if (tbCadastro is TIBOQuery) then
    begin
      ParamCount := (tbCadastro as TIboQuery).Params.Count;
      for nParam := 0 to ParamCount - 1 do
        for nColuna := 0 to smCadPadrao.DataSourceBusca.DataSet.FieldCount - 1 do
          if (UpperCase(smCadPadrao.DataSourceBusca.DataSet.Fields[nColuna].FieldName) = UpperCase((tbCadastro as TIboQuery).Params[nParam].Name)) then
            (tbCadastro as TIboQuery).Params[nParam].Value := smCadPadrao.DataSourceBusca.DataSet.Fields[nColuna].Value;
      PaCoPadrao.ActivePageIndex := 1;
      tbCadastro.Open;
    end;
  end;

begin
  try
    Screen.Cursor := crSQLWait;
    if ((tbCadastro is TADODataSet) or (tbCadastro is TADOQuery)) then
      GetParamsADO
    //else if (tbCadastro is TIBOQuery) or ((tbCadastro is TClientDataSet))then
    else GetParams;
    GetParams;

    if (tbCadastro.IsEmpty) then
    begin
      PaCoPadrao.ActivePageIndex := 0;
      Msg('Registro não localizado!', mtErro);
    end;
    SetToolBarButtonsState(self);
    btnAlterar.Click;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmCadISO.ShowTabRelatorio;
begin
  PaCoPadrao.ActivePageIndex := 2;
  SetToolBarButtonsState(self);
end;

procedure TfrmCadISO.VerificarClassesDataSet(DataSet: TDataSet);
begin
  with DataSet do
  begin
    if not ((Dataset is TClientDataSet)
      or (Dataset is TADODataSet)
      or (Dataset is TADOQuery)
      or (Dataset is TSQLDataSet)
      or (Dataset is TSQLQuery)
      or (Dataset is TIBOQuery)) then
    begin

      Msg('Classe ' + dataset.ClassName + ' não definida no Cadastro Padrão!', mtErro);
      ToBaCadastro.Enabled := False;
      PaCoPadrao.Enabled := False;
      Abort;
    end;
  end;

end;

{ TFieldsBusca }

procedure TFieldsBusca.ClearObjects;
begin
  with Form do
  begin
   if (smCadPadrao.GridCreateColumns) then
      grPesquisa.ClearItems;
    CoBoCampos.Clear;
    CamposBusca := '';
  end;
end;

procedure TFieldsBusca.SetForm(AForm: TfrmCadISO);
begin
  FForm := AForm;
  ClearObjects;
end;

function TFieldsBusca.GetField(DisplayName: string): TFieldsBuscaItem;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to Form.smCadPadrao.FieldsBusca.Count - 1 do
    if (Form.smCadPadrao.FieldsBusca.Items[i].DisplayName = Form.CoBoCampos.Text) then
    begin
      Result := Form.smCadPadrao.FieldsBusca.Items[i];
      Break;
    end;
end;

procedure TFieldsBusca.SetCombo(Item: Integer);
begin
  with Form.smCadPadrao.FieldsBusca.Items[Item], Form do
  begin
    if not (ShowCombo) then
      Exit;
    CoBoCampos.Items.Add(Trim(DisplayName));
  end;
end;

procedure TFieldsBusca.SetFields;
var
  i: Integer;
begin
  for i := 0 to Form.smCadPadrao.FieldsBusca.Count - 1 do
  begin
    SetCombo(i);
    SetGrid(i);
    SetsqlFields(i);
  end;
end;

procedure TFieldsBusca.SetGrid(Item: Integer);
begin
  with Form.smCadPadrao,
    Form.smCadPadrao.FieldsBusca.Items[Item],
    Form.grPesquisa do
  begin
    if not (ShowGrid and GridCreateColumns) then
      Exit;
    CreateColumn;
    Columns[FieldsGrid].DataBinding.FieldName := FieldName;
    Columns[FieldsGrid].Caption:= DisplayName;
    Columns[FieldsGrid].Options.Editing:= False;
    Inc(FieldsGrid);
  end;
end;

procedure TFieldsBusca.SetsqlFields(Item: Integer);
begin
  with Form.smCadPadrao.FieldsBusca.Items[Item], Form.CoBoCampos, Form do
  begin
    if not (ShowGrid or ShowSelect or ShowSelect) then
      Exit;

    if CamposBusca = '' then
      CamposBusca := tabela + '.' + FieldName
    else
      CamposBusca := CamposBusca + ',' + tabela + '.' + FieldName;
  end;
end;

end.

