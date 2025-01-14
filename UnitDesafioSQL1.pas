unit UnitDesafioSQL1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList;

type
  TDesafioSQL1_MR = class(TForm)
    GroupBoxDesafioSQL1: TGroupBox;
    Memo2: TMemo;
    Button11: TButton;
    ActionList1: TActionList;
    ActionEscreveCodigoSQL: TAction;
    procedure ActionEscreveCodigoSQLExecute(Sender: TObject);

  private
    { Private symbols }
    FAreaDeTrabalho: TWinControl;
    FContagem: Integer;

  private
    { Private declarations }

  public
    { Public declarations }
    procedure DefineAreaDeTrabalho(AreaDeTrabalho: TWinControl);
  end;

var
  DesafioSQL1_MR: TDesafioSQL1_MR;

procedure DesafioSQL1(AreaDeTrabalho: TWinControl);


implementation

{$R *.dfm}

uses UnitDesafioSQL1_scripts;


{---------------------------------[ INTERNO ]----------------------------------}
procedure DesafioSQL1(AreaDeTrabalho: TWinControl);
begin
  if not Assigned(DesafioSQL1_MR) then
    Application.CreateForm(TDesafioSQL1_MR, DesafioSQL1_MR);

  DesafioSQL1_MR.DefineAreaDeTrabalho(AreaDeTrabalho);
end;


{----------------------------------[ A��ES ]-----------------------------------}
procedure TDesafioSQL1_MR.ActionEscreveCodigoSQLExecute(Sender: TObject);
begin
  if not Assigned(DesafioSQL1_Scripts) then
    Application.CreateForm(TDesafioSQL1_Scripts, DesafioSQL1_Scripts);

  Self.GroupBoxDesafioSQL1.Parent := Self;
  DesafioSQL1_Scripts.ShowModal;
end;


{---------------------------------[ P�BLICO ]----------------------------------}
procedure TDesafioSQL1_MR.DefineAreaDeTrabalho(AreaDeTrabalho: TWinControl);
begin
  Self.FAreaDeTrabalho := AreaDeTrabalho;
  Self.GroupBoxDesafioSQL1.Parent := Self.FAreaDeTrabalho;
end;

end.
