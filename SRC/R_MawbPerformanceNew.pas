unit R_MawbPerformanceNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, Wwdotdot, Wwdbcomb,
  ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppVar, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppProd, ppReport,ppTypes,ppViewr, wwdblook,
  ppDesignLayer, ppParameter;

type
  TR_MawbPerformanceNewFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    FromDateFLD: TwwDBDateTimePicker;
    Label6: TLabel;
    ToDateFLD: TwwDBDateTimePicker;
    Label1: TLabel;
    MawbSQL: TIBCQuery;
    MawbSQLREFERENCE_YEAR: TSmallintField;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLDATE_ARRIVED: TDateTimeField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLFK_PORT_IMPORTATION: TIntegerField;
    MawbSQLSIGNATORY_NAME: TStringField;
    MawbSQLFORM_DATE: TDateTimeField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLPASSED: TStringField;
    MawbSQLROTATION_NUMBER: TIntegerField;
    MawbSQLROTATION_YEAR: TSmallintField;
    MawbSQLFK_PORT_CLEARING: TIntegerField;
    MawbSQLGOODS_NUMBER: TIntegerField;
    MawbSQLGOODS_DESCRIPTION: TStringField;
    MawbSQLCBOOK_NUMBER: TStringField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLINVOICED: TStringField;
    MawbSQLSENT_TO_HEAD: TStringField;
    MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField;
    MawbSQLSTORAGE_EXPENSES: TFloatField;
    MawbSQLDELIVERY_EXPENSES: TFloatField;
    MawbSQLAMOUNT_NOT_INVOICED: TFloatField;
    MawbSQLAMOUNT_INVOICED: TFloatField;
    MawbSQLDATE_PASSED: TDateTimeField;
    MawbSQLGOODS_WEIGHT: TIntegerField;
    MawbSQLHAWBS_CLEARED_FIRST_TIME: TIntegerField;
    MawbSQLHAWBS_IN_MAWB: TIntegerField;
    MawbSRC: TwwDataSource;
    AllHighSQL: TIBCQuery;
    IntegerField3: TIntegerField;
    HighHawbSQL: TIBCQuery;
    IntegerField1: TIntegerField;
    AllLowSQL: TIBCQuery;
    AllLowSQLCOUNT: TIntegerField;
    LowHawbSQL: TIBCQuery;
    IntegerField2: TIntegerField;
    PerformanceRPT: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine1: TppLine;
    LowNextDaySQL: TIBCQuery;
    IntegerField4: TIntegerField;
    LowValueClearedNextFLD: TppDBText;
    HighValueClearedNextFLD: TppDBText;
    HighNextDaySQL: TIBCQuery;
    IntegerField5: TIntegerField;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine2: TppLine;
    PeriodFLD: TppLabel;
    ppLabel18: TppLabel;
    FlightSQL: TIBCQuery;
    FlightSQLFLIGHT_NUMBER: TStringField;
    FlightFLD: TwwDBLookupCombo;
    Label2: TLabel;
    AllCLearedSQL: TIBCQuery;
    IntegerField6: TIntegerField;
    AllClearedFLD: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel10: TppLabel;
    ppLabel7: TppLabel;
    ppLabel21: TppLabel;
    MawbPIP: TppDBPipeline;
    AllHighPIP: TppDBPipeline;
    HighHawbPIP: TppDBPipeline;
    HighNextDayPIP: TppDBPipeline;
    AllLowPIP: TppDBPipeline;
    LowHawbPIP: TppDBPipeline;
    AlClearedPIP: TppDBPipeline;
    HighHawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HighNextDaySQLFK_MAWB_REFER_NUMBER: TIntegerField;
    AllLowSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    LowHawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    AllCLearedSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    AllHighSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    LowNextDaySQLFK_MAWB_REFER_NUMBER: TIntegerField;
    LowNextDayPIP: TppDBPipeline;
    NTotalClearedPercent: TppVariable;
    AllHawbsSQL: TIBCQuery;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    AllHawbsSRC: TIBCDataSource;
    AllHawbsPIP: TppDBPipeline;
    ppMasterFieldLink1: TppMasterFieldLink;
    ppDBText8: TppDBText;
    NhighClearedPercent: TppVariable;
    NLowClearedPercent: TppVariable;
    TAll: TppDBCalc;
    TAllCleared: TppDBCalc;
    TLowALL: TppDBCalc;
    TLowSameDay: TppDBCalc;
    TLowNextDay: TppDBCalc;
    THighAll: TppDBCalc;
    THighSameDay: TppDBCalc;
    THighNextDay: TppDBCalc;
    TAllPercent: TppVariable;
    TLowPercent: TppVariable;
    THighPercent: TppVariable;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    Print2BTN: TBitBtn;
    ppLabel6: TppLabel;
    IBCDataSource1: TIBCDataSource;
    AllHighSRC: TIBCDataSource;
    HighHawbSRC: TIBCDataSource;
    HighNextDaySRC: TIBCDataSource;
    AllLowSRC: TIBCDataSource;
    LowNextDaySRC: TIBCDataSource;
    LowHawbSRC: TIBCDataSource;
    FlightSRC: TIBCDataSource;
    IBCDataSource2: TIBCDataSource;
    AllClearedSRC: TIBCDataSource;
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure FormActivate(Sender: TObject);
    procedure PeriodFLDPrint(Sender: TObject);
    procedure PerformanceRPTPreviewFormCreate(Sender: TObject);
    procedure FlightFLDNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure TAllPercentCalc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand1BeforeGenerate(Sender: TObject);
    procedure TLowPercentCalc(Sender: TObject; var Value: Variant);
    procedure THighPercentCalc(Sender: TObject; var Value: Variant);
    procedure BitBtn1Click(Sender: TObject);
    procedure Print2BTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_MawbPerformanceNewFRM: TR_MawbPerformanceNewFRM;
  TotalAmount:Double;
  TotalLowValue,TotalHighValue,TotalBothValue:Integer;
  TotalLowValueCleared,TotalHighValueCleared,TotalBothValueCleared:Integer;
  TotalLowPercent,TotalHighPercent,TotalBOthPercent:Double;
  CountCheck:Integer;

implementation

uses  U_ClairDML;

{$R *.DFM}




procedure TR_MawbPerformanceNewFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
begin
Dialog.wwIncrementalSearch1.ShowMatchText:=true;
end;

procedure TR_MawbPerformanceNewFRM.FormActivate(Sender: TObject);
begin
FlightSQL.Close;
FlightSQL.Open;
FromDateFLD.SetFocus;
end;

procedure TR_MawbPerformanceNewFRM.PeriodFLDPrint(Sender: TObject);
begin
PeriodFLD.Caption:= FromDateFLD.Text+' - '+ ToDateFLD.Text;

end;

procedure TR_MawbPerformanceNewFRM.PerformanceRPTPreviewFormCreate(
  Sender: TObject);
begin
  PerformanceRPT.PreviewForm.WindowState := wsMaximized;
  TppViewer(PerformanceRPT.PreviewForm.Viewer).ZoomSetting := zs100Percent;
  CountCheck:=0;

end;

procedure TR_MawbPerformanceNewFRM.FlightFLDNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
accept:=false;
end;

procedure TR_MawbPerformanceNewFRM.TAllPercentCalc(Sender: TObject;
  var Value: Variant);

Var
        All,Cleared:Integer;
        SameDay,NextDay:Integer;
        Percent:Double;

begin
All:=Tall.Value;
CLeared:= TAllCleared.Value;


        If (All=0) then begin
          Percent :=-1;
        end else begin
          try
            percent:=(Cleared*1.0)/All*100.00;
          except on E:Exception do
            Percent:=-1;
          end;
        end;
        Value:=Percent;
end;

procedure TR_MawbPerformanceNewFRM.ppDetailBand1BeforeGenerate(
  Sender: TObject);
Var
        All,Cleared:Integer;
        SameDay,NextDay:Integer;
        Percent:Double;
begin

        try
         All:=AllHawbsSQL.FieldByName('Count').AsInteger;
        except
          all:=0;
        end;

        Try
                Cleared:=AllClearedSQL.FieldByName('Count').AsInteger;
        except
               Cleared:=0;
        end;


        If (All=0) then begin
          Percent :=-1;
        end else begin
          try
            percent:=(Cleared*1.0)/All*100.00;
          except on E:Exception do
            Percent:=-1;
          end;
        end;

        NTotalClearedPercent.Value:=percent;

//**************************
//Low
//**************************
        Try
         All:=AllLowSQL.FieldByName('Count').AsInteger;
        except
          All:=0;
        end;

        try
                SameDay:=LowHawbSQL.FieldByName('Count').AsInteger;
        except
                SameDay:=0;
        end;

        try
                NextDay:=LOwNextDaySQL.FieldByName('Count').AsInteger;
        except
                NExtDay:=0;
        End;

        Cleared:=0;
        If (SameDay>0) or (nextDay>0) then begin
         Cleared:=SameDay+NextDay;
        end;

        If (All=0) then begin
          Percent :=-1;
        end else begin
          try
            percent:=(Cleared*1.0)/All*100.00;
          except on E:Exception do
            Percent:=-1;
          end;
        end;

        NLOwClearedPercent.value:=percent;


        //**************************
        //High
        //**************************
        Try
         All:=AllHighSQL.FieldByName('Count').AsInteger;
        except
          All:=0;
        end;

        try
                SameDay:=HIghHawbSQL.FieldByName('Count').AsInteger;
        except
                SameDay:=0;
        end;

        try
                NextDay:=HIghNextDaySQL.FieldByName('Count').AsInteger;
        except
                NExtDay:=0;
        End;

        Cleared:=0;
        If (SameDay>0) or (nextDay>0) then begin
         Cleared:=SameDay+NextDay;
        end;

        If (All=0) then begin
          Percent :=-1;
        end else begin
          try
            percent:=(Cleared*1.0)/All*100.00;
          except on E:Exception do
            Percent:=-1;
          end;
        end;

        NHighClearedPercent.value:=percent;


end;

procedure TR_MawbPerformanceNewFRM.TLowPercentCalc(Sender: TObject;
  var Value: Variant);
Var
        All,Cleared:Integer;
        SameDay,NextDay:Integer;
        Percent:Double;

begin
All:=TLowAll.Value;
SameDay:=TLowSameDay.Value;
NextDay:=TlowNextDay.Value;

CLeared:= SameDay+nextDay;


        If (All=0) then begin
          Percent :=-1;
        end else begin
          try
            percent:=(Cleared*1.0)/All*100.00;
          except on E:Exception do
            Percent:=-1;
          end;
        end;
        Value:=Percent;

end;

procedure TR_MawbPerformanceNewFRM.THighPercentCalc(Sender: TObject;
  var Value: Variant);
Var
        All,Cleared:Integer;
        SameDay,NextDay:Integer;
        Percent:Double;

begin
All:=THighAll.Value;
SameDay:=THighSameDay.Value;
NextDay:=THighNextDay.Value;

CLeared:= SameDay+nextDay;


        If (All=0) then begin
          Percent :=-1;
        end else begin
          try
            percent:=(Cleared*1.0)/All*100.00;
          except on E:Exception do
            Percent:=-1;
          end;
        end;
        Value:=Percent;


end;

procedure TR_MawbPerformanceNewFRM.BitBtn1Click(Sender: TObject);
begin
close;

end;

procedure TR_MawbPerformanceNewFRM.Print2BTNClick(Sender: TObject);
Var
   FromDate:TDate;
   ToDate :TDate;
   FromXDate:TDate;
   I:Integer;
begin

//ShortDateFormat:='dd/mm/yyyy';

FromDate:=FromDateFLD.Date;
ToDate:=ToDateFLD.Date;

FromxDate:=date;
try
        FromxDate:=FromDateFLD.Date
except
        FromxDate:=date;
end;



MawbSQL.DeleteWhere;
MawbSQL.AddWhere( 'date_arrived >= :FromDate and date_arrived <= :ToDate');

if Trim(FlightFLD.text)>' ' then begin
  MawbSQL.AddWhere('FLIGHT_NUMBER = :FlightNumber');
end;

with MawbSQL do begin
     Close;
     Prepare;
     ParamByName('FromDate').AsDate:=FromDate;
     ParamByName('ToDate').AsDate:=ToDate;
     If not (FindParam('FlightNumber')=nil) then
        ParamByName('FlightNumber').AsString:=Trim(FlightFLD.text);
//     ShowMessage(MawbSQL.FinalSQL);
     Open ;
     PerformanceRPT.Print;
     close;
end;

MawbSQL.SetOrderBy('DATE_ARRIVED');

end;

END.
