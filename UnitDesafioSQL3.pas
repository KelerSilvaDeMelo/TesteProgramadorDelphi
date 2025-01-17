unit UnitDesafioSQL3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList;

type
  TDesafioSQL2_StoredProcedure = class(TForm)
    GroupBoxDesafioSQL3: TGroupBox;
    Memo2: TMemo;
    Button11: TButton;
    ActionList1: TActionList;
    ActionEscreveCodigoSQL: TAction;
    procedure ActionEscreveCodigoSQLExecute(Sender: TObject);

  private
    { Private symbols }
    FAreaDeTrabalho: TWinControl;
    FContagem: Integer;

  public
    { Public declarations }
    procedure DefineAreaDeTrabalho(AreaDeTrabalho: TWinControl);
  end;

var
  DesafioSQL2_StoredProcedure: TDesafioSQL2_StoredProcedure;

procedure DesafioSQL3(AreaDeTrabalho: TWinControl);

implementation

{$R *.dfm}

uses UnitDesafioSQL3_scripts;

{ TDesafioSQL2_StoredProcedure }

{---------------------------------[ INTERNO ]----------------------------------}
procedure DesafioSQL3(AreaDeTrabalho: TWinControl);
begin
  if not Assigned(DesafioSQL2_StoredProcedure) then
    Application.CreateForm(TDesafioSQL2_StoredProcedure, DesafioSQL2_StoredProcedure);

  DesafioSQL2_StoredProcedure.DefineAreaDeTrabalho(AreaDeTrabalho);
end;


{----------------------------------[ A��ES ]-----------------------------------}
procedure TDesafioSQL2_StoredProcedure.ActionEscreveCodigoSQLExecute(
  Sender: TObject);
begin
  if not Assigned(DesafioSQL3_Scripts) then
    Application.CreateForm(TDesafioSQL3_Scripts, DesafioSQL3_Scripts);

  Self.GroupBoxDesafioSQL3.Parent := Self;
  DesafioSQL3_Scripts.ShowModal;
end;


{---------------------------------[ P�BLICO ]----------------------------------}
procedure TDesafioSQL2_StoredProcedure.DefineAreaDeTrabalho(
  AreaDeTrabalho: TWinControl);
begin
  Self.FAreaDeTrabalho := AreaDeTrabalho;
  Self.GroupBoxDesafioSQL3.Parent := Self.FAreaDeTrabalho;
end;

end.
