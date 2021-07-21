unit B_StartCSharp;

interface

uses Winapi.Windows, System.SysUtils,System.IOUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
vcl.dialogs,  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, RzPanel, RzDlgBtn, RzLaunch, RzButton;

type
  TStartCSharpFRM = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzPanel1: TRzPanel;
    Panel1: TRzPanel;
    Label1: TLabel;
    LaunchSoap: TRzLauncher;
    RzBitBtn2: TRzBitBtn;
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StartCSharpFRM: TStartCSharpFRM;

implementation

{$R *.dfm}

procedure TStartCSharpFRM.RzBitBtn2Click(Sender: TObject);
begin
  var currentDir:string:= System.IOUtils.TDirectory.GetCurrentDirectory();
  var exeFile:string := currentDir+'\DhlSoapService.exe';
//  showMessage(exeFile);
  LaunchSoap.FileName:=exeFile;
  LaunchSoap.Launch;

end;

end.
