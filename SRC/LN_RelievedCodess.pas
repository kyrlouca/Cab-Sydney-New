unit LN_RelievedCodess;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit;
type
  TLN_ListDutyEntries2FRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    Grid1: TwwDBGrid;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    BitBtn3: TBitBtn;
    ReadTrans: TIBCTransaction;
    TableSQLDUTY_CODE: TStringField;
    TableSQLIS_ACTIVE: TStringField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLXML_CODE: TStringField;
    Panel6: TPanel;
    DetailSQL: TIBCQuery;
    DetailSQLSERIAL_NUMBER: TIntegerField;
    DetailSQLFK_DUTY_TYPE: TStringField;
    DetailSQLIS_DEFAULT: TStringField;
    DetailSQLDUTY_RATE: TFloatField;
    DetailSQLDESCRIPTION: TStringField;
    DetailSRC: TIBCDataSource;
    wwDBGrid1: TwwDBGrid;
    DetailSQLDUTY_RATE_CODE: TStringField;
    Label1: TLabel;
    AcceptBTN: TBitBtn;
    EditBTN: TBitBtn;
    DeleteBTN: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure EditBTNClick(Sender: TObject);
    procedure Grid1DblClick(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MyInsertState:Boolean;
  end;

var
  LN_ListDutyEntries2FRM: TLN_ListDutyEntries2FRM;

implementation

uses  MainFFF, MN_DutyEntry, MN_DutyTYpe;


{$R *.DFM}

procedure TLN_ListDutyEntries2FRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TLN_ListDutyEntries2FRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TLN_ListDutyEntries2FRM.TableSRCStateChange(Sender: TObject);
begin


with TableSQL do
begin
     If State<>dsInsert then
     begin
//         StationIDFLD.Enabled:=false;
//       FieldByName('id').ReadOnly:=true;
     end
     else
     begin
//         StationIDFLD.Enabled:=true;
//       FieldByName('id').ReadOnly:=false;
     end;
end;//with

end;

procedure TLN_ListDutyEntries2FRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
//      StationIDFLD.SetFocus;
//      Dataset.FIeldbyName('IS_ACTIVE').value:='Y';

end;


procedure TLN_ListDutyEntries2FRM.FormActivate(Sender: TObject);
Var
 Tables : array[1..1] of TIBCQuery;
 I:Integer;
begin
Tables[1]:=TableSQL;

        Tables[1].Close;
        For i:=1 to Length(Tables) do begin
                If (not Tables[i].Active) then
                        Tables[i].open
                else
                        Tables[i].Refresh;
        end;

end;

procedure TLN_ListDutyEntries2FRM.AcceptBTNClick(Sender: TObject);
var
        myForm:TMN_DutyEntryFRM;
//        myForm:TForm;
        DutyCode:String;
begin
//SN_UserFRM.SHowModal;
   DutyCOde:=Trim(TableSQL.FieldByname('DUTY_CODE').AsString);


 If (DutyCode='') then exit;
 myForm := TMN_DutyEntryFRM.Create(nil) ;
 myForm.IN_DutyType:=DutyCode;
 myForm.IN_ACTION:='INSERT';
  try
     myForm.ShowModal;
     DetailSQL.Refresh;
   finally
     myForm.Free;
   end;

end;

procedure TLN_ListDutyEntries2FRM.EditBTNClick(Sender: TObject);
var
        myForm:TMN_DutyEntryFRM;
        SerialNumber:Integer;
begin
//SN_UserFRM.SHowModal;
   SerialNumber:=DetailSQL.FieldByname('SERIAL_NUMBER').aSiNTEGER;


 If (SErialNumber=0) then exit;
 myForm := TMN_DutyEntryFRM.Create(nil) ;
 myForm.IN_SERIAL:=SerialNumber;
 myForm.IN_ACTION:='EDIT';
  try
     myForm.ShowModal;
     DetailSQL.Refresh;
   finally
     myForm.Free;
   end;

end;

procedure TLN_ListDutyEntries2FRM.Grid1DblClick(Sender: TObject);
begin
EditBTN.Click;
end;

procedure TLN_ListDutyEntries2FRM.DeleteBtnClick(Sender: TObject);
begin
DetailSQL.Delete;
end;

procedure TLN_ListDutyEntries2FRM.Nav1InsertClick(Sender: TObject);
var
        myForm:TMN_DutyTypeFRM;
begin
 myForm := TMN_DutyTypeFRM.Create(nil) ;
  myForm.IN_ACTION:='INSERT';

   try
     myForm.ShowModal;
   finally
     myForm.Free;
   end;
   TableSQL.Refresh;
  abort;


end;

procedure TLN_ListDutyEntries2FRM.Button1Click(Sender: TObject);
var
        myForm:TMN_DutyTypeFRM;
begin
 myForm := TMN_DutyTypeFRM.Create(nil) ;
  myForm.IN_ACTION:='INSERT';

   try
     myForm.ShowModal;
   finally
     myForm.Free;
   end;
   TableSQL.Refresh;
  abort;


end;

End.
