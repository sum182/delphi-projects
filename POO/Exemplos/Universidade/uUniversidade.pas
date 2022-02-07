unit uUniversidade;

interface

type
  TEndereco = class(TObject)
  private
    FRua: string;
    FBairro: string;
    FNumero: string;
  protected
    function GetRua: string;
    function GetBairro: string;
    function GetNumero: string;
    procedure SetRua(Value: string);
    procedure SetBairro(Value: string);
    procedure SetNumero(Value: string);
  public
    property Rua: string read GetRua write SetRua;
    property Bairro: string read GetBairro write SetBairro;
    property Numero: string read GetNumero write SetNumero;
  end;

type
  TPessoa = class(TObject)
  private
    FMatricula: string;
    FNome: string;
    function GetMatricula: string;
    function GetNome: string;
    procedure SetMatricula(const Value: string);
    procedure SetNome(const Value: string);
  protected
  public
    Endereco: TEndereco;
    constructor Create;
    destructor Destroy; override;
    property Matricula: string read GetMatricula write SetMatricula;
    property Nome: string read GetNome write SetNome;
  end;


  Type
    TProfessor = Class(TPessoa)
    private
      FDepartamento:string;
      FAulasMes:byte;
      function GetAulasMes: byte;
      function GetDepartamento: string;
      procedure SetAulasMes(const Value: byte);
      procedure SetDepartamento(const Value: string);
    protected
    public
      property Departamento :string read GetDepartamento write SetDepartamento;
      property AulasMes:byte read GetAulasMes write SetAulasMes;
    end;

    Type
      TAluno = Class(TPessoa)
      private
        FCurso:string;
        FMGP:string;
        function GetCurso: string;
        function GetMGP: string;
        procedure SetCurso(const Value: string);
        procedure SetMGP(const Value: string);
      protected
      public
        property Curso:string read GetCurso write SetCurso;
        property MGP:string read GetMGP write SetMGP;
      end;

     Type
       TFunncionario = Class(TPessoa)
       private
         FSetor:string;
         FSalario:real;
         function GetSalario: real;
         function GetSetor: string;
         procedure SetSalario(const Value: real);
         procedure SetSetor(const Value: string);
       protected
       public
         property Setor:string read GetSetor write SetSetor;
         property Salario:real read GetSalario write SetSalario;
       end;


implementation

{ TEndereco }

function TEndereco.GetBairro: string;
begin
  Result := Self.FBairro;
end;

function TEndereco.GetNumero: string;
begin
  Result := Self.FNumero;
end;

function TEndereco.GetRua: string;
begin
  Result := Self.FRua;
end;

procedure TEndereco.SetBairro(Value: string);
begin
  Self.FBairro := Value;
end;

procedure TEndereco.SetNumero(Value: string);
begin
  Self.FNumero := Value;
end;

procedure TEndereco.SetRua(Value: string);
begin
  Self.FRua := Value;
end;

{ TPessoa }

constructor TPessoa.Create;
begin
  inherited Create;
  Self.Endereco := TEndereco.Create;
end;

destructor TPessoa.Destroy;
begin
  Self.Endereco.Free;
  inherited Destroy;
end;

function TPessoa.GetMatricula: string;
begin
  Result := Self.FMatricula;
end;

function TPessoa.GetNome: string;
begin
  Result := Self.FNome;
end;

procedure TPessoa.SetMatricula(const Value: string);
begin
  Self.FMatricula := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  Self.FNome := Value;
end;

{ TProfessor }

function TProfessor.GetAulasMes: byte;
begin
  Result := Self.FAulasMes;
end;

function TProfessor.GetDepartamento: string;
begin
  Result := Self.FDepartamento;
end;

procedure TProfessor.SetAulasMes(const Value: byte);
begin
  Self.FAulasMes := Value;
end;

procedure TProfessor.SetDepartamento(const Value: string);
begin
  Self.Departamento := Value;
end;

{ TAluno }

function TAluno.GetCurso: string;
begin
  Result := Self.FCurso;
end;

function TAluno.GetMGP: string;
begin
  Result := Self.FMGP;
end;

procedure TAluno.SetCurso(const Value: string);
begin
  Self.FCurso := Value;
end;

procedure TAluno.SetMGP(const Value: string);
begin
  Self.FMGP := Value;
end;

{ TFunncionario }

function TFunncionario.GetSalario: real;
begin
  Result := Self.FSalario;
end;

function TFunncionario.GetSetor: string;
begin
  Result := Self.FSetor;
end;

procedure TFunncionario.SetSalario(const Value: real);
begin
  Self.FSalario := Value;
end;

procedure TFunncionario.SetSetor(const Value: string);
begin
  Self.FSetor := Value;
end;

end.

