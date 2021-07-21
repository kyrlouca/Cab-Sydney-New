unit C_ScanCustomPayment;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
  DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, DBGrids, wwdbdatetimepicker, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppViewr, wwclearpanel, ComCtrls, Wwdbspin,
  ppStrtch, ppSubRpt, DBClient, wwclient, Provider,  DBCtrls, Menus, wwdblook, Wwdotdot, Wwdbcomb,Math,
  RzPanel;

type

  TBatchInfo = record
        MasterSerial:Integer;
        SumDhlAMount:double;
        CountHawbs:integer;
  end;
    THawbInfo = record
        XmlId:String;
        MawbId:String;
        HawbId:String;
        HawbSerial:Integer;
        MasterSerial:integer;
        CustomerName:String;
        Amount:Double;
        DateCleared:Tdate;
  end;


  TC_ScanCustomPaymentFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    MainMenu1: TMainMenu;
    Report1: TMenuItem;
    PaymentsReceived1: TMenuItem;
    About2: TMenuItem;
    UpdateTransaction: TIBCTransaction;
    ReadOnlyTrans: TIBCTransaction;
    Panel3: TPanel;
    Label5: TLabel;
    FindHawbBTN: TSpeedButton;
    Label6: TLabel;
    ScanXmlIdFLD: TwwDBEdit;
    DispPNL: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    ErrorMessageFLD: TLabel;
    XmlIdFdl: TwwDBEdit;
    AmountFLD: TwwDBEdit;
    CustomerNameFLD: TwwDBEdit;
    HouseFLD: TwwDBEdit;
    OkFLD: TPanel;
    ScanHawbFLD: TwwDBEdit;
    CustomPaymentHawbSQL: TIBCQuery;
    DoSQL: TIBCSQL;
    SumAmountFLD: TwwDBEdit;
    Label7: TLabel;
    Label11: TLabel;
    CountItemsFLD: TwwDBEdit;
    Label12: TLabel;
    FindHawbSQL: TIBCQuery;
    FindCustomHawbSQL: TIBCQuery;
    FindCustomHawbSQLSERIAL_NUMBER: TIntegerField;
    FindCustomHawbSQLXML_ID: TStringField;
    FindCustomHawbSQLAMOUNT_CUSTOMS: TFloatField;
    FindCustomHawbSQLAMOUNT_DHL: TFloatField;
    FindCustomHawbSQLHAWB_SERIAL: TIntegerField;
    FindCustomHawbSQLHAWB_ID: TStringField;
    Make2SQL: TIBCQuery;
    MakeSQL: TIBCQuery;
    CustomePaymentHawbSRC: TIBCDataSource;
    FindCustomHawbSQLFK_CUSTOMS_SERIAL: TIntegerField;
    FindCustomHawbSQLCUSTOMER_NAME: TStringField;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    CustomPaymentHawbSQLSERIAL_NUMBER: TIntegerField;
    CustomPaymentHawbSQLXML_ID: TStringField;
    CustomPaymentHawbSQLAMOUNT_CUSTOMS: TFloatField;
    CustomPaymentHawbSQLAMOUNT_DHL: TFloatField;
    CustomPaymentHawbSQLHAWB_SERIAL: TIntegerField;
    CustomPaymentHawbSQLHAWB_ID: TStringField;
    CustomPaymentHawbSQLFK_CUSTOMS_SERIAL: TIntegerField;
    CustomPaymentHawbSQLCUSTOMER_NAME: TStringField;
    CustomPaymentHawbSQLDATE_CLEARED: TDateField;
    CustomPaymentHawbSQLHAWB_TYPE: TStringField;
    CustomPaymentHawbSQLMAWB_ID: TStringField;
    CustomPaymentHawbSQLFFHAWB_TYPE: TStringField;
    CustomPaymentHawbSQLFFMAWB_ID: TStringField;
    FindHawbSQLHAB_ID: TStringField;
    FindHawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    FindHawbSQLFK_CLEARING_STATE: TStringField;
    FindHawbSQLFK_INVOICE_STATUS: TStringField;
    FindHawbSQLDESCRIPTION: TStringField;
    FindHawbSQLFK_CUSTOMER_CODE: TIntegerField;
    FindHawbSQLWEIGHT: TFloatField;
    FindHawbSQLFK_CURRENCY: TStringField;
    FindHawbSQLEXCHANGE_RATE: TFloatField;
    FindHawbSQLINVOICE_TOTAL: TFloatField;
    FindHawbSQLFREIGHT_AMOUNT: TFloatField;
    FindHawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    FindHawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    FindHawbSQLOTHER_CHARGE_PAID: TStringField;
    FindHawbSQLSTAMPS_AMOUNT: TFloatField;
    FindHawbSQLEXPS_NON_INVOICABLE: TFloatField;
    FindHawbSQLSERIAL_NUMBER: TIntegerField;
    FindHawbSQLCUSTOMS_VALUE: TFloatField;
    FindHawbSQLINVOICE_SERIAL: TIntegerField;
    FindHawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    FindHawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    FindHawbSQLHIGH_VALUE: TStringField;
    FindHawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    FindHawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    FindHawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    FindHawbSQLDATE_INVOICED: TDateField;
    FindHawbSQLSENT_TO_HEAD: TStringField;
    FindHawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    FindHawbSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    FindHawbSQLFK_CLEARANCE_TYPE: TStringField;
    FindHawbSQLFK_DELIVERY_TERM: TStringField;
    FindHawbSQLORIGIN_STATION: TStringField;
    FindHawbSQLEC2_NUMBER_DATE: TStringField;
    FindHawbSQLSENDERS_INV_NO: TStringField;
    FindHawbSQLNUMBER_OF_PARCELS: TIntegerField;
    FindHawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    FindHawbSQLDISTRICT: TStringField;
    FindHawbSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    FindHawbSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    FindHawbSQLFK_OTHER2_CHARGE_CODE: TStringField;
    FindHawbSQLPOSOSTOSIS: TStringField;
    FindHawbSQLTOTAL_DUTIES: TFloatField;
    FindHawbSQLCLEARANCE_WAITING_CODE: TStringField;
    FindHawbSQLCLEARANCE_WAITING_REASON: TStringField;
    FindHawbSQLDATE_CLEARED: TDateField;
    FindHawbSQLDATE_REGISTERED: TDateField;
    FindHawbSQLFACTOR: TFloatField;
    FindHawbSQLFK_COUNTRY_ORIGIN: TIntegerField;
    FindHawbSQLCHARGE_TRL: TFloatField;
    FindHawbSQLCHARGE_VAT: TFloatField;
    FindHawbSQLCHARGE_EXCISE: TFloatField;
    FindHawbSQLCHARGE_IMPORT: TFloatField;
    FindHawbSQLINVOICABLE: TStringField;
    FindHawbSQLTOTAL_CHARGES: TFloatField;
    FindHawbSQLCUSTOMER_NAME: TStringField;
    FindHawbSQLEDE_COMMENTS: TStringField;
    FindHawbSQLFK_MAWB_ID: TStringField;
    FindHawbSQLSIGNATORY_NAME: TStringField;
    FindHawbSQLXML_HOUSE_ID: TStringField;
    FindHawbSQLSENDER_NAME: TStringField;
    FindHawbSQLSENDER_ADDRESS_1: TStringField;
    FindHawbSQLSENDER_ADDRESS_2: TStringField;
    FindHawbSQLSENDER_ADDRESS_3: TStringField;
    FindHawbSQLIS_PRIVATE: TStringField;
    FindHawbSQLDELIVERY_ORDER_ID: TStringField;
    FindHawbSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    FindHawbSQLFK_OTHER4_CHARGE: TStringField;
    FindHawbSQLIS_PAID: TStringField;
    FindHawbSQLPARTIAL_FLAG: TStringField;
    FindHawbSQLPARTIAL_WEIGHT: TFloatField;
    FindHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    FindHawbSQLPARTIAL_MAWB_ID: TStringField;
    FindHawbSQLPARTIAL_PIECES: TIntegerField;
    FindHawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    FindHawbSQLSTATUS_C: TStringField;
    FindHawbSQLIS_MEDIUM: TStringField;
    FindHawbSQLMEDIUM_VAT_RATE: TFloatField;
    FindHawbSQLIS_CHARGED_DELIVERY: TStringField;
    FindHawbSQLIS_VALID: TStringField;
    FindHawbSQLIS_PREPAID: TStringField;
    FindHawbSQLOTHER5_CHARGE_AMOUNT: TFloatField;
    FindHawbSQLFK_DUTY_RELIEVE: TStringField;
    FindHawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    FindHawbSQLSENDER_POST_CODE: TStringField;
    FindHawbSQLSENDER_CITY: TStringField;
    FindHawbSQLSENDER_COUNTRY: TStringField;
    Panel11: TRzPanel;
    BitBtn2: TBitBtn;
    mediumSimpleSQL: TIBCQuery;
    mediumSimpleSQLHAB_ID: TStringField;
    mediumSimpleSQLSERIAL_NUMBER: TIntegerField;
    mediumSimpleSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    mediumSimpleSQLFK_CLEARING_STATE: TStringField;
    mediumSimpleSQLFK_INVOICE_STATUS: TStringField;
    mediumSimpleSQLDESCRIPTION: TStringField;
    mediumSimpleSQLCUSTOMER_NAME: TStringField;
    mediumSimpleSQLSENDER_NAME: TStringField;
    mediumSimpleSQLFK_COUNTRY_ORIGIN: TIntegerField;
    mediumSimpleSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    mediumSimpleSQLFK_CUSTOMER_CODE: TIntegerField;
    mediumSimpleSQLWEIGHT: TFloatField;
    mediumSimpleSQLMEDIUM_VAT_RATE: TFloatField;
    mediumSimpleSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    mediumSimpleSQLCURRENCY: TStringField;
    mediumSimpleSQLRATE: TFloatField;
    mediumSimpleSQLEUROVAL: TFloatField;
    mediumSimpleSQLORIGINCOUNTRY: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure ScanXmlIdFLDKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure PaymentsReceived1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ScanHawbFLDKeyPress(Sender: TObject; var Key: Char);
    procedure PaymentMEthodFLDNotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure CancelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
        cn:TIBCConnection;
        DefaultType:String;
        procedure ClearPanel;
        procedure DisplayError(Const Message1:String;Const hawbINfo:ThawbInfo);
        procedure ScanInvoice(Const MasterSerial:Integer;Const SearchBy:String);


        Function GetDefaultType :String;
        Function FindMediumXmlIdTotals(Const MediumXmlId:String;Var HawbInfo:ThawbInfo):Boolean;

        Function CalcTotals(Const MasterSerial:integer):TBatchInfo;
        Procedure UpdateTotals(Const BatchInfo:TBatchInfo);
        procedure DisplayRecord(Const hawbInfo:THawbInfo);

        procedure InsertCustomHawb;

  public
    { Public declarations }
    IN_PaymentSerial:Integer;

  end;

var
  C_ScanCustomPaymentFRM: TC_ScanCustomPaymentFRM;

implementation

uses U_ClairDML, G_KyrSQL;






{$R *.DFM}





procedure TC_ScanCustomPaymentFRM.BitBtn2Click(Sender: TObject);
begin
        close;
end;

procedure TC_ScanCustomPaymentFRM.ClearPanel;
Begin
        ErrorMessageFLD.Visible:=false;
        OkFLD.Color:=clBtnFace;
//        InvoiceNumberFLD.Clear;
//        InvoiceNumberFLD.Font.Color:=clblack;
        self.HouseFLD.Clear;
        self.CustomerNameFLD.Clear;
        self.AmountFLD.Clear;
        self.SumAmountFLD.clear;
        self.CountItemsFLD.clear;
//        self.AmountCollectedFLD.clear;



end;


procedure TC_ScanCustomPaymentFRM.ScanXmlIdFLDKeyPress(Sender: TObject ;var Key: Char);
begin
If (Key= #13) then begin
        if (Length(ScanXmlIdFLD.text)>0) then begin
                ScanInvoice(IN_PaymentSerial,'XML');
        end;
end;
end;

procedure TC_ScanCustomPaymentFRM.ScanInvoice(Const MasterSerial:Integer;Const SearchBy:String);
Var
        inputValue:String;
        XmlID:String;
        IsPaid:boolean;
        InvType:String;
        InvAmount:Double;
        ColAmount:Double;
        Hawb:string;
        HawbSerial:Integer;
        BatchInfo:TBatchInfo;
        hawbInfo:ThawbINfo;
        ErrorMessage:String;

        mSerial:integer;
        mMasterSerial:Integer;
        mHawbSerial:Integer;
        mHawbId:String;
        mHawbType:String;
        mMawbId:string;
        mXmlId:String;
        mAmount:Double;
        mDateCleared:TDate;
        mCustomerName:String;
        mcTotalDuties,mcEdeDeliveryExpenses,mcEdeStorageExpenses,mcOtherChargeAmount:double;
        qr:TksQuery;

Begin

     ClearPanel;
     with FindCustomHawbSQL do begin
     //check if already included
         close;

         FindCustomHawbSQL.RestoreSQL;
         if (SearchBy=Trim('HAWB')) then begin
             inputValue:= trim(ScanHawbFLD.Text);
             FindCustomHawbSQL.AddWhere('hawb_id = :inValue');
         end else begin
                inputValue:=trim(ScanXmlIdFLD.text);
                FindCustomHawbSQL.AddWhere('xml_id = :inValue');
         end;


         If not prepared then prepare;
         ParambyName('inValue').Value:=inputValue;
         Open;
         If RecordCount>0 then begin
         //Already processed - cannot create it again

                hawbInfo.HawbSerial:=FieldByName('Serial_number').AsInteger;
                hawbInfo.HawbId:=FieldByName('Hawb_id').AsString;
                HawbInfo.XmlId:=FieldByName('XML_ID').AsString;
                HawbInfo.MawbId:='';
                hawbInfo.Amount:=FieldByName('amount_customs').AsFloat;
                HawbInfo.CustomerName:=FieldByName('CUSTOMER_NAME').AsString;
                HawbInfo.MasterSerial:=FieldByName('FK_CUSTOMS_SERIAL').AsInteger;
                DisplayError('Hawb Already Scanned. Payment serial:'+IntTOStr(hawbInfo.MasterSerial),hawbInfo);
                 MessageDlg('Hawb Already Scanned:'+ InputValue, mtError, [mbOK], 0);

                ScanHawbFLD.Clear;
                ScanXmlIdFLD.Clear;
                exit;
         end;
     end;


     with FindHawbSQL do begin
         close;
         FindHawbSQL.RestoreSQL;

         if (SearchBy=Trim('HAWB')) then begin
             inputValue:= trim(ScanHawbFLD.Text);
             FindHawbSQL.AddWhere('hab_id = :inValue');
         end else begin
                inputValue:=trim(ScanXmlIdFLD.text);
                FindHawbSQL.AddWhere('xml_house_id = :inValue');
         end;


         If not prepared then prepare;
         ParambyName('inValue').Value:=InputValue;
         Open;
         If RecordCount>0 then begin
                mHawbSerial:=FieldByName('Serial_number').AsInteger;

                try
                  //Custom Charges only!!
                  qr:= TksQuery.Create(cn,'select sum(hc.amount_net) as Amount from hawb_charge hc where hc.fk_tariff_usage <> ''DHL'' and hc.fk_hawb = :hawbserial');
                  qr.ParamByName('hawbserial').value := MHawbSerial;
                  qr.Open;
                  mAmount:=qr.FieldByName('amount').AsFloat;
                  qr.Close;
                finally
                  qr.Free;
                end;

                mHawbId:=FieldByName('Hab_id').AsString;
                mHawbTYpe:=DefaultType;
                //mMawbId:=FieldByName('Mawb_id').AsString;
                mMawbId:='';
                mXmlID:=FieldByName('XML_House_id').AsString;
                mCustomerName:=FieldByName('Customer_name').AsString;
                mDateCleared:=FieldByName('Date_cleared').AsDateTime;
                mMasterSerial:=MasterSerial;

         end else begin
              //Try  Medium XMLId which is on Mawb
                if( FindMediumXmlIdTotals(InputValue,HawbInfo)) then begin

                  mHawbSerial:=0;
                  mHawbId:=HawbInfo.HawbId;
                  mMawbId:=HawbInfo.MawbId;
                  mHawbType:='MV';
                  mXmlID:=HawbInfo.XmlId;
                  mCustomerName:=hawbInfo.CustomerName;
                  mDateCleared :=HawbInfo.dateCleared;
                  mMasterSerial:=MasterSerial;
                  mAmount:=hawbinfo.Amount;

                end else begin
                        DisplayError('Cannot Find Hawb (Invoiced)',hawbInfo);
                        MessageDlg('Cannot find Hawb (INVOICED):'+ InputValue, mtError, [mbOK], 0);

                        hawbInfo.HawbSerial:=0;
                        hawbInfo.HawbId:='';
                        HawbInfo.XmlId:=XmlId;
                        hawbInfo.Amount:=0;
                        HawbInfo.CustomerName:='';
                        exit;
                end;
         end;
     end;

//**************************************************************************
// Everythin ok
  if trim(mXmlId) = '' then begin
    DisplayError('XML id is spaces', hawbInfo);
    MessageDlg('XML ID is SPACES:'+ InputValue, mtError, [mbOK], 0);

    hawbInfo.HawbSerial := 0;
    hawbInfo.HawbId := '';
    HawbInfo.XmlId := XmlId;
    hawbInfo.Amount := 0;
    HawbInfo.CustomerName := '';
    exit;
  end;



  with CustomPaymentHawbSQL do
  begin
    CustomPaymentHawbSQL.close;
    CustomPaymentHawbSQL.Open;
    if not prepared then
      prepare;
    CustomPaymentHawbSQL.Insert;
//                        doSQL.FieldByName('Serial').value:=mSerial;

    FieldByName('Amount_Customs').value := mAmount;
    FieldByName('Hawb_Serial').value := mHawbSerial;
    FieldByName('Hawb_Id').value := mHawbId;
    FieldByName('Hawb_Type').value := mHawbType;
    FieldByName('Mawb_Id').value := mMawbId;
    FieldByName('Xml_Id').value := mXmlId;
    FieldByName('Customer_name').value := mCustomerName;
    if mDateCleared > EncodeDate(2010, 1, 1) then
      FieldByName('Date_cleared').value := mDateCleared;

    FieldByName('FK_CUstoms_Serial').value := mMasterSerial;
    Post;

    hawbInfo.HawbSerial := FieldByName('Serial_number').AsInteger;
    hawbInfo.HawbId := FieldByName('Hawb_id').AsString;
    HawbInfo.XmlId := FieldByName('XML_ID').AsString;
    hawbInfo.Amount := FieldByName('amount_customs').AsFloat;
    HawbInfo.CustomerName := FieldByName('CUSTOMER_NAME').AsString;
    DisplayRecord(HawbInfo);

  end;
                BatchInfo:=CalcTotals(MasterSerial);


                DispPNL.Visible:=true;
                SumAmountFLD.Text:=FloatToStr(batchInfo.SumDhlAMount);
                CountItemsFLD.Text:=FloatToStr(batchInfo.CountHawbs);


                ScanHawbFLD.Clear;
                ScanXmlIdFLD.Clear;


//        ProcessOne(HawbSerials);

End;

procedure TC_ScanCustomPaymentFRM.DisplayError(Const Message1:String;Const Hawbinfo:ThawbInfo);
begin


                DispPNL.Visible:=true;
//                InvoiceNumberFLD.Text:=self.ScannedHawbFLD.Text;
//                InvoiceNumberFLD.Font.Color:=clRed;
                ErrorMessageFLD.Visible:=true;
                ErrorMessageFLD.Caption:=Message1;

                XmlIdFdl.Text:=hawbinfo.XmlId;
                 HouseFld.Text:=hawbinfo.HawbId;
                CustomerNameFLD.Text:=hawbinfo.CustomerName;
              AmountFLD.Text:= FormatFloat('#0.00',hawbInfo.Amount);

                okFLD.Color:=ClRed;
                ScanHawbFLD.Clear;
                ScanXmlIdFLD.Clear;

                beep;
end;

procedure TC_ScanCustomPaymentFRM.DisplayRecord(Const HawbInfo:THawbInfo);
begin

                DispPNL.Visible:=true;
              AmountFLD.Text:= FormatFloat('#0.00',hawbInfo.Amount);
                XmlIdFdl.Text:= hawbinfo.XmlId;
                HouseFLd.Text:=hawbInfo.HawbId;
                CustomerNameFLD.Text:=hawbinfo.CustomerName;


//                InvoiceNumberFLD.Font.Color:=clRed;
//                ErrorMessageFLD.Visible:=true;
//                ErrorMessageFLD.Caption:=Message1;
//                okFLD.Color:=ClRed;
//                ScannedHawbFLD.Clear;

//                beep;
end;



procedure TC_ScanCustomPaymentFRM.FormActivate(Sender: TObject);
begin
cLEARpANEL;
DefaultType:=GetDefaultType;
DispPNL.Visible:=true;


If self.ScanXmlIdFLD.CanFocus then
        ScanXmlIdFLD.SetFocus;

end;

procedure TC_ScanCustomPaymentFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

procedure TC_ScanCustomPaymentFRM.PaymentsReceived1Click(Sender: TObject);
begin
ShowMessage('R_PaymentsBarcodeFRM.SHowMOdal');

end;

procedure TC_ScanCustomPaymentFRM.BitBtn1Click(Sender: TObject);
begin
  If AcceptBTN.Enabled then begin
        ShowMessage('Accept or Cancel First');
        exit;
  end;
  close;
end;

Procedure TC_ScanCustomPaymentFRM.UpdateTotals(Const BatchInfo:TBatchInfo);
begin

End;

Function TC_ScanCustomPaymentFRM.CalcTotals(Const MasterSerial:integer):TBatchInfo;
Var
        SQLString:string;
begin
SQLString:='select Sum(amount_CUSTOMS)as SumCUSTOMS, Count(*)as CountItems from CUSTOMS_PAYMENT_HAWB where'
                +' fk_customs_serial=:MasterSerial';

          With MakeSQL do begin
                Close;
                ReadONly:=True;
                MakeSQL.SQL.Clear;
                MakeSQl.SQL.Add( SQLString);
                if not prepared then prepare;
                ParamByName('MasterSerial').value:=MasterSerial;

                Open;
                Result.CountHawbs:=FIeldByName('CountItems').AsInteger;
                Result.SumDhlAMount:=FIeldByName('SumCUSTOMS').AsFloat;

                close;
          end;


End;




procedure TC_ScanCustomPaymentFRM.ScanHawbFLDKeyPress(Sender: TObject;
  var Key: Char);
begin
If (Key= #13) then begin
        if (Length(ScanHawbFLD.text)>0) then begin
                ScanInvoice(IN_PaymentSerial,'HAWB');
        end;
end;
end;

procedure TC_ScanCustomPaymentFRM.PaymentMEthodFLDNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
Accept:=false;

end;

procedure TC_ScanCustomPaymentFRM.CancelBTNClick(Sender: TObject);
begin
ClearPanel;
AcceptBTN.Enabled:=false;
ScanXmlIdFLD.clear;
ScanHawbFLD.clear;

end;

Function TC_ScanCustomPaymentFRM.GetDefaultType :String;
begin
    result:='';

     With MakeSQL do
     begin
        Close;
        MakeSQL.SQL.Clear;
        MakeSQL.SQL.Text :='select hawb_type from customs_hawb_type ORDER BY ORDER_nUMBER ';
        if not prepared then prepare;
        Open;
        first;
        result:=MakeSQL.fieldbyName('hawb_TYPE').AsString;
        close;
     end;


end;

Function TC_ScanCustomPaymentFRM.FindMediumXmlIdTotals(Const MediumXmlId:String;Var HawbInfo:ThawbInfo):Boolean;
Var
        SQLString:string;
        VatSQL:TksQuery;
        MediumVAT:Double;
        qr:TksQuery;
        TotalCustomsValue:Double;
begin

  try
   SqlString:='Select ma.reference_number, ma.mawb_id , ma.tdid_medium, ma.flight_number, date_arrived from Mawb ma where ma.tdid_medium=:XmlMediumId';
   qr:=TksQuery.Create(cn,SqlString);
   qr.ParamByName('XmlMediumId').value:=MediumXmlId;
   qr.Open;

   HawbInfo.XmlId:=qr.FIeldByName('tdid_medium').AsString;
   HawbInfo.MasterSerial:=qr.FIeldByName('REFEReNCE_NUMBER').AsInteger;
   HawbInfo.MawbId:=qr.FIeldByName('Mawb_Id').AsString;
   HawbInfo.HawbId:='';
   try
     HawbInfo.DateCleared:=qr.FieldByName('date_arrived').AsDateTime;
   except
     HawbInfo.DateCleared:=encodeDate(1999,1,1);
   end;
   HawbInfo.CustomerName :='Medium Value  -  '+qr.FieldByName('flight_number').AsString+' '+ FormatDateTime('dd-mm-yyyy',HawbInfo.DateCleared);
    close;
  finally
   qr.Free;
  end;

  if hawbInfo.MasterSerial > 0 then
  begin

    SqlString := '   select'
      + '     Sum( (Round( (ssi.pre_discount_amount + coalesce(ssi.freight_amount,0) + coalesce( ssi.insurance_amount,0) )  /exr.rate )'
      + '           +coalesce(ssi.freight_cyp_amount,0)) * ha.medium_vat_rate /100'
      + '       )as TotalAmount'
      + '   from'
      + '     hawb ha  left outer join'
      + '     sender_invoice ssi on ha.serial_number= ssi.fk_hawb_serial   left outer join'
      + '     exchange_rate exr on ssi.currency = exr.fk_currency_code'
      + '   where'
      + '     ha.fk_clearance_instruction = ''MED''  and'
      + '     ha.fk_mawb_refer_number = :mawbSerial';


    try
            //total customs value amount of all medium hawbs
            qr:=TksQuery.Create(cn,SqlString);
            qr.ParamByName('MawbSerial').value:=HawbInfo.MasterSerial;
            qr.Open;
            HawbInfo.Amount:= qr.FieldByName('totalAmount').asFloat;
            result:=Not qr.IsEmpty;
            qr.Close;
    finally
            qr.Free;
    end;

  end;

End;




procedure TC_ScanCustomPaymentFRM.InsertCustomHawb;
Begin

End;

end.
