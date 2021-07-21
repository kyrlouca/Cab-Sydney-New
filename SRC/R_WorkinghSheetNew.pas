unit R_WorkinghSheetNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Db,
  Wwdatsrc,  DBAccess, IBC, MemDS, IBCError,  ppBands, ppCtrls, ppPrnabl, ppVar, ppCache,
  StdCtrls, ppStrtch, ppSubRpt,ppdisplayformat, ppDBBDE, ppTxPipe, ppDBJIT,pptypes,ppviewr,
  ppParameter, ppDesignLayer,G_OtherProcs;

type
  TR_WorkingSheetNewFRM = class(TForm)
    HawbItemSQL: TIBCQuery;
    HawbItemSQLFK_HAWB_SERIAL: TIntegerField;
    HawbItemSQLFK_TARIFF_CODE: TStringField;
    HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField;
    HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbItemSQLDUTY_TYPE: TStringField;
    HawbItemSQLDESCRIPTION: TStringField;
    HawbItemSQLINVOICE_VALUE: TFloatField;
    HawbItemSQLNET_QUANTITY: TIntegerField;
    HawbItemSQLIMPORT_DUTY_RATE: TFloatField;
    HawbItemSQLTRL_RATE: TFloatField;
    HawbItemSQLINVOICE_LINE: TIntegerField;
    SenderInvoiceSQL: TIBCQuery;
    SenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_NUMBER: TStringField;
    SenderInvoiceSQLFK_HAWB_ID: TStringField;
    SenderInvoiceSQLINVOICE_AMOUNT: TFloatField;
    SenderInvoiceSQLFREIGHT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLINSURANCE_AMOUNT: TFloatField;
    SenderInvoiceSQLOTHER_CHARGES_AMOUNT: TFloatField;
    SenderInvoiceSQLTOTAL_AMOUNT: TFloatField;
    SenderInvoiceSQLCURRENCY: TStringField;
    SenderInvoiceSQLEXCHANGE_RATE: TFloatField;
    SenderInvoiceSQLFACTOR: TFloatField;
    SenderInvoiceSQLFREIGHT_CYP_AMOUNT: TFloatField;
    SenderInvoiceSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_RATE: TFloatField;
    HawbItemPIP: TppDBPipeline;
    SenderInvoicePIP: TppDBPipeline;
    HawbItemSRC: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    PrintBTN: TButton;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    HawbSQL: TIBCQuery;
    HawbSRC: TDataSource;
    HawbPIP: TppDBPipeline;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel1: TppLabel;
    ppDBText11: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine6: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText28: TppDBText;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel34: TppLabel;
    ppDBText33: TppDBText;
    ppLine7: TppLine;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppLine5: TppLine;
    ppLine2: TppLine;
    ppDBText36: TppDBText;
    SenderInvoiceSQLTotalCyp: TFloatField;
    CountrySQL: TIBCQuery;
    CountrySQLNUMBER: TIntegerField;
    CountrySQLCODE: TStringField;
    CountrySQLNAME: TStringField;
    CountrySQLEU_MEMBER: TStringField;
    CountrySQLFREIGHT05: TIntegerField;
    CountrySQLFREIGHT6: TIntegerField;
    CountrySQLFK_CURRENCY_CODE: TStringField;
    CountrySQLGREEK_NAME: TStringField;
    CountrySQLXML_COUNTRY: TStringField;
    HawbItemSQLOriginCountry: TStringField;
    PreferencialFLD: TppVariable;
    HawbItemSQLCUSTOMS_VALUE: TFloatField;
    HawbItemSQLDUTY_IMPORT_PAY: TFloatField;
    HawbItemSQLDUTY_TRL_PAY: TFloatField;
    HawbItemSQLDUTY_EXCISE_PAY: TFloatField;
    HawbItemSQLDUTY_VAT_PAY: TFloatField;
    SenderInvoiceSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLINVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    HawbSQLHIGH_VALUE: TStringField;
    HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    HawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    HawbSQLDATE_INVOICED: TDateTimeField;
    HawbSQLSENT_TO_HEAD: TStringField;
    HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbSQLFK_CLEARANCE_TYPE: TStringField;
    HawbSQLFK_DELIVERY_TERM: TStringField;
    HawbSQLORIGIN_STATION: TStringField;
    HawbSQLEC2_NUMBER_DATE: TStringField;
    HawbSQLSENDERS_INV_NO: TStringField;
    HawbSQLNUMBER_OF_PARCELS: TIntegerField;
    HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    HawbSQLDISTRICT: TStringField;
    HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER2_CHARGE_CODE: TStringField;
    HawbSQLPOSOSTOSIS: TStringField;
    HawbSQLTOTAL_DUTIES: TFloatField;
    HawbSQLCLEARANCE_WAITING_CODE: TStringField;
    HawbSQLCLEARANCE_WAITING_REASON: TStringField;
    HawbSQLDATE_CLEARED: TDateTimeField;
    HawbSQLDATE_REGISTERED: TDateTimeField;
    HawbSQLFACTOR: TFloatField;
    HawbSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbSQLCHARGE_TRL: TFloatField;
    HawbSQLCHARGE_VAT: TFloatField;
    HawbSQLCHARGE_EXCISE: TFloatField;
    HawbSQLCHARGE_IMPORT: TFloatField;
    HawbSQLINVOICABLE: TStringField;
    HawbSQLTOTAL_CHARGES: TFloatField;
    HawbSQLCUSTOMER_NAME: TStringField;
    HawbSQLEDE_COMMENTS: TStringField;
    HawbSQLFK_MAWB_ID: TStringField;
    HawbSQLSIGNATORY_NAME: TStringField;
    HawbSQLXML_HOUSE_ID: TStringField;
    HawbSQLSENDER_NAME: TStringField;
    HawbSQLSENDER_ADDRESS_1: TStringField;
    HawbSQLSENDER_ADDRESS_2: TStringField;
    HawbSQLSENDER_ADDRESS_3: TStringField;
    HawbSQLIS_PRIVATE: TStringField;
    HawbSQLDELIVERY_ORDER_ID: TStringField;
    HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER4_CHARGE: TStringField;
    HawbSQLIS_PAID: TStringField;
    HawbSQLPARTIAL_FLAG: TStringField;
    HawbSQLPARTIAL_WEIGHT: TFloatField;
    HawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    HawbSQLPARTIAL_MAWB_ID: TStringField;
    HawbSQLPARTIAL_PIECES: TIntegerField;
    HawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    SenderInvoiceSQLFK_MAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLIS_VALID: TStringField;
    SenderInvoiceSQLNUMBER_OF_HAWB_ITEMS: TIntegerField;
    HawbItemSQLSERIAL_NUMBER: TIntegerField;
    HawbItemSQLFK_RELIEF_CODE: TStringField;
    HawbItemSQLFK_IMPORT_TYPE: TStringField;
    HawbItemSQLTARIFF_DESCRIPTION: TStringField;
    HawbItemSQLRELIEVED_IMPORT_DUTY: TFloatField;
    HawbItemSQLEXCISE_DUTY_RATE: TFloatField;
    HawbItemSQLEXCISE_RELIEVED: TFloatField;
    HawbItemSQLTRL_RELEIVED: TFloatField;
    HawbItemSQLVAT_RATE: TFloatField;
    HawbItemSQLVAT_RELEIVED: TFloatField;
    HawbItemSQLCURRENCY_RATE: TFloatField;
    HawbItemSQLCURRENCY: TStringField;
    HawbItemSQLFK_MAWB: TIntegerField;
    HawbItemSQLFK_VAT_CODE: TIntegerField;
    HawbItemSQLFK_TARIFF_C_CODE: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_UNIT: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_QUANT: TFloatField;
    HawbItemSQLIMPORT_DUTY_RATE_BASE: TFloatField;
    HawbItemSQLDUTY_IMPORT_TOTAL: TFloatField;
    HawbItemSQLDUTY_EXCISE_TOTAL: TFloatField;
    HawbItemSQLDUTY_TRL_TOTAL: TFloatField;
    HawbItemSQLDUTY_VAT_TOTAL: TFloatField;
    HawbItemSQLTOTAL_VALUE_FOR_VAT: TFloatField;
    HawbItemSQLDUTY_TOTAL_CHARGES: TFloatField;
    HawbItemSQLFK_EXCISE_CODE: TStringField;
    HawbItemSQLEURO1: TStringField;
    HawbItemSQLEURO2: TStringField;
    HawbItemSQLPOSOSTOSIS: TStringField;
    HawbItemSQLEURO_PENDING: TStringField;
    HawbItemSQLMULTI_ITEMS_INVOICE: TStringField;
    HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbItemSQLWEIGHT_NET: TFloatField;
    SenderInvoiceSQLFACTOR_NUMERIC: TFloatField;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    SenderInvoiceSRC: TIBCDataSource;
    ImportDutyFLD: TppVariable;
    ImpRateFLD: TppLabel;
    procedure FormatFloatValue(Sender: TObject; DisplayFormat: String;
      DataType: TppDataType; Value: Variant; var Text: String);
    procedure SenderInvoiceSQLCalcFields(DataSet: TDataSet);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure PreferencialFLDCalc(Sender: TObject; var Value: Variant);
    procedure FormActivate(Sender: TObject);
    procedure ImportDutyFLDCalc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure PrintHawb(HawbSerial:Integer);
    procedure PrintOneHawb(HawbSerial:Integer);
  public
    { Public declarations }
      IN_ss:Integer;
      IN_hawbSerial:Integer;
      In_Action:String;
      IN_OnPrinter:Boolean;
      IN_PrinterSettings:TopPrinterSettings;
      procedure PrintWorksheet;
    end;

var
  R_WorkingSheetNewFRM: TR_WorkingSheetNewFRM;

implementation

uses U_ClairDML, G_KyrSQL;

{$R *.DFM}

procedure TR_WorkingSheetNewFRM.printWorksheet();
begin
  G_OtherProcs.setPrinter(ppReport1,IN_OnPrinter,IN_PrinterSettings);
  printOneHawb(IN_hawbSerial);
end;


procedure TR_WorkingSheetNewFRM.PrintHawb(HawbSerial:Integer);
begin
  ShowMessage('h');
  exit;

end;

procedure TR_WorkingSheetNewFRM.PrintOneHawb(HawbSerial:Integer);
Begin

   With CountrySQL do begin
      close;
      Open;
   end;

   With HawbSQL do begin
      close;
      ParamByName('SerialNumber').Value:=HawbSerial;
      Open;
   end;

   With SenderInvoiceSQL do begin
      close;
      ParamByName('HawbSerial').Value:=HawbSerial;
      Open;
   end;

   With HawbItemSQL do begin
      close;
      Open;
   end;

   ppReport1.Print;
   CountrySQL.Close;
   HawbSQL.Close;
   SenderInvoiceSQL.Close;
   HawbItemSQL.CLose;
End;



procedure TR_WorkingSheetNewFRM.FormatFloatValue(Sender: TObject;
  DisplayFormat: String; DataType: TppDataType; Value: Variant;
  var Text: String);
Var
   FloatValue:Double;
begin
{

   If Value = null then
        FloatValue:=0
   else
        FloatValue:=Value;

   Text:=Format('%6.3f',[Floatvalue]);
}
end;

procedure TR_WorkingSheetNewFRM.FormCreate(Sender: TObject);
begin
cn:= ClairDML.CabCOnnection;
end;

procedure TR_WorkingSheetNewFRM.ImportDutyFLDCalc(Sender: TObject;
  var Value: Variant);
var
qr:TksQuery;
str:String;
begin
  str:= 'select sum(hc.amount_net) as ImpValue, max(hc.tariff_unit_rate) as ImpRate from hawb_charge hc '
      +' where hc.fk_hawb_item = :ItemSerial and hc.duty_type =''IMP'' ';


  try
    qr:=TksQuery.Create(cn,str);
    qr.ParamByName('ItemSerial').Value:=HawbItemSQL.FieldByName('serial_number').AsInteger;
    qr.Open;
    value:=Qr.FieldByName('ImpValue').AsFloat;
    ImpRateFLD.Caption:=formatfloat('0.00',qr.FieldByName('ImpRate').AsFloat);
  finally
    qr.Free;
  end;

end;

procedure TR_WorkingSheetNewFRM.SenderInvoiceSQLCalcFields(
  DataSet: TDataSet);
Var
  CypTotal:Double;
begin

{
try
        CypTotal:=Dataset.FieldByName('Total_amount').AsFloat/Dataset.FieldByName('exchange_rate').AsFloat;
except
        CypTotal:=0;
end;
Dataset.FieldByName('TotalCyp').Value:=CypTotal;
 }
end;

procedure TR_WorkingSheetNewFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;

procedure TR_WorkingSheetNewFRM.PreferencialFLDCalc(Sender: TObject;
  var Value: Variant);
Var
   Preferencial:String;
begin
   Preferencial:=HawbItemSQL.FieldByName('duty_type').AsString;
   If Trim(Preferencial)='P' then begin // preferencial P = προτιμισιακός
      Value:='Προτιμησιακός Δασμός Π';
   end else if Trim(Preferencial)='G' then begin //preferecial general G= γενικός
      Value:='Γενικός Δασμός Γ';
   end else begin
      Value:='';
   end;



end;

procedure TR_WorkingSheetNewFRM.FormActivate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
If In_Action='PRINT_ONE' then begin
        PrintOneHawb(333);
end;

end;


END.
