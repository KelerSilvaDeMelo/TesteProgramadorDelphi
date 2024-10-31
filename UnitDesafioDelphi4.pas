unit UnitDesafioDelphi4;

interface

const
  RequisitoDesafio4 =
    'DESAFIO 4'#10#13#10#13 +
    'Crie uma classe chamada TPessoa com as seguintes propriedades:'#10#13 +
    '1. Nome (String)'#10#13 +
    '2. Idade (Inteiro)'#10#13 +
    'Implemente métodos Get e Set para cada propriedade.'#10#13 +
    'Implemente um método chamado ExibirInfo, que retorne uma string com o nome e a idade formatados.';

type
  TPessoa = class(TObject)
  private
    FNome: String;
    FIdade: Integer;

    procedure SetNome(const Value: String);
    procedure SetIdade(const Value: Integer);

  public
    property Nome: String read FNome write SetNome;
    property Idade: Integer read FIdade write SetIdade;

    function ExibirInfo: String;
  end;

procedure DesafioDelphi4;

implementation

uses
  Vcl.Dialogs, System.SysUtils, System.DateUtils;

{ TPessoa }

function TPessoa.ExibirInfo: String;
begin
  Result := 'Nome: ' + Self.FNome + #13#10 +
            'Idade: ' + Self.FIdade.ToString;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;


{ Processamento do Desafio 4 }

function ProcessaDesafio4(Nome: String; Nascimento: TDate): String;
var
  Pessoa: TPessoa;
begin
  Pessoa := TPessoa.Create;
  try
    Pessoa.Nome := Nome;
    Pessoa.Idade := YearsBetween(Nascimento, Now);
    Result := 'RESULTADO DO DESAFIO 4' + #13#10#13#10 + Pessoa.ExibirInfo;
  finally
    Pessoa.Free;
  end;
end;

procedure DesafioDelphi4;
var
  Nome, Resultado: String;
  Nascimento: TDate;
begin
  Nome := 'Elon Reeve Musk';
  Nascimento := EncodeDate(1971, 6, 28);

  ShowMessage(RequisitoDesafio4 + #13#10#13#10 + Nome + #13#10 +
              DateToStr(Nascimento));

  Resultado := ProcessaDesafio4(Nome, Nascimento);
  ShowMessage(Resultado);
end;


end.

