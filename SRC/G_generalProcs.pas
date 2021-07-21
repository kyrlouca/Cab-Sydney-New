unit G_generalProcs;

// ********** Add in the Implentation uses the form with the Database Connection
// *************************************************
// ksfillComboF1(cn,ComboBox,'table','fieldStored','FieldShown','orderbyField',ShowNoneOption);
// Last two params are optional, you can ommit order by and show none option
// remember to set map displayed value if you want to show other value
// for some reason use G_generalProcs in the interface section
// **************************************************
interface

uses DBAccess, IBC, Data.DB, MemDS, IBCClasses, Forms, G_KyriacosTypes, Messages, System.SysUtils, System.DateUtils, System.Variants, Classes, Graphics, Controls, Dialogs,
  StdCtrls, RzDBRGrp, WwDBComb;

type
  Txxx = (trRead, trWrite);

  TParameterRecord = record
    P_ID: String;
    P_Description: String;
    P_String1: string;
    P_String2: string;
    P_String3: string;
    P_String4: string;
    P_String5: string;
    P_String6: string;
    P_Integer1: Integer;
    P_Integer2: Integer;
    P_Float1: Double;
    P_Float2: Double;
  end;

procedure gpShowModal(AMyFormClass: TFormClass);
procedure gpmaxScreen(form: Tform);

function IndexOfSList(str: String; strArray: array of String): Integer;
Function GetSortInfo(TheTable: TIBCQuery; Var SortInfo: TSortInfo): Boolean;
Function SortGrid(TheTable: TIBCQuery; AFieldName: String; SortInfo: TSortInfo): Boolean;

Function GetTheSystemParameter(cn: TIBCConnection; Const Key: String): TParameterRecord;
Function GetOneSystemParameter(cn: TIBCConnection; TheKey, TheDescription: String; var Int1, Int2: Integer; var Num1: Double; Var Str1, str2: String): Boolean;

Function ConvertDate(Const TheString: String): Tdate;
Function MyFormatDotFloat(Const DotAmount1: String): Double;
function gpFloatToStr(Const num: Double; Const Digits: Integer): string;
Procedure ksfillComboF1(Const connection: TIBCConnection; ComboBox: TwwDbComboBox; Const tableName, fieldstored, fieldShown: String; orderBy: String = '';
     ShowEmpty: Boolean = false; ShowAll: Boolean = false);

function ksfillRadioGroup(Const connection: TIBCConnection; RadioGroup: TrzDBRadioGroup; Const tableName, fieldValue, fieldShow: String; Const AllOption: Boolean): TStrings;
Function ConvertDecimalF(StrNum: String): Double;
Function ConvertDateF(Const DateStr: String): Tdate;
Function ConvertTimeStampF(Const DateStr: String): TDateTime;
Function ConvertUTCTimeStampF(Const DateUtcStr: String): TDateTime;
Function ConvertUtcToTimestampNew(Const DateUtc, TimeUtc: String): TDateTime;

Function FormatTimeStampUTCF(Const aTimeStamp: TDateTime): String;

implementation

uses G_KyrSQL, U_ClairDML;

function IndexOfSList(str: String; strArray: array of String): Integer;
  var
    i: Integer;
  begin
    result := -1;

    for i := low(strArray) to high(strArray) do
    begin
      if str = strArray[i] then
      begin
        result := i;
        break;
      end;

    end;

  end;

procedure gpmaxScreen(form: Tform);
  begin
    form.Left := screen.Monitors[0].Left;
    form.WindowState := wsMaximized;

  end;

procedure gpShowModal(AMyFormClass: TFormClass);
  var
    form: Tform;
  begin
    // form := AMyFormClass.Create(Application); // you can use nil if you Free it in here
    try
      form := AMyFormClass.Create(nil); // you can use nil if you Free it in here
      form.ShowModal;
    finally
      // form.Release; // generally better than Free for a Form
      form.free; // generally better than Free for a Form
    end;
  end;

Function GetSortInfo(TheTable: TIBCQuery; Var SortInfo: TSortInfo): Boolean;
  Var
    CurrentSort: String;
    TheFieldName: String;
    AString: String;
  begin

    CurrentSort := Trim(TheTable.GetOrderBy);
    SortInfo.IsSorted := CurrentSort > '';
    SortInfo.IsSortedAsc := Not(Pos('DESC', CurrentSort) > 0);
    SortInfo.CurrentSortClause := CurrentSort;

    AString := StringReplace(CurrentSort, 'DESC', '', [rfReplaceAll, rfIgnoreCase]);
    AString := StringReplace(CurrentSort, 'ASC', '', [rfReplaceAll, rfIgnoreCase]);
    SortInfo.CurrentSortField := Trim(AString);
    if (TheTable.FindField('serial_number') <> Nil) then
    begin
      SortInfo.SerialNumber := TheTable.FieldByName('Serial_number').AsInteger;
    end;

  End;

Function SortGrid(TheTable: TIBCQuery; AFieldName: String; SortInfo: TSortInfo): Boolean;

  Begin
    // check the current field (as provided by click title button event)
    // then sort ACS or DESC as the opposite of the current sort of the current field.
    GetSortInfo(TheTable, SortInfo);
    // TheTable:=SortInfo.Table;

    TheTable.ControlsDisabled;
    TheTable.close;

    TheTable := SortInfo.Table;
    If AFieldName = SortInfo.CurrentSortField then
    begin
      If SortInfo.IsSortedAsc then
      begin
        TheTable.SetOrderBy(AFieldName + ' DESC');
      end
      else
      begin
        TheTable.SetOrderBy(AFieldName + ' ASC');
      end;
    end
    else
    begin
      TheTable.SetOrderBy(AFieldName + ' ASC');
    end;

    TheTable.open;
    if (TheTable.FindField('serial_number') <> Nil) then
    begin
      TheTable.Locate('serial_Number', SortInfo.SerialNumber, []);
    end;

    TheTable.EnableControls;

  End;

Function GetOneSystemParameter(cn: TIBCConnection; TheKey, TheDescription: String; var Int1, Int2: Integer; var Num1: Double; Var Str1, str2: String): Boolean;
  Var
    x1: Double;
    qr: TksQuery;
  Begin
    try
      qr := TksQuery.Create(cn, ' select *  from System_Parameters where parameter_id= :TheKey');
      qr.ParambyName('TheKey').Value := TheKey;
      qr.open;
      If not qr.IsEmpty then
      begin
        Int1 := qr.FieldByName('Int_1').AsInteger;
        Int2 := qr.FieldByName('Int_2').AsInteger;
        Num1 := qr.FieldByName('Num_1').asFloat;
        Str1 := qr.FieldByName('Str_1').asString;
        str2 := qr.FieldByName('Str_2').asString;
      End;
      result := not qr.IsEmpty;
      qr.close;
    finally
      qr.free;
    end;

  End;

Function GetTheSystemParameter(cn: TIBCConnection; Const Key: String): TParameterRecord;
  Var
    x1: Double;
    qr: TksQuery;
  Begin
    try
      qr := TksQuery.Create(cn, ' select *  from System_Parameters where parameter_id= :TheKey');
      qr.ParambyName('TheKey').Value := Key;
      qr.open;
      If qr.IsEmpty then
      begin
        result.P_ID := '';
        exit;
      end;
      with qr do
      begin
        result.P_ID := qr.FieldByName('PARAMETER_ID').asString;
        result.P_Integer1 := FieldByName('Int_1').AsInteger;
        result.P_Integer2 := FieldByName('Int_2').AsInteger;
        result.P_String1 := FieldByName('Str_1').asString;
        result.P_String2 := FieldByName('Str_2').asString;
        result.P_String3 := FieldByName('Str_3').asString;
        result.P_String4 := FieldByName('Str_4').asString;
        result.P_String5 := FieldByName('Str_5').asString;
        result.P_Float1 := FieldByName('NUM_1').asFloat;
        result.P_Float2 := FieldByName('NUM_2').asFloat;
      end;
    finally
      qr.free;
    end;

  End;

Function ConvertDate(Const TheString: String): Tdate;
  Var
    TheDate: Tdate;
    Year, Month, Day: Integer;
    PcFormat: String;
  Begin
    // ShortDateFormat:='dd/mm/yyyy';

    // PcFormat:=ShortDateFormat;

    Day := StrToIntDef(copy(TheString, 1, 2), -1);
    Month := StrToIntDef(copy(TheString, 4, 2), -1);
    Year := StrToIntDef(copy(TheString, 7, 4), -1);
    try
      TheDate := encodeDate(Year, Month, Day);
    except
      TheDate := encodeDate(1999, 12, 31);
    end;
    result := TheDate;
  End;

function gpFloatToStr(Const num: Double; Const Digits: Integer): string;
  // convert a float to a string with decimal digits
  var
    fs: TFormatSettings;
    fmt: String;
  begin
    fs := TFormatSettings.Create();
    fs.DecimalSeparator := '.';
    fs.ThousandSeparator := ',';

    fmt := '%7.' + IntToStr(Digits) + 'f ';
    var res:string:=Format(fmt, [num], fs);
    result := res.Trim;
  end;

Function MyFormatDotFloat(Const DotAmount1: String): Double;
  // getting a string with DOT decimal and convert it to the localized format
  Var
    PCSeparator: Char;
    AmountLocal: Double;
    AmountStr: String;
    astr: string;
  begin
    PCSeparator := FormatSettings.DecimalSeparator;
    AmountStr := StringReplace(DotAmount1, ',', '', [rfReplaceAll]);

    If (PCSeparator = '.') then
    begin
      try
        AmountLocal := StrToFloat(AmountStr);
      except
        AmountLocal := 0;
      end;
    end
    else
    begin
      // Local pc has a different decimal separator than DOT // and our string is DOT
      try
        try
          FormatSettings.DecimalSeparator := '.';
          AmountLocal := StrToFloat(AmountStr);
        except
          on E: exception do
            AmountLocal := 0;
        end;
      finally
        FormatSettings.DecimalSeparator := PCSeparator;
      end;
    end;
    result := AmountLocal;

  end;

function ksfillRadioGroup(Const connection: TIBCConnection; RadioGroup: TrzDBRadioGroup; Const tableName, fieldValue, fieldShow: String; Const AllOption: Boolean): TStrings;

  // function TV_HawbFRM.setClearanceInstructions():boolean;
  var
    qr: TksQuery;
    str: String;
    cVal: String;
    cDesc: String;
  begin

    Try
      str := 'select ' + fieldValue + ', ' + fieldShow + ' from ' + tableName;

      qr := TksQuery.Create(connection, str);
      qr.open;
      RadioGroup.Items.Clear;
      RadioGroup.Values.Clear;
      if AllOption then
      begin
        RadioGroup.Items.Add('All');
        RadioGroup.Values.Add('Show All');
      end;

      while not qr.Eof do
      begin
        cVal := qr.FieldByName(fieldValue).asString;
        cDesc := qr.FieldByName(fieldShow).asString;
        RadioGroup.Items.Add(cDesc);
        RadioGroup.Values.Add(cVal);
        qr.Next;
      end;

    Finally
      qr.free;
    End;

  end;

Procedure ksfillComboF1(Const connection: TIBCConnection; ComboBox: TwwDbComboBox; Const tableName, fieldstored, fieldShown: String; orderBy: String = '';
     ShowEmpty: Boolean = false; ShowAll: Boolean = false);
  // ShowEmpty useful to force user make a choice but have the option to select empty (none)
  // ShowEmpty and ShowEmpty options are usefull when printing reports and user has to select an option
  // fieldshown will show field different than the one stored
  var
    tableSQL: TksQuery;
    str: String;
    val: String;
    MyFIeldShown: String;
  begin
    try
      ComboBox.Items.Clear;
      MyFIeldShown := Trim(fieldShown);

      // stored and shown the same
      if (MyFIeldShown = Trim(fieldstored)) then
      begin
        MyFIeldShown := '';
      end;

      ComboBox.MapList := Trim(MyFIeldShown) > '';
      if (Trim(MyFIeldShown) > '') then
      begin
        str := 'select ' + fieldstored + ', ' + MyFIeldShown + ' from ' + tableName;
      end
      else
      begin
        str := 'select ' + fieldstored + ' from ' + tableName;
      end;

      if (Trim(orderBy) > '') then
      begin
        str := str + ' order by ' + orderBy;
      end;

      if ShowEmpty then
      begin
        ComboBox.Items.Add('None');
      end;

      if ShowAll then
      begin
        ComboBox.Items.Add('All');
      end;

      tableSQL := TksQuery.Create(connection, str);
      With tableSQL do
      begin
        open;
        While (NOT tableSQL.Eof) do
        begin
          val := tableSQL.FieldByName(fieldstored).asString;
          if Trim(MyFIeldShown) > '' then
          begin
            val := tableSQL.FieldByName(MyFIeldShown).asString + #9 + val;
          end;
          ComboBox.Items.Add(val);
          tableSQL.Next;
        end;
        close;
      end;
    finally
      tableSQL.free;
    end;

  end;

Function ConvertDateF(Const DateStr: String): Tdate;
  var
    fs: TFormatSettings;
  begin
    // formatSettings.DecimalSeparator:='$';
    // ShowMessage(System.SysUtils.FormatSettings.DecimalSeparator);
    // exit;

    if trim(DateStr)='' then begin
        result := encodeDate(1999, 1, 1);
        exit;
    end;

    fs := TFormatSettings.Create();
    fs.DateSeparator := '-';
    fs.ShortDateFormat := 'yyyy-mm-dd';
    try
      result := StrToDateTime(DateStr, fs);
    except
      on E: exception do
        result := encodeDate(1999, 1, 1);
    end;

  end;

Function ConvertTimeStampF(Const DateStr: String): TDateTime;
  var
    fs: TFormatSettings;
    s: string;
  begin
    // formatSettings.DecimalSeparator:='$';
    // ShowMessage(System.SysUtils.FormatSettings.DecimalSeparator);
    // exit;

    fs := TFormatSettings.Create();
    fs.DateSeparator := '-';
    fs.TimeSeparator := ':';
    fs.ShortDateFormat := 'yyyy-mm-dd';
    fs.ShortTimeFormat := 'hh:nn:ss';
    try
      // s := FormatDateTime( '', Now, FmtStngs );
      // d := VarToDateTime( s );
      result := StrToDateTime(DateStr, fs);
    except
      on E: exception do
        result := encodeDate(1999, 1, 1);
    end;

  end;

Function ConvertUtcToTimestampNew(Const DateUtc, TimeUtc: String): TDateTime;
  var
    fs: TFormatSettings;
    LocalTime: TDateTime;
    strArray: TArray<String>;

  begin
    // 2021-05-10
    // 14:02:50+04:02
    // 2013-10-18T18:36:22.966-03:00
    if (Trim(DateUtc) = '') OR (Trim(TimeUtc) = '') then
    begin
      result:= encodeDate(1999, 01, 01);
      exit;
    end;

    try
      var str: string := DateUtc + 'T' + TimeUtc;
      var tt: TDateTime := ISO8601ToDate(str);
      result := tt;
      var
      xx := FormatTimeStampUTCF(tt);
    except
      result := encodeDate(1999, 01, 01);
    end;

  end;

Function ConvertUTCTimeStampF(Const DateUtcStr: String): TDateTime;
  var
    fs: TFormatSettings;
    LocalTime: TDateTime;
    strArray: TArray<String>;

  begin
    strArray := DateUtcStr.Split(['+'], 99);
    LocalTime := ConvertTimeStampF(strArray[0]);

    strArray := strArray[1].Split([':'], 99);

    result := IncHour(LocalTime, StrToIntDef(strArray[0], 99));
    result := IncMinute(result, StrToIntDef(strArray[1], 99));

  end;

Function FormatTimeStampUTCF(Const aTimeStamp: TDateTime): String;
  var
    fs: TFormatSettings;
  begin

    fs := TFormatSettings.Create();
    fs.DateSeparator := '-';
    fs.ShortDateFormat := 'yyyy-mm-dd hh:nn:ss';
    try
      // result:=Format('%s (%s)', [FormatDateTime('yyyy-mm-dd hh:nn:ss',aTimeStamp),TTimeZone.Local.GetAbbreviation(Now, true)]);
      result := FormatDateTime('yyyy-mm-dd hh:nn:ss', aTimeStamp) + '+' + Format('%.2d', [TTimeZone.Local.GetUtcOffset(aTimeStamp, true).Hours]) + ':' +
           Format('%.2d', [TTimeZone.Local.GetUtcOffset(aTimeStamp, true).Minutes]);
    except
      on E: exception do
        result := '1999-1-1 00:00:00+00:00';
    end;

  end;

function ConvertDecimalF(StrNum: String): Double;
  var
    fs: TFormatSettings;
  begin


    // formatSettings.DecimalSeparator:='$';
    // ShowMessage(System.SysUtils.FormatSettings.DecimalSeparator);
    // exit;

    fs := TFormatSettings.Create();
    fs.DecimalSeparator := '.';
    fs.ThousandSeparator := ',';
    var xx: Double := StrToFloatDef(StrNum, 0, fs);
    result := xx;
    // try
    // result:=StrToFloat(StrNum,fs);
    // except on E:exception do
    // result:=0;
    // end;

  end;

end.
