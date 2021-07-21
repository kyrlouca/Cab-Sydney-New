unit c_readDHLInvoices;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  DBAccess, IBC, Data.DB, MemDS, CRGrid, FileCtrl, G_generalProcs, G_KyriacosTypes, RzButton,
  RzPanel;

type
  TFileInfo = Record
    fileName: string;
    ValidCount: integer;
    FailedCount: integer;
    IsProcessed: boolean;
    ErrCount: integer;
  end;

  TAccountInfo = Record
    // IsDiscard:Boolean;
    IsValid: String;
    AccType: string;
    AccountVal: String;
  end;

  TC_ReadDhlInvoicesFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Timer1: TTimer;
    ParameterSQL: TIBCQuery;
    ParameterSQLSERIAL_NUMBER: TIntegerField;
    ParameterSQLKEY_FIELD: TStringField;
    ParameterSQLSYS_TYPE: TStringField;
    ParameterSQLINT_1: TIntegerField;
    ParameterSQLINT_2: TIntegerField;
    ParameterSQLSTR_1: TStringField;
    ParameterSQLSTR_2: TStringField;
    ParameterSQLSTR_3: TStringField;
    ParameterSQLSTR_4: TStringField;
    ParameterSQLSTR_5: TStringField;
    ParameterSQLNUM_1: TFloatField;
    ParameterSQLNUM_2: TFloatField;
    ParameterSQLDATE_1: TDateTimeField;
    ParameterSQLDATE_2: TDateTimeField;
    ParameterSQLDESCRIPTION: TStringField;
    MakeSQL: TIBCQuery;
    InvoiceIASSQL: TIBCQuery;
    Panel3: TPanel;
    OpenDialog1: TOpenDialog;
    WriteTrans: TIBCTransaction;
    Button1: TButton;
    DoSQL: TIBCSQL;
    ReadTrans: TIBCTransaction;
    StartBTN: TRzBitBtn;
    NewMemberBTN: TRzBitBtn;
    InvoiceIASSQLSERIAL_NUMBER: TIntegerField;
    InvoiceIASSQLHAWB: TStringField;
    InvoiceIASSQLINVOICE_NUMBER: TStringField;
    InvoiceIASSQLCONSIGNEE: TStringField;
    InvoiceIASSQLINVOICE_AMOUNT: TFloatField;
    InvoiceIASSQLACCOUNT_BILLING: TStringField;
    InvoiceIASSQLACCOUNT_CASH: TStringField;
    InvoiceIASSQLDATE_ARRIVAL: TDateField;
    InvoiceIASSQLDATE_INVOICED: TDateField;
    InvoiceIASSQLINVOICE_TYPE: TStringField;
    InvoiceIASSQLINVOICE_STATUS: TStringField;
    InvoiceIASSQLIS_COLLECTABLE: TStringField;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure StartBTNClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure NewMemberBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
    Function GetValueFromSystemTable(Const TheKey, TheDescription: String): String;
    Function ReadFilesInFolder: integer;
    Function ReadOneTextFile(Const InFileName, logfile: String): TFileInfo;
    function IsDuplicate(Const InvoiceNumber: string): boolean;

    function DeleteDuplicateInvoices(InvoiceNumber: String): boolean;

    function InsertRecord(Rec: Array of string; logfile: String; const lineNum: integer): boolean;
    function FindInvoiceType(Const BillingInv: string): TAccountInfo;
    function IsValidRow(Const Bill, house: string): boolean;
    Function WriteToLog(Const fileName, aMessage: string): boolean;
    Function ReadMaskFiles(const CurrentDir, NewDir, searchMask: String): integer;

  public
    { Public declarations }
    PRUserData: TParameterRecord;
    GlobalStart: boolean;
  end;

const
  MAXW = 12;

Const C_LogFileName = 'LogFilet2.text';

var
  C_ReadDhlInvoicesFRM: TC_ReadDhlInvoicesFRM;

implementation

uses U_ClairDML;

{$R *.DFM}

Function TC_ReadDhlInvoicesFRM.GetValueFromSystemTable(Const TheKey, TheDescription: String): String;
  Var
    TheQuery: TIBCQuery;
  Begin

    TheQuery := ParameterSQL;
    TheQuery.ParamByName('TheKey').Value := TheKey;

    TheQuery.close;
    If TheQuery.Prepared then
      TheQuery.Prepare;
    TheQuery.ParamByName('TheKey').Value := TheKey;
    TheQuery.Open;
    If TheQuery.IsEmpty Then
    begin
      // raise exception.create('Enter into System parameters (field STR_4) the record: '+TheKey+' for '+TheDescription);
      ShowMessage('Enter into System parameters -> (***STR_1***) the record: ' + TheKey + ' for ' + TheDescription);
      Result := '';
    end
    else
    begin
      TheQuery.First;
      Result := Trim(TheQuery.fieldbyName('STR_1').AsString);
      TheQuery.close;
    end;

  End;

procedure TC_ReadDhlInvoicesFRM.BitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TC_ReadDhlInvoicesFRM.BitBtn2Click(Sender: TObject);
  begin
    close;
  end;

procedure TC_ReadDhlInvoicesFRM.FormActivate(Sender: TObject);
  Var
    S1: String;
  begin
    IF Timer1.Enabled then
    begin
      StartBTN.Color := clGreen;
      StartBTN.Caption := 'Processing Files Active';
    end
    else
    begin
      StartBTN.Color := clred;
      StartBTN.Caption := 'Processing Files NOT Active';
    end;

  end;

procedure TC_ReadDhlInvoicesFRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
  end;

procedure TC_ReadDhlInvoicesFRM.BitBtn3Click(Sender: TObject);
  begin
    close;
  end;

procedure TC_ReadDhlInvoicesFRM.StartBTNClick(Sender: TObject);
  var
    TimerStatus: boolean;
  begin
    // self.ReadAllFiles;
    Timer1.Interval := 1000;
    TimerStatus := Timer1.Enabled;
    Timer1.Enabled := not TimerStatus;
    GlobalStart := Timer1.Enabled;

    If Timer1.Enabled then
    begin
      StartBTN.Color := clGreen;
      StartBTN.Caption := 'Processing Files - Active';

    end
    else
    begin
      StartBTN.Caption := 'Processing Files - NOT Active';
      StartBTN.Color := clred;
    end;

  end;

procedure TC_ReadDhlInvoicesFRM.Timer1Timer(Sender: TObject);
  begin
    ReadFilesInFolder;

  end;

Function TC_ReadDhlInvoicesFRM.WriteToLog(Const fileName, aMessage: string): boolean;
  var
    CurrentDir: String;
    wFile: TextFile;
    logfile: string;

  begin
    logfile := fileName;
    try
      AssignFile(wFile, logfile);
      if FileExists(logfile) then
      begin
        append(wFile);
      end
      else
      begin
        Rewrite(wFile);
      end;
      writeln(wFile, aMessage);
    finally
      closeFile(wFile);
    end;

  end;

Function TC_ReadDhlInvoicesFRM.ReadMaskFiles(const CurrentDir, NewDir, searchMask: String): integer;
  var

    aFile: TextFile;
    wFile: TextFile;
    Count: integer;
    sr: TSearchRec;
    logfile: String;
    FileFullName: String;
    FileNewName: string;
    FileMovedName: String;
    FileNm: string;
    FIleInfo: TFileInfo;

  begin
    Count := 0;
    if FindFirst(CurrentDir + '\' + searchMask, faAnyFile, sr) = 0 then
    begin

      logfile := CurrentDir + '\' + C_LogFileName;

      repeat
        inc(Count);
        if sr.Name[1] <> '.' then
        begin // . is the current directory and .. is the father directory
          FileFullName := CurrentDir + '\' + sr.Name;

          FileNm := ChangeFileExt(sr.Name, '');
          FileNewName := CurrentDir + '\' + ExtractFileName(FileNm) + '.' + 'xyz'; // the intermediary file name
          FileMovedName := NewDir + '\' + ExtractFileName(FileNm) + '.' + 'xxx'; // the new file name after moving

          if FileExists(FileNewName) then
          begin
            DeleteFile(FileNewName);
          end;
          // Rename file to prevent another process reading this file in SearchRecord;
          if not RenameFile(FileFullName, FileNewName) then
          begin
            ShowMessage(' Error - Cannot rename file : ' + FileFullName + ' to ' + FileNewName + ' error=' + IntToStr(GetLastError));
            next;
          end;

          // ***************Read the renamed file to avoic clashes
          // FileInfo:=ProcessOneFile(FileNewName);
          WriteToLog(logfile, '=>Started reading file ' + FileFullName);
          FIleInfo := ReadOneTextFile(FileNewName, logfile);
          if FIleInfo.FailedCount > 0 then
          begin
            WriteToLog(logfile, '*** FAILED TO READ found:' + IntToStr(FIleInfo.FailedCount));
          end;

          if FIleInfo.ErrCount > 0 then
          begin
            WriteToLog(logfile, '*** INVALID ACCOUNTS: ' + IntToStr(FIleInfo.ErrCount));
          end;

          WriteToLog(logfile, 'Finished invoice ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', now) + ' => ' + FIleInfo.fileName + ' valid=' + IntToStr(FIleInfo.ValidCount) +
               ' invalid=' + IntToStr(FIleInfo.FailedCount));
          WriteToLog(logfile, '---------------------------------------------------------------');

          if FileExists(FileMovedName) then
          begin
            DeleteFile(FileMovedName);
          end;
          if not RenameFile(FileNewName, FileMovedName) then
          begin
            // ShowMessage(GetLastErrors
            ShowMessage(' Error - Cannot rename file : ' + FileNewName + ' to ' + FileMovedName + ' error=' + IntToStr(GetLastError));
            next;
          end;

        end;
      until FindNext(sr) <> 0;
      FindClose(sr);
    end; // if find file

  end;

Function TC_ReadDhlInvoicesFRM.ReadFilesInFolder: integer;
  Var
    CurrentDir: String;
    NewDir: String;
    sr: TSearchRec;
    Count: integer;
    FileFullName: String;
    FileNewName: String;
    FileMoved: String;
    aFile: TextFile;
    wFile: TextFile;
    aString: String;
    // logFile:String;
    // BatchDetails:TBatchDetails;
    // MawbArray:TMawbArray;
    CountMawbs, CountHawbs: integer;
    FileNm: String;
    FIleInfo: TFileInfo;
    Mask: String;
    PRUserData: TParameterRecord;
  begin

    Timer1.Enabled := False;

    PRUserData := G_generalProcs.GetTheSystemParameter(cn, 'T01');
    if PRUserData.P_ID = '' then
    begin
      ShowMessage('Need Folder to move files -> go to menu-> system params');
      exit;
    end;

    CurrentDir := PRUserData.P_String1;
    If Not DirectoryExists(CurrentDir) then
    begin
      // StartBTN.Color:=clRed;
      StartBTN.Caption := 'Processing Files - NOT Active';
      abort;
    end;

    NewDir := PRUserData.P_String2;
    If Not DirectoryExists(NewDir) then
    begin
      StartBTN.Color := clred;
      StartBTN.Caption := 'Processing Files - NOT Aactive';

      abort;
    end;

    Mask := '*.txt';
    ReadMaskFiles(CurrentDir, NewDir, Mask);

    // timer was disabled at the start of this procedure to prevent multiple runs
    // It is reenabled now if button was pressed(global start);
    If GlobalStart then
    begin
      Timer1.Enabled := true;
    end;
  End;

function TC_ReadDhlInvoicesFRM.IsDuplicate(Const InvoiceNumber: string): boolean;
  Var
    SQLString: String;
  begin
    SQLString := 'select invoice_number from invoice_ias where invoice_number= :InvoiceNumber';
    With MakeSQL do
    begin
      close;
      ReadONly := true;
      SQL.Clear;
      SQL.Add(SQLString);
      ParamByName('InvoiceNumber').Value := InvoiceNumber;
      if not Prepared then
        Prepare;
      Open;
      Result := Not MakeSQL.IsEmpty;
      close;
    end;
  end;

function TC_ReadDhlInvoicesFRM.IsValidRow(Const Bill, house: string): boolean;
  Var
    IsValid: boolean;
  begin
    Result := ((Length(Trim(Bill)) = 9) and (Length(Trim(house)) = 10));
  end;

Function TC_ReadDhlInvoicesFRM.ReadOneTextFile(Const InFileName, logfile: String): TFileInfo;

  var

    TheFileName: String;
    TheLine: String;
    TheEndLine: String;
    InFile: TextFile;
    MyEol: boolean;
    CharCount: integer;
    I, IntChar: integer;
    LinesCount: integer;
    ValidCount: integer;
    RecCount: integer;
    InValidCount: integer;
    TheChar: char;
    BillingInvoice: String;
    Hawb: string;
    InvoiceNumber: string;

    Words: array [0 .. MAXW] of String;
    inv: integer;
    IsValidRowText: boolean;
    AccountInfo: TAccountInfo;
    DefaultDir: String;
    ErrCount: integer;

  begin

    PRUserData := G_generalProcs.GetTheSystemParameter(cn, 'T01');
    DefaultDir := PRUserData.P_String1;

    try
      AssignFile(InFile, InFileName);
{$I-}
      Reset(InFile);
{$I+}
      if IOResult <> 0 then
      begin
        MessageDlg('Can Not Read File' + TheFileName, mtError, [mbOk], 0);
        abort;
      end;

      LinesCount := 0;
      ValidCount := 0;
      InValidCount := 0;
      RecCount := 0;
      ErrCount := 0;

      while (not EOF(InFile)) do
      begin

        // if (Validcount> 2) then break;
        // ***************************************************
        // * Read one LINE from file char by char to check for end of line
        // ***************************************************
        TheLine := '';
        MyEol := False;
        CharCount := 0;
        While (not MyEol) do
        begin // One line until Eol=10 return may be missing
          Read(InFile, TheChar);
          if TheChar = #10 then
          begin
            MyEol := true;
            break;
          end
          else
          begin
            TheLine := TheLine + TheChar;
          end;
          inc(CharCount);
          // if(ir=100) then showmessage('100');
        end;
        inc(LinesCount);

        If (RecCount) < -1 then
        begin // =10 TO READ JUST 10
          break;
        end;

        BillingInvoice := Trim(Copy(TheLine, 1, 12));
        Hawb := Trim(Copy(TheLine, 61, 12));
        inv := StrToIntDef(BillingInvoice, -1);

        IsValidRowText := IsValidRow(BillingInvoice, Hawb);

        if IsValidRowText then
        begin
          inc(RecCount);
          AccountInfo := FindInvoiceType(BillingInvoice);
          if AccountInfo.AccType = 'ERR' then
          begin
            inc(ErrCount);
            WriteToLog(logfile, '*** ERROR line: ' + IntToStr(LinesCount) + '. Invalid account: ' + AccountInfo.AccountVal);
          end;
          // showMessage('line '+TheLine);

          Words[11] := AccountInfo.IsValid;
          Words[12] := AccountInfo.AccType;

          Words[0] := Copy(TheLine, 1, 12); // BILLING ACCOUNT NUMBER
          Words[1] := Copy(TheLine, 13, 12); // CASH ACCOUNT NUMBER
          Words[2] := Copy(TheLine, 25, 31); // CONSIGNEE

          Words[3] := Copy(TheLine, 61, 12); // HAWB
          Words[4] := Copy(TheLine, 73, 37); // *TDOC
          Words[5] := Copy(TheLine, 110, 12); // *mOVEMENT
          Words[6] := Copy(TheLine, 122, 12); // ARRIVAL DATE
          Words[7] := Copy(TheLine, 134, 11); // INVOICE NUMBER
          Words[8] := Copy(TheLine, 145, 14); // INVOICE DATE
          Words[9] := Copy(TheLine, 159, 3); // INVOICE_STATUS
          Words[10] := Copy(TheLine, 162, 19); // AMOUNT

          InvoiceNumber := Words[7];

          DeleteDuplicateInvoices(InvoiceNumber);
          InsertRecord(Words, logfile, LinesCount);
          inc(ValidCount);

        end
        else
        begin
          // showMessage('Inv'+InvoiceNum);
        end;

      end; // while EOF
      // showMessage('lines'+intToStr(LinesCount)+' valid:'+intToStr(ValidCount));
      Result.ValidCount := ValidCount;
      Result.FailedCount := InValidCount;
      Result.fileName := InFileName;

    finally
      closeFile(InFile);
    end;

  End;

function TC_ReadDhlInvoicesFRM.InsertRecord(Rec: Array of string; logfile: string; const lineNum: integer): boolean;
  var
    I: integer;
    amount: double;
    d1: TdateTime;

  begin
    with InvoiceIASSQL do
    begin
      If not Active then
        Open;
      If not Prepared Then
        Prepare;
      insert;
      fieldbyName('ACCOUNT_BILLING').Value := Trim(Rec[0]);
      fieldbyName('ACCOUNT_CASH').Value := Trim(Rec[1]);
      fieldbyName('CONSIGNEE').Value := Trim(Rec[2]);

      fieldbyName('HAWB').Value := Trim(Rec[3]);

      d1 := G_generalProcs.ConvertDate(Trim(Rec[6]));
      // ShowMessage(rec[6]);
      fieldbyName('DATE_ARRIVAL').Value := d1;

      fieldbyName('INVOICE_NUMBER').Value := Trim(Rec[7]);

      d1 := G_generalProcs.ConvertDate(Trim(Rec[8]));
      fieldbyName('DATE_INVOICED').Value := d1;

      fieldbyName('INVOICE_STATUS').Value := Trim(Rec[9]);

      amount := G_generalProcs.MyFormatDotFloat(Trim(Rec[10]));
      fieldbyName('INVOICE_AMOUNT').Value := amount;

      fieldbyName('is_collectable').Value := Trim(Rec[11]);
      fieldbyName('INVOICE_TYPE').Value := Trim(Rec[12]);
      try
        post;
      except

        InvoiceIASSQL.cancel;
        WriteToLog(logfile, 'insert error w[0]:' + Rec[0] + ' line:' + IntToStr(lineNum));
        // ShowMessage('try eror');

      end;

    end;
  end;

procedure TC_ReadDhlInvoicesFRM.NewMemberBTNClick(Sender: TObject);
  var
    CDefaultDirectory, CDefaultFile: String;
    FileNameFull: String;
    FileNamePart: String;
    FIleInfo: TFileInfo;
    CurrentDir: String;
    CurrentFile: string;
    NewDir: string;
    // CurrentDirData :TParameterRecord;
    DirData: TParameterRecord;
    Mask: String;
  begin

    DirData := G_generalProcs.GetTheSystemParameter(cn, 'T01');
    NewDir := DirData.P_String2;

    If Not DirectoryExists(NewDir) then
    begin
      ShowMessage('Need to specify folders. Go to Menu->system params...');
      exit;
      // abort; // not need to abort use current dir
    end;

    with OpenDialog1 do
    begin
      OpenDialog1.Options := [ofFileMustExist, ofHideReadOnly, ofNoChangeDir];

      OpenDialog1.InitialDir := DirData.P_String1;
      if Execute then
      begin
        FileNameFull := fileName;
      end
      else
      begin
        ShowMessage('No File was Selected');
        abort;
      end;
    end; { with }

    CurrentDir := ExtractFileDir(FileNameFull);
    CurrentFile := ExtractFileName(FileNameFull);
    Mask := CurrentFile;

    ReadMaskFiles(CurrentDir, NewDir, Mask);
    ShowMessage('Finish processing File:' + FileNameFull);

    CurrentDir := ExtractFileDir(FileNameFull);
    CurrentFile := ExtractFileName(FileNameFull);
    Mask := CurrentFile;

    ReadMaskFiles(CurrentDir, NewDir, Mask);

    ShowMessage('Finished Processing');

  end;

function TC_ReadDhlInvoicesFRM.FindInvoiceType(Const BillingInv: string): TAccountInfo;
  Var
    Len: integer;
    SQLString: String;
    AccountCategory: string;
    IsCollected: string;
    IsFound: boolean;
    I: integer;
    ac: string;
  begin

    {
      DUTYCYDTU // Normal cash customer
      DUTYCYDTP //DUTYCYDTP-DDP CUSTOM DUTY
      DUTYCYWOF // write off
      470004263 //duty prepaymen
      961195524 //delivery to brokers
      47xxxxxxx //account
    }


    // if you can't find the type then make the record valid and it will show as not collected!

    Result.AccountVal := Trim(BillingInv);
    Result.IsValid := 'Y';
    Result.AccType := 'ERR';

    Len := Length(Trim(BillingInv));
    if (Len <> 9) then
    begin
      exit;
    end;

    SQLString := 'select * from account_category_item aci ' + ' join account_category acc on aci.fk_account_category=acc.serial_number ' +
         ' where aci.account_number = :AccountNumber';

    MakeSQL.close;
    MakeSQL.ReadOnly := true;
    MakeSQL.SQL.Clear;
    MakeSQL.SQL.Add(SQLString);
    if not MakeSQL.Prepared then
      MakeSQL.Prepare;

    for I := Len downto 2 do
    begin
      ac := Copy(BillingInv, 1, I);
      With MakeSQL do
      begin
        close;
        ParamByName('AccountNumber').Value := ac;
        Open;
        if (not IsEmpty) then
        begin
          Result.IsValid := Trim(fieldbyName('iS_COLLECTED').AsString);
          Result.AccType := Trim(fieldbyName('ACCOUNT_TYPE').AsString);
          exit;
        end;
      end;
    end;

    Result.IsValid := 'Y';
    Result.AccType := 'ERR';
  End;

function TC_ReadDhlInvoicesFRM.DeleteDuplicateInvoices(InvoiceNumber: String): boolean;
  Var
    SQLString: String;
  Begin

    with DoSQL do
    begin
      SQLString := 'Delete  from invoice_ias where invoice_number= :InvoiceNumber';
      DoSQL.SQL.Clear;
      DoSQL.SQL.Add(SQLString);
      DoSQL.ParamByName('INvoiceNumber').Value := InvoiceNumber;
      DoSQL.Execute;
    end;

  end;

end.
