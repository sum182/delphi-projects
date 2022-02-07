unit DmRelatorios;

interface

uses


{$DEFINE ADO}
{$DEFINE CrossTab}
{$DEFINE RAP}
{$DEFINE CheckBox}
{$DEFINE TeeChart}
{$DEFINE UseDesignPath}

{$IFDEF DADE}
  daIDE,
{$ENDIF}

{$IFDEF BDE}
  daDBBDE,
{$ENDIF}

{$IFDEF ADO}
  daADO,
{$ENDIF}

{$IFDEF IBExpress}
  daIBExpress,
{$ENDIF}

{$IFDEF CrossTab}
  ppCTDsgn,
{$ENDIF}

{$IFDEF RAP}
  raIDE,
{$ENDIF}

{$IFDEF CheckBox}
  myChkBoxDesign,
{$ENDIF}




  Windows, Classes, Controls, SysUtils, Forms, StdCtrls, ExtCtrls, Dialogs, Graphics,
  DB, DBTables,  ppComm, ppCache, ppClass, ppProd, ppReport, ppRptExp, ppBands,
  ppDBBDE, ppEndUsr, ppDBPipe, ppDB, ppPrnabl, ppStrtch, ppDsgnDB,
  ppRelatv, ppModule, ppViewr, ppForms, ppFormWrapper, ZAbstractTable, ZDataset,
  ZAbstractRODataset, ZAbstractDataset, ZConnection, Grids, DBGrids, ppSubRpt,
  ppCtrls, ppVar, DBClient, Provider,Shared, TXComp, TXRB,XpMan, raCodMod,
  ppParameter,DateUtils,StrUtils,Variants, FMTBcd, DBXpress, SqlExpr;


type
  TDm = class(TDataModule)
    dsItens: TDataSource;
    plItens: TppBDEPipeline;
    dsItemUpdate: TDataSource;
    plItemUpdate: TppBDEPipeline;
    ppDesigner: TppDesigner;
    ppReport: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppReportExplorer: TppReportExplorer;
    plFolder: TppBDEPipeline;
    dsFolder: TDataSource;
    ExtraOptions: TExtraOptions;
    sqlItemUpdate: TSQLDataSet;
    sqlFolder: TSQLDataSet;
    sqlItens: TSQLDataSet;
    dspItemUpdate: TDataSetProvider;
    cdsItemUpdate: TClientDataSet;
    dspFolder: TDataSetProvider;
    cdsFolder: TClientDataSet;
    dspItens: TDataSetProvider;
    cdsItens: TClientDataSet;
    SQLConnection: TSQLConnection;
    cdsItemUpdateITEMID: TIntegerField;
    cdsItemUpdateNAME: TStringField;
    cdsItemUpdateTAMANHO: TIntegerField;
    cdsItemUpdateDELETED: TDateField;
    cdsItemUpdateTIPO: TIntegerField;
    cdsItemUpdateMODIFIED: TDateField;
    cdsItemUpdateFOLDERID: TIntegerField;
    cdsItemUpdateTEMPLATE: TBlobField;
    cdsFolderFOLDERID: TIntegerField;
    cdsFolderNAME: TStringField;
    cdsFolderPARENTID: TIntegerField;
    cdsItensITEMID: TIntegerField;
    cdsItensNAME: TStringField;
    cdsItensTAMANHO: TIntegerField;
    cdsItensDELETED: TDateField;
    cdsItensTIPO: TIntegerField;
    cdsItensMODIFIED: TDateField;
    cdsItensFOLDERID: TIntegerField;
    cdsItensTEMPLATE: TBlobField;
    sqlItemUpdateITEMID: TIntegerField;
    sqlItemUpdateNAME: TStringField;
    sqlItemUpdateTAMANHO: TIntegerField;
    sqlItemUpdateDELETED: TDateField;
    sqlItemUpdateTIPO: TIntegerField;
    sqlItemUpdateMODIFIED: TDateField;
    sqlItemUpdateFOLDERID: TIntegerField;
    sqlItemUpdateTEMPLATE: TBlobField;
    sqlItensITEMID: TIntegerField;
    sqlItensNAME: TStringField;
    sqlItensTAMANHO: TIntegerField;
    sqlItensDELETED: TDateField;
    sqlItensTIPO: TIntegerField;
    sqlItensMODIFIED: TDateField;
    sqlItensFOLDERID: TIntegerField;
    sqlItensTEMPLATE: TBlobField;
    procedure cdsItemUpdateBeforeOpen(DataSet: TDataSet);
    procedure cdsFolderAfterPost(DataSet: TDataSet);
    procedure cdsItemUpdateAfterPost(DataSet: TDataSet);
    procedure cdsFolderNewRecord(DataSet: TDataSet);
    procedure cdsItemUpdateNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure LoadEndEvent(Sender: TObject);
    procedure PreviewFormCreateEvent(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{$R *.dfm}

procedure TDm.cdsFolderAfterPost(DataSet: TDataSet);
begin
cdsFolder.ApplyUpdates(-1);
end;

procedure TDm.cdsFolderNewRecord(DataSet: TDataSet);
begin
cdsFolderFOLDERID.AsInteger := 0;
end;

procedure TDm.cdsItemUpdateAfterPost(DataSet: TDataSet);
begin
  cdsItemUpdate.ApplyUpdates(-1);
end;

procedure TDm.cdsItemUpdateBeforeOpen(DataSet: TDataSet);
begin
  ShowMessage(cdsItemUpdateITEMID.AsString);
end;

procedure TDm.cdsItemUpdateNewRecord(DataSet: TDataSet);
begin
  cdsItemUpdateITEMID.AsInteger := 0;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  SQLConnection.Connected := True;
end;

procedure TDm.LoadEndEvent(Sender: TObject);
begin
  ppReport.OnPreviewFormCreate := PreviewFormCreateEvent;

end;

procedure TDm.PreviewFormCreateEvent(Sender: TObject);
begin
 ppReport.PreviewForm.WindowState := wsMaximized;

end;

end.
