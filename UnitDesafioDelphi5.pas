unit UnitDesafioDelphi5;

interface

const
  RequisitoDesafio5 =
    'DESAFIO 5'#10#13#10#13 +
    '1. Receba uma express�o matem�tica como string (ex.: "10 + (2 * 3)").'#10#13 +
    '2. Valide se os par�nteses est�o corretamente balanceados. '#10#13 +
    '3. Avalie e retorne o resultado da express�o. ';

procedure DesafioDelphi5;

implementation

uses
  System.Classes, Vcl.Dialogs, System.SysUtils, System.Math, System.RTTI,
  NewMathParser.Oper, NewMathParser;

function EstaBalanceado(const Expressao: String): Boolean;
var
  Indice, Contador: Integer;
begin
  Contador := 0;
  for Indice := 1 to Length(Expressao) do
  begin
    if Expressao[Indice] = '(' then
      Inc(Contador)
    else if Expressao[Indice] = ')' then
    begin
      Dec(Contador);
      if Contador < 0 then // Par�ntese de fechamento sem correspondente de abertura
        Exit(False);
    end;
  end;
  Result := Contador = 0; // Verifica se todos os par�nteses foram fechados
end;

function ProcessaDesafio5(Expressao: String): String;
var
  ExpressaoLimpa, Resultado: String;
  Calculo: TMathParser;
begin
  Result := '';
  ExpressaoLimpa := StringReplace(Expressao, ' ', '', [rfReplaceAll]);

  if not EstaBalanceado(ExpressaoLimpa) then
  begin
    Result := 'Express�o desbalanceada: verifique os par�nteses.';
    Exit;
  end;

  Calculo := TMathParser.Create;
  try
    try
      Calculo.Expression := ExpressaoLimpa;
      if Calculo.Error.IsNoError then
        Resultado := Calculo.ParserResult.ToString
      else
        Resultado := Calculo.Error.ToString;
    except
      on E: Exception do
        Resultado := 'Erro ao avaliar a express�o.';
    end;
  finally
    Calculo.Free;
  end;

  Result := 'RESULTADO DO DESAFIO 5' + #13#10#13#10
          + 'A avalia��o da express�o retornou o seguinte resultado:' + #13#10
          + Resultado;
end;

procedure DesafioDelphi5;
var
  Expressao, Resultado: String;
begin
  Expressao := '10 + (2 * 3)';

  ShowMessage(RequisitoDesafio5 + #13#10#13#10 + Expressao);

  Resultado := ProcessaDesafio5(Expressao);
  ShowMessage(Resultado);
end;


end.

