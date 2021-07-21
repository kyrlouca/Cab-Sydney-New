unit R_UnclearedHawbs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, DBGrids, wwdbdatetimepicker, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe,pptypes,ppviewr, wwdblook, Wwdotdot, Wwdbcomb,
  ppDesignLayer, ppParameter, vcl.wwrcdpnl, vcl.Wwrcdvw, RzButton;

type
  TR_UnclearedHawbsFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    FromDateFLD: TwwDBDateTimePicker;
    Label6: TLabel;
    ToDateFLD: TwwDBDateTimePicker;
    Label1: TLabel;
    HawbsSQL: TIBCQuery;
    HawbsSQLHAB_ID: TStringField;
    HawbsSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbsSQLFK_CLEARING_STATE: TStringField;
    HawbsSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbsSQLCLEARANCE_WAITING_CODE: TStringField;
    HawbsPIP: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    HawbsSQLCUSTOMS_VALUE: TFloatField;
    HawbsSQLWEIGHT: TFloatField;
    WaitingRGP: TRadioGroup;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ClearanceWaitingCodeLookupSQL: TIBCQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    HawbsSQLCUSTOMER_NAME: TStringField;
    HawbsSQLFK_MAWB_ID: TStringField;
    HawbsSQLMAWBSERIAL: TIntegerField;
    HawbsSQLFLIGHT_NUMBER: TStringField;
    HawbsSQLCW_CLEARANCE_CODE: TStringField;
    HawbsSQLFDAYS: TIntegerField;
    HawbsSRC: TIBCDataSource;
    HawbsSQLDATE_REGISTERED: TDateField;
    HawbsSQLDAYSPASSED2: TIntegerField;
    WaitingReasonFLD: TwwDBComboBox;
    HawbsSQLDESCRIPTION: TStringField;
    PrintRBtn: TBitBtn;
    BitBtn1: TRzBitBtn;
    procedure HawbsSQLCalcFields(DataSet: TDataSet);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure WaitingRGPClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
  end;

var
  R_UnclearedHawbsFRM: TR_UnclearedHawbsFRM;

implementation

uses  U_ClairDML, G_generalProcs;

{$R *.DFM}





procedure TR_UnclearedHawbsFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_UnclearedHawbsFRM.PrintRBtnClick(Sender: TObject);
var
    ToDate ,FromDate :TDate;
Const
     qt='''';
begin

FromDate:=FromDateFLD.Date;
ToDate:=ToDateFLD.Date;

with HawbsSQL do
begin
     Try
        FromDate:=FromDateFLD.Date
     except
        FromDate:=Now;
     end;

     Try
        ToDate:=TODateFLD.Date
     except
        TODate:=Now;
     end;

     Close;
     DeleteWhere;


     addWhere('Invoicable=''Y'' ');
     Addwhere('date_registered >= :FromDate');
     Addwhere('date_registered<= :ToDate');
     Addwhere('FK_clearing_state <>1');


     if (WaitingRGP.ItemIndex=0) then begin
     //
     end else if (WaitingRGP.ItemIndex=1) then begin
        Addwhere ('CLEARANCE_WAITING_CODE > '''' ');     //any
     end else if (WaitingRGP.ItemIndex=2) then begin
        Addwhere ('CLEARANCE_WAITING_CODE = '''' or CLEARANCE_WAITING_CODE is null'); //without reason
     end else if (WaitingRGP.ItemIndex=3) then begin
        Addwhere ('CLEARANCE_WAITING_CODE ='+QuotedStr(WaitingReasonFLD.Value));
     end;

     ParamByName('FromDate').AsDate:=FromDate;
     ParamByName('ToDate').AsDate:=ToDate;
     hawbssql.SetOrderBy('Date_registered');
//     ShowMessage(HawbsSQL.FinalSQL);

     Open ;
      ppReport1.Print;
//    close;
end;
end;






procedure TR_UnclearedHawbsFRM.HawbsSQLCalcFields(DataSet: TDataSet);
Var
   Diff:Double;
begin
DIff:=Date - DataSet.FieldByName('Date_registered').AsDateTime;
Dataset.FieldByname('DaysPassed').value:= Diff;

end;

procedure TR_UnclearedHawbsFRM.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
Text:= 'Period :'+ self.FromDateFLD.Text +' - '+ self.ToDateFLD.Text;

end;

procedure TR_UnclearedHawbsFRM.ppReport1PreviewFormCreate(Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;

procedure TR_UnclearedHawbsFRM.WaitingRGPClick(Sender: TObject);
begin
     if (WaitingRGP.ItemIndex=3) then begin
        WaitingReasonFLD.Enabled:=true;
     end else begin
        WaitingReasonFLD.Enabled:=False;
     end;

end;

procedure TR_UnclearedHawbsFRM.FormActivate(Sender: TObject);
begin
ToDateFLD.Date:= now;
If not ClearanceWaitingCodeLookupSQL.Active then
        ClearanceWaitingCodeLookupSQL.Open;


end;

procedure TR_UnclearedHawbsFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
  ksfillComboF1(cn,WaitingReasonFLD,'CLEARANCE_WAITING_CODE','code','code','code');
end;

end.
