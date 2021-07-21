unit M_RelievedCode;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdotdot, Wwdbcomb,
  ASPBehavior, G_KyrSQL;
type
  TM_RelievedCodeFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Grid1: TwwDBGrid;
    Label3: TLabel;
    DescFLD: TwwDBEdit;
    StationIdFLD: TwwDBEdit;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    TitleLbl: TLabel;
    AcceptBTN: TBitBtn;
    CanelBTN: TBitBtn;
    TableSQL: TIBCQuery;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLCODE: TStringField;
    TableSQLDESCRIPTION: TStringField;
    Panel6: TPanel;
    wwDBGrid1: TwwDBGrid;
    DetailSQL: TIBCQuery;
    DetailSRC: TIBCDataSource;
    DetailSQLSERIAL_NUMBER: TIntegerField;
    DetailSQLFK_DUTY_RELIEVE: TIntegerField;
    DetailSQLFK_DUTY_TYPE: TStringField;
    DetailSQLPERCENTAGE_RELIEVE: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CanelBTNClick(Sender: TObject);
  private

// Function GetItemSerial():Integer;
 Function InsertRelieved():Integer;

  procedure InsertItems(Const SerialNumber:Integer);
    { Private declarations }
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_Action:String;
    IN_serial:Integer;
    IN_MasterSErial:Integer;
  end;

var
  M_RelievedCodeFRM: TM_RelievedCodeFRM;

implementation

uses  MainFFF, U_ClairDML;


{$R *.DFM}

procedure TM_RelievedCodeFRM.FormActivate(Sender: TObject);
Var
 I:Integer;
begin
//ShowMessage('insert');
ksOpenTables([TableSQL,DetailSQL]);


if IN_ACTION='INSERT' then begin
  InsertRelieved;
  StationidFLD.Enabled:=true;
  StationIdFLd.SetFocus;
end else if IN_ACTION='EDIT' then begin
  TableSQL.Close;
  TableSQL.ParamByName('SerialNumber').Value:=IN_serial;
  TableSQL.Open;
  StationidFLD.Enabled:=false;
  DescFLd.SetFocus;
end;


end;

procedure TM_RelievedCodeFRM.AcceptBTNClick(Sender: TObject);
begin

If (trim(TableSQL.FieldByName('code').AsString)='') then begin
  ShowMessage('Field Code must have a value');
  if StationIdFLD.CanFocus then
    StationIdFLD.SetFocus;
  abort;
end;
if (DetailSQL.State in [dsInsert,dsEdit]) then
  DetailSQL.Post;
if (TableSQL.State in [dsInsert,dsEdit] )then begin
  TableSQL.Post;
end;
If TableSQL.UpdateTransaction.Active then
  TableSQL.UpdateTransaction.Commit;
close;
end;

procedure TM_RelievedCodeFRM.CanelBTNClick(Sender: TObject);
begin
 DetailSQL.Cancel;
 TableSQL.Cancel;
 if TableSQL.UpdateTransaction.Active then
    TableSQL.UpdateTransaction.Rollback;
 close;

end;

Function TM_RelievedCodeFRM.InsertRelieved():Integer;
Var
  MasterSerial:Integer;
begin
     result:=0;
     With TableSQL do begin
      TableSQL.UpdateTransaction.StartTransaction;
      insert;
      MasterSerial:=TableSQL.FieldByName('Serial_number').AsInteger;
      //TableSQL.FieldbyName('code').value:=IntToStr(MasterSerial);
      Post;
      InsertItems(MasterSerial);
      result:=1;
     end;

end;


procedure TM_RelievedCodeFRM.InsertItems(Const SerialNumber:Integer);
VAR
  MSQL:TIBCQuery;
  cn:TIBCConnection;
  DutyCode:String;
  SQLString:String;

begin

try

  cn:=ClairDML.CabCOnnection;


  MSQL:=TIBCQuery.Create(nil);
  MSQL.Transaction:=ReadTrans;
  MSQL.UpdateTransaction:=WriteTrans;
  MSQL.Connection:=cn;
  Close;
  MSQL.SQL.Clear;
  MSQL.SQL.Text :='select duty_code from DUTY_TYPE';

     With MSQL do
     begin
        if not prepared then prepare;
        Open;
        first;
        While ( NOT MSQL.Eof)do begin
          DutyCode:=FieldByName('Duty_code').AsString;
          with DetailSQL do begin
            If DetailSQL.DataSource.State in [dsInsert,dsEdit] then
              detailSQL.Post;
            DetailsQL.Insert;

            DetailSQL.FieldByName('FK_Duty_Relieve').Value:=SerialNumber;
            DetailSQL.FieldByName('FK_Duty_TYpe').Value:=DutyCode;
            DetailSQL.FieldByName('Percentage_Relieve').Value:=0;
            DetailSQL.Post;
          end;
//          ShowMessage(IntToStr(DoSQL.RowsAffected));
          MSQL.Next;
       end;
       close;
     end;
finally
 MSQL.Free;
end;
End;
End.
