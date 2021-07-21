unit M_Units;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdotdot, Wwdbcomb,
  vcl.wwbutton, vcl.wwcheckbox;
type
  TM_UnitsFRM = class(TForm)
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
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Grid1: TwwDBGrid;
    Label3: TLabel;
    DescFLD: TwwDBEdit;
    StationIdFLD: TwwDBEdit;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    MakeSQL: TIBCQuery;
    Label6: TLabel;
    wwDBEdit1: TwwDBEdit;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLUNIT: TStringField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLORDER_NUMBER: TFloatField;
    TableSQLXML_CODE: TStringField;
    TitleLbl: TLabel;
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    wwCheckBox1: TwwCheckBox;
    wwButton1: TwwButton;
    TableSQLIS_DEFAULT: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure TableSQLAfterPost(DataSet: TDataSet);
    procedure CanelBTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MyInsertState:Boolean;
  end;

var
  M_UnitsFRM: TM_UnitsFRM;

implementation

uses  MainFFF, U_ClairDML;


{$R *.DFM}

procedure TM_UnitsFRM.CanelBTNClick(Sender: TObject);
begin
TABLEsql.Cancel;
exit;
end;

procedure TM_UnitsFRM.FormActivate(Sender: TObject);
Var
 Tables : array[1..1] of TIBCQuery;
 I:Integer;
begin
Tables[1]:=TableSQL;
//Tables[2]:=DetailSQL;

        Tables[1].Close;
        For i:=1 to Length(Tables) do begin
                If (not Tables[i].Active) then
                        Tables[i].open
                else
                        Tables[i].Refresh;
        end;


SearchFieldFLD.SetFocus;
end;

procedure TM_UnitsFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_UnitsFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_UnitsFRM.TableSRCStateChange(Sender: TObject);
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

procedure TM_UnitsFRM.FormKeyUp(Sender: TObject; var Key: Word;
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

procedure TM_UnitsFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
   StationIDFLD.SetFocus;

end;

procedure TM_UnitsFRM.TableSQLAfterPost(DataSet: TDataSet);
begin
tableSQL.refresh;
end;

End.
