unit J_MawbData;

interface

uses
  System.SysUtils, System.Classes, DBAccess, IBC, Data.DB, MemDS,Vcl.Dialogs,
  vcl.wwdatsrc;

type
  TJ_MawbDataDML = class(TDataModule)
    MawbSQL: TIBCQuery;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    HawbSQL: TIBCQuery;
    MawbSRC: TIBCDataSource;
    MawbSelectSQL: TIBCQuery;
    MawbSelectSRC: TIBCDataSource;
    MawbSelectSQLREFERENCE_NUMBER: TIntegerField;
    MawbSelectSQLMAWB_ID: TStringField;
    MawbSelectSQLDATE_ARRIVED: TDateField;
    HawbSRC: TIBCDataSource;
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
    HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    DhawbSQL: TIBCQuery;
    DhawbSQLSERIAL_NUMBER: TIntegerField;
    DhawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    DhawbSQLHAB_ID: TStringField;
    DhawbSQLDESCRIPTION: TStringField;
    DhawbSQLCUSTOMER_NAME: TStringField;
    DhawbSQLWEIGHT: TFloatField;
    DhawbSQLOTHER_CHARGE_PAID: TStringField;
    DhawbSQLHIGH_VALUE: TStringField;
    DhawbSQLFK_INVOICE_STATUS: TStringField;
    DhawbSQLXML_HOUSE_ID: TStringField;
    DhawbSQLCURRENCY: TStringField;
    DhawbSQLINVOICE_AMOUNT: TFloatField;
    DhawbSQLSTATUS_C: TStringField;
    DHawbSRC: TDataSource;
    HawbLowDeletedSQL: TIBCQuery;
    HawbStatusCSQL: TIBCQuery;
    HawbLowDeletedSRC: TIBCDataSource;
    HawbStatusCSRC: TIBCDataSource;
    HawbStatusCSQLHAB_ID: TStringField;
    HawbStatusCSQLSERIAL_NUMBER: TIntegerField;
    HawbStatusCSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbStatusCSQLFK_MAWB_ID: TStringField;
    HawbStatusCSQLFK_CURRENCY: TStringField;
    HawbStatusCSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbStatusCSQLDATE_REGISTERED: TDateField;
    HawbStatusCSQLCUSTOMER_NAME: TStringField;
    HawbStatusCSQLDESCRIPTION: TStringField;
    HawbStatusCSQLWEIGHT: TFloatField;
    HawbStatusCSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbStatusCSQLNUMBER_OF_PARCELS: TIntegerField;
    HawbStatusCSQLDISTRICT: TStringField;
    HawbStatusCSQLTOTAL_CHARGES: TFloatField;
    HawbStatusCSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbStatusCSQLFK_CUSTOMER_CODE: TIntegerField;
    MawbSQLREFERENCE_YEAR: TSmallintField;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLDATE_ARRIVED: TDateField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
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
    MawbSQLMAWB_ID: TStringField;
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
    HawbLowDeletedSQLHAB_ID: TStringField;
    HawbLowDeletedSQLSERIAL_NUMBER: TIntegerField;
    HawbLowDeletedSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbLowDeletedSQLFK_MAWB_ID: TStringField;
    HawbLowDeletedSQLFK_CURRENCY: TStringField;
    HawbLowDeletedSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbLowDeletedSQLDATE_REGISTERED: TDateField;
    HawbLowDeletedSQLCUSTOMER_NAME: TStringField;
    HawbLowDeletedSQLDESCRIPTION: TStringField;
    HawbLowDeletedSQLWEIGHT: TFloatField;
    HawbLowDeletedSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbLowDeletedSQLNUMBER_OF_PARCELS: TIntegerField;
    HawbLowDeletedSQLDISTRICT: TStringField;
    HawbLowDeletedSQLTOTAL_CHARGES: TFloatField;
    HawbLowDeletedSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbLowDeletedSQLFK_CUSTOMER_CODE: TIntegerField;
    procedure MawbSQLBeforePost(DataSet: TDataSet);
    procedure MawbSQLNewRecord(DataSet: TDataSet);
    procedure MawbSRCStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  J_MawbDataDML: TJ_MawbDataDML;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_ClairDML;

{$R *.dfm}

procedure TJ_MawbDataDML.MawbSQLBeforePost(DataSet: TDataSet);
Var
 IsPassed:Boolean;
 TheDate:TDate;
begin
// do not allow pass the mawb(no generation of invoices) if
// conditions not met


     IsPassed:=Dataset.FieldByName('PASSED').AsString='Y';
     If IsPassed then
     begin

{
          If (DataSet.FieldByName('CUSTOMS_OVERTIME_HOURS').IsNull) then
          begin;
              MessageDlg('Enter Custom Overtime Hours', mtError,   [mbOK], 0);
              abort;
          end;

          If (DataSet.FieldByName('CUSTOMS_OVERTIME_RATE').IsNull) then
          begin;
              MessageDlg('Enter Custom Overtime Rate', mtError,   [mbOK], 0);
              abort;
          end;

          If (DataSet.FieldByName('STORAGE_EXPENSES').IsNull) then
          begin;
              MessageDlg('Enter Storage Expenses', mtError,   [mbOK], 0);
              abort;
          end;

          If (DataSet.FieldByName('DELIVERY_EXPENSES').IsNull) then
          begin;
              MessageDlg('Enter Delivery Expenses', mtError,   [mbOK], 0);
              abort;
          end;

}

          If (DataSet.FieldByName('DATE_ARRIVED').IsNull) then
          begin;
              MessageDlg('Enter Date Arrived', mtError,   [mbOK], 0);
              abort;
          end;


          If (DataSet.FieldByName('DATE_PASSED').IsNull) then
          begin;
              MessageDlg('Enter Date Passed', mtError,   [mbOK], 0);
              abort;
          end;
     end;


     If not Dataset.FieldByName('DATE_ARRIVED').IsNull then begin
      TheDate:=Int(Dataset.FieldByName('DATE_ARRIVED').AsDateTime);// to remove the time
      Dataset.fieldbyName('DATE_ARRIVED').value:=TheDate;
     end;

     If not Dataset.FieldByName('FORM_DATE').IsNull then begin
      TheDate:=Int(Dataset.FieldByName('FORM_DATE').AsDateTime);
      Dataset.fieldbyName('FORM_DATE').value:=TheDate;
     end;

     If not Dataset.FieldByName('DATE_PASSED').IsNull then begin
       TheDate:=Int(Dataset.FieldByName('DATE_PASSED').AsDateTime);
       Dataset.fieldbyName('DATE_PASSED').value:=TheDate;
     end;
end;

procedure TJ_MawbDataDML.MawbSQLNewRecord(DataSet: TDataSet);
Var
   CurrentDate: TDate;
   TheYear,TheMonth,TheDay :word;
begin
CurrentDate:=Now;
DecodeDate(CurrentDate,TheYear,TheMonth,TheDay);

     Dataset.fieldbyname('SENT_TO_HEAD').asString:='N';//useless
     Dataset.fieldbyname('ROTATION_YEAR').asinteger:=TheYear;
     Dataset.fieldbyname('Reference_year').asinteger:=TheYear;
     Dataset.fieldbyname('FK_PORT_IMPORTATION').asinteger:=6;
//     Dataset.fieldbyname('Signatory_Name').asstring:= SN_LoginFRM.FindUserSQL.fieldbyname('User_Name').AsString;
     Dataset.fieldbyname('Passed').asstring:='N';
     Dataset.fieldbyname('FK_PORT_Clearing').asinteger:=6;
     Dataset.fieldbyname('GOODS_DESCRIPTION').asString:='Bags';
     Dataset.fieldbyname('INVOICED').VALUE:='N';


end;

procedure TJ_MawbDataDML.MawbSRCStateChange(Sender: TObject);
Var
  Dataset: TIBCQuery;
begin
  Dataset:=MawbSQL;
  if Dataset.State in [dsInsert] then
      Dataset.FieldByName('MAWB_ID').ReadOnly:=false
  else
     Dataset.FieldByName('MAWB_ID').ReadOnly:=true;

end;

end.
