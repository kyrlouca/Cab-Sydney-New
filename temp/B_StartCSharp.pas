unit B_StartCSharp;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, RzPanel, RzDlgBtn;

type
  TStartCSharpFRM = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzPanel1: TRzPanel;
    Panel1: TRzPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StartCSharpFRM: TStartCSharpFRM;

implementation

{$R *.dfm}

end.
