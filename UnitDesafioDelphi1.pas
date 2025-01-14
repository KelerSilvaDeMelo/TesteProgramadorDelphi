unit UnitDesafioDelphi1;

interface

const RequisitoDesafio1 =
  'DESAFIO 1'#10#13#10#13+
  'Implemente um algoritmo que receba um array de n�meros inteiros e retorne:'#10#13+
  '1. O segundo maior n�mero da lista.'#10#13+
  '2. A soma de todos os n�meros pares.';

const Posicoes = 6;

procedure DesafioDelphi1;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

function ProcessaDesafio1(ArrayDeNumeros: array of integer): String;
var
  Indice, Valor, Soma, MaiorValor, SegundoMaiorValor: Integer;
begin
  // Prepara vari�veis de controle
  Result := '';
  Soma := 0;
  MaiorValor := Low(Integer);
  SegundoMaiorValor := Low(Integer);

  for Indice := Low(ArrayDeNumeros) to High(ArrayDeNumeros) do
  begin
    // Extrai o valor do indice atual dentro do array
    Valor := ArrayDeNumeros[Indice];

    // Identifica o segundo maior valor da lista
    if (Valor > MaiorValor) then
    begin
      SegundoMaiorValor := MaiorValor;
      MaiorValor := Valor;
    end
    else if (Valor > SegundoMaiorValor) and (Valor < MaiorValor) then
    begin
      SegundoMaiorValor := Valor;
    end;

    // Soma todos os n�meros pares
    if (Valor mod 2 = 0) then
      Inc(Soma, ArrayDeNumeros[Indice]);
  end;

  // Monta o retorno amig�vel
  Result := 'RESULTADO DO DESAFIO 1' + #13#10#13#10
          + 'O segundo maior n�mero � ' + SegundoMaiorValor.ToString + #13#10
          + 'A soma de todos os n�meros � ' + Soma.ToString;
end;

function ArrayToString(ArrayDeNumeros: array of Integer): String;
var
  i: Integer;
begin
  Result := '';
  for i := Low(ArrayDeNumeros) to High(ArrayDeNumeros) do
  begin
    Result := Result + IntToStr(ArrayDeNumeros[i]);
    if i < High(ArrayDeNumeros) then
      Result := Result + ', ';
  end;
  Result := '{' + Result + '}';
end;

procedure DesafioDelphi1;
var
  Indice: Integer;
  ArrayDeNumeros: array of integer;
  Resultado: String;
begin
  SetLength(ArrayDeNumeros, Posicoes);
  for Indice := Low(ArrayDeNumeros) to High(ArrayDeNumeros) do
    ArrayDeNumeros[Indice] := Random(100);

  ShowMessage( RequisitoDesafio1
             + #13#10#13#10
             + ArrayToString(ArrayDeNumeros) );

  Resultado := ProcessaDesafio1(ArrayDeNumeros);
  ShowMessage(Resultado);
end;


end.
