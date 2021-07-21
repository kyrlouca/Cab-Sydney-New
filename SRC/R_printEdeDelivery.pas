unit R_printEdeDelivery;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Db, Wwdatsrc,  DBAccess, IBC, MemDS, IBCError,  ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl,
  ppBands, ppCache, StdCtrls, wwDialog, wwrcdvw, ppVar, ppStrtch,
  ppMemo,pptypes, ExtCtrls, ppViewr, ppRegion, jpeg, ppBarCod, ppDesignLayer,
  ppParameter;

  {
  ppCtrls, ppDB, ppDBPipe, ppDBBDE, Db, ppPrnabl, ppClass,
   ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch,
  ppSubRpt, ppVar, Wwdatsrc, Wwquery, ppRegion,pptypes, Wwtable,
  ExtCtrls;

}

type
  TR_PrintEdeDeliveryFRM = class(TForm)
    Report1: TppReport;
    GoBTN: TButton;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppPageStyle1: TppPageStyle;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    HawbSQL: TIBCQuery;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
    HawbSQLSERIAL_NUMBER: TIntegerField;
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
    HawbSRC: TwwDataSource;
    HawbPL: TppDBPipeline;
    RV1: TwwRecordViewDialog;
    Button2: TButton;
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
    MawbSQLDOCS_NUMBER: TIntegerField;
    MawbSQLDOCS_WEIGHT: TFloatField;
    MawbSQLHIGH_VALUE_NUMBER: TIntegerField;
    MawbSQLHIGH_VALUE_WEIGHT: TFloatField;
    MawbSQLMEDIUM_VALUE_NUMBER: TIntegerField;
    MawbSQLMEDIUM_VALUE_WEIGHT: TFloatField;
    MawbSQLLOW_VALUE_NUMBER: TIntegerField;
    MawbSQLLOW_VALUE_WEIGHT: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE_TYPE: TStringField;
    MawbSQLXML_CONSOLIDATED_ID: TStringField;
    Button3: TButton;
    MawbPL: TppDBPipeline;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    FlightSQL: TIBCQuery;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLine4: TppLine;
    ppMemo1: TppMemo;
    ppMemo2: TppMemo;
    ppMemo3: TppMemo;
    ppMemo4: TppMemo;
    KG1lbl: TppLabel;
    ppLabel17: TppLabel;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppShape2: TppShape;
    ppLine6: TppLine;
    ppLine7: TppLine;
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
    ppDBText10: TppDBText;
    CountryPP: TppDBPipeline;
    FlightSQLFLIGHT_NUMBER: TStringField;
    FlightSQLNAME: TStringField;
    FlightSRC: TDataSource;
    FlightPL: TppDBPipeline;
    ppDBText11: TppDBText;
    ppMemo5: TppMemo;
    ppMemo6: TppMemo;
    ppLabel18: TppLabel;
    ParameterSQL: TIBCQuery;
    ParameterSQLPARAMETER_ID: TStringField;
    ParameterSQLINT_1: TIntegerField;
    ParameterSQLINT_2: TIntegerField;
    ParameterSQLSTR_1: TStringField;
    ParameterSQLSTR_2: TStringField;
    Button1: TButton;
    ChargePP: TppVariable;
    Totalpp: TppVariable;
    CustomerNameLbl: TppLabel;
    HawbIDlbl: TppLabel;
    Description1LBL: TppLabel;
    PackageTypelbl: TppLabel;
    WeightPP: TppVariable;
    Description2lbl: TppLabel;
    NumberOfPackagesPP: TppVariable;
    Weight2PP: TppVariable;
    Kg2lbl: TppLabel;
    Description3lbl: TppLabel;
    NumberOfPackages2PP: TppVariable;
    PackageType2lbl: TppLabel;
    FindPrinterSQL: TIBCQuery;
    FindPrinterSQLREPORT_ID: TStringField;
    FindPrinterSQLREPORT_NAME: TStringField;
    FindPrinterSQLPRINTER_NAME: TStringField;
    ppDBText2: TppDBText;
    HawbSQLDELIVERY_ORDER_ID: TStringField;
    MawbSQLROTATION_2: TStringField;
    ppDBText3: TppDBText;
    ParamsSQL: TIBCQuery;
    ParamsSQLCODE: TStringField;
    ParamsSQLTEXT_1: TStringField;
    ParamsSQLTEXT_2: TStringField;
    ParamsSQLNUMERIC_1: TFloatField;
    ParamsSQLNUMERIC_2: TFloatField;
    ParamsSQLINTEGER_1: TIntegerField;
    ParamsSQLINTEGER_2: TIntegerField;
    ParamsSQLDATE_1: TDateTimeField;
    ParamsSQLNUMERIC_6: TFloatField;
    FindDOChargeSQL: TIBCQuery;
    FindDOChargeSQLAMOUNT: TFloatField;
    ppMemo7: TppMemo;
    ppViewer1: TppViewer;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLCHARGE_TRL: TFloatField;
    HawbSQLCHARGE_VAT: TFloatField;
    HawbSQLCHARGE_EXCISE: TFloatField;
    HawbSQLCHARGE_IMPORT: TFloatField;
    DeliveryStampRGN: TppRegion;
    ppLabel12: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText12: TppDBText;
    HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER4_CHARGE: TStringField;
    ppLabel24: TppLabel;
    CustomDutiesLBL: TppVariable;
    LogoRGN: TppRegion;
    ppImage2: TppImage;
    FindInvoiceSQL: TIBCQuery;
    ppLabel25: TppLabel;
    InvoiceSerialFLD: TppVariable;
    TheInvoiceSerialRGN: TppRegion;
    FindInvoiceSQLINVOICE_NUMBER: TIntegerField;
    FindCountrySQL: TIBCQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    //BarCode1Lbl: TppBarCode;
    MawbSQLHMSD: TStringField;
    MawbSQLLOW_VALUE_TDID: TStringField;
    ppDBText13: TppDBText;
    ppLabel15: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    FindPartialHawbSQL: TIBCQuery;
    Blbl: TppLabel;
    Packagespp: TppVariable;
    FindPartialHawbSQLSERIAL_NUMBER: TIntegerField;
    FindPartialHawbSQLFK_MAWB_SERIAL_ORIGINAL: TIntegerField;
    FindPartialHawbSQLFK_MAWB_ID_ORIGINAL: TStringField;
    FindPartialHawbSQLFK_MAWB_SERIAL_ARRIVED: TIntegerField;
    FindPartialHawbSQLFK_MAWB_ID_ARRIVED: TStringField;
    FindPartialHawbSQLFK_HAWB_SERIAL_ORIGINAL: TIntegerField;
    FindPartialHawbSQLFK_HAWB_ID_ORIGINAL: TStringField;
    FindPartialHawbSQLPARTIAL_PIECES: TIntegerField;
    FindPartialHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    FindPartialHawbSQLPARTIAL_WEIGHT: TFloatField;
    PackagesPartialLBL: TppLabel;
    ppDBText6: TppDBText;
    CustomerSQL: TIBCQuery;
    CustomerSQLVAT_ID: TStringField;
    CustomerSQLCOMPANY_ID: TStringField;
    CustomerSRC: TIBCDataSource;
    CustomerPL: TppDBPipeline;
    ppLabel28: TppLabel;
    HouseBr: TppBarCode;
    XmlBr: TppBarCode;
    MawbBr: TppBarCode;
    IBCDataSource1: TIBCDataSource;
    IBCDataSource2: TIBCDataSource;
    CountrySRC: TIBCDataSource;
    IBCDataSource3: TIBCDataSource;
    MawbSRC: TIBCDataSource;
    procedure Button3Click(Sender: TObject);
    procedure Report1PreviewFormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ChargePPCalc(Sender: TObject; var Value: Variant);
    procedure CustomerNameLblPrint(Sender: TObject);
    procedure HawbIDlblPrint(Sender: TObject);
    procedure Description1LBLPrint(Sender: TObject);
    procedure PackageTypelblPrint(Sender: TObject);
    procedure WeightPPCalc(Sender: TObject; var Value: Variant);
    procedure Description2lblPrint(Sender: TObject);
    procedure NumberOfPackagesPPCalc(Sender: TObject; var Value: Variant);
    procedure Weight2PPCalc(Sender: TObject; var Value: Variant);
    procedure Description3lblPrint(Sender: TObject);
    procedure Kg2lblPrint(Sender: TObject);
    procedure NumberOfPackages2PPCalc(Sender: TObject; var Value: Variant);
    procedure PackageType2lblPrint(Sender: TObject);
    procedure Report1BeforePrint(Sender: TObject);
    procedure DeliveryStampRGNPrint(Sender: TObject);
    procedure CustomDutiesLBLCalc(Sender: TObject; var Value: Variant);
    procedure CustomDutiesLBLPrint(Sender: TObject);
    procedure LogoRGNPrint(Sender: TObject);
    procedure TheInvoiceSerialRGNPrint(Sender: TObject);
    procedure BarCode1lblPrint(Sender: TObject);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure BlblPrint(Sender: TObject);
    procedure ppDBText8GetText(Sender: TObject; var Text: String);
    procedure PackagesppCalc(Sender: TObject; var Value: Variant);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure PackagesPartialLBLPrint(Sender: TObject);
    procedure HawbPLTraversal(Sender: TObject);
    procedure MawbBrPrint(Sender: TObject);
    procedure XmlBrPrint(Sender: TObject);
    procedure HouseBrPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //procedure BarCode1LblPrint(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
  SelectedHawb:String;
  FormType:String;
  InPartial:boolean;
  InCopies:Integer;

     TheChargeDecimal:Double;
     TheEuro:Double;
     PRDeliverTo:String;
     PRHawbID:String;
     PRMawbID:String;
     PRXMLID:String;
     PRProductDesc1:String;
     PRProductDesc2:String;
     PRProductDesc3:String;
     PRPackageType:String;
     PRPackageType2:String;
     PRNumberOfPackages:Integer;
     PRNumberOfPackages2:Integer;
     PRCustomerName:String;
     PRWeight:Double;
     PRWeight2:Double;
    procedure PrepareReport(HawbSerial:Integer;PartialSerial:Integer);


     procedure GoPrint(HawbSerial:Integer;PartialSerial:Integer;OnPrinter:Boolean);
     procedure GoPrintDirectly(HawbId:string;HawbSerial:Integer;PartialSerial:Integer;OnPrinter:Boolean);

     procedure PrintPartial(HawbId:string;HawbSErial:Integer);
     Function FindDeliveryCharge:DOuble;
     Function GetValueFromSystemTable(Const TheKey,TheDescription:String;FieldName:String):String;
     Function FindReportPrinter(ReportID :String):String;
     Function GetEuroRate(Const TheKey):Double;
  end;

var
  R_PrintEdeDeliveryFRM: TR_PrintEdeDeliveryFRM;

implementation

uses U_ClairDML, G_KyrSQL;

{$R *.DFM}



Function TR_PrintEdeDeliveryFRM.FindDeliveryCharge:Double;
begin

with FindDOChargeSQL do
     begin
        close;
        if not prepared then prepare;
        ParamByName('TheCode').Value:='D5';
        open;
        if IsEmpty then
        begin
                ShowMessage('Add a D5 record in other_charge table for D/O charge');
                abort;
        end;
        Result:=FieldByName('amount').asFloat;
     end;
End;


Function TR_PrintEdeDeliveryFRM.FindReportPrinter(ReportID :String):String;
Var
   TheTablePRinter:String;
begin
{
        with FindPrinterSQL do
        begin
             Close;
             If Not prepared then Prepare;
             ParamByName('TheReport').Value:= ReportID;
             Open;
             If not FindPrinterSQL.IsEmpty then
             begin
                  TheTablePrinter:=FieldbyName('Printer_Name').AsString;
                  Result:=TheTablePrinter;

             end;
             close;
        end;
}
end;

procedure TR_PrintEdeDeliveryFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

procedure TR_PrintEdeDeliveryFRM.GoPrintDirectly(HawbId:string;HawbSerial:Integer;PartialSerial:Integer;OnPrinter:Boolean);
begin
//just to make the go print print directly to the printer
  GoPrint(HawbSerial,PartialSerial,True);
end;

procedure TR_PrintEdeDeliveryFRM.GoPrint(HawbSerial:Integer;PartialSerial:Integer;OnPrinter:Boolean);
Var
   ThePrinter:String;
   IsDeliveryOrder:Boolean;
   qr:TksQUery;
   Cli:String;
begin

PrepareReport(HawbSerial,PartialSerial);
  //ThePrinter:=FindReportPrinter('C2B_DELIVERY');
  //Report1.PrinterSetup.PrinterName:=ThePrinter;

  If InCopies>1 then  begin
    qr:=TksQuery.Create(cn,'select fk_clearance_instruction from hawb where serial_number = :hawbSerial');
    try
      qr.ParamByName('HawbSerial').Value:=HawbSerial;
      qr.Open;
      Cli := qr.FieldByName('fk_clearance_instruction').AsString;
      IsDeliveryOrder := (cli='DO') or (cli='DOZ');
      qr.Close;
    finally
      qr.Free;
    end;
    If IsDeliveryOrder then begin
                Report1.PrinterSetup.Copies:=3;
                HouseBr.Visible:=true;
                XmlBr.Visible:=true;
                MawbBr.Visible:=true;
    end else begin
                Report1.PrinterSetup.Copies:=3;
                HouseBr.Visible:=false;
                XmlBr.Visible:=false;
                MawbBr.Visible:=false;

    end;
  end;

  if (OnPrinter) then begin    //24Mar2017 to printi without dialog
                Report1.DeviceType := dtPrinter;
                Report1.ShowPrintDialog := false;
  end else begin
            Report1.DeviceType := dtScreen;
            Report1.ShowPrintDialog := true;

  end;

Report1.Print;
end;



procedure TR_PrintEdeDeliveryFRM.PrintPartial(HawbId:string;HawbSerial:Integer);
begin
end;




procedure TR_PrintEdeDeliveryFRM.PrepareReport(HawbSerial:Integer;PartialSerial:Integer);
Var
 hawbId:String;
   MawbReference:Integer;
        PartialMawbReference:Integer;
        CustomerName:String;
   CountryNumber:integer;
   MawbCountryNumber:integer;
   FlightNumber:String;
   TheCharge:String;
//   IsCharged:Boolean;
   EuroRate:Double;
   TotalPackages:Integer;
begin

  EuroRate:=GetEuroRate('P6');

  MawbReference:=-1;
  CountryNumber:=-1;
  MawbCountryNumber:=-1;
  FlightNumber:='';
//IsCharged:=False;
  TheChargeDecimal:=0;
  PRProductDesc2:='';
  PRProductDesc3:='';
  PRNumberOfPackages2:=0;
  PrPackageType2:='';

  inPartial:= PartialSerial>0 ;

  With FindPartialHawbSQL do begin
   Close;
   If not prepared then prepare;
   ParamByName('PartialSerial').Value:=PartialSerial;
   Open;
   PartialMawbReference:=FieldByName('fk_mawb_serial_arrived').AsInteger;
  end;

  With HawbSQL do begin
   Close;
   If not prepared then prepare;
   ParamByName('HawbSerial').Value:=HawbSerial;
   Open;
  end;


  With MawbSQL do begin
   Close;
   If not prepared then prepare;
    If InPartial then begin
      MawbReference:= PartialMawbReference ; // we need to find the arrived Mawb if Partial Hawb
    end;
    ParamByName('ReferenceNumber').Value:= MawbReference;
    open;
  end;


   With CountrySQL do begin
     Close;
     If not prepared then prepare;

    If FormType='HIGH' then begin
      ParamByName('CountryNumber').Value:= CountryNumber;
    end else begin
      // find the country of the mawb or you don't need it
      ParamByName('CountryNumber').Value:= MawbCountryNumber;
    end;
    Open;
  end;

      {
  If (1=1) then begin
      MawbReference:=MawbSQL.FieldByName('FK_MAWB_REFER_NUMBER').AsInteger;
      PRMawbID:=FieldByName('Mawb_ID').AsString;
      FlightNumber:=FieldByName('Flight_number').AsString;
      MawbCountryNumber:=FieldByName('fk_country_consignee').AsInteger;

      CountryNumber:=MawbSQL.FieldByName('FK_country_origin').AsInteger;
//      IsCharged:=(FieldByName('OTHER_Charge_Paid').AsString='Y');
      //***********************
      //  not here the lbl
      //***************************
//      ShowMessage(IntToStr(TotalPackages));

        If FormType='LOW' then begin
         PRCustomerName:='DHL CYPRUS LTD';
         PRHawbID:='';
         PRProductDesc1:='DOCUMENTS';
         PRProductDesc2:='LOW VALUE ITEMS';
         PRProductDesc3:='NOTHING TO BE DECLARED';
         PRPackageType:='bags';
         PRPackageType2:='bags';


         PRNumberofPackages :=MawbSQL.FieldByName('DOCS_NUMBER').AsInteger;
         PRNumberofPackages2 :=MawbSQL.FieldByName('LOW_VALUE_NUMBER').AsInteger;
         PRWeight:=MawbSQL.FieldByName('DOCS_WEIGHT').AsFloat;
         PRWeight2:=MawbSQL.FieldByName('LOW_VALUE_WEIGHT').AsFloat;

        end else if FormType='MEDIUM' then begin
         PRCustomerName:='DHL CYPRUS LTD';
         PRHawbID:='';
         PRProductDesc1:='CONSOLIDATED AND MEDIUM VALUE ITEMS';
         PRPackageType:='bags';


         PRNumberofPackages:=MawbSQL.FieldByName('MEDIUM_VALUE_NUMBER').AsInteger;
         PRWeight:=MawbSQL.FieldByName('MEDIUM_VALUE_WEIGHT').AsFloat;

        end else if (FormType='HIGH') then begin
         PRCustomerName:='DHL CYPRUS LTD';
         PRHawbID:='';
         PRProductDesc1:='HIGH VALUE ITEMS';
         PRPackageType:='bags';


          PRNumberofPackages:=MawbSQL.FieldByName('HIGH_VALUE_NUMBER').AsInteger;
          PRWeight:=MawbSQL.FieldByName('HIGH_VALUE_WEIGHT').AsFloat;

        end else if (FormType='EDE')
         ShowMessage('Call EDE DELIVEY FORM');

          PRCustomerName:=HawbSQL.FieldByName('Customer_name').AsString;
          PRProductDesc1:=HawbSQL.FieldByName('Description').AsString;
          PRHawbID:=HawbSQL.FieldByName('Hab_id').AsString;
          PRXMLID:=HawbSQL.FieldByName('XML_HOUSE_id').AsString;
          CustomerName:=HawbSQL.FieldbyName('Customer_name').AsString;
          PackagesPartialLBL.Caption:='/'+HawbSQL.FieldByName('Number_of_parcels').AsString;
          PRPackageType:='Pieces(s)';

          if  inPartial then begin
            PRNumberofPackages:=FindPartialHawbSQL.FieldByName('Partial_Pieces').AsInteger;
            PRWeight:=FindPartialHawbSQL.FieldByName('Partial_WEIGHT').AsFloat;
          end else begin
            PRNumberofPackages:=HawbSQL.FieldByName('Num_of_Pieces_arrived').AsInteger;
            PRWeight:=HawbSQL.FieldByName('WEIGHT').AsFloat;
          end;

        end;

                If IsCharged  then begin
            TheChargeDecimal:=FindDeliveryCharge;
         end else begin
         TheChargeDecimal:=0;
         end;    //charged
  end; //empty

  end; //with







With FlightSQL do begin
   Close;
   If not prepared then prepare;
   ParamByName('FlightNumber').Value:= FlightNumber;
   Open;
end;

with CustomerSQL do begin
   close;
   If not prepared then prepare;
   ParamByName('CustomerCode').Value:= CustomerCode;
   Open;

end;

 }
End;

procedure TR_PrintEdeDeliveryFRM.Button3Click(Sender: TObject);
begin
RV1.Execute;
end;

procedure TR_PrintEdeDeliveryFRM.Report1PreviewFormCreate(Sender: TObject);
begin
   Report1.PreviewForm.WindowState := wsMaximized;
   TppViewer(Report1.PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


Function TR_PrintEdeDeliveryFRM.GetEuroRate(Const TheKey):Double;
Var
   TheValue:Double;
Begin

with ParamsSQL do
begin
   close;
   ParambyName('TheKey').Value:='P6';
   open;
   If ParamsSQL.RecordCount>0 then
   begin
      TheValue:=FieldByName('NUMERIC_6').AsFloat;
      Result:=TheValue;
   end else begin
      raise Exception.Create('Use Menu: System->Parameter_tables-> General Parameters NEW to enter Euro Rate. Code=P6, NUMERIC_6=Rate ');
      TheValue:=0;
   end;
   close;
end;
End;

Function TR_PrintEdeDeliveryFRM.GetValueFromSystemTable(Const TheKey,TheDescription:String;FieldName:String):String;
Var
   TheQuery:TIBCQuery;
   TheNumber:Integer;
Begin
   // Find the record in the system params using theKey parameter and update one Field that is passed in the params

   TheQuery:=ParameterSQL;
   TheQUery.ParamByName('TheKey').Value:=TheKey;

   TheQuery.close;
   If TheQuery.Prepared then TheQuery.Prepare;
   TheQUery.ParamByName('TheKey').Value:=TheKey;
   TheQuery.Open;
   If TheQuery.IsEmpty Then raise exception.create('Enter into SYSTEM parameters the record: '''+TheKey+''' in field '+FieldName+' for '+TheDescription);

   TheQuery.First;
   Result:=TheQuery.fieldbyName(FieldName).AsString;

   If Uppercase(Fieldname)='STR_1' then begin
         If Trim(Result)='' then begin
            raise exception.create('No value in int_1  for record:'+TheKey+' , '+TheDescription);
         end;
   end;


   If Uppercase(Fieldname)='INT_1' then begin
      try
         TheNumber:=StrToInt(Result);
         Result:=IntToStr(TheNumber);
      except
         raise exception.create('No value in int_1  for record:'+TheKey+' , '+TheDescription);
      end;
   end;
   Result:=Trim(Result);

   TheQuery.Close;

End;

procedure TR_PrintEdeDeliveryFRM.Button1Click(Sender: TObject);
Var
   TheValue:String;
   EuroRate:double;
begin
ShowMEssage('hello');



end;

procedure TR_PrintEdeDeliveryFRM.ChargePPCalc(Sender: TObject; var Value: Variant);
begin
If InPartial then begin
   ChargePP.Visible:=False;
   TotalPP.Visible:=False;
end else If (TheChargeDecimal=0) then begin
   ChargePP.Visible:=False;
   TotalPP.Visible:=False;
end else begin
   ChargePP.Visible:=True;
   TotalPP.Visible:=True;
   Value:=TheChargeDecimal;
end;
End;


procedure TR_PrintEdeDeliveryFRM.CustomerNameLblPrint(Sender: TObject);
begin
CustomerNamelbl.Caption:=PRCustomerName;
end;

procedure TR_PrintEdeDeliveryFRM.HawbIDlblPrint(Sender: TObject);
begin
HawbIDlbl.Caption:=PRHawbID;
end;

procedure TR_PrintEdeDeliveryFRM.Description1LBLPrint(Sender: TObject);
begin
Description1Lbl.Caption:=PRProductDesc1;
end;

procedure TR_PrintEdeDeliveryFRM.PackageTypelblPrint(Sender: TObject);
begin
PackageTYpelbl.caption:=PRpackageType;
end;

procedure TR_PrintEdeDeliveryFRM.WeightPPCalc(Sender: TObject;
  var Value: Variant);
begin
WeightPP.Value:=PRWeight;
end;

procedure TR_PrintEdeDeliveryFRM.Description2lblPrint(Sender: TObject);
begin
Description2LBL.caption:=PRProductDesc2;
end;

procedure TR_PrintEdeDeliveryFRM.NumberOfPackagesPPCalc(Sender: TObject;
  var Value: Variant);
begin
Value:=PRNumberOfPackages;
end;

procedure TR_PrintEdeDeliveryFRM.Weight2PPCalc(Sender: TObject;
  var Value: Variant);
begin
if FormType='LOW' then begin
   Value:=PRWeight2;
   Weight2PP.Visible:=true;
end else begin
   Weight2PP.Visible:=false;
   Value:=0;
end;

end;


procedure TR_PrintEdeDeliveryFRM.Description3lblPrint(Sender: TObject);
begin
Description3lbl.Caption:=PRProductDesc3;
end;

procedure TR_PrintEdeDeliveryFRM.Kg2lblPrint(Sender: TObject);
begin
If FormType='LOW' then
   kg2lbl.visible:=true
else
   kg2lbl.visible:=false;
end;

procedure TR_PrintEdeDeliveryFRM.NumberOfPackages2PPCalc(Sender: TObject;
  var Value: Variant);
begin
Value:=PRNumberOfPackages2;
If FormType='LOW' then
   NumberOfPackages2PP.visible:=true
else
   NumberOfPackages2pp.visible:=false;
end;


procedure TR_PrintEdeDeliveryFRM.PackageType2lblPrint(Sender: TObject);
begin
PackageTYpe2lbl.caption:=PRpackageType2;
If FormType='LOW' then
   PackageType2lbl.visible:=true
else
   PackageType2lbl.visible:=false;
end;

procedure TR_PrintEdeDeliveryFRM.Report1BeforePrint(Sender: TObject);
begin
TheEuro:=GetEuroRate('P6');
end;

procedure TR_PrintEdeDeliveryFRM.DeliveryStampRGNPrint(Sender: TObject);
begin

DEliveryStampRGN.Visible:=False;

//*********************
//**** Don't delete this. Will be used when thanasis asks
//*********************

If FormType='EDE' then begin
   if HawbSQL.FieldByName('Other_charge_paid').AsString<>'Y' then begin
      DEliveryStampRGN.Visible:=True;
   end;
end;

End;

procedure TR_PrintEdeDeliveryFRM.CustomDutiesLBLCalc(Sender: TObject;
  var Value: Variant);
begin

If InPartial then begin
Value:=0;
end else begin
  try
        Value:=HawbSQL.FieldByName('TOTAL_DUTIES').AsFloat+
        HawbSQL.FieldByName('EDE_STORAGE_EXPENSES').AsFloat+
        HawbSQL.FieldByName('EDE_DELIVERY_EXPENSES').AsFloat;
  except
        Value:=0;
  end;
end;


end;

procedure TR_PrintEdeDeliveryFRM.CustomDutiesLBLPrint(Sender: TObject);
begin

CustomDutiesLBL.Visible:=false;

If FormType='EDE' then begin
   if HawbSQL.FieldByName('Other_charge_paid').AsString<>'Y' then begin
      CUstomDutiesLBL.Visible:=true;
   end;
end;

end;

procedure TR_PrintEdeDeliveryFRM.LogoRGNPrint(Sender: TObject);
Var
 IsDeliveryOrder:Boolean;
begin

LogoRGN.Visible:=False;
IsDeliveryOrder:=HawbSQL.FieldByName('Other_charge_paid').AsString='Y';

If FormType='EDE' then begin

//*** Do NOT print the customer will clear the goods
   if (not IsDeliveryOrder) then begin
      LogoRGN.Visible:=True;
   end;
end;

End;

procedure TR_PrintEdeDeliveryFRM.TheInvoiceSerialRGNPrint(Sender: TObject);
Var
 IsDeliveryOrder:Boolean;
 HawbSerial:integer;
Begin
TheInvoiceSerialRGN.Visible:=False;
IsDeliveryOrder:=HawbSQL.FieldByName('Other_charge_paid').AsString='Y';

If FormType='EDE' then begin

//*** Print the invoice number when the customer Himself instead of DHL clears the goods
//*** This invoice number will be used to enter payment later on
//*** DHL will know which deliver orders were collected by courier boys
   if (IsDeliveryOrder) then begin
      TheInvoiceSerialRGN.Visible:=True;

      with FindInvoiceSQL do begin
        close;
        if not prepared then prepare;
        HawbSerial:=HawbSQL.fieldbyName('Serial_number').AsInteger;
{
        If InPartial then begin kj
                HawbSerial:=HawbSQL.fieldbyName('Serial_number').AsInteger;
        end;
}
        ParamByName('HawbSerial').Value:= HawbSerial;
        open;
        if  not IsEmpty then begin
            InvoiceSerialFLD.Value:= FieldByName('Invoice_number').asInteger;

        end;
        close;

      end;
   end;
end else If FormType='LOW' then begin
// FOR delivery report for low values we need a unique serial number as requested by customs
// we print the mawb reference
      TheInvoiceSerialRGN.Visible:=True;
      InvoiceSerialFLD.Value:= MawbSQL.FieldByName('REFERENCE_NUMBER').AsInteger;


end;


End;

procedure TR_PrintEdeDeliveryFRM.BarCode1lblPrint(Sender: TObject);
Var
 TheValue : String;
begin
   TheValue:=HawbSQL.fieldbyName('XML_HOUSE_ID').AsString;
//   TheValue :='*'+TheValue+'*';
   //fix BarCode1lbl.Data:=TheValue+'';
   //fix BarCode1lbl.visible:=true

End;

procedure TR_PrintEdeDeliveryFRM.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
Value:=0;
end;

procedure TR_PrintEdeDeliveryFRM.ppVariable3Calc(Sender: TObject;
  var Value: Variant);
begin
Value:=0;
end;

procedure TR_PrintEdeDeliveryFRM.BlblPrint(Sender: TObject);
begin
If InPartial then begin
(Sender as TppLabel).Visible:=true;
end else begin
(Sender as TppLabel).Visible:=false;
end;

End;

procedure TR_PrintEdeDeliveryFRM.ppDBText8GetText(Sender: TObject;
  var Text: String);
begin

If InPartial then begin
(Sender as TppLabel).Visible:=true;
end else begin
(Sender as TppLabel).Visible:=false;
end;

end;

procedure TR_PrintEdeDeliveryFRM.PackagesppCalc(Sender: TObject;
  var Value: Variant);
begin
         Value:=PRNumberofPackages;

end;

procedure TR_PrintEdeDeliveryFRM.ppDBText2GetText(Sender: TObject;
  var Text: String);
begin
If InPartial then begin
        Text:=FindPartialHawbSQL.FieldByName('partial_delivery_order_id').AsString;

end;

end;

procedure TR_PrintEdeDeliveryFRM.PackagesPartialLBLPrint(Sender: TObject);
begin
//If InPartial then begin
If FormType='EDE' then begin
        (Sender as TppLabel).Visible:=true;
end else begin
        (Sender as TppLabel).Visible:=false;
end;

end;

procedure TR_PrintEdeDeliveryFRM.HawbPLTraversal(Sender: TObject);
begin
//ShowMessage(HawbSQL.fieldbyName('Hab_id').AsString +'==='+HawbSQL.fieldbyName('XML_house_id').AsString);

end;

procedure TR_PrintEdeDeliveryFRM.MawbBrPrint(Sender: TObject);
Var
Val :String;
begin

        Val:=PRMawbID;
        If (trim(val)='') then val:='**';
        MawbBr.Data:=Val;

end;

procedure TR_PrintEdeDeliveryFRM.HouseBrPrint(Sender: TObject);
Var
Val :String;
begin

        Val:=PRHawbID;
        If (trim(val)='') then val:='**';
        HouseBr.Data:=Val;
end;


procedure TR_PrintEdeDeliveryFRM.XmlBrPrint(Sender: TObject);
Var
Val :String;
begin

        Val:=PRXmlID;
        If (trim(val)='') then val:='**';
        XMLBr.Data:=Val;

end;

END.




