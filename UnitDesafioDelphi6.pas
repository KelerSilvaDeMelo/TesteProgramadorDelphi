unit UnitDesafioDelphi6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList;

type
  TDesafioDelphi6OOP = class(TForm)
    GroupBoxDesafioDelphi3: TGroupBox;
    LabelContagem: TLabel;
    Memo2: TMemo;
    Button2: TButton;
    Button1: TButton;
    ActionList1: TActionList;
    ActionCriarBotao: TAction;
    ActionLimpar: TAction;

    procedure FormCreate(Sender: TObject);
    procedure ActionCriarBotaoExecute(Sender: TObject);
    procedure ActionLimparExecute(Sender: TObject);
    procedure ButtonNomeClick(Sender: TObject);


  private
    { Private symbols }
    FAreaDeTrabalho: TWinControl;
    FContagemNaLinha, FContagemTotal: Integer;
    FLinha, FColuna: Integer;

  private
    { Private declarations }
    procedure CriarNovoBotao;
    procedure LimparAreaDeTrabalho;

  public
    { Public declarations }
    procedure DefineAreaDeTrabalho(AreaDeTrabalho: TWinControl);

  end;

var
  DesafioDelphi6OOP: TDesafioDelphi6OOP;

procedure DesafioDelphi6(AreaDeTrabalho: TWinControl);

implementation

{$R *.dfm}

procedure DesafioDelphi6(AreaDeTrabalho: TWinControl);
begin
  if not Assigned(DesafioDelphi6OOP) then
    Application.CreateForm(TDesafioDelphi6OOP, DesafioDelphi6OOP);

  DesafioDelphi6OOP.DefineAreaDeTrabalho(AreaDeTrabalho);
end;


{ TDesafioDelphi6OOP }


{----------------------------------[ AÇÕES ]-----------------------------------}
procedure TDesafioDelphi6OOP.ActionCriarBotaoExecute(Sender: TObject);
begin
  Self.CriarNovoBotao;
end;

procedure TDesafioDelphi6OOP.ActionLimparExecute(Sender: TObject);
begin
  Self.LimparAreaDeTrabalho;
end;


{----------------------------------[ INTERN ]----------------------------------}
procedure TDesafioDelphi6OOP.ButtonNomeClick(Sender: TObject);
begin
  if Assigned(Sender) and (Sender is TButton) then
    ShowMessage(TButton(Sender).Caption);
end;


{---------------------------------[ PÚBLICO ]----------------------------------}
procedure TDesafioDelphi6OOP.FormCreate(Sender: TObject);
begin
  Self.FLinha := 1;
  Self.FColuna := 1;
  Self.FContagemNaLinha := 0;
  Self.FContagemTotal := 0;
end;

procedure TDesafioDelphi6OOP.DefineAreaDeTrabalho(AreaDeTrabalho: TWinControl);
begin
  Self.FAreaDeTrabalho := AreaDeTrabalho;
  Self.GroupBoxDesafioDelphi3.Parent := Self.FAreaDeTrabalho;
end;



{---------------------------------[ PRIVADO ]----------------------------------}
procedure TDesafioDelphi6OOP.CriarNovoBotao;
var
  Botao: TButton;
begin
  Inc(Self.FContagemTotal);
  Self.LabelContagem.Caption := '<Contagem de botões : '
                              + Self.FContagemTotal.ToString + '>';
  Inc(Self.FContagemNaLinha);
  if Self.FContagemNaLinha > 7 then
  begin
    Inc(Self.FLinha);
    Self.FContagemNaLinha := 1;
  end;

  Botao := TButton.Create(Self);
  Botao.Left := Self.GroupBoxDesafioDelphi3.Left
              + Pred(Self.FContagemNaLinha) * 48;
  Botao.Top := Self.GroupBoxDesafioDelphi3.Top
             + Self.GroupBoxDesafioDelphi3.Height
             + 12 +(Pred(Self.FLinha) * 28);
  Botao.Width := 40;
  Botao.Caption := Self.FContagemTotal.ToString;
  Botao.Parent := Self.FAreaDeTrabalho;
  Botao.OnClick := ButtonNomeClick;
end;

procedure TDesafioDelphi6OOP.LimparAreaDeTrabalho;
var
  Indice: Integer;
  Botao: TButton;
begin
  for Indice := Pred(Self.ComponentCount) downto 0 do
  begin
    if Self.Components[Indice] is TButton then
    begin
      Botao := TButton(Self.Components[Indice]);
      if Botao.Name = '' then
        Botao.Free;
    end;
  end;

  Self.FLinha := 1;
  Self.FColuna := 1;
  Self.FContagemNaLinha := 0;
  Self.FContagemTotal := 0;

  Self.LabelContagem.Caption := '<Contagem de botões : '
                              + Self.FContagemTotal.ToString + '>';
  Self.GroupBoxDesafioDelphi3.Parent := Self;
end;


end.
