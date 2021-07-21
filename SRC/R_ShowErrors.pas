unit R_ShowErrors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzDlgBtn, Vcl.StdCtrls, RzEdit;

type
  TR_showErrorsFRM = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    MemoErrors: TRzMemo;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    In_ErrorText: string;
    x: integer;
  end;

var
  R_showErrorsFRM: TR_showErrorsFRM;

implementation

{$R *.dfm}

procedure TR_showErrorsFRM.FormActivate(Sender: TObject);
  begin
    var Splitted: TArray<String> := In_ErrorText.Split([',']);
      for var s: string in Splitted Do MemoErrors.Lines.add(s);
  end;

end.
