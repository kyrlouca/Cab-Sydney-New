unit G_KyrSQL;

// CLASS:
// function ksGetSerialNumber(const connection: TIBCConnection; const Sql: string; fieldForSerial:string; InArray: array of Variant): variant;
// *****************************************
// Easiest Function for single line. Use this one if you don't need transaction control
// ** CANNOT user quoted params. provide them in params array instead
// ksExecSQL(cn,'delete from unit_measure where serial_number = :serial',['4']);
//
//
// *****************************************
// To check if a value  exists
// it returns a record count, so use an sql query to SELECT all desired records, do not use count(*)
// function ksCountRecVarSQL(const connection: TIBCConnection; const Sql: string; InArray: array of Variant): integer;
// *****************************************
// to Create query on the fly
{
  var qr :TIBCQuery :=TksQuery.Create(cn,'select count(*) as cnt from hawb_item where fk_hawb_serial= :HawbSerial');
  Try
  qr.ParamByName('hawbSerial').Value:=HawbSerial;
  qr.Open;
  result:=qr.FieldByName('cnt').AsInteger;
  Finally
  qr.Free;
  End;
}

// *****************************************
// when you need commit for two or more tables
// **ERROR if you get explicit start transaction you need to check your connection
// var   m1:TksMultiSQL;
// try
// m1:=TksMultiSQL.Create(cn)
// .add('update unit_measure set xml_code = :code where serial_number= :serial',['zz','2'])
// .add('update unit_measure set xml_code = :code where serial_number= :serial',['aa','3'])
// .ExecSQL();
// finally
// m1.Free();
// end;
//
// will fill the stringlist of the combo, with values from
// remember to set map displayed value if you want to show other value
// ksfillCombo(MainFRM.IBCConnection1,vatFLD.Items,'vat_category','code','rate' );
//
// will fill a TRZRadioGroup with values and display
// ksfillRadioGroup(cn,ClearanceRGP,'TableName','Key','Description');

interface

uses
  SysUtils, Variants, Classes, Generics.Collections, IBCClasses, IBC, MemDS, Data.DB, Forms,
  DBAccess, Wwdbcomb, codeSiteLogging, CodeSiteMessage, RzDBRGrp;

type
  TTransactionType = (trRead, trWrite);
  TStringArray = array of string;

  TksMultiSQLLine = class(TObject)
  private
    sqlString: string;
  private
    params: TStringList;
  private
    constructor Create(Sql: string; pParams: array of string);
  private
    destructor Destroy; override;
  private
    function display(): string;
  private
    function add(Sql: string; pParams: array of string): TksMultiSQLLine;
  end;

  TksMultiSQL = class(TObjectList<TksMultiSQLLine>)
  public
    name: string;
  private
    mQuery: TIBCSQL;
  private
    mUpdateTrans: TIBCTransaction;
  private
    mconnection: TIBCConnection;
  private
    function addLine(line: TksMultiSQLLine): TksMultiSQLLine;

  public
    constructor Create(connection: TIBCConnection; AOwnsObjects: Boolean = True);
  public
    destructor Destroy; override;
  public
    function add(Sql: string; params: array of string): TksMultiSQL;
  public
    function clearAll: Boolean;
  public
    function getLine(index: integer): TksMultiSQLLine;
  public
    function ExecSQL(): TksMultiSQL;

  end;

  TksQuery = class(TIBCQuery)
  private
    fConnection: TIBCConnection;
    frTrans: TIBCTransaction;
    fwTrans: TIBCTransaction;
  public
    constructor Create(const connection: TIBCConnection; const sqlString: string); reintroduce;
    destructor Destroy; override;
  end;

function CreateTransaction(const connection: TIBCConnection; const TransType: TTransactionType): TIBCTransaction; forward;

function ksExecSQLOld(const connection: TIBCConnection; const Sql: string; ParamsArray: array of string): Boolean;
function ksExecSQLVar(const connection: TIBCConnection; const Sql: string; InArray: array of Variant): integer;

function ksCountRecSQL(const connection: TIBCConnection; const Sql: string; ParamsArray: array of string): integer;
function ksCountRecVarSQL(const connection: TIBCConnection; const Sql: string; InArray: array of Variant): integer;

// function ksOpenTables(Tables: Array of TDataset):Boolean;
function ksOpenTables(Tables: array of TCustomDADataSet): Boolean;
function ksPrepSQL(const sqlString: string; const TableSQL: TIBCQuery): Boolean;
function ksGenerateSerial(const connection: TIBCConnection; const GenName: string): integer;
function CopyOneRow(connection: TIBCConnection; sourceTable, destTable: string; useGenerator: Boolean; generatorName: string; keyField: string; ValueForSelection: integer;
     noCopyFields: array of string; noCopyValues: array of integer): integer;
function ksGetOneFieldValue(const connection: TIBCConnection; const Sql: string; fieldForValue: string; InArray: array of Variant): Variant;
// function ksfillCombo(Const connection: TIBCConnection; StrList:TStrings;Const tableName,fieldstored,fieldShown:String ):TStrings;
// function ksfillCombo2(Const connection: TIBCConnection; StrList:TStrings;Const tableName,fieldstored,fieldShown:String;Const ShowEmpty:Boolean ):TStrings;
// function ksfillRadioGroup(Const connection: TIBCConnection; RadioGroup:TrzDBRadioGroup;Const tableName,fieldValue,fieldShow:String ):TStrings;

implementation

// ******************************************************************
// *******************************************
function CopyOneRow(connection: TIBCConnection; sourceTable, destTable: string; useGenerator: Boolean; generatorName: string; keyField: string; ValueForSelection: integer;
     noCopyFields: array of string; noCopyValues: array of integer): integer;
  var noCopyList: TStringList;
  begin

    // useGenerator is true, generate a key and assign it to keyField
    // keyfield is used as the key to update with generator value
    // valueForSelection is used to select the source record, assumeing that the parameter was defined in the sqlstring
    // make sure you place any foregn keys in the noCopyFields, and the corresponding value in the
    result := 0;
    noCopyList := TStringList.Create;
    var sqlsrc: string := 'select * from ' + sourceTable + ' where ' + keyField + ' = :selectionValue';
    var sqldest: string := 'select * from ' + destTable + ' where ' + keyField + ' = -1';
    var srcQuery: TIBCQuery := TksQuery.Create(connection, sqlsrc);
    var destQuery: TIBCQuery := TksQuery.Create(connection, sqldest);

      // var list : TStringList := TStringList.Create;
      Try try var item: string;
    for item in noCopyFields do
    begin
      noCopyList.add(item);
      // list.Insert(0,item);
    end;

    srcQuery.Open;
    // selectionValue was used in srcQuery as parameter
    srcQuery.ParamByName('selectionValue').value := ValueForSelection;
    srcQuery.Execute;

    destQuery.Open;
    destQuery.Insert;
    For var I := 0 to destQuery.Fields.count - 1 do
    begin
      var DestField: TField := destQuery.Fields[I];
      var DestFieldName: string := destQuery.Fields[I].FieldName;
      var SourceField: TField := srcQuery.FindField(DestFieldName);

        // do not copy fields in the noCopyList
      If SourceField <> nil then
      begin
        var indx: integer := noCopyList.IndexOf(DestFieldName);
        if indx > -1 then
        begin
          DestField.value := noCopyValues[indx];
        end
        else DestField.value := SourceField.value;
      end;

    end; // for

    if useGenerator then
    begin
      var
      genSerial := ksGenerateSerial(connection, generatorName);
      destQuery.FieldByName(keyField).value := genSerial;
      result := genSerial;
    end;

    destQuery.Post;

  except
    result := 0;
  end;

Finally
  srcQuery.Free;
  destQuery.Free;
  noCopyList.Free;
End;

end;

// ******************************************************************
function ksGetOneFieldValue(const connection: TIBCConnection; const Sql: string; fieldForValue: string; InArray: array of Variant): Variant;
  var I: integer; qr: TIBCQuery; wrTrans: TIBCTransaction; rdTrans: TIBCTransaction;

    p, parameter: TDAParam; v: Variant; x: string;

  begin
    try
      qr := TIBCQuery.Create(nil);

      qr.connection := connection;
      wrTrans := CreateTransaction(connection, trWrite);
      rdTrans := CreateTransaction(connection, trRead);
      qr.Transaction := rdTrans;
      qr.UpdateTransaction := wrTrans;

      qr.AutoCommit := True;
      qr.ReadOnly := True;
      qr.Sql.Clear;
      qr.Sql.text := Sql;
      qr.FetchRows := 20000;

      qr.ParamCheck := True;
      // get the field type of each parameter from the server
      qr.Options.DescribeParams := True;

      qr.prepare;

      // result :=false;
      if (qr.params.count <> Length(InArray)) then
      begin
        // ShowMessage('Params not correct');
        raise Exception.Create('parameters number not correct');
      end;

      for I := 0 to Length(InArray) - 1 do
      begin

        v := InArray[I];
        parameter := qr.params[I];
        if VarIsNull(v) then
        begin // this is how null is updated
          parameter.Clear
        end
        else
        begin
          case parameter.DataType of
            ftString, ftFixedChar:
              parameter.AsString := v;
            ftWideString, ftFixedWideChar:
              parameter.AsWideString := v;
            ftSmallint, ftInteger, ftWord, ftByte:
              parameter.AsInteger := v;
            ftLongWord, ftLargeint:
              parameter.AsLargeInt := v;
            ftShortint, ftFloat, ftSingle:
              parameter.AsFloat := v;
            ftCurrency:
              parameter.AsCurrency := v;
            ftDate:
              parameter.AsDate := v;
            ftTime, ftDateTime, ftTimeStamp:
              parameter.AsDateTime := v;
          else
            raise Exception.Create('Uknown type of Parameter');
          end;

        end;

      end;

      qr.Open;

      result := qr.FieldByName(fieldForValue).value;

    finally
      wrTrans.Free;
      rdTrans.Free;
      qr.Free;
    end;

  End;


// TKSQuery*************************************************

constructor TksQuery.Create(const connection: TIBCConnection; const sqlString: string);

  // user will need to free this object!
  // Transactions will be freed by owner which is the created query
  var TableSQL: TIBCQuery;
  begin
    // codesite.EnterMethod(Self,'creat');
    inherited Create(nil);
    fConnection := connection;
    frTrans := CreateTransaction(fConnection, trRead);
    fwTrans := CreateTransaction(fConnection, trWrite);

    TableSQL := self;

    try
      TableSQL.Close;
      TableSQL.Sql.Clear;
      TableSQL.Sql.add(sqlString);
      TableSQL.connection := fConnection;
      TableSQL.AutoCommit := True;

      TableSQL.Transaction := frTrans;
      TableSQL.UpdateTransaction := fwTrans;
      if not TableSQL.prepared then
        TableSQL.prepare;
    except
      on E: Exception do
      begin
        raise Exception.Create('ERROR ksCreateSQL:' + sqlString + ' ' + E.Message);
      end;

    end;

    // codesite.ExitMethod(self,'create');
  end;

destructor TksQuery.Destroy;
  begin
    frTrans.Free;
    fwTrans.Free;
    inherited;
  end;
// ******************************************************************
// TksMultiSQLLine.Create(sql:String;params:array of String);
// ******************************************************************

constructor TksMultiSQLLine.Create(Sql: string; pParams: array of string);
  var I: integer;
  begin
    inherited Create;
    self.sqlString := Sql;
    self.params := TStringList.Create;

    for I := Low(pParams) to High(pParams) do
    begin
      params.add(pParams[I]);
    end;
    if (params.count = 100) then
      params[0] := '100';
  end;

destructor TksMultiSQLLine.Destroy();
  begin
    params.Free;
    inherited;
  end;

function TksMultiSQLLine.display(): string;
  begin
    result := self.sqlString + '---' + self.params.DelimitedText;

  end;

function TksMultiSQLLine.add(Sql: string; pParams: array of string): TksMultiSQLLine;
  var I: integer;
  begin
    self.sqlString := Sql;
    self.params.Clear;

    for I := Low(pParams) to High(pParams) do
    begin
      params.add(pParams[I]);
    end;
    result := self;

  end;

// ******************************************************************
// TksMultiSQL.Create;
// ******************************************************************

constructor TksMultiSQL.Create(connection: TIBCConnection; AOwnsObjects: Boolean = True);
  begin
    inherited Create();
    OwnsObjects := True;
    Name := 'aaa';
    mconnection := connection;
    mUpdateTrans := CreateTransaction(connection, trWrite);
    mQuery := TIBCSQL.Create(nil);
    mQuery.AutoCommit := false;
    // mQuery.Transaction:=mReadTrans;
    mQuery.Transaction := mUpdateTrans;

  end;

destructor TksMultiSQL.Destroy;
  // var
  // line :TksMultiSQLLine;
  // aObj:Tobject;
  begin
    mconnection := nil;
    mUpdateTrans.Free;
    mQuery.Free;
    inherited;
    // TObjectList will destroy List objects too! (which are TksMultiSQLLines)
    // you can clear them if you want!
  end;

function TksMultiSQL.add(Sql: string; params: array of string): TksMultiSQL;
  var line: TksMultiSQLLine;
  begin

    line := TksMultiSQLLine.Create(Sql, params);
    // self.Items.ad
    addLine(line);
    result := self;

  end;

function TksMultiSQL.addLine(line: TksMultiSQLLine): TksMultiSQLLine;
  begin
    inherited add(line);
    result := line;
  end;

function TksMultiSQL.getLine(index: integer): TksMultiSQLLine;
  begin
    result := self[index];
  end;

function TksMultiSQL.clearAll: Boolean;
  begin
    result := false;
  end;

function TksMultiSQL.ExecSQL(): TksMultiSQL;
  var I, j: integer; line: TksMultiSQLLine;
  begin
    result := self;
    // Codesite.Send('TksMultiSQL',self);
    if (mUpdateTrans.Active) then
      mUpdateTrans.Rollback;

    mUpdateTrans.StartTransaction;
    // try

    for I := 0 to self.count - 1 do
    begin
      line := self.items[I];
      mQuery.Sql.Clear;
      // mQUery.Params.Clear;
      mQuery.UnPrepare;
      mQuery.Sql.text := line.sqlString;
      if not mQuery.prepared then
        mQuery.prepare;

      if (mQuery.params.count > line.params.count) then
      begin
        // ShowMessage('Params not correct');
        mQuery.Transaction.Rollback;
        raise Exception.Create('not enought parms in query');
      end;

      for j := 0 to mQuery.params.count - 1 do
      begin
        mQuery.params[j].value := line.params[j];
      end;
      mQuery.Execute;
    end;

    if mUpdateTrans.Active then
      mUpdateTrans.Commit;

    // except on E: Exception do begin
    // mUpdateTrans.Rollback;
    // raise E;
    // end;
    //
    // end;
  end;

// ****************************************************************************************

function CreateTransaction(const connection: TIBCConnection; const TransType: TTransactionType): TIBCTransaction;

  begin
    try
      result := TIBCTransaction.Create(nil);
      if (TransType = trWrite) then
      begin
        result.IsolationLevel := iblReadCommitted;
        result.name := 'WriteTrans';
        result.DefaultConnection := connection;
      end
      else
      begin
        result.IsolationLevel := iblReadOnlyReadCommitted;
        result.name := 'ReadTrans';
        result.DefaultConnection := connection;
      end;

    except
      result := nil;

    end;

  end;
/// ///////////

function ksExecSQLOld(const connection: TIBCConnection; const Sql: string; ParamsArray: array of string): Boolean;
  var I: integer; qr: TIBCSQL; wrTrans: TIBCTransaction;

  begin
    try

      qr := TIBCSQL.Create(nil);
      qr.connection := connection;
      wrTrans := CreateTransaction(connection, trWrite);
      qr.Transaction := wrTrans;

      qr.AutoCommit := True;
      qr.Sql.Clear;
      qr.Sql.text := Sql;
      qr.prepare;

      // result :=false;
      if (qr.params.count <> Length(ParamsArray)) then
      begin
        // ShowMessage('Params not correct');
        raise Exception.Create('parameters number not correct');
      end;

      for I := 0 to (qr.params.count - 1) do
      begin
        qr.params[I].AsString := ParamsArray[I];
      end;

      qr.Execute;
      result := qr.RowsAffected > 0;

    finally
      wrTrans.Free;
      qr.Free;
    end;

  end;

function ksCountRecSQL(const connection: TIBCConnection; const Sql: string; ParamsArray: array of string): integer;
  // better to use the newer version ksCountRecVarSQL which takes variants as parameters
  var I: integer; qr: TIBCQuery; wrTrans: TIBCTransaction; rdTrans: TIBCTransaction;

  begin
    try

      qr := TIBCQuery.Create(nil);

      qr.connection := connection;
      wrTrans := CreateTransaction(connection, trWrite);
      rdTrans := CreateTransaction(connection, trRead);
      qr.Transaction := rdTrans;
      qr.UpdateTransaction := wrTrans;

      qr.AutoCommit := True;
      qr.ReadOnly := True;
      qr.Sql.Clear;
      qr.Sql.text := Sql;
      qr.FetchRows := 60000;

      qr.prepare;

      // result :=false;
      if (qr.params.count <> Length(ParamsArray)) then
      begin
        // ShowMessage('Params not correct');
        raise Exception.Create('parameters not equal to params');
      end;

      for I := 0 to (qr.params.count - 1) do
      begin
        qr.params[I].AsString := ParamsArray[I];
      end;

      qr.Open;
      result := qr.RecordCount;

    finally
      wrTrans.Free;
      rdTrans.Free;
      qr.Free;
    end;

  end;

function ksCountRecVarSQL(const connection: TIBCConnection; const Sql: string; InArray: array of Variant): integer;
  var I: integer; qr: TIBCQuery; wrTrans: TIBCTransaction; rdTrans: TIBCTransaction;

    p, parameter: TDAParam; v: Variant; x: string;

  begin
    try
      qr := TIBCQuery.Create(nil);

      qr.connection := connection;
      wrTrans := CreateTransaction(connection, trWrite);
      rdTrans := CreateTransaction(connection, trRead);
      qr.Transaction := rdTrans;
      qr.UpdateTransaction := wrTrans;

      qr.AutoCommit := True;
      qr.ReadOnly := True;
      qr.Sql.Clear;
      qr.Sql.text := Sql;
      qr.FetchRows := 20000;

      qr.ParamCheck := True;
      // get the field type of each parameter from the server
      qr.Options.DescribeParams := True;

      qr.prepare;

      // result :=false;
      if (qr.params.count <> Length(InArray)) then
      begin
        // ShowMessage('Params not correct');
        raise Exception.Create('parameters number not correct');
      end;

      for I := 0 to Length(InArray) - 1 do
      begin

        v := InArray[I];
        parameter := qr.params[I];
        if VarIsNull(v) then
        begin // this is how null is updated
          parameter.Clear
        end
        else
        begin
          case parameter.DataType of
            ftString, ftFixedChar:
              parameter.AsString := v;
            ftWideString, ftFixedWideChar:
              parameter.AsWideString := v;
            ftSmallint, ftInteger, ftWord, ftByte:
              parameter.AsInteger := v;
            ftLongWord, ftLargeint:
              parameter.AsLargeInt := v;
            ftShortint, ftFloat, ftSingle:
              parameter.AsFloat := v;
            ftCurrency:
              parameter.AsCurrency := v;
            ftDate:
              parameter.AsDate := v;
            ftTime, ftDateTime, ftTimeStamp:
              parameter.AsDateTime := v;
          else
            raise Exception.Create('Uknown type of Parameter');
          end;

        end;

      end;

      qr.Open;
      result := qr.RecordCount;

    finally
      wrTrans.Free;
      rdTrans.Free;
      qr.Free;
    end;

  End;

function ksExecSQLVar(const connection: TIBCConnection; const Sql: string; InArray: array of Variant): integer;
  var I: integer; qr: TIBCSQL; wrTrans: TIBCTransaction; p, parameter: TDAParam; v: Variant; x: string;

  begin
    qr := TIBCSQL.Create(nil);
    try
      try
        qr.connection := connection;
        wrTrans := CreateTransaction(connection, trWrite);
        qr.Transaction := wrTrans;

        qr.AutoCommit := True;
        qr.Sql.Clear;
        qr.Sql.text := Sql;
        qr.ParamCheck := True;
        qr.DescribeParams := True;

        qr.prepare;

        // result :=false;
        if (qr.params.count <> Length(InArray)) then
        begin
          // ShowMessage('Params not correct');
          raise Exception.Create('parameters number not correct');
        end;

        for I := 0 to Length(InArray) - 1 do
        begin
          // Parameter := FIBCQuery.ParamByName(P.ParamName);
          v := InArray[I];
          parameter := qr.params[I];
          if VarIsNull(v) then
          begin // this is how null is updated
            parameter.Clear
          end
          else
          begin
            case parameter.DataType of
              ftString, ftFixedChar:
                parameter.AsString := v;
              ftWideString, ftFixedWideChar:
                parameter.AsWideString := v;
              ftSmallint, ftInteger, ftWord, ftByte:
                parameter.AsInteger := v;
              ftLongWord, ftLargeint:
                parameter.AsLargeInt := v;
              ftShortint, ftFloat, ftSingle:
                parameter.AsFloat := v;
              ftCurrency:
                parameter.AsCurrency := v;
              ftDate:
                parameter.AsDate := v;
              ftTime, ftDateTime, ftTimeStamp:
                parameter.AsDateTime := v;
            else
              raise Exception.Create('Uknown type of Parameter');
            end;

          end;

        end;
        qr.Execute;
        result := qr.RowsAffected;
      except
        on E: Exception do
        //write to console??
        var y:=33;
      end;
    finally
      wrTrans.Free;
      qr.Free;
    end;

  End;

/// ///////////
// function ksOpenTables(Tables: Array of TDataset):Boolean;

function ksOpenTables(Tables: array of TCustomDADataSet): Boolean;
  var I: integer;
    // Table:TIBCQuery;
    Table: TCustomDADataSet;
    // name:string;
  begin
    for I := low(Tables) to High(Tables) do
    begin
      Table := Tables[I];
      if (not Table.Active) then
      begin
        Table.Open;
      end
      else
        Table.Refresh;
    end;
    result := True;
  end;

function ksGenerateSerial(const connection: TIBCConnection; const GenName: string): integer;
  var qr: TksQuery;
  begin
    try
      qr := TksQuery.Create(connection, 'Select next value for ' + GenName + ' from RDB$DATABASE');
      qr.Open;
      result := qr.FieldByName('GEN_ID').AsInteger;
    finally
      qr.Free;
    end;

  end;

/// ///////////

function ksPrepSQL(const sqlString: string; const TableSQL: TIBCQuery): Boolean;
  begin
    TableSQL.Close;
    TableSQL.Sql.Clear;
    TableSQL.Fields.Clear;
    TableSQL.Sql.add(sqlString);
    if not TableSQL.prepared then
      TableSQL.prepare;
    result := True;
  end;
/// ///////////
{
  function ksfillCombo(Const connection: TIBCConnection; StrList:TStrings;Const tableName,fieldstored,fieldShown:String ):TStrings;
  var
  tableSQL: TksQUery;
  str:String;
  val:String;
  begin
  try
  StrList.Clear;
  if (trim(fieldShown)>'') then begin
  str:='select '+ fieldStored+ ', '+fieldShown+ ' from '+tableName;
  end else begin
  str:='select '+ fieldStored+ ' from '+tableName;

  end;

  tableSQL:=TksQuery.Create(connection,str);
  With TableSQL do begin
  Open;
  While ( NOT TableSQL.Eof)do begin
  val:=TableSQL.fieldbyName(fieldStored).AsString;
  if Trim(FieldShown)>'' then begin
  val:=TableSQL.fieldbyName(fieldShown).AsString+#9+val;
  end;
  strList.add(val);
  TableSQL.Next;
  end;
  close;
  end;
  result:=StrList;
  finally
  tableSQL.Free;
  end;

  end;
}
/// ///////////

/// ///////////////////////////////////////////////////////////////////////////////////////

/// ///////////

end.
