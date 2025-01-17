unit UnitDesafioDelphi3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Vcl.ExtCtrls;

type
  TDesafioDelphi3Timer = class(TForm)
    GroupBoxDesafioDelphi3: TGroupBox;
    LabelContagem: TLabel;
    Memo2: TMemo;
    Button11: TButton;
    TimerContagem: TTimer;
    ActionList1: TActionList;
    ActionContagemRegressiva: TAction;

    procedure ActionContagemRegressivaExecute(Sender: TObject);
    procedure TimerContagemTimer(Sender: TObject);

  private
    { Private symbols }
    FAreaDeTrabalho: TWinControl;
    FContagem: Integer;
    const TempoEsgotado: String = 'Tempo esgotado!';

  private
    { Private declarations }
    procedure IniciaContagemRegressiva;
    procedure SincronizaStatusDaContagem;
    procedure TerminaContagemRegressiva;

  public
    { Public declarations }
    procedure DefineAreaDeTrabalho(AreaDeTrabalho: TWinControl);
  end;

var
  DesafioDelphi3Timer: TDesafioDelphi3Timer;

procedure DesafioDelphi3(AreaDeTrabalho: TWinControl);

implementation

{$R *.dfm}

procedure DesafioDelphi3(AreaDeTrabalho: TWinControl);
begin
  if not Assigned(DesafioDelphi3Timer) then
    Application.CreateForm(TDesafioDelphi3Timer, DesafioDelphi3Timer);

  DesafioDelphi3Timer.DefineAreaDeTrabalho(AreaDeTrabalho);
end;

{----------------------------------[ A��ES ]-----------------------------------}
procedure TDesafioDelphi3Timer.ActionContagemRegressivaExecute(Sender: TObject);
begin
  Self.IniciaContagemRegressiva;
end;


{---------------------------------[ PRIVADO ]----------------------------------}
procedure TDesafioDelphi3Timer.IniciaContagemRegressiva;
begin
  Self.ActionContagemRegressiva.Enabled := False;
  Self.FContagem := 10;
  Self.SincronizaStatusDaContagem;
  Self.TimerContagem.Enabled := True;
end;

procedure TDesafioDelphi3Timer.SincronizaStatusDaContagem;
begin
  Self.LabelContagem.Caption := 'Contagem regressiva: ' + Self.FContagem.ToString;
end;

procedure TDesafioDelphi3Timer.TerminaContagemRegressiva;
begin
  Self.TimerContagem.Enabled := False;
  Self.FContagem := 0;
  Self.LabelContagem.Caption := TempoEsgotado;

  ShowMessage(TempoEsgotado);

  Self.GroupBoxDesafioDelphi3.Parent := Self;
  Self.FAreaDeTrabalho := nil;
  Self.ActionContagemRegressiva.Enabled := True;
end;

procedure TDesafioDelphi3Timer.TimerContagemTimer(Sender: TObject);
begin
  Dec(Self.FContagem);
  Self.SincronizaStatusDaContagem;
  if Self.FContagem < 1 then
    Self.TerminaContagemRegressiva;
end;


{---------------------------------[ PUBLICO ]----------------------------------}
procedure TDesafioDelphi3Timer.DefineAreaDeTrabalho(
  AreaDeTrabalho: TWinControl);
begin
  Self.FAreaDeTrabalho := AreaDeTrabalho;
  Self.GroupBoxDesafioDelphi3.Parent := Self.FAreaDeTrabalho;
end;


end.
