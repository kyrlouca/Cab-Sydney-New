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

function AddQuotesIfNeeded(const S: String): String;
  begin
    if (S = '') or (Pos(' ', S) <> 0) or (Pos('"', S) <> 0) then Result := AnsiQuotedStr(S, '"')
    else Result := S;
  end;

procedure ExecuteCommandAndAppendToFile(const Executable: string; const Arguments: string; const WorkingDir: string; const OutputFile: string);
  const
    sa: TSecurityAttributes = (nLength: SizeOf(sa); bInheritHandle: True);
  var
    hstdout: THandle;
    StartupInfo: TStartupInfo;
    ProcessInfo: TProcessInformation;
    cmd: string;
  begin
    hstdout := CreateFile(PChar(OutputFile), GENERIC_WRITE, 0, @sa, OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);
    Win32Check(hstdout <> INVALID_HANDLE_VALUE);
    try
      // move to end of file since we wish to append
      SetFilePointer(hstdout, 0, nil, FILE_END);

      ZeroMemory(@StartupInfo, SizeOf(StartupInfo));
      StartupInfo.cb := SizeOf(StartupInfo);
      StartupInfo.dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      StartupInfo.wShowWindow := SW_HIDE;
      StartupInfo.hStdOutput := hstdout;
      StartupInfo.hStdError := hstdout;

      cmd := Executable + ' ' + Arguments;
      UniqueString(cmd); // not needed but let's be explicit
      if not CreateProcess(nil, PChar(cmd), nil, nil, True, CREATE_NO_WINDOW or NORMAL_PRIORITY_CLASS, nil, PChar(WorkingDir), StartupInfo, ProcessInfo) then
      begin
        RaiseLastOSError;
      end;
      try
        WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
      finally
        CloseHandle(ProcessInfo.hProcess);
        CloseHandle(ProcessInfo.hThread);
      end;
    finally
      CloseHandle(hstdout);
    end;
  end;

Function RunExecutable(const FileName: String; const Params: array of String; const WorkingDirectory: String; WaitForIt: Boolean): DWORD;
  Var
    StartupInfo: TStartupInfo;
    ProcessInfo: TProcessInformation;
    sCommand: String;
    I: Integer;
  begin
    sCommand := AddQuotesIfNeeded(FileName);
    for I := Low(Params) to High(Params) do
    begin
      sCommand := sCommand + ' ' + AddQuotesIfNeeded(Params[I]);
    end;
    UniqueString(sCommand);

    ZeroMemory(@StartupInfo, SizeOf(StartupInfo));
    StartupInfo.cb := SizeOf(StartupInfo);

    ZeroMemory(@ProcessInfo, SizeOf(TProcessInformation));

    If CreateProcess(nil, PChar(sCommand), nil, nil, IsConsole, NORMAL_PRIORITY_CLASS, nil, PChar(WorkingDirectory), StartupInfo, ProcessInfo) Then
    Begin
      CloseHandle(ProcessInfo.hThread);
      If (not WaitForIt) or (WaitForSingleObject(ProcessInfo.hProcess, INFINITE) = WAIT_OBJECT_0) Then GetExitCodeProcess(ProcessInfo.hProcess, Result)
      else Result := STILL_ACTIVE;
      CloseHandle(ProcessInfo.hProcess);
    End
    Else
    Begin
      Raise Exception.Create('CreateProcess failed with error "' + SysErrorMessage(GetLastError) + '".');
    End;
  End;

procedure TStartCSharpFRM.RzBitBtn2Click(Sender: TObject);
  const sysKey = 'Z02';
  begin



    // keep launching the C# process (which sends the first UNLOCKED pending it finds)
    // the process will stop launching by checking if there is an entry Z002 in the systems_table

    var currentDir: string := System.IOUtils.TDirectory.GetCurrentDirectory();
      // currentDir := currentDir + '\';
    var exeFile: string := Tpath.Combine(currentDir, 'DhlSoapService.exe');
    var configFile: string := Tpath.Combine(currentDir, 'ConfigData.json');
    var logFile: string := Tpath.Combine(currentDir, 'logger99.txt');
    ShowMessage(exeFile);
    // ShowMessage(configFile);
    // ShowMessage(currentDir);

    /// //////////  \
    // RunExecutable(AddQuotesIfNeeded(exeFile),[configFile],AddQuotesIfNeeded(currentDir),false );
    // LaunchSoap.FileName := exeFile;
    // LaunchSoap.Parameters := configFile;

    var delSQL: string := 'delete from system_parameters sp where sp.parameter_id = :ParamId';
    ksExecSQLVar(cn, delSQL, [sysKey]);

    var isStopped: Boolean := false;
    while not isStopped do
    begin
      // RunExecutable(AddQuotesIfNeeded(exeFile), [configFile], AddQuotesIfNeeded(currentDir), True);
      ExecuteCommandAndAppendToFile(exeFile, configFile, currentDir, logFile);
      isStopped := ksCountRecVarSQL(cn, 'select sp.parameter_id from system_parameters sp where sp.parameter_id =:ParamId', [sysKey]) > 0;
      sleep(2000);
    end;

  end;

end.
