unit UnitDesafioSQL1_scripts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TDesafioSQL1_Scripts = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Memo2: TMemo;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Memo3: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DesafioSQL1_Scripts: TDesafioSQL1_Scripts;

implementation

{$R *.dfm}

end.
