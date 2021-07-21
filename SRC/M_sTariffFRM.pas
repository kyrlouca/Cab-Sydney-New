unit M_sTariffFRM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, fcLabel, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdotdot, Wwdbcomb;
type
  TM_BaseTariffFRM1 = class(TForm)
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
    fcLabel1: TfcLabel;
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
    BitBtn3: TBitBtn;
    ReadTrans: TIBCTransaction;
    Label1: TLabel;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLCODE: TStringField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLTARIFF_RATE: TFloatField;
    TableSQLTARIFF_UNIT: TStringField;
    TableSQLTARIFF_INCREMENT: TIntegerField;
    TableSQLIS_CUSTOMS: TStringField;
    TableSQLIS_BASIC: TStringField;
    TableSQLCAN_BE_RELIEVED: TStringField;
    TableSQLCATEGORY: TStringField;
    TableSQLORDER_NUMBER: TFloatField;
    TableSQLIS_VAT_APPLY: TStringField;
    TableSQLIS_THE_VAT: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CatFLD: TwwDBEdit;
    BasicFLD: TwwDBComboBox;
    MakeSQL: TIBCQuery;
    Label4: TLabel;
    CustomsFLD: TwwDBComboBox;
    Label5: TLabel;
    Label10: TLabel;
    VatAppliesFLD: TwwDBComboBox;
    Label11: TLabel;
    TheVAtFLD: TwwDBComboBox;
    Label6: TLabel;
    RateFLD: TwwDBEdit;
    IncFLD: TwwDBEdit;
    Label12: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Label13: TLabel;
    wwDBEdit1: TwwDBEdit;
    UnitsFLD: TwwDBComboBox;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure TableSQLAfterPost(DataSet: TDataSet);
    procedure TableSQLBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
   function  CountVAT():Integer;
  public
    { Public declarations }
    MyInsertState:Boolean;
  end;

var
  M_BaseTariffFRM1: TM_BaseTariffFRM1;

implementation

uses  MainFFF;


{$R *.DFM}

procedure TM_BaseTariffFRM1.FormActivate(Sender: TObject);
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


     With MakeSQL do
     begin
        Close;
        MakeSQL.SQL.Clear;
        MakeSQL.SQL.Text :='select UNIT from UNIT_MEASURE order by ORDER_Number ';
        if not prepared then prepare;
        Open;
        UnitsFLD.Items.Clear;
        while (not eof ) do begin
         UnitsFLD.Items.Add(FieldByName('UNIT').AsString);
         next;
        end;
        first;
     end;



SearchFieldFLD.SetFocus;
end;

procedure TM_BaseTariffFRM1.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_BaseTariffFRM1.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_BaseTariffFRM1.TableSRCStateChange(Sender: TObject);
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

procedure TM_BaseTariffFRM1.FormKeyUp(Sender: TObject; var Key: Word;
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

procedure TM_BaseTariffFRM1.TableSQLAfterInsert(DataSet: TDataSet);
begin
   StationIDFLD.SetFocus;

end;

procedure TM_BaseTariffFRM1.TableSQLAfterPost(DataSet: TDataSet);
begin
tableSQL.refresh;
end;

procedure TM_BaseTariffFRM1.TableSQLBeforePost(DataSet: TDataSet);
begin

if( (Dataset.fieldBYName('IS_THE_VAT').value='Y') and (CountVAT()>0) )then begin
   ShowMessage('Only ONE Base Tariff can be the VAT');
   abort;
end;

end;

function  TM_BaseTariffFRM1.CountVAT():Integer;
begin
     With MakeSQL do
     begin
        Close;
        MakeSQL.SQL.Clear;
        MakeSQL.SQL.Text :='select count(*) as ACount from Base_tariff where IS_THE_VAT=''Y'' ';
        if not prepared then prepare;
//        ParamByName('Code').value:=Code;
        Open;
        result:= FieldByName('Acount').AsInteger;
        close;
     end;
end;


End.
