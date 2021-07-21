unit M_sTariff;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdotdot, Wwdbcomb,
  DBCGrids, VirtualDataSet, VirtualTable,G_generalProcs,g_kyrSQL;
type
  TM_StariffFRM = class(TForm)
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
    MainPanelPNL: TPanel;
    DetailsGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DescFLD: TwwDBEdit;
    StationIdFLD: TwwDBEdit;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    BitBtn3: TBitBtn;
    ReadTrans: TIBCTransaction;
    MakeSQL: TIBCQuery;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLTARIFF_CODE: TStringField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLACTIVE: TStringField;
    ClientSRC: TIBCDataSource;
    DoSQL: TIBCSQL;
    Make2SQL: TIBCQuery;
    ClientSQL2: TIBCQuery;
    Button1: TButton;
    DutyRatesSQL: TIBCQuery;
    DutyRatesSQLSERIAL_NUMBER: TIntegerField;
    DutyRatesSQLFK_DUTY_TYPE: TStringField;
    DutyRatesSQLIS_DEFAULT: TStringField;
    DutyRatesSQLDUTY_RATE: TFloatField;
    DutyRatesSQLDESCRIPTION: TStringField;
    DutyRatesSQLDUTY_RATE_CODE: TStringField;
    TitleLbl: TLabel;
    Virtual1TBL: TVirtualTable;
    Button2: TButton;
    Nav1Button: TwwNavButton;
    TableSQLIS_CUSTOMS: TStringField;
    TableSQLUSER_KEYWORD: TStringField;
    wwDBEdit2: TwwDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    VatFLD: TwwDBComboBox;
    TableSQLFK_VAT_CODE: TStringField;
    Label5: TLabel;
    ClientSQL2SERIAL_NUMBER: TIntegerField;
    ClientSQL2DUTY_TYPE: TStringField;
    ClientSQL2FK_S_TARIFF: TIntegerField;
    ClientSQL2FK_BASE: TIntegerField;
    ClientSQL2DESCRIPTION: TStringField;
    ClientSQL2TARIFF_UNIT: TStringField;
    ClientSQL2TARIFF_UNIT_INCREMENT: TIntegerField;
    ClientSQL2TARIFF_UNIT_RATE: TFloatField;
    ClientSQL2UNITS_NOT_CHARGED: TIntegerField;
    ClientSQL2CHARGING_METHOD: TStringField;
    ClientSQL2IS_VAT_APPLIES: TStringField;
    ClientSQL2CAN_BE_RELIEVED: TStringField;
    ClientSQL2TARIFF_CODE: TStringField;
    ClientSQL2FK_VAT_CODE: TStringField;
    ClientSQL2VAT_RATE: TFloatField;
    ClientSQL2IS_CUSTOMS: TStringField;
    ClientSQL2ORDER_NUMBER: TFloatField;
    GroupBox1: TGroupBox;
    Grid1: TDBCtrlGrid;
    PRatelbl: TLabel;
    Percentagelbl: TLabel;
    PDescFLD: TwwDBEdit;
    PRateFLD: TwwDBLookupCombo;
    wwDBEdit1: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    InsertBTN: TButton;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure TableSQLAfterPost(DataSet: TDataSet);
    procedure Nav1InsertClick(Sender: TObject);
    procedure MakeSQLAfterScroll(DataSet: TDataSet);
    procedure Grid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure TableSQLBeforePost(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Nav1DeleteClick(Sender: TObject);
    procedure InsertBTNClick(Sender: TObject);
  private
    { Private declarations }
//   PanelArray : Array[1..8] of TPanel;

   Function CheckDefaultUnit():Boolean;
   Function GetDefaultRate(Const DutyType:String):Double;
  Function GetDefaultVAT():String;


   procedure InsertTariffLines(TariffSerial:Integer);
   procedure InsertTariff(const TariffCode:String);

   Function GetNextSerial(Const GenName:String):Integer;
   procedure ShowHideFields(Const ShowUnits:Boolean);
   procedure ShowEuros(Const IsEuro:Boolean);


  public
    { Public declarations }
    MyInsertState:Boolean;

  end;

var
  M_StariffFRM: TM_StariffFRM;

implementation

uses  MainFFF, M_SingleTariff2;


{$R *.DFM}

procedure TM_StariffFRM.FormActivate(Sender: TObject);
Var
 I:Integer;
begin
  CheckDefaultUnit();

ksOpenTables([TableSQL,clientSQL2,DutyRatesSQL]);
{
     With MakeSQL do
     begin
        Close;
        MakeSQL.SQL.Clear;
        MakeSQL.SQL.Text :='select UNIT from UNIT_MEASURE order by ORDER_Number ';
        if not prepared then prepare;
        Open;
        PTariffUnitFLD.Items.Clear;
        while (not eof ) do begin
            PTariffUnitFLD.Items.Add(FieldByName('UNIT').AsString);
         next;
        end;
        first;
     end;
}
     With MakeSQL do
     begin
        Close;
        MakeSQL.SQL.Clear;
        MakeSQL.SQL.Text :='select code,rate from vat_category ';
        if not prepared then prepare;
        Open;
        vatFLD.Items.Clear;
        while (not eof ) do begin
            vatFLD.Items.Add(FieldByName('CODE').AsString);
         next;
        end;
        first;
     end;





SearchFieldFLD.SetFocus;
end;

procedure TM_StariffFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_StariffFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_StariffFRM.TableSRCStateChange(Sender: TObject);
var
   val:String;
begin


with TableSQL do begin
     If( (State<>dsInsert) and ( TableSQL.FieldbyName('Tariff_code').AsString <>'') )then begin
         StationIDFLD.Enabled:=false;
     end else  begin
         StationIDFLD.Enabled:=true;

     end;
end;//with

end;

procedure TM_StariffFRM.FormKeyUp(Sender: TObject; var Key: Word;
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

procedure TM_StariffFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
   StationIDFLD.SetFocus;
   Dataset.FieldbyName('active').value:='Y';
   Dataset.FieldbyName('is_customs').value:='Y';

end;

procedure TM_StariffFRM.TableSQLAfterPost(DataSet: TDataSet);
begin
tableSQL.refresh;
end;



procedure TM_StariffFRM.Nav1DeleteClick(Sender: TObject);
type
  x=TMultiExecSQLParam;
Const
v=3;
var
serial:string;
str1:string;
//ExecParams: Array of TMultiExecSQLParam;
ParamsArray :Array[0..1] of TMultiExecSQLParam;
test: TMultiExecSQLParam;
begin
//  str1:='Delete from S_Tariff_line where fk_S_Tariff= :TariffSerial';
//  G_generalProcs.ExecSQL(TableSQL,Str1,[serial]);

//  str1:='Delete from S_Tariff where Serial_number= :TariffSerial';
//  G_generalProcs.ExecSQL(TableSQL,Str1,[serial]);

  test:= test.Create('Delete from S_Tariff_line where fk_S_Tariff= :TariffSerial',['ho','fa']);
  ShowMessage(test.Params[0]);


  Serial:=TableSQL.FieldByName('serial_number').AsString;

    ParamsArray[0].sqlString := 'Delete from S_Tariff_line where fk_S_Tariff= :TariffSerial';
    ParamsArray[0].Params:=[serial];

    ParamsArray[1].sqlString :='Delete from S_Tariff where Serial_number= :TariffSerial';
    ParamsArray[1].Params:=[serial];


//    G_generalProcs.MultiExecSQL(ParamsArray);
//    G_generalProcs.MultiExecSQL([
//    test.Create('Delete from S_Tariff_line where fk_S_Tariff= :TariffSerial',[serial]) ]);
   // test.Create('Delete from S_Tariff where Serial_number= :TariffSerial',[serial]
   // ]);

    G_generalProcs.MultiExecSQL([
    test.Create('Delete from S_Tariff_line where fk_S_Tariff= :TariffSerial',[serial]),
    test.Create('Delete from S_Tariff where Serial_number= :TariffSerial',[serial])
    ]);




  TableSQL.Refresh;

abort;
end;

procedure TM_StariffFRM.Nav1InsertClick(Sender: TObject);
var
   TariffSerial:integer;
begin
// IT will insert and post a tariff with empty code, just to be able to add children lines
InsertTariff('');
abort;
end;

procedure TM_StariffFRM.InsertBTNClick(Sender: TObject);
var
 form: TM_SingleTariff2FRM;
 Serial:Integer;
begin
    serial:=TableSQL.FieldByName('Serial_number').AsInteger;
    if serial <1  then begin
      abort;
    end;

  try
    form := TM_SingleTariff2FRM.Create(nil); // you can use nil if you Free it in here
    form.IN_ACTION:='INSERT';
    form.IN_TariffSerial:=Serial;
    form.ShowModal;
  finally
//    form.Release; // generally better than Free for a Form
    form.free; // generally better than Free for a Form
  end;

end;

procedure TM_StariffFRM.InsertTariff(const TariffCode:String);
var
   TariffSerial:integer;
begin


if (TableSQL.State in [dsInsert, dsEdit]) then begin
   TableSQL.Post;
end;

   tableSQL.insert;
   TableSQL.fieldbyName('Tariff_code').value:=TariffCode;
   TableSQL.fieldbyName('FK_VAT_CODE').value:=GetDefaultVAT;
   TariffSerial:=TableSQL.fieldbyName('serial_number').AsInteger;
   TableSQL.Post;
   InsertTariffLines(TariffSerial);
abort;
end;



procedure TM_StariffFRM.InsertTariffLines(TariffSerial:Integer);
Var
        Str1:String;
        LineSerial:Integer;
    mCode,MDescription:String;
    mDutyTYpe:String;
    mBaseSerial:integer;
    mUnit:String;
    mTariffRate:DOuble;
    mChargingMethod,mIsVatApply,mCanbeRElieved:String;
Begin
      //Under the S_Tariff create S_Tariff_lineS for each BASE_TARIFF which has is_basic='Y'
      With MakeSQL do begin
//        Close;
//        MakeSQL.SQL.Clear;
//        str1:='select * FROM BASE_TARIFF where IS_BASIC=''Y'' and IS_ACTIVE=''Y'' and IS_CUSTOMS=''Y'' order by Order_number';
//        MakeSQL.SQl.Add( str1);
//        if not prepared then prepare;
        MakeSQL:=G_generalProcs.PrepSQL(MakeSQL,'select * FROM BASE_TARIFF where IS_By_Default=''Y'' and IS_ACTIVE=''Y'' and IS_CUSTOMS=''Y'' and IS_FOR_TARIFFS=''Y'' order by Order_number');
        Open;
        while (not MakeSQL.eof) do begin
                mCode:=  MakeSQL.FieldByName('Code').AsString;
                mBaseSerial:=  MakeSQL.FieldByName('serial_number').AsInteger;
//                mUnit:=  MakeSQL.FieldByName('UNIT_TYPE').AsString;
                mDescription:=  MakeSQL.FieldByName('DESCRIPTION').AsString;
                mDutyType:=  MakeSQL.FieldByName('FK_DUTY_TYPE').AsString;

                mChargingMEthod:=  MakeSQL.FieldByName('CHARGING_METHOD').AsString;
                mIsVatApply:=  MakeSQL.FieldByName('IS_VAT_APPLIES').AsString;
                mCanbeRElieved:=  MakeSQL.FieldByName('CAN_BE_RELIEVED').AsString;

                mTariffRate:=GetDefaultRate(mDutyTYpe);
                LineSerial:= GetNextSerial('GEN_S_TARIFF_LINE');





                with doSQL do begin
                        doSQL.Text:='insert into s_tariff_line (serial_number,fk_s_tariff,fk_base,description,tariff_unit_increment, tariff_unit,DUTY_TYPE,Tariff_UNIT_RATE,CHARGING_METHOD,IS_VAT_APPLIES,CAN_BE_RELIEVED )'
                        +' values(:serialNumber,:FkSTariff,:fkBase,:description,1, :TariffUnit,:DutyType,:TariffUnitRate,:ChargingMEthod,:isVatApplies,:canBeRelieved)';

                        doSQL.ParambyName('serialNumber').value:=LineSerial;
                        doSQL.ParambyName('FkSTariff').value:=TariffSerial;
                        doSQL.ParambyName('FkBase').value:=mBaseSerial;
                        doSQL.ParambyName('description').value:=mDescription;
                        doSQL.ParambyName('TariffUnit').value:=mUnit;
                        doSQL.ParambyName('DutyTYpe').value:=mDutyType;
                        doSQL.ParambyName('TariffUnitRate').value:=mTariffRate;

                        doSQL.ParambyName('ChargingMethod').value:=mChargingMethod;
                        doSQL.ParambyName('isVatApplies').value:=mIsVatApply;
                        doSQL.ParambyName('canBeRelieved').value:=mCanbeRElieved;


                        doSQL.Execute;
                end;


                MakeSQL.Next;
        end;
        ClientSQL2.Refresh;
        close;
     end;

end;



procedure TM_StariffFRM.MakeSQLAfterScroll(DataSet: TDataSet);
begin
// Grid1.RowCount := DataSet.RecordCount;

If (not Dataset.IsEmpty) then begin
   if Grid1.CanFocus then begin
//      Grid1.PanelIndex:=1;
   end;
end;

end;



Function TM_StariffFRM.GetNextSerial(Const GenName:String):Integer;
begin
                      With Make2SQL do begin
                        Close;
                        Make2SQL.SQL.Clear;
                        Make2SQL.SQL.text:='SELECT NEXT VALUE FOR '+ GenName +' FROM RDB$DATABASE';
                        Make2SQL.Open;
                        Result :=Make2SQL.FieldByName('GEN_ID').AsInteger;
                        Close;
                      end;
end;





procedure TM_StariffFRM.Grid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
Var
   ShowUnits:Boolean;
   IsEuros:Boolean;
FontColor,BackgroundColor:Tcolor;

begin

   ShowUnits:= (grid1.DataSource.DataSet.FieldbyName('charging_method').asString='UNI');
   ShowHideFields(ShowUnits);


   IsEuros:= (grid1.DataSource.DataSet.FieldbyName('charging_method').asString='ITE')
   Or (grid1.DataSource.DataSet.FieldbyName('charging_method').asString='UNI');
   ShowEuros(IsEuros);



   if (index = Grid1.PanelIndex) then begin

   //controls only exist in active panel
          // PIncrementFLD.Enabled:=ShowUnits;
          // PTariffUnitFLD.Enabled:=ShowUnits;

   end;

end;



procedure TM_StariffFRM.ShowEuros(Const IsEuro:Boolean);
begin

   //Eurolbl.Visible:=IsEuro;
 // Percentagelbl.Visible:=IsEuro;

if IsEuro then begin
end else begin
end;



end;


procedure TM_StariffFRM.ShowHideFields(Const ShowUnits:Boolean);
Var
FontColor,BackgroundColor:Tcolor;

begin
if ShowUnits then begin

end;
//PIncrementFLD.Visible:=ShowUnits;
//PIncrementLbl.Visible:=ShowUnits;
//PTariffUnitFLD.Visible:=ShowUnits;
//PTariffUnitlbl.Visible:=ShowUnits;


{
if showUnits then begin
   Color:=clBlack;
   BackgroundColor:=clWindow;
end else begin
   color:=clBtnFace;
   BackgroundColor:=clBTNFace;
end;



PIncrementFLD.Enabled:=ShowUnits;
PIncrementFLD.Font.Color:=color;
PIncrementFLD.Color:=BackgroundColor;
PIncrementFLD.Frame.Enabled:=ShowUnits;

PIncrementlbl.Font.Color:=color;



PTariffUnitFLD.Enabled:=ShowUnits;
PTariffUnitFLD.Font.Color:=color;
PTariffUnitFLD.Color:=BackgroundColor;
PTariffUnitFLD.Frame.Enabled:=ShowUnits;

PTariffUnitlbl.Font.Color:=color;
}




end;



procedure TM_StariffFRM.Button2Click(Sender: TObject);
Const
  ar : array[1..2] of String= ('ab','cd');
var
 form: TM_SingleTariff2FRM;
 Serial:Integer;
begin
    serial:=ClientSQL2.FieldByName('Serial_number').AsInteger;
    if serial <1  then begin
      abort;
    end;

  try
    form := TM_SingleTariff2FRM.Create(nil); // you can use nil if you Free it in here
    form.IN_ACTION:='EDIT';
    form.IN_SerialNumber:=serial;
    form.ShowModal;
  finally
//    form.Release; // generally better than Free for a Form
    form.free; // generally better than Free for a Form
  end;

end;



Function TM_StariffFRM.CheckDefaultUnit():Boolean;
begin
                      With Make2SQL do begin
                        Close;
                        Make2SQL.SQL.Clear;
                        Make2SQL.SQL.Text :='select UNIT from UNIT_MEASURE where unit=''UNI'' ';
                        if not MakeSQL.Prepared then prepare;
                        Make2SQL.Open;
                        if Make2SQL.IsEmpty then begin
                          G_kyrSQL.ksMultiExec([
                            TksSQLLine.Create(MainFRM.IBCConnection1,'INSERT INTO UNIT_MEASURE (SERIAL_NUMBER, UNIT, DESCRIPTION, ORDER_NUMBER, XML_CODE) VALUES (1000,''UNI'',''Units'',1, ''UN'' ',['7'])
                          ]);

                        end;
                        result:=not Make2SQL.IsEMpty;
                        Close;
                      end;
end;

Function TM_StariffFRM.GetDefaultRate(Const DutyType:String):Double;
begin
                      With Make2SQL do begin
                        Close;
                        Make2SQL.SQL.Clear;
                        Make2SQL.SQL.Text :='select DUTY_RATE from DUTY_RATE where FK_DUTY_TYPE=:DutyTYpe and IS_DEFAULT=''Y''';
                        if not MakeSQL.Prepared then prepare;
                        Make2SQL.ParambyName('DutyType').value:=DutyType;

                        Make2SQL.Open;
                        result:=FieldbyName('DUTY_RATE').AsFloat;
                        Close;
                      end;
end;

Function TM_StariffFRM.GetDefaultVAT():String;
begin
                      With Make2SQL do begin
                        Close;
                        Make2SQL.SQL.Clear;
                        Make2SQL.SQL.Text :='select code from VAT_Category where IS_DEFAULT=''Y''';
                        if not MakeSQL.Prepared then prepare;
                        Make2SQL.Open;
                        result:=FieldbyName('CODE').AsString;
                        Close;
                      end;
end;



procedure TM_StariffFRM.TableSQLBeforePost(DataSet: TDataSet);
begin
If Trim( Dataset.FieldbyName('Tariff_code').asString)='' then begin
//   ShowMessage('enter Tariff code');
   if StationIdFLD.CanFocus then
      StationIdFLD.SetFocus;
end;
end;

End.


{
REFRESH For Client
Select
line.SERIAL_NUMBER,
line.fk_s_tariff,
bases.description,
TARIFF_UNIT,
TARIFF_UNIT_INCREMENT,
TARIFF_UNIT_RATE,
Duty_type,
bases.account_category,
Bases.Is_PER_UNIT,
bases.is_per_hawb_item
from
   s_tariff_line line
left outer
    join base_tariff bases on bases.SERIAL_NUMBER=line.fk_BASE
where
  LINE.SERIAL_NUMBER = :SERIAL_NUMBER
}
{
procedure TM_StariffFRM.Button1Click(Sender: TObject);
begin
   LEft:=DetailsGRP.Left+DetailsGRP.Width;
   TOp:=DetailsGRP.Top;


   For I:=low(PanelArray) to high(PanelArray) do begin

     Panel:= CreatePanel(MainPanelPNL,Left+300,Top+i*50);
     Panel.OnEnter:=PanENter;
     Panel.OnExit:=PanExit;
//     Panel.visible:=false;
     for j:=low(FieldsArray) to high(FieldsArray) do begin
      mEdit:=createEdit(Panel,j*50,10);
      //mEdit.DataSource:=ClientSRC;
      mEdit.DataField:=FieldsArray[j];
      mEdit.Text:=IntToStr(i)+'-'+IntToStr(j);
     end;
   end;
   For I:= Low(PanelArray) to High(PanelArray) do begin
      //PanelArray[i].Visible:=true;
   end;

end;



Function TM_StariffFRM.CreatePanel(Const Owner:TCustomControl;Const Left, Top:Integer): TPanel;
var
  C: TPanel;
  EditArray : Array[1..4]of TwwDbEdit;
  J:Integer;
  bt:TButton;
begin

  C := TPanel.Create(MainPanelPNL);
  C.Left := Left;
  C.Top := Top;
  C.Width := 400;
  C.Height := 50;
  C.Visible := True;
  C.Parent := MainPanelPNL; //Any container: form, panel, ...
  result:= C;
End;

Function TM_StariffFRM.CreateEdit(Const Father:TCustomControl; Left, Top:Integer):TwwDBEdit;
var
J:Integer;
  ed:TwwDBEdit;
begin
      ed:=TwwDBEDit.Create(Self);
      ed.Left := left;
      ed.Top :=top;
      ed.Width := 40;
      ed.Height := 10;
      ed.Color:=clYellow;
      ed.Visible := True;
      ed.Parent := Father; //Any container: form, panel, ...
      result:= ed;


end;



procedure TM_StariffFRM.PanEnter(Sender: TObject);
Var

   aPanel:TPanel;
begin

if (sender is TPanel) then begin
   aPanel:=(Sender as TPanel);
   aPanel.Color:=clRed;

end;
end;

procedure TM_StariffFRM.PanExit(Sender: TObject);
begin

if (sender is TPanel) then begin
   (Sender as TPanel).color:=clBtnFace;
end;
end;
}

