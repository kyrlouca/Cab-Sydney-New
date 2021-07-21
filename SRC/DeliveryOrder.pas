unit DeliveryOrder;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Db, Wwdatsrc, DBAccess, IBC, MemDS, IBCError, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl,
  ppBands, ppCache, StdCtrls, wwDialog, wwrcdvw, ppVar, ppStrtch,
  ppMemo, pptypes, ExtCtrls, ppViewr, ppRegion, jpeg, ppBarCod, ppDesignLayer,
  ppParameter, RzEdit, G_OtherProcs;

{
  ppCtrls, ppDB, ppDBPipe, ppDBBDE, Db, ppPrnabl, ppClass,
  ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch,
  ppSubRpt, ppVar, Wwdatsrc, Wwquery, ppRegion,pptypes, Wwtable,
  ExtCtrls;

}

type
  TDeliveryOrderFRM = class(TForm)
    Report1: TppReport;
    GoBTN: TButton;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppPageStyle1: TppPageStyle;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    Button2: TButton;
    MawbSQL: TIBCQuery;
    Button3: TButton;
    MawbPL: TppDBPipeline;
    KG1lbl: TppLabel;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppShape2: TppShape;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppMemo5: TppMemo;
    ppMemo6: TppMemo;
    Button1: TButton;
    Description3lbl: TppLabel;
    FindPrinterSQL: TIBCQuery;
    FindPrinterSQLREPORT_ID: TStringField;
    FindPrinterSQLREPORT_NAME: TStringField;
    FindPrinterSQLPRINTER_NAME: TStringField;
    ppViewer1: TppViewer;
    DeliveryStampRGN: TppRegion;
    ppLabel12: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    LogoRGN: TppRegion;
    ppImage2: TppImage;
    CustomerSQL: TIBCQuery;
    CustomerSQLCOMPANY_ID: TStringField;
    CustomerSRC: TIBCDataSource;
    CustomerPL: TppDBPipeline;
    MawbSRC: TIBCDataSource;
    FindPartialHawbSQL: TIBCQuery;
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
    HawbSQL: TIBCQuery;
    HawbPL: TppDBPipeline;
    HawbSRC: TIBCDataSource;
    ppDBText6: TppDBText;
    PackageTypelbl: TppLabel;
    Description1LBL: TppLabel;
    WeightPP: TppVariable;
    ppMemo1: TppMemo;
    ppMemo2: TppMemo;
    ppMemo3: TppMemo;
    ppMemo4: TppMemo;
    ppMemo7: TppMemo;
    ppDBText8: TppDBText;
    HouseBr: TppBarCode;
    XmlBr: TppBarCode;
    MawbBr: TppBarCode;
    CustomChargesPP: TppVariable;
    DeliveryChargePP: TppVariable;
    TotalDelChargePP: TppVariable;
    XmlIDlbl: TppDBText;
    NumOfPack2PP: TppVariable;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel17: TppLabel;
    ppDBText11: TppDBText;
    CustomerNameLbl: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    TheInvoiceSerialRGN: TppRegion;
    ppLabel25: TppLabel;
    ppDBText1: TppDBText;
    ppDBText13: TppDBText;
    ppLabel15: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppDBText9: TppDBText;
    ppLabel2: TppLabel;
    ppLabel13: TppLabel;
    ppLine4: TppLine;
    ppLabel18: TppLabel;
    ppDBText14: TppDBText;
    NumberOfPackagesPP: TppVariable;
    PrintDialog1: TPrintDialog;
    Button4: TButton;
    memo1: TRzMemo;
    Memo2: TMemo;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLINVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    HawbSQLHIGH_VALUE: TStringField;
    HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    HawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    HawbSQLDATE_INVOICED: TDateField;
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
    HawbSQLDATE_CLEARED: TDateField;
    HawbSQLDATE_REGISTERED: TDateField;
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
    HawbSQLSTATUS_C: TStringField;
    HawbSQLIS_MEDIUM: TStringField;
    HawbSQLMEDIUM_VAT_RATE: TFloatField;
    HawbSQLIS_CHARGED_DELIVERY: TStringField;
    HawbSQLIS_VALID: TStringField;
    HawbSQLIS_PREPAID: TStringField;
    HawbSQLOTHER5_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_DUTY_RELIEVE: TStringField;
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY: TStringField;
    HawbSQLCUSTOMER_VAT_ID: TStringField;
    HawbSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField;
    HawbSQLIS_LOW: TStringField;
    HawbSQLDESTINATION_STATION: TStringField;
    HawbSQLIS_OVERRIDE_MEDIUM: TStringField;
    HawbSQLCOUNTRYNAME: TStringField;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLDATE_ARRIVED: TDateField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLREFERENCE_YEAR: TSmallintField;
    MawbSQLFK_PORT_IMPORTATION: TIntegerField;
    MawbSQLSIGNATORY_NAME: TStringField;
    MawbSQLFORM_DATE: TDateField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLPASSED: TStringField;
    MawbSQLROTATION_NUMBER: TIntegerField;
    MawbSQLROTATION_YEAR: TSmallintField;
    MawbSQLFK_PORT_CLEARING: TIntegerField;
    MawbSQLGOODS_NUMBER: TIntegerField;
    MawbSQLGOODS_DESCRIPTION: TStringField;
    MawbSQLCBOOK_NUMBER: TStringField;
    MawbSQLINVOICED: TStringField;
    MawbSQLSENT_TO_HEAD: TStringField;
    MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField;
    MawbSQLSTORAGE_EXPENSES: TFloatField;
    MawbSQLDELIVERY_EXPENSES: TFloatField;
    MawbSQLAMOUNT_NOT_INVOICED: TFloatField;
    MawbSQLAMOUNT_INVOICED: TFloatField;
    MawbSQLDATE_PASSED: TDateField;
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
    MawbSQLROTATION_2: TStringField;
    MawbSQLHMSD: TStringField;
    MawbSQLLOW_VALUE_TDID: TStringField;
    MawbSQLSTATUSC_NUMBER: TIntegerField;
    MawbSQLSTATUSC_WEIGHT: TIntegerField;
    MawbSQLTDID_NEW: TStringField;
    MawbSQLF63: TStringField;
    MawbSQLSTATUSC: TStringField;
    MawbSQLTDID_MEDIUM: TStringField;
    MawbSQLDHL_EQUIPMENT_ID: TStringField;
    MawbSQLFILE_NAME_XML: TStringField;
    MawbSQLMSG_TIME: TDateTimeField;
    MawbSQLMOVEMENT_NUMBER: TStringField;
    MawbSQLDATE_DEPART: TDateField;
    CustomerSQLVAT_ID: TStringField;
    DoRGN: TppRegion;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    EmptyReportRPT: TppReport;
    HawbSQLWEIGHT_GROSS: TFloatField;
    HawbSQLIOSS: TStringField;
    ppLabel32: TppLabel;
    ppDBText10: TppDBText;
    procedure Report1PreviewFormCreate(Sender: TObject);
    procedure CustomerNameLblPrint(Sender: TObject);
    procedure Description1LBLPrint(Sender: TObject);
    procedure WeightPPCalc(Sender: TObject; var Value: Variant);
    procedure NumberOfPackagesPPCalc(Sender: TObject; var Value: Variant);
    procedure Description3lblPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CustomChargesPPCalc(Sender: TObject; var Value: Variant);
    procedure DeliveryChargePPCalc(Sender: TObject; var Value: Variant);
    procedure TotalDelChargePPCalc(Sender: TObject; var Value: Variant);
    procedure NumOfPack2PPCalc(Sender: TObject; var Value: Variant);
    procedure ppDBText2GetText(Sender: TObject; var Text: string);
    procedure HouseBrPrint(Sender: TObject);
    procedure XmlBrPrint(Sender: TObject);
    procedure MawbBrPrint(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure NumOfPack2PPPrint(Sender: TObject);
    procedure XmlIDlblPrint(Sender: TObject);
    // procedure BarCode1LblPrint(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;

    procedure GoPrint(HawbSerial: Integer; isPartial: boolean; OnPrinter: boolean; NumOfCopies: Integer);
    procedure PrepareReport(HawbSerial: Integer; isPartial: boolean);

    // procedure PrintPartial(HawbId:string;HawbSErial:Integer);
    Function FindDeliveryCharge: DOuble;
    Function FindReportPrinter(ReportID: String): String;
    Function GetEuroRate(Const TheKey): DOuble;
  public
    { Public declarations }

    IN_ReportRPT :tppReport;
    IN_hawbSerial: Integer;
    In_Partial: boolean;
    In_Copies: Integer;
    IN_OnPrinter: boolean;
    IsDeliveryOrder: boolean;
    IN_PrinterSettings: topPrinterSettings;

    TheChargeDecimal: DOuble;
    TheEuro: DOuble;
    PRDeliverTo: String;
    PRHawbID: String;
    PRMawbID: String;
    PRXMLID: String;
    PRProductDesc1: String;
    PRProductDesc2: String;
    PRProductDesc3: String;
    PRPackageType: String;
    PRPackageType2: String;
    PRNumberOfPackagesArrived: Integer;
    PRNumberOfPackagesTotal: Integer;
    PRCustomerName: String;
    PRWeight: DOuble;
    PRWeight2: DOuble;
    PRCustomCharges: DOuble;

    procedure PrintEde();
        Procedure PrintDeliveryOrderNew();

  end;

var
  DeliveryOrderFRM: TDeliveryOrderFRM;

implementation

uses U_ClairDML, G_KyrSQL;

{$R *.DFM}

Function TDeliveryOrderFRM.FindDeliveryCharge: DOuble;
  begin

  End;

Function TDeliveryOrderFRM.FindReportPrinter(ReportID: String): String;
  begin
  end;

procedure TDeliveryOrderFRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
  end;

Procedure TDeliveryOrderFRM.PrintDeliveryOrderNew();
  begin

    var isPartial: boolean := false;



//      EmptyReportRPT.ShowPrintDialog := true;
//      EmptyReportRPT.DeviceType := dtPrinter;
//      EmptyReportRPT.PrinterSetup.Copies := 2;
//      EmptyReportRPT.Print;


    //open the tables
    Report1.DeviceType := dtPrinter;
    Report1.ShowPrintDialog := false;
    Report1.PrinterSetup.Copies := IN_ReportRPT.PrinterSetup.Copies;
    Report1.PrinterSetup.PrinterName:=IN_ReportRPT.PrinterSetup.PrinterName;
    report1.PrinterSetup.DocumentName:= 'Delivery Report';

    PrepareReport(IN_hawbSerial, isPartial);


    Report1.Print;

  End;

Procedure TDeliveryOrderFRM.PrintEde;
  begin
    GoPrint(IN_hawbSerial, In_Partial, IN_OnPrinter, In_Copies);
  End;

procedure TDeliveryOrderFRM.GoPrint(HawbSerial: Integer; isPartial: boolean; OnPrinter: boolean; NumOfCopies: Integer);
  Var
    ThePrinter: String;
    qr: TksQUery;
    Cli: String;
  begin

    PrepareReport(HawbSerial, isPartial);
    // ThePrinter:=FindReportPrinter('C2B_DELIVERY');
    // Report1.PrinterSetup.PrinterName:=ThePrinter;

    G_OtherProcs.setPrinter(Report1, OnPrinter, IN_PrinterSettings);

    if OnPrinter then Report1.PrinterSetup.Copies := 2;

    Report1.Print;
    // rep2.Print;
  end;

procedure TDeliveryOrderFRM.PrepareReport(HawbSerial: Integer; isPartial: boolean);
  Var
    hawbId: String;
    MawbReference: Integer;
    PartialMawbReference: Integer;
    PartiaHawbSerialOriginal: Integer;
    CustomerName: String;
    CountryNumber: Integer;
    MawbCountryNumber: Integer;
    FlightNumber: String;
    TheCharge: String;
    // IsCharged:Boolean;
    EuroRate: DOuble;
    TotalPackages: Integer;
    qr: TksQUery;
    qStr: String;
    CustomerCode: Integer;
    Cli: string;
    IsDeliveryOrder: boolean;
  begin

    if isPartial then
    begin
      With FindPartialHawbSQL do
      begin
        Close;
        If not prepared then
          prepare;
        ParamByName('PartialSerial').Value := HawbSerial;
        Open;
        PartialMawbReference := FieldByName('fk_mawb_serial_arrived').AsInteger;
        PartiaHawbSerialOriginal := FieldByName('FK_HAWB_SERIAL_ORIGINAL').AsInteger;
      end;

    end;

    With HawbSQL do
    begin
      Close;
      If not prepared then
        prepare;
      if isPartial then
      begin
        HawbSQL.ParamByName('HawbSerial').Value := PartiaHawbSerialOriginal;
      end
      else
      begin
        HawbSQL.ParamByName('HawbSerial').Value := HawbSerial;
      end;

      Open;
      Cli := FieldByName('fk_clearance_instruction').AsString;
      CustomerCode := FieldByName('FK_CUSTOMER_CODE').AsInteger;
      IsDeliveryOrder := (Cli = 'DO') or (Cli = 'DOZ');
      MawbReference := FieldByName('fk_mawb_refer_NUMBER').AsInteger;

    end;

    With MawbSQL do
    begin
      Close;
      If not prepared then
        prepare;
      if isPartial then
      begin
        ParamByName('ReferenceNumber').Value := PartialMawbReference;
      end
      else
      begin
        ParamByName('ReferenceNumber').Value := MawbReference;

      end;
      Open;
    end;

    PRMawbID := MawbSQL.FieldByName('Mawb_ID').AsString;
    FlightNumber := MawbSQL.FieldByName('Flight_number').AsString;

    PRCustomerName := HawbSQL.FieldByName('Customer_name').AsString;
    PRProductDesc1 := HawbSQL.FieldByName('Description').AsString;
    PRHawbID := HawbSQL.FieldByName('Hab_id').AsString;
    PRXMLID := HawbSQL.FieldByName('XML_HOUSE_id').AsString;
    // PackagesPartialLBL.Caption:='/'+HawbSQL.FieldByName('Number_of_parcels').AsString;
    PRPackageType := 'Pieces(s)';

    if isPartial then
    begin
      PRNumberOfPackagesArrived := FindPartialHawbSQL.FieldByName('Partial_Pieces').AsInteger;
      PRNumberOfPackagesTotal := HawbSQL.FieldByName('NUMBER_OF_PARCELS').AsInteger;
      PRWeight := FindPartialHawbSQL.FieldByName('Partial_WEIGHT').AsFloat;
    end
    else
    begin
      PRNumberOfPackagesArrived := HawbSQL.FieldByName('Num_of_Pieces_arrived').AsInteger;
      PRNumberOfPackagesTotal := HawbSQL.FieldByName('NUMBER_OF_PARCELS').AsInteger;
//      PRWeight := HawbSQL.FieldByName('WEIGHT').AsFloat; sydney
     PRWeight := HawbSQL.FieldByName('WEIGHT_GROSS').AsFloat;
    end;

    // DORGN.Visible:=IsDeliveryOrder;
    DoRGN.Visible := false; // always false because they wanted it only on first copy
    DeliveryStampRGN.Visible := NOt IsDeliveryOrder;

    if IsDeliveryOrder then
    begin
      qStr := ' select sum(amount_net)as total_Customs' + ' from hawb_charge hc ' + ' where   ' + '  hc.fk_hawb =  :hawbserial';

    end
    else
    begin
      qStr := ' select sum(amount_net)as total_Customs' + ' from hawb_charge hc ' + ' where (hc.fk_tariff_usage=''CUS'' OR hc.fk_tariff_usage=''TRF'') ' +
           ' and hc.fk_hawb =  :hawbserial';

    end;

    qr := TksQUery.Create(cn, qStr);
    try
      qr.ParamByName('hawbSerial').Value := HawbSerial;
      qr.Open;
      PRCustomCharges := qr.FieldByName('total_customs').AsFloat;

    finally
      qr.Free;
    end;

    with CustomerSQL do
    begin
      Close;
      If not prepared then
        prepare;
      ParamByName('CustomerCode').Value := CustomerCode;
      Open;

    end;

  End;

procedure TDeliveryOrderFRM.Report1PreviewFormCreate(Sender: TObject);
  begin
    Report1.PreviewForm.WindowState := wsMaximized;
    TppViewer(Report1.PreviewForm.Viewer).ZoomSetting := zs100Percent;

  end;

procedure TDeliveryOrderFRM.HouseBrPrint(Sender: TObject);
  Var
    Val: String;
  begin

    Val := PRHawbID;
    If (trim(Val) = '') then
      Val := '**';
    HouseBr.Data := Val;

  end;

procedure TDeliveryOrderFRM.MawbBrPrint(Sender: TObject);
  Var
    Val: String;
  begin

    Val := PRMawbID;
    If (trim(Val) = '') then
      Val := '**';
    MawbBr.Data := Val;

  end;

procedure TDeliveryOrderFRM.TotalDelChargePPCalc(Sender: TObject; var Value: Variant);
  var
    Cli: String;
  begin
    // cli:= hawbSQL.FieldByName('fk_clearance_instruction').AsString;
    // (sender as TppVariable).Visible:= (cli='DO') or (Cli='DOZ');
    Value := PRCustomCharges;
    (Sender as TppVariable).Visible := (not IsDeliveryOrder) and (not In_Partial);

  end;

Function TDeliveryOrderFRM.GetEuroRate(Const TheKey): DOuble;
  Begin

  End;

{
  Function TDeliveryOrderFRM.GetValueFromSystemTable(Const TheKey,TheDescription:String;FieldName:String):String;
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
}
procedure TDeliveryOrderFRM.CustomerNameLblPrint(Sender: TObject);
  begin
    CustomerNameLbl.Caption := PRCustomerName;
  end;

procedure TDeliveryOrderFRM.DeliveryChargePPCalc(Sender: TObject; var Value: Variant);
  begin

    Value := PRCustomCharges;
    (Sender as TppVariable).Visible := (not IsDeliveryOrder) and (not In_Partial);

  end;

procedure TDeliveryOrderFRM.Description1LBLPrint(Sender: TObject);
  begin
    Description1LBL.Caption := PRProductDesc1;
  end;

procedure TDeliveryOrderFRM.WeightPPCalc(Sender: TObject; var Value: Variant);
  begin
    WeightPP.Value := PRWeight;
  end;

procedure TDeliveryOrderFRM.XmlBrPrint(Sender: TObject);
  Var
    Val: String;
  begin

    Val := PRXMLID;
    If (trim(Val) = '') then
      Val := '**';
    XmlBr.Data := Val;
  end;

procedure TDeliveryOrderFRM.XmlIDlblPrint(Sender: TObject);
  var
    Cli: string;
    IsDeliveryOrder: boolean;
  begin
    Cli := HawbSQL.FieldByName('fk_clearance_instruction').AsString;
    IsDeliveryOrder := (Cli = 'DO') or (Cli = 'DOZ');
    XmlIDlbl.Visible := not IsDeliveryOrder;

  end;

procedure TDeliveryOrderFRM.NumberOfPackagesPPCalc(Sender: TObject; var Value: Variant);
  begin

    Value := IntToStr(PRNumberOfPackagesArrived) + '/' + IntToStr(PRNumberOfPackagesTotal);
    // value:='fuck';
  end;

procedure TDeliveryOrderFRM.NumOfPack2PPCalc(Sender: TObject; var Value: Variant);
  begin
    Value := PRNumberOfPackagesArrived;
  end;

procedure TDeliveryOrderFRM.NumOfPack2PPPrint(Sender: TObject);
  var
    Cli: string;
    IsDeliveryOrder: boolean;
  begin
    Cli := HawbSQL.FieldByName('fk_clearance_instruction').AsString;
    IsDeliveryOrder := (Cli = 'DO') or (Cli = 'DOZ');
    NumOfPack2PP.Visible := not IsDeliveryOrder;

  end;

procedure TDeliveryOrderFRM.ppDBText2GetText(Sender: TObject; var Text: string);
  begin
    if In_Partial then
    begin
      Text := FindPartialHawbSQL.FieldByName('PARTIAL_DELIVERY_ORDER_ID').AsString;
    end;
  end;

procedure TDeliveryOrderFRM.Description3lblPrint(Sender: TObject);
  begin
    Description3lbl.Caption := PRProductDesc3;
  end;

procedure TDeliveryOrderFRM.Button4Click(Sender: TObject);
  var
    TempStream: TMemoryStream;
  begin
    try
      TempStream := TMemoryStream.Create();
      Report1.Printer.PrinterSetup.SaveDeviceSettingsToStream(TempStream);
      Memo2.Lines.LoadFromStream(TempStream);
    finally
      TempStream.Free;
    end;

  end;

procedure TDeliveryOrderFRM.CustomChargesPPCalc(Sender: TObject; var Value: Variant);
  begin
    Value := PRCustomCharges;
    if In_Partial then Value := 0;
  end;

END.
