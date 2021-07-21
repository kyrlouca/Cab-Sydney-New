unit testFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, RzSplit, RzGroupBar,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    RzStatusBar1: TRzStatusBar;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    RzStatusBar2: TRzStatusBar;
    RzSplitter1: TRzSplitter;
    RzToolbar2: TRzToolbar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
