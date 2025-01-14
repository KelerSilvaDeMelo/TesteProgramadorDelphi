unit UnitDesafioDelphi2;

interface

const RequisitoDesafio2 =
  'DESAFIO 2'#10#13#10#13+
  'Implemente uma fun��o que receba uma string e retorne a mesma string com:'#10#13+
  '1. As palavras em ordem inversa.'#10#13+
  '2. A quantidade de vogais.';

const Vogais = ['a', 'e', 'i', 'o', 'u', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�'];

procedure DesafioDelphi2;

implementation

uses
  Vcl.Dialogs, System.SysUtils, System.StrUtils;

function ProcessaDesafio2(Frase: String): String;
var
  Palavras: TArray<String>;
  Palavra, PalavrasInversa, FraseMinuscula: String;
  Indice, ContaVogais: Integer;
  CharAtual: Char;
begin
  // Prepara vari�veis de controle
  Result := '';
  Palavras := SplitString(Frase, ' ');
  PalavrasInversa := '';
  ContaVogais := 0;

  for Indice := High(Palavras) downto Low(Palavras) do
    PalavrasInversa := PalavrasInversa + Palavras[Indice] + ' ';

  FraseMinuscula := Frase.ToLower;
  for Indice :=1 to FraseMinuscula.Length do
  begin
    CharAtual := FraseMinuscula[Indice];
    if CharInSet(CharAtual, Vogais) then
      inc(ContaVogais);
  end;

  // Monta o retorno amig�vel
  Result := 'RESULTADO DO DESAFIO 2' + #13#10#13#10
          + 'Palavras em ordem inversa: ' + Trim(PalavrasInversa) + #13#10
          + 'Quantidade de vogais: ' + ContaVogais.ToString;
end;

procedure DesafioDelphi2;
var
  Frase, Resultado: String;
begin
  Frase := 'Anotaram a data da maratona';

  ShowMessage( RequisitoDesafio2
             + #13#10#13#10
             + Frase );

  Resultado := ProcessaDesafio2(Frase);
  ShowMessage(Resultado);
end;


end.

