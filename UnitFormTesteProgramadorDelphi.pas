unit UnitFormTesteProgramadorDelphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Vcl.ExtCtrls;

type
  TFormTesteProgramadorDelphi = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox2: TGroupBox;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    ActionList1: TActionList;
    Action_Delphi_1_Array: TAction;
    Action_Delphi_2_String: TAction;
    Action_Delphi_3_Timer: TAction;
    Action_Delphi_4_Classe: TAction;
    Action_Delphi_5_Matematica: TAction;
    Action_Delphi_6_Botao: TAction;
    Action_Sql_1_ModeloRelacional: TAction;
    Action_Sql_2_Query: TAction;
    Action_Sql_3_StoredProcedure: TAction;
    Action_Sql_4_Function: TAction;
    BalloonHint1: TBalloonHint;
    procedure Action_Delphi_1_ArrayExecute(Sender: TObject);
    procedure Action_Delphi_2_StringExecute(Sender: TObject);
    procedure Action_Delphi_3_TimerExecute(Sender: TObject);
    procedure Action_Delphi_4_ClasseExecute(Sender: TObject);
    procedure Action_Delphi_5_MatematicaExecute(Sender: TObject);
    procedure Action_Delphi_6_BotaoExecute(Sender: TObject);
    procedure Action_Sql_1_ModeloRelacionalExecute(Sender: TObject);
    procedure Action_Sql_2_QueryExecute(Sender: TObject);
    procedure Action_Sql_3_StoredProcedureExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTesteProgramadorDelphi: TFormTesteProgramadorDelphi;

implementation

{$R *.dfm}

uses UnitDesafioDelphi1, UnitDesafioDelphi2, UnitDesafioDelphi3,
  UnitDesafioDelphi4, UnitDesafioDelphi5, UnitDesafioDelphi6, UnitDesafioSQL1,
  UnitDesafioSQL2, UnitDesafioSQL3;

{----------------------------------[ A��ES ]-----------------------------------}
procedure TFormTesteProgramadorDelphi.Action_Delphi_1_ArrayExecute(
  Sender: TObject);
begin
  DesafioDelphi1;
end;

procedure TFormTesteProgramadorDelphi.Action_Delphi_2_StringExecute(
  Sender: TObject);
begin
  DesafioDelphi2;
end;

procedure TFormTesteProgramadorDelphi.Action_Delphi_3_TimerExecute(
  Sender: TObject);
begin
  DesafioDelphi3(Self);
end;

procedure TFormTesteProgramadorDelphi.Action_Delphi_4_ClasseExecute(
  Sender: TObject);
begin
  DesafioDelphi4;
end;

procedure TFormTesteProgramadorDelphi.Action_Delphi_5_MatematicaExecute(
  Sender: TObject);
begin
  DesafioDelphi5;
end;

procedure TFormTesteProgramadorDelphi.Action_Delphi_6_BotaoExecute(
  Sender: TObject);
begin
  DesafioDelphi6(Self);
end;

procedure TFormTesteProgramadorDelphi.Action_Sql_1_ModeloRelacionalExecute(
  Sender: TObject);
begin
  DesafioSQL1(Self);
end;

procedure TFormTesteProgramadorDelphi.Action_Sql_2_QueryExecute(
  Sender: TObject);
begin
  DesafioSQL2(Self);
end;

procedure TFormTesteProgramadorDelphi.Action_Sql_3_StoredProcedureExecute(
  Sender: TObject);
begin
  DesafioSQL3(Self);
end;

end.
