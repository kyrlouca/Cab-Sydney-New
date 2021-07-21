unit R_ShowErrors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzDlgBtn;

type
  TR_showErrorsFRM = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_showErrorsFRM: TR_showErrorsFRM;

implementation

{$R *.dfm}

end.
