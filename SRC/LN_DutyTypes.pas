unit LN_DutyTypes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, fcLabel, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit;
type
  TLN_DutyTypesFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    Panel3: TPanel;
    TableSRC: TDataSource;
    SearchFieldFLD: TwwIncrementalSearch;
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
    DetailSQLDUTY_ENTRY_CODE: TStringField;
    DetailSRC: TIBCDataSource;
    wwDBGrid1: TwwDBGrid;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MyInsertState:Boolean;
  end;

var
  LN_DutyTypesFRM: TLN_DutyTypesFRM;

implementation

uses  MainFFF, U_ClairDML;


{$R *.DFM}

procedure TLN_DutyTypesFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TLN_DutyTypesFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TLN_DutyTypesFRM.TableSRCStateChange(Sender: TObject);
begin


with TableSQL do
begin
     If State<>dsInsert then
     begin
         StationIDFLD.Enabled:=false;
//       FieldByName('id').ReadOnly:=true;
     end
     else
     begin
         StationIDFLD.Enabled:=true;
//       FieldByName('id').ReadOnly:=false;
     end;
end;//with

end;

procedure TLN_DutyTypesFRM.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((ssCtrl in shift) and (key=vk_return)) then begin
   if Nav1Post.Enabled then begin
      Nav1Post.Click;
   end;

end;

if ((ssCtrl in shift) and (key=vk_insert)) then begin
   if Nav1Insert.Enabled then begin
      Nav1Insert.Click;
   end;
end;

end;

procedure TLN_DutyTypesFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
      StationIDFLD.SetFocus;
      Dataset.FIeldbyName('IS_ACTIVE').value:='Y';

end;


procedure TLN_DutyTypesFRM.FormActivate(Sender: TObject);
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

End.
