program TesteProgramadorDelphi;

uses
  Vcl.Forms,
  UnitFormTesteProgramadorDelphi in 'UnitFormTesteProgramadorDelphi.pas' {FormTesteProgramadorDelphi},
  Vcl.Themes,
  Vcl.Styles,
  UnitDesafioDelphi1 in 'UnitDesafioDelphi1.pas',
  UnitDesafioDelphi2 in 'UnitDesafioDelphi2.pas',
  UnitDesafioDelphi3 in 'UnitDesafioDelphi3.pas' {DesafioDelphi3Timer},
  UnitDesafioDelphi4 in 'UnitDesafioDelphi4.pas',
  UnitDesafioDelphi5 in 'UnitDesafioDelphi5.pas',
  NewMathParser in 'libs\NewMathParser\NewMathParser.pas',
  NewMathParser.Oper in 'libs\NewMathParser\NewMathParser.Oper.pas',
  UnitDesafioDelphi6 in 'UnitDesafioDelphi6.pas' {DesafioDelphi6OOP},
  UnitDesafioSQL1 in 'UnitDesafioSQL1.pas' {DesafioSQL1_MR},
  UnitDesafioSQL1_scripts in 'UnitDesafioSQL1_scripts.pas' {DesafioSQL1_Scripts};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Keler Silva de Melo - Teste Programador Delphi';
  TStyleManager.TrySetStyle('Windows11 Impressive Dark');
  Application.CreateForm(TFormTesteProgramadorDelphi, FormTesteProgramadorDelphi);
  Application.CreateForm(TDesafioSQL1_Scripts, DesafioSQL1_Scripts);
  Application.Run;
end.