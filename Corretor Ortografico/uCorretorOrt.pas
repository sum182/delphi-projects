unit uCorretorOrt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SpellLanguageComboBox, Spellers, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    SpellChecker1: TSpellChecker;
    SpellLanguageComboBox1: TSpellLanguageComboBox;
    Memo1: TMemo;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Spellchecker1.Check(Memo1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  spOVariants := '&Variantes';
  spODelete := '&Deletar';
  spOChange := '&Alterar';
  spOChangeAll := 'Alterar &Todas';
  spOSkip := '&Ignorar';
  spOSkipAll := 'I&gnorar Todas';
  spOAdd := 'In&cluir';
  spOCancel := 'Ca&ncelar';
  spOCancelEdit := 'Desfa&zer Edição';
  spONotFound := 'Palavra desconhecida';
  spOHyphen := 'Hifenização incorreta';
  spOCaps := 'Erro em Maiúsculas';
  spOAbbrev := 'Possivel abreviação';
  spONoSentenceCap := 'Erro em maíusculas da sentença';
  spOExtraSpaces := 'Espaços extras';
  spOMissingSpace := 'Falta de espaço';
  spOInitialNumeral := 'Numerais no início da palavra';
  spORepeatedWord := 'Palavra repetida';
  spOFinish := 'Correção ortográfica concluida';
  spOFinishCaption:= 'Mensagem';
  spOCaption := 'Verificando — %s';
  spOError := 'Erro de verificação No %d';
  spOErrorLoad := 'Erro ao carregar DLL %s';
  spOErrorUnload := 'Erro ao descarregar DLL %s';
  spOErrorNoSpellChecker := 'Idioma %s não instalado';
  spOStart := 'Iniciar';
  Spellchecker1.UserLanguage := ulOther;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
    SpellLanguageComboBox1.ItemIndex := 3;
end;

end.
