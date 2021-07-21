unit R_HawbsToReceive;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe,pptypes,ppviewr, ppStrtch, ppSubRpt, ppDBBDE,
  ppDesignLayer, ppParameter;

type
  TR_HawbsToReceiveFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    PrintBTN: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    MawbSQL: TIBCQuery;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbPIP: TppDBPipeline;
    MawbSRC: TDataSource;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    Inc1: TppVariable;
    ppShape1: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppPageStyle1: TppPageStyle;
    ppShape3: TppShape;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine2: TppLine;
    ClearanceWaitingReasonSQL: TIBCQuery;
    ClearanceWaitingReasonSQLCODE: TStringField;
    ClearanceWaitingReasonSQLDESCRIPTION: TStringField;
    ClearanceWaitingReasonSQLCODE_4: TStringField;
    ClearanceWaitingReasonSRC: TDataSource;
    cwrPIP: TppDBPipeline;
    ppDBCalc1: TppDBCalc;
    ppLabel20: TppLabel;
    ppDBText9: TppDBText;
    OnFlightRPT: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText2: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel27: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppVariable1: TppVariable;
    ppDBText16: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel30: TppLabel;
    ppLabel33: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppPageStyle2: TppPageStyle;
    ppShape4: TppShape;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine24: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    CustomerSQL: TIBCQuery;
    CustomerSQLVAT_ID: TStringField;
    CustomerPIP: TppDBPipeline;
    HawbandPartialPIP: TppDBPipeline;
    HawbAndPartialSQL: TIBCQuery;
    CustomerSQLCODE: TIntegerField;
    HawbAndPartialSQLHAB_ID: TStringField;
    HawbAndPartialSQLWEIGHT: TFloatField;
    HawbAndPartialSQLDESCRIPTION: TStringField;
    HawbAndPartialSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbAndPartialSQLCLEARANCE_WAITING_CODE: TStringField;
    HawbAndPartialSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbAndPartialSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    MawbSQLHMSD: TStringField;
    ppDBText19: TppDBText;
    IBCDataSource1: TIBCDataSource;
    IBCDataSource2: TIBCDataSource;
    CustomerSRC: TIBCDataSource;
    HawbAndPartialSRC: TIBCDataSource;
    ppDBText20: TppDBText;
    HawbAndPartialSQLPARCELS: TIntegerField;
    ppDBText21: TppDBText;
    HawbAndPartialSQLXML_HOUSE_ID: TStringField;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    MawbSQLFORM_DATE: TDateField;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport1AfterPrint(Sender: TObject);
    procedure Inc1Calc(Sender: TObject; var Value: Variant);
    procedure ppReport1BeforePrint(Sender: TObject);
    procedure ppVariable3Reset(Sender: TObject; var Value: Variant);
    procedure ppVariable5Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable6Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    procedure ToPrint(TheNumber:integer;TheReport:String);
  public
    { Public declarations }
    In_MawbSerial:Integer;
    In_ReportType:String;
    procedure PrintOne;
 end;

var
  R_HawbsToReceiveFRM: TR_HawbsToReceiveFRM;

implementation

uses  U_ClairDML;

{$R *.DFM}


procedure TR_HawbsToReceiveFRM.PrintOne();
begin
  ToPrint(In_MawbSerial,In_ReportType);
end;


procedure TR_HawbsToReceiveFRM.ToPrint(TheNumber:Integer;TheReport:String);
Var
        MawbId:String;
begin

with MawbSQL do
begin
     Close;
     Prepare;
     ParamByName('MawbReference').value:= TheNumber;
     Open ;
     MawbId:=FieldByName('mawb_id').AsString;
end;

with HawbandPartialSQL do
begin
        Close;
     Prepare;
     ParamByName('MawbSerial').value:= TheNumber;
     ParamByName('MawbSerialArrived').value:= TheNumber;
     Open ;

end;


with CustomerSQL do
begin
     Close;
     Prepare;
     Open ;
end;

with ClearanceWaitingReasonSQL do
begin
     Close;
     Prepare;
     Open ;
end;


    If theReport='ToReceive' then begin
         ppReport1.Print;
    end else if theReport='NewIT2' then begin
//         NReport.Print;
         ppReport1.Print;

    end else begin

        OnFlightRPT.Print;
    end;
End;


procedure TR_HawbsToReceiveFRM.ppReport1PreviewFormCreate(Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;

procedure TR_HawbsToReceiveFRM.ppReport1AfterPrint(Sender: TObject);
begin
MawbSQL.Close;
HawbandPartialSQL.Close;
CustomerSQL.CLose;
end;

procedure TR_HawbsToReceiveFRM.Inc1Calc(Sender: TObject;
  var Value: Variant);
begin
Value:=Value+1;
end;

procedure TR_HawbsToReceiveFRM.ppReport1BeforePrint(Sender: TObject);
begin
Inc1.AsInteger:=0;
end;

procedure TR_HawbsToReceiveFRM.ppVariable3Reset(Sender: TObject;
  var Value: Variant);
begin
//Value:=  ppVariable2.AsInteger;
end;

procedure TR_HawbsToReceiveFRM.ppVariable5Calc(Sender: TObject;
  var Value: Variant);
begin

Value:=Value+HawbandPartialSQL.FieldBYName('Num_of_pieces_arrived').AsInteger;
end;

procedure TR_HawbsToReceiveFRM.ppVariable6Calc(Sender: TObject;
  var Value: Variant);
begin
Value:=Value+HawbAndPartialSQL.FieldBYName('partial_pieces').AsInteger;

end;

end.
