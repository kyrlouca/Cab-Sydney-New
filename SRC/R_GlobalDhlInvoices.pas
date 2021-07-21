unit R_GlobalDhlInvoices;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RzPanel, ppDesignLayer, ppParameter, ppBands,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, Data.DB, MemDS, DBAccess, IBC, Vcl.Mask, vcl.Wwdbedit,
  vcl.Wwdotdot, vcl.Wwdbcomb, vcl.Wwdbdatetimepicker,pptypes,ppviewr;
type
  TR_GlobalDhlInvoicesFRM = class(TForm)
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
    PaymentReceivedSQLSERIAL_NUMBER: TIntegerField;
    PaymentReceivedSQLHAWB: TStringField;
    PaymentReceivedSQLINVOICE_NUMBER: TStringField;
    PaymentReceivedSQLCONSIGNEE: TStringField;
    PaymentReceivedSQLINVOICE_AMOUNT: TFloatField;
    PaymentReceivedSQLACCOUNT_BILLING: TStringField;
    PaymentReceivedSQLACCOUNT_CASH: TStringField;
    PaymentReceivedSQLINVOICE_STATUS: TStringField;
    PaymentReceivedSQLIS_COLLECTABLE: TStringField;
    PaymentReceivedSQLINVOICE_TYPE: TStringField;
    PaymentReceivedSQLXML_ID: TStringField;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    MakeSQL: TIBCQuery;
    Label2: TLabel;
    TypeFLD: TwwDBComboBox;
    Panel11: TRzPanel;
    CloseBTN: TBitBtn;
    PrintRBtn: TBitBtn;
    PaymentReceivedSQLDATE_INVOICED: TDateField;
    PaymentReceivedSQLDATE_ARRIVAL: TDateField;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure CloseBTNClick(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_GlobalDhlInvoicesFRM: TR_GlobalDhlInvoicesFRM;

implementation

uses  U_ClairDML;

{$R *.DFM}





procedure TR_GlobalDhlInvoicesFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_GlobalDhlInvoicesFRM.CloseBTNClick(Sender: TObject);
begin
close;
end;

procedure TR_GlobalDhlInvoicesFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
(sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;

procedure TR_GlobalDhlInvoicesFRM.PrintRBtnClick(Sender: TObject);
Var
   FromDate:TDateTime;
   ToDate :TDateTime;
   Atype:String;
begin


fromDate:=FromDateFLD.Date;
toDate:= ToDateFLD.Date;

with PaymentReceivedSQL do
begin
     Close;
     RestoreSQL;
     ParamByName('FromDate').value:=FromDate;
     If (ToDateFLD.Date >0) then begin
        PaymentReceivedSQL.AddWhere('Date_Invoiced <= :ToDate');
        ParamByName('ToDate').AsDateTime:= ToDate;
     end;

     AType:=Trim(TYpeFLD.text);
          If ((Atype >'') and (UpperCase(Atype)<>'ALL')) then begin
        PaymentReceivedSQL.AddWhere('INVOICE_TYPE = :CAT');
        ParamByName('cat').value:=Trim(TYpeFLD.Text);
     end;
     Prepare;



//     ShowMessage(PaymentReceivedSQL.FinalSQL);
     Open ;
     PpReport1.Print;
     close;
end;

end;

procedure TR_GlobalDhlInvoicesFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
Text:= 'Period :'+
FromDateFLD.Text+
' - '+
ToDateFLD.Text;

end;

procedure TR_GlobalDhlInvoicesFRM.FormActivate(Sender: TObject);
Var
         slist :TStringList;
begin
TypeFLD.Items.Add('All');
     With MakeSQL do
     begin
        Close;
        MakeSQL.SQL.Clear;
        MakeSQL.SQL.Text :='select ACCOUNT_TYPE FROM ACCOUNT_CATEGORY';
        if not prepared then prepare;
        Open;
        While ( NOT MakeSQL.Eof)do begin
                TypeFLD.Items.add(MakeSQL.fieldbyName('ACCOUNT_TYPE').AsString);
                MakeSQL.Next;
       end;
        close;
     end;


if (Trim(FromDateFLD.text)='') then
  FromDateFLD.Date:=now;
if (Trim(ToDateFLD.text)='') then
  ToDateFLD.Date:=now;

end;

procedure TR_GlobalDhlInvoicesFRM.Panel11Click(Sender: TObject);
begin
close;
end;

end.
