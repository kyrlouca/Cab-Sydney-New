unit R_nonReceivedInvoices;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel;

type
  TR_nonReceivedInvoicesFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PaymentReceivedSQL: TIBCQuery;
    PaymentReceivedSRC: TDataSource;
    PaymentReceivedPIP: TppDBPipeline;
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
    ppDBText3: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    FromDateFLD: TwwDBDateTimePicker;
    Label1: TLabel;
    ToDateFLD: TwwDBDateTimePicker;
    PrintRBtn: TBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    PaymentReceivedSQLSERIAL_NUMBER: TIntegerField;
    PaymentReceivedSQLHAWB_ID: TStringField;
    PaymentReceivedSQLAMOUNT: TFloatField;
    PaymentReceivedSQLDATE_INVOICED: TDateField;
    PaymentReceivedSQLHAB_ID: TStringField;
    PaymentReceivedSQLXML_HOUSE_ID: TStringField;
    PaymentReceivedSQLFILE_DATE_INVOICED: TDateField;
    ppDBText7: TppDBText;
    ppLabel3: TppLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_nonReceivedInvoicesFRM: TR_nonReceivedInvoicesFRM;

implementation

uses  U_ClairDML;

{$R *.DFM}





procedure TR_nonReceivedInvoicesFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_nonReceivedInvoicesFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_nonReceivedInvoicesFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_nonReceivedInvoicesFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TR_nonReceivedInvoicesFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
Text:= 'Period :'+ FromDateFLD.Text+ ' - '+ ToDateFLD.Text;

end;


procedure TR_nonReceivedInvoicesFRM.PrintRBtnClick(Sender: TObject);

Var
   FromDate:TDateTime;
   ToDate :TDateTime;
   SFromDate:String;
   SToDate:String;
begin

fromDate:=FromDateFLD.Date;
toDate:= ToDateFLD.Date;


with PaymentReceivedSQL do
begin
      Close;
     PaymentReceivedSQL.RestoreSQL;
     Prepare;
     ParamByName('FromDate').value:=FromDate;
      ParamByName('ToDate').value:=ToDate;
     {
     If (ToDateFLD.Date >0) then begin
//        PaymentReceivedSQL.AddWhere('inv.date_invoiced <= :ToDate');
//        ParamByName('ToDate').AsDateTime:=ToDate;
     end;
     SHowMessage(PaymentReceivedSQL.ParamByName('fromDate').AsString);
     SHowMessage(PaymentReceivedSQL.ParamByName('ToDate').AsString);
//     ShowMEssage(PaymentReceivedSQL.FinalSQL);
}
     Open ;
     PpReport1.Print;
//     close;
end;

end;

procedure TR_nonReceivedInvoicesFRM.FormActivate(Sender: TObject);
begin
if (Trim(ToDateFLD.text)='') then
  toDateFLD.Date:=now;

if (Trim(FromDateFLD.text)='') then
   FromDateFLD.Date:=now;

end;

end.
