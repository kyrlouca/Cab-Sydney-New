unit B_StartCSharp;

interface

uses Winapi.Windows, System.SysUtils, System.IOUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.dialogs, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, RzPanel, RzDlgBtn, RzLaunch, RzButton, Data.DB, DBAccess, IBC;

type
  TStartCSharpFRM = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    RzPanel1: TRzPanel;
    Panel1: TRzPanel;
    Label1: TLabel;
    LaunchSoap: TRzLauncher;
    RzBitBtn2: TRzBitBtn;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
  public
    { Public declarations }
  end;

var
  StartCSharpFRM: TStartCSharpFRM;

implementation

{$R *.dfm}

uses
  G_KyrSQL, U_ClairDML;

procedure TStartCSharpFRM.FormCreate(Sender: TObject);
  begin

    cn := ClairDML.CabCOnnection;

  end;

procedure TStartCSharpFRM.RzBitBtn2Click(Sender: TObject);
  const sysKey = 'Z002';
  begin
    var currentDir: string := System.IOUtils.TDirectory.GetCurrentDirectory();
    var exeFile: string := currentDir + '\DhlSoapService.exe';
      // showMessage(exeFile);
//    LaunchSoap.FileName := exeFile;
//    LaunchSoap.Launch;

    var delSQL: string := 'delete from system_parameters sp where sp.parameter_id = :ParamId';
    ksExecSQLVar(cn, delSQL, [sysKey]);

    var isStopped: boolean := false;
    while not isStopped do
    begin
      // ReadFilesInFolderNew();
      LaunchSoap.FileName := exeFile;
      LaunchSoap.Launch;

      isStopped := ksCountRecVarSQL(cn, 'select sp.parameter_id from system_parameters sp where sp.parameter_id =:ParamId', [sysKey]) > 0;
      sleep(2000);
    end;

  end;

end.
