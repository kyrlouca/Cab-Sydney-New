unit LN_RelievedCodes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit;
type
  TLN_RelievedCodesFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    Grid1: TwwDBGrid;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    BitBtn3: TBitBtn;
    ReadTrans: TIBCTransaction;
    Panel6: TPanel;
    DetailSQL: TIBCQuery;
    DetailSRC: TIBCDataSource;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    AddDetailBTN: TBitBtn;
    EditDetailBTN: TBitBtn;
    DeleteDetailBTN: TBitBtn;
    TableSQLCODE: TStringField;
    TableSQLDESCRIPTION: TStringField;
    DetailSQLSERIAL_NUMBER: TIntegerField;
    DetailSQLFK_DUTY_TYPE: TStringField;
    DetailSQLPERCENTAGE_RELIEVE: TFloatField;
    Panel2: TPanel;
    CodeFLD: TwwDBEdit;
    TableSQLSERIAL_NUMBER: TIntegerField;
    DetailSQLFK_DUTY_RELIEVE: TIntegerField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure AddDetailBTNClick(Sender: TObject);
    procedure EditDetailBTNClick(Sender: TObject);
    procedure Grid1DblClick(Sender: TObject);
    procedure DeleteDetailBTNClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MyInsertState:Boolean;
  end;

var
  LN_RelievedCodesFRM: TLN_RelievedCodesFRM;

implementation

uses  MainFFF, M_relievedCode, G_KyrSQL, U_ClairDML;


{$R *.DFM}

procedure TLN_RelievedCodesFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TLN_RelievedCodesFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TLN_RelievedCodesFRM.wwDBGrid1DblClick(Sender: TObject);
begin
EditDetailBTN.Click;
end;

procedure TLN_RelievedCodesFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
//      StationIDFLD.SetFocus;
//      Dataset.FIeldbyName('IS_ACTIVE').value:='Y';

end;


procedure TLN_RelievedCodesFRM.FormActivate(Sender: TObject);
Var
 Tables : array[1..1] of TIBCQuery;
 I:Integer;
begin
  ksOpenTables([TableSQL,DetailSQL]);
end;

procedure TLN_RelievedCodesFRM.AddDetailBTNClick(Sender: TObject);
var
        myForm:TM_RelievedcodeFRM;
        MasterSerial:Integer;

begin

 myForm := TM_RelievedcodeFRM.Create(nil) ;
  myForm.IN_ACTION:='INSERT';

   try
     myForm.ShowModal;
   finally
     myForm.Free;
   end;
   TableSQL.Refresh;
   TableSQL.First;
  abort;
end;

procedure TLN_RelievedCodesFRM.EditDetailBTNClick(Sender: TObject);
Var
SErial:Integer;
myForm:TM_RelievedCodeFRM;

begin
  Serial:=TableSQL.FieldByname('serial_number').AsInteger;


 If (Serial<1) then exit;
 myForm := TM_RelievedCodeFRM.Create(nil) ;
 myForm.IN_serial:=serial;
 myForm.IN_ACTION:='EDIT';
  try
     myForm.ShowModal;
     TableSQL.Refresh;
     DetailSQL.Refresh;
   finally
     myForm.Free;
   end;


end;

procedure TLN_RelievedCodesFRM.Grid1DblClick(Sender: TObject);
begin
EditDetailBTN.Click;
end;

procedure TLN_RelievedCodesFRM.DeleteDetailBTNClick(Sender: TObject);
var
  Serial:String;
  cn:TIBCConnection;
  mx:TksMultiSQL;
begin
  cn:= ClairDML.CabCOnnection;
  Serial:=TableSQL.FieldByname('serial_number').AsString;

try
   mx:=TksMultiSQL.Create(cn)
   .add( 'delete from duty_relieve_item where fk_duty_relieve= :serial',[serial])
   .add( 'delete from duty_relieve where serial_number= :serial',[serial])
   .ExecSQL();

finally
  mx.free;
end;

TableSQL.Refresh;

end;

End.
