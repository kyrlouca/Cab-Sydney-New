unit R_deliveryOrderLow1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Db, Wwdatsrc,  DBAccess, IBC, MemDS, IBCError, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl,
  ppBands, ppCache, StdCtrls, wwDialog, wwrcdvw, ppVar, ppStrtch,
  ppMemo,pptypes, ExtCtrls, ppViewr, ppRegion, jpeg, ppBarCod,math,
  ppDesignLayer, ppParameter;

type
  TR_DeliveryOrderLow1FRM = class(TForm)
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
    RV1: TwwRecordViewDialog;
    Button2: TButton;
    MawbSQL: TIBCQuery;
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
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
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
    ppLabel16: TppLabel;
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
    CustomDutiesLBL: TppVariable;
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
    ppLabel26: TppLabel;
    ppDBText13: TppDBText;
    ppImage1: TppImage;
    LowTDIDfld: TppVariable;
    DeliveryStampnewRGN: TppRegion;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDBText2: TppDBText;
    ppLabel33: TppLabel;
    Packagespp: TppVariable;
    MawbSRC: TIBCDataSource;
    CountrySRC: TIBCDataSource;
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
    MawbSQLCOUNTRYNAME: TStringField;
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
    procedure NumberOfPackages2PPCalc(Sender: TObject; var Value: Variant);
    procedure PackageType2lblPrint(Sender: TObject);
    procedure Report1BeforePrint(Sender: TObject);
    procedure DeliveryStampRGNPrint(Sender: TObject);
    procedure CustomDutiesLBLPrint(Sender: TObject);
    procedure TheInvoiceSerialRGNPrint(Sender: TObject);
    procedure BarCode1lblPrint(Sender: TObject);
    procedure ppDBText14Print(Sender: TObject);
    procedure LowTDIDfldPrint(Sender: TObject);
    procedure PackagesppCalc(Sender: TObject; var Value: Variant);
    //procedure BarCode1LblPrint(Sender: TObject);
  private
    { Private declarations }
     Procedure GoPrint(MawbReference:Integer);
  public
    { Public declarations }
  SelectedHawb:String;
  IN_FormType:String;
  IN_MawbSerial:Integer;

     TheChargeDecimal:Double;
     TheEuro:Double;
     PRDeliverTo:String;
     PRHawbID:String;
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
     PRTdid:String;
     procedure PrintOne();
     Procedure OpenTable(MawbReference:integer);
     Function FindDeliveryCharge:DOuble;
     Function GetValueFromSystemTable(Const TheKey,TheDescription:String;FieldName:String):String;
     Function FindReportPrinter(ReportID :String):String;
     Function GetEuroRate(Const TheKey):Double;
  end;

var
  R_DeliveryOrderLow1FRM: TR_DeliveryOrderLow1FRM;

implementation

uses U_ClairDML;

{$R *.DFM}

Procedure TR_DeliveryOrderLow1FRM.PrintOne();
begin
  GoPrint(IN_MawbSerial);

End;


Function TR_DeliveryOrderLow1FRM.FindDeliveryCharge:Double;
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


Function TR_DeliveryOrderLow1FRM.FindReportPrinter(ReportID :String):String;
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

procedure TR_DeliveryOrderLow1FRM.GoPrint(MawbReference:Integer);
Var
   ThePrinter:String;
begin
OpenTable(MawbReference);
ThePrinter:=FindReportPrinter('C2B_DELIVERY');
Report1.PrinterSetup.PrinterName:=ThePrinter;
Report1.Print;
end;




procedure TR_DeliveryOrderLow1FRM.OpenTable(MawbReference:Integer);
Var
   CountryNumber:integer;
   MawbCountryNumber:integer;
   FlightNumber:String;
   TheCharge:String;
   IsCharged:Boolean;
   EuroRate:Double;
begin

  EuroRate:=GetEuroRate('P6');

//MawbReference:=-1;
  CountryNumber:=-1;
  MawbCountryNumber:=-1;
  FlightNumber:='';
  IsCharged:=False;
  TheChargeDecimal:=0;
  PRProductDesc2:='';
  PRProductDesc3:='';
  PRNumberOfPackages2:=0;
  PrPackageType2:='';



  With MawbSQL do begin
   Close;
   If not prepared then prepare;
   ParamByName('ReferenceNumber').Value:= MawbReference;
   Open;
  end;


  PackageType2lbl.Visible:=IN_FOrmType ='LOW';
  kg2lbl.Visible:=IN_FOrmType ='LOW';
  NumberOfPackages2PP.Visible:=IN_FOrmType ='LOW';
  HawbIDlbl.Visible:=IN_FOrmType ='LOW';

  if IN_FormType ='LOW' then begin
         PRCustomerName:='DHL CYPRUS LTD';
         PRHawbID:='';
         PRProductDesc1:='DOCUMENTS';
         PRProductDesc2:='LOW VALUE ITEMS';
         PRProductDesc3:='NOTHING TO BE DECLARED';
         PRPackageType:='bags';
         PRPackageType2:='Pieces';

         PRTdid:=MawbSQL.fieldbyName('LOw_Value_TDID').AsString;

  //      FlightNumber:=FieldByName('Flight_number').AsString;
//      MawbCountryNumber:=MawbSQL.FieldByName('fk_country_consignee').AsInteger;
         PRNumberofPackages :=MawbSQL.FieldByName('DOCS_NUMBER').AsInteger;
         PRNumberofPackages2 := MawbSQL.FieldByName('LOW_VALUE_NUMBER').AsInteger;

         PRWeight:= MawbSQL.FieldByName('DOCS_WEIGHT').AsFloat;
         PRWeight2:=MawbSQL.FieldByName('LOW_VALUE_WEIGHT').AsFloat;


  end else If IN_FormType ='MED' then begin
         PRCustomerName:='DHL CYPRUS LTD';
         PRHawbID:='';
         PRProductDesc1:='CONSOLIDATED AND MEDIUM VALUE ITEMS';
         PRTdid:=MawbSQL.fieldbyName('TDID_MEDIUM').AsString;

         PRPackageType:='bags';

         PRNumberofPackages :=MawbSQL.FieldByName('MEDIUM_VALUE_NUMBER').AsInteger;
         PRWeight:= MawbSQL.FieldByName('MEDIUM_VALUE_WEIGHT').AsFloat;

  end else If IN_FormType ='HIGH' then begin
         PRCustomerName:='DHL CYPRUS LTD';
         PRHawbID:='';
         PRProductDesc1:='HIGH VALUE ITEMS';
         PRTdid:=MawbSQL.fieldbyName('TDID_NEW').AsString;

         PRPackageType:='bags';

         PRNumberofPackages :=MawbSQL.FieldByName('HIGH_VALUE_NUMBER').AsInteger;
         PRWeight:= MawbSQL.FieldByName('high_VALUE_WEIGHT').AsFloat;
  end;


  With CountrySQL do begin
   Close;
   If not prepared then prepare;
   ParamByName('CountryNumber').Value:= MawbCountryNumber;
   Open;
  end;

  With FlightSQL do begin
   Close;
   If not prepared then prepare;
   ParamByName('FlightNumber').Value:= FlightNumber;
   Open;
  end;


End;

procedure TR_DeliveryOrderLow1FRM.Button3Click(Sender: TObject);
begin
RV1.Execute;
end;

procedure TR_DeliveryOrderLow1FRM.Report1PreviewFormCreate(Sender: TObject);
begin
   Report1.PreviewForm.WindowState := wsMaximized;
   TppViewer(Report1.PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


Function TR_DeliveryOrderLow1FRM.GetEuroRate(Const TheKey):Double;
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

Function TR_DeliveryOrderLow1FRM.GetValueFromSystemTable(Const TheKey,TheDescription:String;FieldName:String):String;
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

procedure TR_DeliveryOrderLow1FRM.Button1Click(Sender: TObject);
Var
   TheValue:String;
   EuroRate:double;
begin
ShowMEssage('hello');



end;

procedure TR_DeliveryOrderLow1FRM.ChargePPCalc(Sender: TObject; var Value: Variant);
begin
If (TheChargeDecimal=0) then begin
   ChargePP.Visible:=False;
   TotalPP.Visible:=False;
   end else begin
   ChargePP.Visible:=True;
   TotalPP.Visible:=True;
   Value:=TheChargeDecimal;
end;
End;
procedure TR_DeliveryOrderLow1FRM.CustomerNameLblPrint(Sender: TObject);
begin
CustomerNamelbl.Caption:=PRCustomerName;
end;

procedure TR_DeliveryOrderLow1FRM.HawbIDlblPrint(Sender: TObject);
begin
HawbIDlbl.Caption:=PRHawbID;
end;

procedure TR_DeliveryOrderLow1FRM.Description1LBLPrint(Sender: TObject);
begin
Description1Lbl.Caption:=PRProductDesc1;
end;

procedure TR_DeliveryOrderLow1FRM.PackageTypelblPrint(Sender: TObject);
begin
PackageTYpelbl.caption:=PRpackageType;
end;

procedure TR_DeliveryOrderLow1FRM.WeightPPCalc(Sender: TObject;
  var Value: Variant);
begin
WeightPP.Value:=PRWeight;
end;

procedure TR_DeliveryOrderLow1FRM.Description2lblPrint(Sender: TObject);
begin
Description2LBL.caption:=PRProductDesc2;
end;

procedure TR_DeliveryOrderLow1FRM.NumberOfPackagesPPCalc(Sender: TObject;
  var Value: Variant);
begin
Value:=PRNumberOfPackages;
end;

procedure TR_DeliveryOrderLow1FRM.Weight2PPCalc(Sender: TObject;
  var Value: Variant);
begin
if in_FormType='LOW' then begin
   Value:=PRWeight2;
   Weight2PP.Visible:=true;
end else begin
   Weight2PP.Visible:=false;
   Value:=0;
end;

end;


procedure TR_DeliveryOrderLow1FRM.Description3lblPrint(Sender: TObject);
begin
Description3lbl.Caption:=PRProductDesc3;
end;

procedure TR_DeliveryOrderLow1FRM.NumberOfPackages2PPCalc(Sender: TObject;
  var Value: Variant);
begin
Value:=PRNumberOfPackages2;
end;


procedure TR_DeliveryOrderLow1FRM.PackageType2lblPrint(Sender: TObject);
begin
PackageTYpe2lbl.caption:=PRpackageType2;
end;

procedure TR_DeliveryOrderLow1FRM.Report1BeforePrint(Sender: TObject);
begin
TheEuro:=GetEuroRate('P6');
end;

procedure TR_DeliveryOrderLow1FRM.DeliveryStampRGNPrint(Sender: TObject);
begin

DEliveryStampNewRGN.Visible:=True;
End;

procedure TR_DeliveryOrderLow1FRM.CustomDutiesLBLPrint(Sender: TObject);
begin

CustomDutiesLBL.Visible:=false;

end;

procedure TR_DeliveryOrderLow1FRM.TheInvoiceSerialRGNPrint(Sender: TObject);
begin
      InvoiceSerialFLD.Value:= MawbSQL.FieldByName('REFERENCE_NUMBER').AsInteger;
End;

procedure TR_DeliveryOrderLow1FRM.BarCode1lblPrint(Sender: TObject);
Var
 TheValue : String;
begin
   TheValue:=MawbSQL.fieldbyName('LOw_Value_TDID').AsString;
//   TheValue :='*'+TheValue+'*';
   //fix BarCode1lbl.Data:=TheValue;
   //fix BarCode1lbl.visible:=true
End;

procedure TR_DeliveryOrderLow1FRM.ppDBText14Print(Sender: TObject);
begin
(sender as TppDBText).text:='d';
end;

procedure TR_DeliveryOrderLow1FRM.LowTDIDfldPrint(Sender: TObject);
Var
 TheLength:Integer;
 StartPosition:Integer;
 TheValue:String;
begin


   TheLength :=length(PRTdid);
   StartPosition:=Max(1,TheLEngth-7+1);
   TheValue:=Copy(PRTdid,StartPosition,7);
   LowTDIDFld.Value:=TheValue;

end;

procedure TR_DeliveryOrderLow1FRM.PackagesppCalc(Sender: TObject;
  var Value: Variant);
begin
Value:=PRNumberofPackages+PRNumberofPackages2;
end;

End.




