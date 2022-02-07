unit uIniFirebird;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxCheckBox, cxTextEdit, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxLookAndFeels, Registry, ShellAPI, jpeg, cxImage, RzTray, cxMaskEdit,
  cxSpinEdit, cxTimeEdit, cxPC, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, DBClient, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid;

type
  TfrmFirebird = class(TForm)
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Restaurar1: TMenuItem;
    FecharSistema1: TMenuItem;
    RzTrayIcon1: TRzTrayIcon;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxImage1: TcxImage;
    buStart: TcxButton;
    buStop: TcxButton;
    buSair: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    chHabilitar: TcxCheckBox;
    STempo: TcxSpinEdit;
    buConfig: TcxButton;
    Label3: TLabel;
    TePath: TcxTextEdit;
    cxTabSheet3: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsDados: TDataSource;
    cdsDados: TClientDataSet;
    cdsDadosData: TDateTimeField;
    cdsDadosDescricao: TStringField;
    cxGrid1DBTableView1Data: TcxGridDBColumn;
    cxGrid1DBTableView1Descricao: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure chHabilitarEditing(Sender: TObject; var CanEdit: Boolean);
    procedure buConfigClick(Sender: TObject);
    procedure STempoEditing(Sender: TObject; var CanEdit: Boolean);
    procedure Restaurar1Click(Sender: TObject);
    procedure FecharSistema1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure buStopClick(Sender: TObject);
    procedure buStartClick(Sender: TObject);
    procedure buSairClick(Sender: TObject);
  private
    { Private declarations }
   procedure Start;
   procedure Stop;
   procedure Historico(descricao : String);
  public
    { Public declarations }
  end;

var
  frmFirebird: TfrmFirebird;

implementation

uses
  smGeral, smMensagens;

{$R *.dfm}

procedure TfrmFirebird.buStartClick(Sender: TObject);
begin
  Start;
end;

procedure TfrmFirebird.buStopClick(Sender: TObject);
begin
  Stop;
end;

procedure TfrmFirebird.chHabilitarEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  buConfig.Enabled := True;
end;

procedure TfrmFirebird.buConfigClick(Sender: TObject);
begin
  Timer1.Interval := (STempo.Value * 60) * 1000;
  buConfig.Enabled := False;
end;

procedure TfrmFirebird.FecharSistema1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmFirebird.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RzTrayIcon1.MinimizeApp;
  Abort;
end;

procedure TfrmFirebird.FormCreate(Sender: TObject);
begin
  STempo.Value := 10;
  buConfigClick(Self);


  with cdsDados do
  begin
    Close;
    FileName := 'Dados.xml';
    Open;
  end;

end;

procedure TfrmFirebird.Historico(descricao : String);
begin
  with cdsDados do
  begin
    Append;
    FieldByName('DATA'     ).AsDateTime := Now;
    FieldByName('DESCRICAO').AsString   := descricao;
    Post;
  end;

end;

procedure TfrmFirebird.Restaurar1Click(Sender: TObject);
begin
  RzTrayIcon1.RestoreApp;
end;

procedure TfrmFirebird.buSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFirebird.Start;
begin
  if Not(ProcessExecute('fbserver.exe')) then
  begin
    WinExec(PCHAR(TePath.Text + '\fbguard -a'), SW_HIDE);
    Historico('Iniciado');
  end;

end;

procedure TfrmFirebird.STempoEditing(Sender: TObject; var CanEdit: Boolean);
begin
  buConfig.Enabled := True;
end;

procedure TfrmFirebird.Stop;
begin
  KillTask('fbguard.exe');
  KillTask('fbserver.exe');

  Historico('Parado');
end;

procedure TfrmFirebird.Timer1Timer(Sender: TObject);
begin
  if chHabilitar.Checked then
    Start;
end;

end.
