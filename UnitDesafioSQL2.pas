unit UnitDesafioSQL2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList;

type
  TDesafioSQL2_Consulta = class(TForm)
    GroupBoxDesafioSQL2: TGroupBox;
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
  DesafioSQL2_Consulta: TDesafioSQL2_Consulta;

procedure DesafioSQL2(AreaDeTrabalho: TWinControl);

implementation

{$R *.dfm}

uses UnitDesafioSQL2_scripts;

{ TDesafioSQL2_Consulta }

{---------------------------------[ INTERNO ]----------------------------------}
procedure DesafioSQL2(AreaDeTrabalho: TWinControl);
begin
  if not Assigned(DesafioSQL2_Consulta) then
    Application.CreateForm(TDesafioSQL2_Consulta, DesafioSQL2_Consulta);

  DesafioSQL2_Consulta.DefineAreaDeTrabalho(AreaDeTrabalho);
end;


{----------------------------------[ A��ES ]-----------------------------------}
procedure TDesafioSQL2_Consulta.ActionEscreveCodigoSQLExecute(Sender: TObject);
begin
  if not Assigned(DesafioSQL2_Scripts) then
    Application.CreateForm(TDesafioSQL2_Scripts, DesafioSQL2_Scripts);

  Self.GroupBoxDesafioSQL2.Parent := Self;
  DesafioSQL2_Scripts.ShowModal;
end;


{---------------------------------[ P�BLICO ]----------------------------------}
procedure TDesafioSQL2_Consulta.DefineAreaDeTrabalho(
  AreaDeTrabalho: TWinControl);
begin
  Self.FAreaDeTrabalho := AreaDeTrabalho;
  Self.GroupBoxDesafioSQL2.Parent := Self.FAreaDeTrabalho;
end;


end.
